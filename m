Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2686DCF2572
	for <linux-phy@archiver.kernel.org>; Sat, 12 Oct 2024 17:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MNbjZvEjDb5v2pM21U1R6H01tqFcKDqG6akSxX4K8AM=; b=ZiCPxGlAYYzGzM
	A9uo5kaHXaSL06JGW0Yhhfr+ZUQytZKTZ7NCI+scoR8GlyGA5iHi6uNdk6JK7nhfGynwkEKcWH98y
	pXSArfnMhN7GVyl4X4YrsFGbgLjpOEvNcDwJ1vq1ttmVBnV1vSs0Li8mviK1neHKOwc/lWtf/J3YV
	QDCX+6i9+Wvb8LfBRXdaOFGoMLi8B3V4IzdoczKeMT7WLrElp1LwQLtMkpR/xwIeOZibGL3P91UVc
	D2xwN+4gqruiySUJWjjrv1QTrJgU1olK/juYrYX7ELx20CELZkPBDOoKxWMunvqw0hAXslVJ+vEIm
	cMLtUhDzgou/iPjFWdWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szgFz-00000001avU-2yWi;
	Sat, 12 Oct 2024 17:50:23 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szgFx-00000001av5-0GXN
	for linux-phy@lists.infradead.org;
	Sat, 12 Oct 2024 17:50:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F40D05C53EA;
	Sat, 12 Oct 2024 17:50:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01879C4CEC6;
	Sat, 12 Oct 2024 17:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728755420;
	bh=cx6Pvdv1nHHzFGthHhK4crRNguO0nM8fiCJWTSJKPtg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=RPt2qnIa95w5D+ow6FMQKKSgb/qjFNY3e/ovL1pG3eAWfiOdk/yHs7rVGnzG3Fu6Q
	 k1FkFM1zyagH2OZi5JXEefIj3I8ECl7KUJS8vwpJ3ruGHRPVsX583VlY5NLJk9r1tb
	 ZZsnrgsV93wm3mTuOzYLwxhooPUQwSqM5UBKksFPmZrfoVgSOJqr+ZsYhVmNaicWzS
	 EhvMAy6UQN77CXcBq4c9f9SV7rOBHdEgqoREiWxfah3u5JYXsPH3Moo189VYyvQlP8
	 8x50u5Czi+PrHxCxdOHLnlFQ6QM3V2PM+pK3aQJSRHJilD7KAUVVMNRIpDx/tmUaDt
	 /U2H3Yc0bgHVA==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Justin Chen <justin.chen@broadcom.com>
Cc: florian.fainelli@broadcom.com, kishon@kernel.org, 
 bcm-kernel-feedback-list@broadcom.com, alcooperx@gmail.com
In-Reply-To: <20241010185344.859865-1-justin.chen@broadcom.com>
References: <20241010185344.859865-1-justin.chen@broadcom.com>
Subject: Re: [PATCH] phy: usb: disable COMMONONN for dual mode
Message-Id: <172875541748.55871.12396930604564807795.b4-ty@kernel.org>
Date: Sat, 12 Oct 2024 23:20:17 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_105021_185635_64601AD8 
X-CRM114-Status: UNSURE (   5.67  )
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


On Thu, 10 Oct 2024 11:53:44 -0700, Justin Chen wrote:
> The COMMONONN bit suspends the phy when the port is put into a suspend
> state. However when the phy is shared between host and device in dual
> mode, this no longer works cleanly as there is no synchronization between
> the two.
> 
> 

Applied, thanks!

[1/1] phy: usb: disable COMMONONN for dual mode
      commit: 1e48fd0574ee697e87f9c9bbd64d9a121d271f7a

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
