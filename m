Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADE03CF8549
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 17:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fT2tuhRwY265Yot3qksfmVWHQ9V0lVehJvsBYLGR83M=; b=DDSY0K1qLhuLKf
	8WIVluBIq2h2UgimdBKT8bpF9lPRjfTX6ITc+vPE4VQNOLkSYIcojOSDAgYok7dM6tyV+gxaBFHm7
	tHhQ6dArCTp7SahP5CedWSTYR3KJjK4TeCV97Y19upS9/zHCRCjX6Ndjaz37cHrJEC+vTCjYLvViO
	KNqWoE+Oq4F+l6BcPuVwsAyKRqvs7BvJwsGcFBi6jar/ZhmNk2O9UleiYKyDX6lqQ+oAN/Nq+veRE
	9ryj8uoHz5NbC3ZGhJscp5ynUrHRbzhtfT/bdtekyEmzdYJaRCHBF4sCfV7J8qXn6LFOH7VAyniSd
	e2W9kNn34okEP4RVD3dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8CP-000000074FR-1zO8;
	Thu, 20 Nov 2025 17:12:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8CL-000000074Dc-29Mn
	for linux-phy@lists.infradead.org;
	Thu, 20 Nov 2025 17:11:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 38C5642CC1;
	Thu, 20 Nov 2025 17:11:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0BAAC4CEF1;
	Thu, 20 Nov 2025 17:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658717;
	bh=Khl2Qo1P141T4GRnIaWEBwnUt4cNlNthRenhT5dHchw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=TWCrRjaWPkgxrKHr7zV8lxhDoz52A5Remcdn4SMaH74fUenDqGf9lDfKIf98AEAo6
	 V3yXpr2XrCbKCocxmUdYAiGt/VB3mbW7APSjnKdJjqGWyl6tA5ibg8ynO4yQjBbKqo
	 //+5QhFibkjjQjli5eHh83XPIggKIrsedduPSp2JHzAnS3TNPnDbtDB3a/BLOBsrG9
	 jjwOJHhLzR7/PlFau3oR6ssASjsrIgv1DxHA0LNaW3ZC7kjQGG6qg8TdKmRCf+M5h/
	 kJpU3T44mVMicxNFpGy5vrkJEeotMPFp0Us1Pl6FXjqvFQknS5aOiGbuFT5B2g3IVl
	 FuzCmCUz1GPQA==
From: Vinod Koul <vkoul@kernel.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Michael Walle <mwalle@kernel.org>, Andrew Davis <afd@ti.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel-janitors@vger.kernel.org
In-Reply-To: <aPJpB-QI8FMpFGOk@stanley.mountain>
References: <aPJpB-QI8FMpFGOk@stanley.mountain>
Subject: Re: [PATCH] phy: ti: gmii-sel: Add a sanity check on the phy_id
Message-Id: <176365871460.207696.15567029347184723222.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 22:41:54 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_091157_572400_9F613283 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On Fri, 17 Oct 2025 19:04:23 +0300, Dan Carpenter wrote:
> The "phy_id" comes from the device tree so it's going to be correct.
> But static checkers sometimes complain when we have an upper bounds
> check with no lower bounds check.  Also it's a bit unusual that the
> lowest valid number is 1 instead of 0 so adding a check could
> potentially help someone.
> 
> 
> [...]

Applied, thanks!

[1/1] phy: ti: gmii-sel: Add a sanity check on the phy_id
      commit: 9d3daf9ca3239042c2cf473a76db2a77e6de22c6

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
