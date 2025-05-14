Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEB96C3ABD9
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 15:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNE8aoUFmdD+Y1cq3sCP9DoJ1ahgUL2UzBjH6gb1dFE=; b=k8xk8zu50PSDVP
	vCAm8UAmvLOF6RKJByrEaaL+QhalXwNUOaEqwufrV5qsAng2H+/+/J56B6lpL1OW1fAHogZ8aQ5iS
	dMbH6sfvjYhCY6htXG9Ix056JFMXON/g5PVWiU3bVLezk0VVMBQXWBm4Lquy82Y+BxkQO3+RZqvtW
	ZAULj75IDt49Rk8EpRHN3wO4HJVr95QP7WpDb0IWQM7cM9Abpxh7CWMLh9HUbj3wUKqK4SBZCXM+h
	vbtwgDKIC8D09ZkZlFhmlbIzjXdjLu0kDZNvR0+IsQsxk9Iooguj4aWHr8AkvJiAy+2vWMnONfx4t
	Er4GKgRBImf/kD+KBD0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFDeZ-0000000FVJF-2uwA;
	Wed, 14 May 2025 15:04:15 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAQv-0000000EuaJ-0A8A
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 11:37:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5A3CEA4D3B1;
	Wed, 14 May 2025 11:37:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B502C4CEE9;
	Wed, 14 May 2025 11:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222676;
	bh=hdiLO6XCduc9SOuTx7CxPdZUESw/8/50kqGgWmBu+q8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=k69PjzF+kAbdk6afuQXuAj01ZMRsc38cQ+ZfXyBKqetQTRZB2YQoBQtcr5ruU+WWE
	 uct8t8FB1Wz/frWcrCWmCskQkmTvBn7gjD6yDzHdfn4Vnn/o5luD9NZCc33yZK3W8f
	 mJ5I4/GHW6im7xnAFlM90EI+7ZGru35r3dliJ+QMicYIvWV/Iv8mM3AtNXZ2r2z0OY
	 98ZRuwTlHw44wGsvKP/LCL0+2q8r7r2e79TghTuywC+tUo+XGfCQyR2QKbw7ROKikB
	 s+7B/jF1I4J72fhMJDpdXhZXXZPima42JWzw3z3OMalU5puO803TqCdGLmbE3XLwPG
	 8vrXVfUAtT46g==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Adam Ford <aford173@gmail.com>
Cc: dominique.martinet@atmark-techno.com, frieder.schrempf@kontron.de, 
 u.kleine-koenig@baylibre.com, aford@beaonembedded.com, 
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org
In-Reply-To: <20250504204043.418924-1-aford173@gmail.com>
References: <20250504204043.418924-1-aford173@gmail.com>
Subject: Re: [PATCH 1/3] phy: freescale: fsl-samsung-hdmi: Rename
 phy_clk_round_rate
Message-Id: <174722267396.85510.14284912080020190459.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:37:53 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043757_143501_F1BEE3B2 
X-CRM114-Status: UNSURE (   4.30  )
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


On Sun, 04 May 2025 15:40:40 -0500, Adam Ford wrote:
> phy_clk_round_rate sounds like a generic helper function.  In
> reality, it is unique to the phy-fsl-samsung-hdmi. Rename
> phy_clk_round_rate to fsl_samsung_hdmi_phy_clk_round_rate.
> No functional change intended.
> 
> 

Applied, thanks!

[1/3] phy: freescale: fsl-samsung-hdmi: Rename phy_clk_round_rate
      commit: be79213b4f9ab6e5abf870b97f8a1cab5bf049b3
[2/3] phy: freescale: fsl-samsung-hdmi: Refactor finding PHY settings
      commit: 41db4623346777be6ce694338b5adc570c4b671d
[3/3] phy: freescale: fsl-samsung-hdmi: Improve LUT search for best clock
      commit: 46a87260fc4f719f58e07a53cc1b70a38d98da37

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
