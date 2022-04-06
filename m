Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48EF1C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Apr 2022 20:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irFLtIOU9up3CkkT4PE1VUxdL1K5X+7XMiCZWMIbU68=; b=Is4zbPToWhkM87
	wli1WGiRFqAMMeHAXr3tf3iAJyQWOZAscxvezi0Ltk/oZCO73zIDocrPoYaPb2xaru++v8jSg8uLQ
	JhcNjNM3ik1mIWojLj5VFmyN4RVfXgL81ZQkyMIg6UzWKTrCdEKQ1QThfVsf5OhiM+QOlcwE4LA0g
	RVO2anf8DL6B3qNrW4CHB7MGzghdrzRukb/rFUOqynrWyhUCpS85yFpedPB8Dz3NTPUJ3wb6h4TMJ
	UpRMADrLmKvoMjFzL3RILAsbNFXMTYUGr73gyMWuCDGBoY5kvmd12+iVReQHuZl+rj1JBlwyQ1Pa2
	IalQqNGn387t/GTKP6Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncBxN-007oJp-Ln; Wed, 06 Apr 2022 20:08:45 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncBx5-007oDO-0h; Wed, 06 Apr 2022 20:08:28 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 k25-20020a056830151900b005b25d8588dbso2470398otp.4; 
 Wed, 06 Apr 2022 13:08:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=Jba1vSeRP1HF/2xdMVwK3zKEPMIqomVyRzHfIeKZsuY=;
 b=JWOCZTWio9Fyyx4Jfm8i/NPTzdnkRLYbRh3STzA5U6l0VDeIRmRgOkZY/7H+MRlukm
 G9iyhLEnQUGjr58CX2pWPBcZmLCxLQtTXWs+mc/2TIJC3vVopF6Psm3qhHmVKrcHPX31
 urh+EJpcb3SLMmZp3U3W7wnJomDMoGKrSQVOZNZgliRIGAMJs5v4aVg0qmUWpdYbDl3e
 K2XuHDq5bdiMryBw9KcEGjial2Wp2BkA2twJ+vXIMX+6+eReKHOA0HNyM8oZHY1HOfQI
 ILgbJYx1mPKRUbNMUnT4Fne11EKG8GC+CR7xJJ+DPEtVvjl1RlbjUcFv95vMOJpyYzzQ
 eB+w==
X-Gm-Message-State: AOAM531OB3by9emGVc3TYYLf/O87fOTpZzLfrandflMqctHbNP0CPcIi
 Vg4SlSGMw1TL98H63OgsTw==
X-Google-Smtp-Source: ABdhPJymdB2qRyAE4P6pRY0v0g5bx14Pp9fxc/u5M6zMOtOt95SXs96EoRWJvD2Hj1G1XlilxiDxKg==
X-Received: by 2002:a05:6830:1498:b0:5cd:a787:e8c1 with SMTP id
 s24-20020a056830149800b005cda787e8c1mr3759352otq.11.1649275705675; 
 Wed, 06 Apr 2022 13:08:25 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 s22-20020a056830149600b005b24a96174asm7200413otq.8.2022.04.06.13.08.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Apr 2022 13:08:24 -0700 (PDT)
Received: (nullmailer pid 2682168 invoked by uid 1000);
 Wed, 06 Apr 2022 20:08:22 -0000
From: Rob Herring <robh@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Robert Foss <robert.foss@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>, patchwork-lst@pengutronix.de,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org
In-Reply-To: <20220406160123.1272911-5-l.stach@pengutronix.de>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
 <20220406160123.1272911-5-l.stach@pengutronix.de>
Subject: Re: [PATCH v0 04/10] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI PVI
Date: Wed, 06 Apr 2022 15:08:22 -0500
Message-Id: <1649275702.760311.2682167.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_130827_098785_4D2D27A5 
X-CRM114-Status: GOOD (  10.33  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, 06 Apr 2022 18:01:17 +0200, Lucas Stach wrote:
> Add binding for the i.MX8MP HDMI parallel video interface block.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.example.dts:26.45-46 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:364: Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1401: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
