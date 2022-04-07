Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0286C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 16:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FzySnJNTQSlDM0QZzo18zQj33nb5Nj6S9kcMN/YXQDE=; b=JazfnenGCa35Jd
	xwaLRt9sg5WWpxwqiAmpu50CDgv7hURoWoyexCCz9+uhsmNCXh40iZPq6pbGNX5xl0jr+HF1PZC0L
	ZSJBFV+IUn5a3W3WqCqBmlX61k+sUjTlzgxS7ZrsznGFhmzvOInO6tVYa/ax1rZfwdEEKRZxzNUff
	u8GA6o5JuBALayImzyMUbRnICZjSNJ2K++Riir/TnP8JJRpx9k/20omxB80B7eMC3nu26iSQuf6mI
	6S9TSXaSxe1Isfv2FIYwrFUXZcpO4bmiyprbmvd+S7Z0AginubQjXh3lf8i2G+29rsHWMD28GakZN
	p6kfHqEPs4PZbSpNiF/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncVUD-00DFxH-CB; Thu, 07 Apr 2022 16:59:57 +0000
Received: from mail-oo1-f41.google.com ([209.85.161.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncVTu-00DFp0-BY; Thu, 07 Apr 2022 16:59:40 +0000
Received: by mail-oo1-f41.google.com with SMTP id
 p128-20020a4a4886000000b003296205eb59so1027660ooa.7; 
 Thu, 07 Apr 2022 09:59:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=aC19x5r9rZubAKpC81guZrRX4y273dQzbgSbAky6Be0=;
 b=23/QVV2g+jPC0bpWD/N8n5FociETvCAAzcpmMoOeuOwPZoIu0JtUA+2lUQJGPuGu9R
 ynEOrfhCjhzjaPP0hvPviak5GxDkhqvNkcXz4cTFkbT4ErT8E21WFknRzEEJPM7lkYEl
 DyzlmujpJsiHLbHLVXj/Sui0RqOhpgT9G3qFqSTeDMD1zNPAjnMqTqUwyTfFudplXwvN
 DIo9c2TXrKZvOQxusuQieKWy4RcKpIMaXvmSD+pZoEco0xogtR987VClDbXPvWJTeiKp
 Wfx6sS+jh1txbrB8/7K0nOr9k+ijcYe1o4tFK4pXX3dRD3nXvUgjOUFBOf6kvsrscc2z
 OT1g==
X-Gm-Message-State: AOAM533/m7mO93SSrgSf2/ffVnAXj0H4Z1PZ+lbQbegNDNemfyXRm+ot
 IBFAI5XSSaildQ5NEVZsCA==
X-Google-Smtp-Source: ABdhPJyX3QvTe0zmiLuNGWZy+chauwpSC9x6rEqLF6MEabvEoOfirFI8gL6EubY0Io0O9Jw5NP94Nw==
X-Received: by 2002:a4a:d1c4:0:b0:329:7ba9:1c43 with SMTP id
 a4-20020a4ad1c4000000b003297ba91c43mr4805762oos.63.1649350777082; 
 Thu, 07 Apr 2022 09:59:37 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 f8-20020a4a8908000000b0032472938f95sm6737942ooi.17.2022.04.07.09.59.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Apr 2022 09:59:36 -0700 (PDT)
Received: (nullmailer pid 1401083 invoked by uid 1000);
 Thu, 07 Apr 2022 16:59:35 -0000
Date: Thu, 7 Apr 2022 11:59:35 -0500
From: Rob Herring <robh@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Robert Foss <robert.foss@linaro.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-phy@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, patchwork-lst@pengutronix.de
Subject: Re: [PATCH v0 02/10] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI TX
Message-ID: <Yk8Yd1etl7pK3B+a@robh.at.kernel.org>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
 <20220406160123.1272911-3-l.stach@pengutronix.de>
 <1649275702.749756.2682164.nullmailer@robh.at.kernel.org>
 <6ce2484e9b0482b01c139118cc5b5472e5563314.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6ce2484e9b0482b01c139118cc5b5472e5563314.camel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_095938_458713_AB3D9131 
X-CRM114-Status: GOOD (  18.58  )
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

On Thu, Apr 07, 2022 at 11:15:26AM +0200, Lucas Stach wrote:
> Am Mittwoch, dem 06.04.2022 um 15:08 -0500 schrieb Rob Herring:
> > On Wed, 06 Apr 2022 18:01:15 +0200, Lucas Stach wrote:
> > > The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> > > core with a little bit of SoC integration around it.
> > > 
> > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > ---
> > >  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml | 72 +++++++++++++++++++
> > >  1 file changed, 72 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> > > 
> > 
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > 
> > yamllint warnings/errors:
> > 
> > dtschema/dtc warnings/errors:
> > Error: Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.example.dts:36.45-46 syntax error
> > FATAL ERROR: Unable to parse input tree
> > make[1]: *** [scripts/Makefile.lib:364: Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.example.dtb] Error 1
> > make[1]: *** Waiting for unfinished jobs....
> > make: *** [Makefile:1401: dt_binding_check] Error 2
> > 
> > doc reference errors (make refcheckdocs):
> > 
> > See https://patchwork.ozlabs.org/patch/
> > 
> > This check can fail if there are any dependencies. The base for a patch
> > series is generally the most recent rc1.
> > 
> Those failures are caused by the example referencing the power domain
> defines, that are only added in a dependency of this series. They build
> fine with all the dependencies applied, so please don't let this bot
> failure prevent you from looking at the actual bindings.

I review the failures. It otherwise looks fine.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
