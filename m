Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 629EFE6F086
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dnIzqd54JNPRbFrRG8anKe6qSQhF6FU977Ay7WM00Ww=; b=R0yB57CqdW5l+l
	0GXjmgiEcBwC5CK7MRgXQh/ACsUGDuFaDzeFXkGyPLU9FBiAwNeWFEnNXU+wwDgZ7hNA5U9MfyRoV
	kcumMcdniHK5ViwIGxJWn2hH9bemdnF2IM5kv9A7A7XaSB5jA6zC8Q2yoGsdTbCCPqDt0pVAbM/+C
	6d+msL0jdCbz204IDa2lb2YefFnr6VHteKe/qHa29ZkpaOBJERVm5Tv2BcGADolBpsswEuo0MrwBt
	NLTHuOxhwTTrN8TLoRFq2eZlb4i1jqi0VKAOGyq4FK6trWGLP+VyTMj7iQm9byhkW2SD+Vue1Rqhb
	6Xw+JgB1lIAYIUraFqcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Gh-0000000Fpeq-0bm3;
	Tue, 23 Dec 2025 17:33:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Gf-0000000FpeR-3XbM
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:33:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 46F0660139;
	Tue, 23 Dec 2025 17:33:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC800C116B1;
	Tue, 23 Dec 2025 17:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511233;
	bh=140O8L5hM3fV6uRa6W72nPSfVxzYilOZdhot67zls6Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=XkM7e3WwLaqz9w+fcEgZBhDJvS3gmHjYchmNJke4L7G94gIVkg0HOONmz1+QY0sp3
	 EAV84wghcCUpYTeigcm7ELp5Bpj7FGVRs1Pf6OyguBUZDcZHplMreBxUTelJwM5/Gm
	 516D/Ytw6rXhKqLsoXZBuTk63wodgYoZqJPhXzRja6GdhqTfqNpl6i+PNyQ1/ndkCV
	 3cOWw2bTsybsYdPzQ5uJKNjY5hblVL2FIDZhfuO0tVql3P9ld9S49AKnNSK9bTRMy6
	 S8SXjkfKZlskuIX+tCHCudBZUkMyYltQsGKsasbqVZIEwRgFKu4u+aMe2KrwDJkZ3D
	 oAK/huBecBTEA==
From: Vinod Koul <vkoul@kernel.org>
To: neil.armstrong@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
 kernel@pengutronix.de, festevam@gmail.com, j.zink@pengutronix.de, 
 linux-kernel@vger.kernel.org, 
 Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: xu.yang_2@nxp.com, jun.li@nxp.com, Frank.Li@nxp.com, haibo.chen@nxp.com, 
 linux-phy@lists.infradead.org, imx@lists.linux.dev, 
 Stefano Radaelli <stefano.r@variscite.com>, 
 Leonid Segal <leonids@variscite.com>, 
 Pierluigi Passaro <pierluigi.p@variscite.com>
In-Reply-To: <20251219160912.561431-1-stefano.r@variscite.com>
References: <20251219160912.561431-1-stefano.r@variscite.com>
Subject: Re: [PATCH v3] phy: fsl-imx8mq-usb: Clear the PCS_TX_SWING_FULL
 field before using it
Message-Id: <176651122841.749296.2874068673012798981.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:03:48 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Fri, 19 Dec 2025 17:09:12 +0100, Stefano Radaelli wrote:
> Clear the PCS_TX_SWING_FULL field mask before setting the new value
> in PHY_CTRL5 register. Without clearing the mask first, the OR operation
> could leave previously set bits, resulting in incorrect register
> configuration.
> 
> 

Applied, thanks!

[1/1] phy: fsl-imx8mq-usb: Clear the PCS_TX_SWING_FULL field before using it
      commit: 8becf9179a4b45104a1701010ed666b55bf4b3a6

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
