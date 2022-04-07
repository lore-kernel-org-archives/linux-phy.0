Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 767D6C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 09:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HqTnUWyObEn5nwW/fG8bGNk3fO7b3y4NPAcoYYVnes=; b=Yxf5avpNSJS1M7
	3p016sTHnDWBfXZPWZuxeAL9tYEkBTwSs01sn+pAHym4mMr2mP/L1SQa0o16De/+69nYKagxJVzYS
	7LnZ7ynAoBIuFQvHNgRSp1DrnHBIEgW1Pcze6KikbPli+TFC3sWmbhXo4sRxS8168Kuv8UVFkvevC
	FVdiDepAgbREzwTFHuv8ZejejtXpY6YKBsDgIvudzNj+w/GJCJ2egNvvMYEnrkwo7yvJ5Yu/1d/fC
	BOUTDBQ5MjYXxYlhHecJD8Sb5rbMQjdJhA3WSV/hV5MnC3ZWEijGjWYn1B0wKNGixE8WQhGqlhSjn
	HuNFqvpmxXLasVug9g4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOZH-00AuWR-Ej; Thu, 07 Apr 2022 09:36:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncOF0-00AlB6-8g
 for linux-phy@lists.infradead.org; Thu, 07 Apr 2022 09:15:48 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1ncOEj-00019L-5t; Thu, 07 Apr 2022 11:15:29 +0200
Message-ID: <6ce2484e9b0482b01c139118cc5b5472e5563314.camel@pengutronix.de>
Subject: Re: [PATCH v0 02/10] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI TX
From: Lucas Stach <l.stach@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: Neil Armstrong <narmstrong@baylibre.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, Robert Foss
 <robert.foss@linaro.org>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>, Fabio Estevam
 <festevam@gmail.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Kishon Vijay
 Abraham I <kishon@ti.com>, NXP Linux Team <linux-imx@nxp.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  linux-arm-kernel@lists.infradead.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 patchwork-lst@pengutronix.de
Date: Thu, 07 Apr 2022 11:15:26 +0200
In-Reply-To: <1649275702.749756.2682164.nullmailer@robh.at.kernel.org>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
 <20220406160123.1272911-3-l.stach@pengutronix.de>
 <1649275702.749756.2682164.nullmailer@robh.at.kernel.org>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_021546_352049_096344A9 
X-CRM114-Status: GOOD (  14.57  )
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

Am Mittwoch, dem 06.04.2022 um 15:08 -0500 schrieb Rob Herring:
> On Wed, 06 Apr 2022 18:01:15 +0200, Lucas Stach wrote:
> > The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> > core with a little bit of SoC integration around it.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml | 72 +++++++++++++++++++
> >  1 file changed, 72 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Error: Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.example.dts:36.45-46 syntax error
> FATAL ERROR: Unable to parse input tree
> make[1]: *** [scripts/Makefile.lib:364: Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.example.dtb] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1401: dt_binding_check] Error 2
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/patch/
> 
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
> 
Those failures are caused by the example referencing the power domain
defines, that are only added in a dependency of this series. They build
fine with all the dependencies applied, so please don't let this bot
failure prevent you from looking at the actual bindings.

Regards,
Lucas



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
