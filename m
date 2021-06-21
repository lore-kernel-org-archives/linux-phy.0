Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DC63C49361
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 04:13:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3BEDD61164
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 04:13:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3BEDD61164
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=peekkItUA9C+fT2ydt8h6wd7vJMNwpomMyJ/YcqxRGM=; b=mwtNNFrUY2Fol5
	OMN2/k3QEmaC+YVfiyCZ7XBGMEXp3CiapIZUESllTJ3vbJhxFcsmp50d9eduFMXiXSxbdk9TwAagF
	xDdX8e3UcOu0RUdGcQqO2kPmt8HTm8MuEOKnJ13FjqYLwKvkyA44XoBVFU9jQFGem2/bi2DxTWC0y
	pJi32wRV3mLo4CF4FhyqKMkFv5q9MYQ3vO6+7mDpDh/zq5Oe+RqmVvITkbgq3+IoA2ceIIFyMwv3v
	NSb/BecPd+KJCLHLGZ9YWAg5cmASOgFPJ+cWXr5UU2vPT672TI3BHN2Da8DokTXdTriNnqsPwhab5
	Z+YB+DIfzZ+eoEmJWg0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvBJQ-00220b-Nj; Mon, 21 Jun 2021 04:13:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvBJO-00220C-4r
 for linux-phy@lists.infradead.org; Mon, 21 Jun 2021 04:13:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E0443610A3;
 Mon, 21 Jun 2021 04:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624248805;
 bh=HXX8RkH8FI9Ns0ul+bANhuI1hFDKkHFVq6JZa+s543c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dQeUe2ng/CRGnszcjVcP5VnVquKi4anNuNPV8OtSbugLvxAYMqeISuKScXA4E5iQf
 sYME/dKS68aQFkUmrK85fw7RXdMBTDF/0ihUfD9uYWv7iVyJCfHL2azKfMHAn74Yl4
 8+ouZCnwPfzrOqMxjwxGAGWp2L7ucWi5ozArL/DeLG3wdSmzJ7Ah9VSMhFZStgYrmP
 nxnCc7flftXGRIIg+L/hXI9NUAUKFgJcJe1okz7wJoan3kc4WSCwiuvp1iOJlplnIC
 Pqr4WItvFeWOl+SHqlKbo/bKWhSw1sTUBK+S2+2DCh2eLSxz5UkDRHwcXe2pK/j4se
 5m8eTwtnmqTeA==
Date: Mon, 21 Jun 2021 09:43:21 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH 3/6] phy: renesas: Add RZ/G2L usb phy control driver
Message-ID: <YNAR4XKMLHsdWzbM@vkoul-mobl>
References: <20210611134642.24029-1-biju.das.jz@bp.renesas.com>
 <20210611134642.24029-4-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210611134642.24029-4-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_211326_249103_720CD0AB 
X-CRM114-Status: GOOD (  11.03  )
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

On 11-06-21, 14:46, Biju Das wrote:
> +static int rzg2l_usbphycontrol_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct rzg2l_usbphycontrol_drv *drv;
> +	struct phy_provider *provider;
> +	u32 val;
> +	int n;
> +
> +	if (!dev->of_node) {
> +		dev_err(dev, "device tree not found\n");
> +		return -EINVAL;
> +	}

why do you think this would happen?

> +
> +	drv = devm_kzalloc(dev, sizeof(*drv), GFP_KERNEL);
> +	if (!drv)
> +		return -ENOMEM;
> +
> +	drv->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(drv->base))
> +		return PTR_ERR(drv->base);
> +
> +	for (n = 0; n < NUM_PORTS; n++) {
> +		struct rzg2l_phyctrl *phy = &drv->phyctrl[n];
> +
> +		phy->phy = devm_phy_create(dev, NULL, &rzg2l_usbphyctrl_ops);
> +		if (IS_ERR(phy->phy)) {
> +			dev_err(dev, "Failed to create USBPHY Control\n");
> +			return PTR_ERR(phy->phy);
> +		}
> +
> +		if (n == 1)
> +			phy->phy_reset_port_mask = PHY_RESET_PORT2;

this looks inverted, should this logically not be:
                if (n == 0)
                        phy->phy_reset_port_mask = PHY_RESET_PORT1;
?

> +		else
> +			phy->phy_reset_port_mask = PHY_RESET_PORT1;
> +
> +		phy->drv = drv;
> +		phy_set_drvdata(phy->phy, phy);
> +	};
> +
> +	provider = devm_of_phy_provider_register(dev,
> +						 rzg2l_usbphycontrol_xlate);

single line pls

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
