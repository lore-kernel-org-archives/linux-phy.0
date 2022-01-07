Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65471C433EF
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jan 2022 13:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GeDWlOz48Xa4YT2UA6XDavYJrlwXSgux9jLBYELwew8=; b=d1uTKOLGPkGqBR
	epXXLtbhY3vxJSAKeQHNvrExVDcjgp3bznkErxpsHUW5o4MJJxuHkarU2DwcruYJZlYFPP/UI8bOC
	PJXER1Rcib75mHN1FUdOPmzm97DizhMe05RWF47Yr7KExyv0GdSQVwbzmbUzuJOLeHDjFOKQxWfUu
	6LUhlSZQymPyA0EB4oC647wYdIQUiRQfQ+GXEAJZO6dJfZDLdvashNMsPV4lvtEsFWLDYnTuHoYoM
	j7cKMre0meXx2/76d5uMdvRNtTY8fA8t5AZP8PZX+EXW0z8tB3nGC9/ysQwxFq3V1K6+xKWwZ+58R
	PuwC9N9+anFO+P8WKdsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5pWd-0041NS-Qs; Fri, 07 Jan 2022 13:43:23 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5pWQ-0041H6-0H; Fri, 07 Jan 2022 13:43:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1641562990; x=1673098990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TzlNRoPFKE9uxp+QTQ0H33W6AYljsZGXfziVit12Tno=;
 b=aBQnI6zvVfBx1hZtnD0cMyYar3UwNp/dgLlhb+Ul02zEOR+D+L8hdM1F
 sOOWxq7TDuFoPnO08o5WkUL8xRkIArT5rpF3E3DMrwFmLnoMVqtpjyJNS
 kxHxzy0JlKlRftFeOaYgQQOl/gSz59HYiOFTpHSRCJ/IzS7Kbo69XF9v/
 yRGLITNfPA7Qxbhy2soZX/lU1J5XI50lov2Le3NP56XVGa4tgFLn6rVZL
 EjaxQvhctqBFKdiaxZtSzrpEDHU+BkxSi5wu1WWhbFfOCoFCRqubus2jf
 OYn/tegp56CgzH5FbZfiuS9KzBURwzPaiEREls0QMUK2l2iva3XI9p1OG A==;
X-IronPort-AV: E=Sophos;i="5.88,270,1635199200"; d="scan'208";a="21379011"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 07 Jan 2022 14:43:05 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Fri, 07 Jan 2022 14:43:05 +0100
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Fri, 07 Jan 2022 14:43:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1641562985; x=1673098985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TzlNRoPFKE9uxp+QTQ0H33W6AYljsZGXfziVit12Tno=;
 b=hAk8zXGPN9hEzsOB4kQCujxGtDlaDe6MOpOHH1osx+Rle1tb7KCpiEnV
 CtttNnqZfEkHe+GbSHte/ZleSs/JXnUDgM+VdURLHJpMSIg/QH3OWSD5k
 WpUcDu6t8kVmYADfBR+OlQfuP6ZWMa5QcF2KgBGhaKMv2VVztQyYxSQaZ
 634QbTYWFlWjX2/U0EI0ti/eFvj0jZu58D79jAUbxtQvuY7HpZiqPm7Xg
 CUeGbXU5uDiQPEqZp+Bk7rC42w0YNdYWOO2iiIBYGA8az1Lc16WqOFzS5
 74llYt0HekJul2OyH/HB1/exwgZPqnaTA9UQJ0oA/b14EpcCeOEwDuUHC w==;
X-IronPort-AV: E=Sophos;i="5.88,270,1635199200"; d="scan'208";a="21379010"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 07 Jan 2022 14:43:05 +0100
Received: from steina-w.localnet (unknown [10.123.49.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 2F4F6280065;
 Fri,  7 Jan 2022 14:43:05 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Cc: dl-linux-imx <linux-imx@nxp.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Subject: Re: (EXT) RE: [PATCH v2 0/3] i.MX8MP: more USB3 glue layer feature
 support
Date: Fri, 07 Jan 2022 14:43:02 +0100
Message-ID: <4835974.GXAFRqVoOG@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <VI1PR04MB43337694F243F8D1B1F6DBCE897D9@VI1PR04MB4333.eurprd04.prod.outlook.com>
References: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
 <VI1PR04MB43337694F243F8D1B1F6DBCE897D9@VI1PR04MB4333.eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_054310_524658_22454BC9 
X-CRM114-Status: GOOD (  24.72  )
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

Hi,

Am Mittwoch, 22. Dezember 2021, 04:18:57 CET schrieb Jun Li:
> > -----Original Message-----
> > From: Alexander Stein <alexander.stein@ew.tq-group.com>
> > Sent: Friday, December 17, 2021 12:06 AM
> > To: Kishon Vijay Abraham I <kishon@ti.com>; Vinod Koul <vkoul@kernel.org>;
> > Rob Herring <robh+dt@kernel.org>; Shawn Guo <shawnguo@kernel.org>; Sascha
> > Hauer <s.hauer@pengutronix.de>; Fabio Estevam <festevam@gmail.com>
> > Cc: Alexander Stein <alexander.stein@ew.tq-group.com>; dl-linux-imx
> > <linux-imx@nxp.com>; linux-phy@lists.infradead.org;
> > devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> > Subject: [PATCH v2 0/3] i.MX8MP: more USB3 glue layer feature support
> > 
> > This patchset aims to support flags for e.g. over-current active low or
> > port permanantly attached which are provided in the USB3 glue layer.
> > 
> > There is already a glue layer driver dwc3-imx8mp, but unfortunately this
> > driver does not use the glue area at all, it only handles wakeup-support
> > which is done in the HSIO BLK_CTRL area (0x32f10100), accordingly the
> > driver only uses the hsio clock.
> > 
> > The driver which actually uses the USB3 glue area is phy-fsl-imx8mq-usb.
> > As the name indicates PHY is configured in the corresponding registers,
> > which are part of the USB3 glue layer.
> > 
> > This make is it unclear for me which driver should handle the required
> > features above.
> > dwc3-imx8mp, the glue layer driver, does not touch the glue area at all,
> > but the HSIO BLK_CTRL area.
> > phy-fsl-imx8mq-usb only touches the PHY registers in the glue layer.
> > Neither does map the USB3 control register from the glue layer.
> > 
> > Thanks for any feedback and best regards, Alexander
> 
> Which driver handle what function is decided by the driver *function*,
> not where the actual HW logic is located, iMX8MP do have a "glue" layer
> in SoC HW, some part is for phy config, and some part is for controller,
> so we need put the part of phy config into the phy driver, the changes
> you are adding is for controller so should be put in dwc3-imx8mp.c from
> my point view.

Thanks for that feedback. This makes things clearer to me.
Yes, dwc3-imx8mp.c seems the right place for that. I'll do that.

Best regards,
Alexander




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
