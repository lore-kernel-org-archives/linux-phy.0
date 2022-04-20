Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A793C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 20 Apr 2022 09:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7pw+6WL/0mCQg0oOzFVHVQMlg4MR0x1mnuybt6wO9U=; b=Fsd3/rvSCHOQXn
	Yu1dv8afaowe+x4dOSKx8Vo9z/pE7G3k4duYYzjbGB2I/wc72YLnK0NoDl2kQFL/p6Eut3rfMED5j
	jM00/YqlUjrvPr653fhnMjxrHC7pwU6vTcTruGkQK5v8cY6KUO0uiWeR8FQ7TX4jpFLLrv6aFyNs8
	9LZtvqiA2idsGem250rM1OVwhux1b0IG9fhyLnRaKHt83ovlILY0s2X/pmOeWt1nIkJyVw3Qwe2lr
	TezIQJp6rqgAWppOKsitkG5FJxrzz29fC98xKPRF0gReJe3f11DczYg1lORYxCKwICEdk3SfOuiaO
	vWW7SeR6HsVZjae9l6wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nh6Ov-008G0W-DH; Wed, 20 Apr 2022 09:13:29 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nh6Oc-008FsT-4X; Wed, 20 Apr 2022 09:13:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 758BBB81D01;
 Wed, 20 Apr 2022 09:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3F5DC385A0;
 Wed, 20 Apr 2022 09:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650445987;
 bh=KDKHfjJ60ROxsjebYEm1b6mZhzJhCIIDKLlG34vY1xA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XMm+ng/+JZbmFE/tHjl+BF1lzEkmc54zPNeeuf8f3QeZ0oWBqMWDoUbkx+Ojc+eJE
 syt3gfzs455M44by3WwxZZZTpTOvzF8LhcuyHHJ3/szsD7mbTh5v0K3vaa7ksjWlD3
 fZ88cDkQPr77WcpduzlqrYDJs4aYGYzD8Cagi6yVGQd09EvtRe/WY1kvHXPVlkkW7I
 0WimFs1uVoz5Cn7+rlY8tBa0hvSozc4Oja6ryaWOQAIBki/wSEn7iB7qZaMF/u0IWA
 1kLm8j0Q1qIYigy04oG6rie8rmkzi30V6mOAMYwwnM+q3gNSq9t1bZnXr6xNE6+qcY
 GBmFR4Txhtnkg==
Date: Wed, 20 Apr 2022 14:43:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Subject: Re: [PATCH] phy: amlogic: fix error path in phy_g12a_usb3_pcie_probe()
Message-ID: <Yl/On7djKiVXD8I/@matsya>
References: <8e416f95-1084-ee28-860e-7884f7fa2e32@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e416f95-1084-ee28-860e-7884f7fa2e32@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_021310_357422_16B5FAE2 
X-CRM114-Status: UNSURE (   8.68  )
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

On 15-04-22, 16:03, Heiner Kallweit wrote:
> If clk_prepare_enable() fails we call clk_disable_unprepare()
> in the error path what results in a warning that the clock
> is disabled and unprepared already.
> And if we fail later in phy_g12a_usb3_pcie_probe() then we
> bail out w/o calling clk_disable_unprepare().
> This patch fixes both errors.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
