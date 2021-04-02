Return-Path: <SRS0=ixR+=I7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07A76C433B4
	for <linux-phy@archiver.kernel.org>; Fri,  2 Apr 2021 10:39:34 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9D31260FD9
	for <linux-phy@archiver.kernel.org>; Fri,  2 Apr 2021 10:39:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9D31260FD9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JmBBeaeXARcqIK+IYU+CzrBmolkzYZeMh4u4nr3q1Jo=; b=lrltLbFBpSpPrcnsH7wWEXSGQ
	0iFCLrsIie9XqVYmXc90yq/haNB7HBWctr8sUJwg3N21saE1e0obtipTe6NAScDzJ7x95oBnZjc5/
	uIzh6Xrw4QNS5IlfS7HMilF+mD08aESy4Gr6voQ22LdZerd7dEAw3YL2NTCo7W5PcYuTEPWs4R/x2
	6ZLbTMrB7pWRwD+myNFIm6g4Zp8HVk74KkoYJ4LqW6p3QkeZ1m6ZEDCB3tT8YKClcmh+dQqJAXjBA
	QR0jQEsErEi/OHr+T30XEDBv5mFmQ+XFccjzZH8V/pnz/Bmhs6aMHk1KHNfeq0AaGPIotyzZ/3SJv
	HtaXSDBCQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSHD9-00CnAS-0g; Fri, 02 Apr 2021 10:39:31 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSHCd-00Cn3G-0a
 for linux-phy@lists.infradead.org; Fri, 02 Apr 2021 10:39:07 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 971302C1;
 Fri,  2 Apr 2021 12:38:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1617359937;
 bh=sZR3sSwoDUoM230emJjHnzx6XJSMp3h9iknmHtUO+6o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PnzgGaeI8fPjY7zLqQdiAZL2gQRYwL1i95ib4yqkJ7OKrubESUo8UW3CMttNCmK29
 ntUF9VYXsSqRUcUemNLmlWBwgd/RamQ8IbN2Z8g5To+DevHUPaBzPEbhKHxmtp49aZ
 /cEt+POVga0378zGBuzX4DijdKe1QJXTZ8YYaSLc=
Date: Fri, 2 Apr 2021 13:38:13 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Peter Chen <peter.chen@nxp.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 dmaengine@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH 03/16] phy: cdns-dphy: Allow setting mode
Message-ID: <YGb0FSW5KRICftiK@pendragon.ideasonboard.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-4-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330173348.30135-4-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210402_113859_845399_227F929F 
X-CRM114-Status: GOOD (  20.80  )
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

Hi Pratyush,

Thank you for the patch.

On Tue, Mar 30, 2021 at 11:03:35PM +0530, Pratyush Yadav wrote:
> Allow callers to set the PHY mode. The main mode should always be
> PHY_MODE_MIPI_DPHY but the submode can either be
> PHY_MIPI_DPHY_SUBMODE_RX or PHY_MIPI_DPHY_SUBMODE_TX. Update the ops
> based on the requested submode.

Isn't a given DPHY instance always meant to work in one particular mode
? I can't really imagine a single instance of this IP core being
integrated in a way that it can be used in either RX or TX mode. It
seems better to select the mode through DT, by describing if the DPHY is
an RX or TX (possibly through different compatible strings).

> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
>  drivers/phy/cadence/cdns-dphy.c | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
> index 8656f2102a91..7d5f7b333893 100644
> --- a/drivers/phy/cadence/cdns-dphy.c
> +++ b/drivers/phy/cadence/cdns-dphy.c
> @@ -365,11 +365,41 @@ static int cdns_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
>  	return 0;
>  }
>  
> +static int cdns_dphy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> +{
> +	struct cdns_dphy *dphy = phy_get_drvdata(phy);
> +	const struct cdns_dphy_driver_data *ddata;
> +
> +	ddata = of_device_get_match_data(dphy->dev);
> +	if (!ddata)
> +		return -EINVAL;
> +
> +	if (mode != PHY_MODE_MIPI_DPHY)
> +		return -EINVAL;
> +
> +	if (submode == PHY_MIPI_DPHY_SUBMODE_TX) {
> +		if (!ddata->tx)
> +			return -EOPNOTSUPP;
> +
> +		dphy->ops = ddata->tx;
> +	} else if (submode == PHY_MIPI_DPHY_SUBMODE_RX) {
> +		if (!ddata->rx)
> +			return -EOPNOTSUPP;
> +
> +		dphy->ops = ddata->rx;
> +	} else {
> +		return -EOPNOTSUPP;
> +	}
> +
> +	return 0;
> +}
> +
>  static const struct phy_ops cdns_dphy_ops = {
>  	.configure	= cdns_dphy_configure,
>  	.validate	= cdns_dphy_validate,
>  	.power_on	= cdns_dphy_power_on,
>  	.power_off	= cdns_dphy_power_off,
> +	.set_mode	= cdns_dphy_set_mode,
>  };
>  
>  static int cdns_dphy_probe(struct platform_device *pdev)

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
