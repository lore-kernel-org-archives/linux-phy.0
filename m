Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 231BFC0015E
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jul 2023 10:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uT7YzC+z3KKEIQ9cdcyf1WM9y8hVX4dJ6EonCuxJSZY=; b=cFoBPGW9NeVLhi
	DRcipZDPnzENntjB6JxaCIURcAJ0Xcgj87rx7WStmJ24YM5GYrRfHdz2nUlYyCZbcfRHHIGZ9NgTm
	2BMgqGVuKY+bfLW3mCdTYr8qarIoNQjPZUqV5b02s1tBZfnm043BhyQp2ICRYF26gyfWt3dg0voCQ
	dcJJ2U83gKwrMqhLmIZJdsSIHNU9JIWJOsWq2bqa5njM7IjY1OnhmP9s2GfClUCvOpWo1JxC1Nfvi
	EqNOkPKj8Go3G/tc7KyWgaQ6ShknWd8fGTFHrNhOMzoOaYoscHY2e7w3qE7eW1M9ziiMFm6qhC396
	/Fbf2nk9plZR9d23XeBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNtEp-003uzo-2m;
	Mon, 24 Jul 2023 10:56:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNtEn-003uyV-1s
	for linux-phy@lists.infradead.org;
	Mon, 24 Jul 2023 10:56:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BC55C61022;
	Mon, 24 Jul 2023 10:56:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0DAEC433C7;
	Mon, 24 Jul 2023 10:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690196184;
	bh=Sq8Naj+SLCMOVbiFEc9mTSfYNfyJrtjHPO/jeFnc4H0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Tz+jsQpGP76OVVI/kBOsqmsVFQtqcnY7O+vQHC9NGAIXzV+BaiaDFAIYzI2BE06Up
	 C4fnVV+JLd7a7jpBRmZYjJbm+RokcausZDGHsIM5JjRPWC4bB4oXSwkDGkp7eqaIFM
	 u0FNUAg+XhjRtxmWOyL9GpLq7A4Advx/HnvrQHH+JJz+V6bpQzn8tMHIdyz7DmJ9k8
	 MsFFWDQxgp9CnwFMRK4JoFmvaHaHsFfewr/hwF2ySNy6AyLFkIkILok6D4bJCMxzL+
	 InVYotTrsaK2tg4AeXJmFE+iuNt1oD+OUz+GUX1Z2QH3F0tOy7wYUIoxRnCA9ffVT6
	 R/l9btkG05pBg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Sergio Paracuellos <sergio.paracuellos@gmail.com>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, David Yang <mmyangfl@gmail.com>, 
 Shawn Guo <shawn.guo@linaro.org>, Pengcheng Li <lpc.li@hisilicon.com>, 
 Jiancheng Xue <xuejiancheng@hisilicon.com>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>
Cc: dan.carpenter@linaro.org, christophe.jaillet@wanadoo.fr, 
 julia.lawall@inria.fr, kernel-janitors@vger.kernel.org, error27@gmail.com
In-Reply-To: <20230721090558.3588613-1-harshit.m.mogalapalli@oracle.com>
References: <20230721090558.3588613-1-harshit.m.mogalapalli@oracle.com>
Subject: Re: [PATCH] phy: hisilicon: Fix an out of bounds check in
 hisi_inno_phy_probe()
Message-Id: <169019617956.466731.9761851242432174423.b4-ty@kernel.org>
Date: Mon, 24 Jul 2023 16:26:19 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_035625_662154_19DD29D2 
X-CRM114-Status: GOOD (  10.60  )
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


On Fri, 21 Jul 2023 02:05:55 -0700, Harshit Mogalapalli wrote:
> The size of array 'priv->ports[]' is INNO_PHY_PORT_NUM.
> 
> In the for loop, 'i' is used as the index for array 'priv->ports[]'
> with a check (i > INNO_PHY_PORT_NUM) which indicates that
> INNO_PHY_PORT_NUM is allowed value for 'i' in the same loop.
> 
> This > comparison needs to be changed to >=, otherwise it potentially leads
> to an out of bounds write on the next iteration through the loop
> 
> [...]

Applied, thanks!

[1/1] phy: hisilicon: Fix an out of bounds check in hisi_inno_phy_probe()
      commit: 13c088cf3657d70893d75cf116be937f1509cc0f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
