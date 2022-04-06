Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46AA7C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Apr 2022 20:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXI8k9KuG774PGF7pWOqEwJAIGcXOdckPntxCgGIoh4=; b=VtLdOokNwYz2tq
	w7+9oJapH5SuUgW/It4leQzdGBqf2Vf87xLQmJGR3AEtW175U47xweOZDl81fDVB2+e6LKY2dmK96
	RBg3kmuIaNuDSEV30b8E/j0v59PVnUx/C9I+svNCDUeevWcr85IibVkO1wFW+UTJd9wafQ9DHDFVW
	nt1rYw2huz8apL/1p5UwHsoq7TBlys/1mIZvSWzPF93J/KuHb873uU1WGf9sPDo6OF+Me/e6Rlr58
	o/CaM27FF5yoSQAKPFKiA1TwDqCDhrzVgAOFPfVPRFkmtzmk249VNeZqBpdR1vT8d9BQZyt1nzLYE
	kcHD52Wrehp1pUEzKIaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncC4z-007pxA-Jo; Wed, 06 Apr 2022 20:16:37 +0000
Received: from mail-oa1-f44.google.com ([209.85.160.44])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncC4s-007pvt-T1; Wed, 06 Apr 2022 20:16:32 +0000
Received: by mail-oa1-f44.google.com with SMTP id
 586e51a60fabf-d6ca46da48so4133356fac.12; 
 Wed, 06 Apr 2022 13:16:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=9GOGQPLtuasIPU+hPu7wy8z60MF6fDmhm1D+vI0APLI=;
 b=MTqEmzKb/fr82r3Nts8yJLNYx6eoRQ+ZtXrtg2T2tq6wvXU5avGaItRgXFkE0lfa9X
 A94i4V0zH7ok9yc7HurI0hRu1rYhJkK1t4jro98BsiX5X10+pna2pRzpzviXa50O5m1c
 Fi/WlJNNAHEnqovAvOo+7DUSt0CwTf+yEWH9lZm764hA8q5/KEZUkKirfuP11EYDFo5o
 l6JQxHrC8PSoZJgbFjj9Tj8VEXa0dReRJU9kJh4etQNXTFM+NFVSRIES3Ce6olmedefo
 RHz/BJDIuWFiY4GwbRiX7FhN2fE2f4s3g2+Kc1yMWWN5Xu+KkmKLlMcCuyVkecwiAjyd
 RzXg==
X-Gm-Message-State: AOAM531CuDbwbQ1pUeavxLEny9dB50tT41CkuJQYpvUFaJCFYgXVgAwE
 T4dLVKVzKcol9/HyAecSBBF+ZtG5hQ==
X-Google-Smtp-Source: ABdhPJwPM2nBzH3fx/dq32NcGY5jSLBz2GG/NZTBkySkXZIlhqcuKORPud0F4Xp5Kssn3AamEfuZBA==
X-Received: by 2002:a05:6870:f20e:b0:e1:c609:74d8 with SMTP id
 t14-20020a056870f20e00b000e1c60974d8mr4701557oao.34.1649275707803; 
 Wed, 06 Apr 2022 13:08:27 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 n62-20020acaef41000000b002ef646e6690sm7028605oih.53.2022.04.06.13.08.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Apr 2022 13:08:27 -0700 (PDT)
Received: (nullmailer pid 2682170 invoked by uid 1000);
 Wed, 06 Apr 2022 20:08:22 -0000
From: Rob Herring <robh@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, patchwork-lst@pengutronix.de,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <robert.foss@linaro.org>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
In-Reply-To: <20220406160123.1272911-7-l.stach@pengutronix.de>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
 <20220406160123.1272911-7-l.stach@pengutronix.de>
Subject: Re: [PATCH v0 06/10] dt-bindings: phy: add binding for the i.MX8MP
 HDMI PHY
Date: Wed, 06 Apr 2022 15:08:22 -0500
Message-Id: <1649275702.767869.2682169.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_131631_028820_17EFE877 
X-CRM114-Status: GOOD (  11.48  )
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

On Wed, 06 Apr 2022 18:01:19 +0200, Lucas Stach wrote:
> Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.example.dts:29.45-46 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:364: Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.example.dtb] Error 1
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
