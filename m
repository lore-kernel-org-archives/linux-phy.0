Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD545C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Apr 2022 20:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J7CqkZJJcjThiSUgFxTjBdxbx9t9ECpDrBrybfRca6Q=; b=Xqd0/oqwFoEHGP
	v0LY+cRgxsuL0u199HamNY6oKG+++DMyyeC86jreDwZajeBjU6/a9ywEHou/yQTdF9igYfXboGukv
	P1MU5hLO7U+WoSSbK1HSRghWiqsTmg3mdTNqmQ8tjmrl8HXHEokdD8FeWu7UIdj+XSK64dO2sizEN
	ezI0ZfG/B7NeuS0Mt7bHoIT2hUw/HHlZ4SLhDTQOHdhIMl+znrZfu9DnzHGPPw3dMggj1dgl6dtUM
	VGNtrWeRYwU+cimd7KXgnzMSq6FKjMrNwkkpVay8ExkNn7PMyX+Qv2GOkjfHcQ0EzViYDGJ2/k3mo
	sHHr6u26M/lo45RT5A9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncBxE-007oFc-0q; Wed, 06 Apr 2022 20:08:36 +0000
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncBx3-007oD2-Di; Wed, 06 Apr 2022 20:08:26 +0000
Received: by mail-oi1-f178.google.com with SMTP id z8so3584303oix.3;
 Wed, 06 Apr 2022 13:08:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=Ij58TvIE+TDuatjfhEwf9b3mQ663OItZ9ImpiU3kgrI=;
 b=ML9gsigDAtoS0iOLa5skBnicHX8svzI8RQOSLkphkToO0fvBvgf3xKMJlAcC4Eb0Rh
 r51gaM9n+CutqFEqtrreDjEWCWbS05S/K6EHBYjgzuWTfvmhY0E2fCVuD+9yu0QhPCxo
 OEYuyt/GWiuVCax0+IEa1ff6OUpxNU5wN6rmHtB87pomvUa/RcaXz+lmYAUK8jKjfzUJ
 RLACtlI8bZnp+824KZo4kgo9IHgZfKPuvWxnrI+u5unTfMQuBIK6eb6pIcQN80yFAhIL
 ii0l6fJS4YA52OMbI5RUEKer8ghRSUacpHuJC/ARZMCBN4aFfeMMxEaRDJukNTmna0/X
 Xe9g==
X-Gm-Message-State: AOAM531I0rW4A1F/QSKF1lF00Mis/QYbwaoLRgFcRrI0pE82ziWSqPLx
 qlcnchZnJ8YTFJ3kQ58ycA==
X-Google-Smtp-Source: ABdhPJxYnIz2g0qPXdqTbqLE0eqrv8euhVAVjzwh4ZLxVREAHMcDwMoJ3msELLzm3uy3CAyi87Z3jQ==
X-Received: by 2002:a05:6808:1b12:b0:2da:28e1:39f7 with SMTP id
 bx18-20020a0568081b1200b002da28e139f7mr4422301oib.289.1649275703960; 
 Wed, 06 Apr 2022 13:08:23 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 t4-20020a0568301e2400b005c9781086d9sm7003791otr.9.2022.04.06.13.08.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Apr 2022 13:08:23 -0700 (PDT)
Received: (nullmailer pid 2682165 invoked by uid 1000);
 Wed, 06 Apr 2022 20:08:22 -0000
From: Rob Herring <robh@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Robert Foss <robert.foss@linaro.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-phy@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, patchwork-lst@pengutronix.de
In-Reply-To: <20220406160123.1272911-3-l.stach@pengutronix.de>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
 <20220406160123.1272911-3-l.stach@pengutronix.de>
Subject: Re: [PATCH v0 02/10] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI TX
Date: Wed, 06 Apr 2022 15:08:22 -0500
Message-Id: <1649275702.749756.2682164.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_130825_500488_859B672F 
X-CRM114-Status: GOOD (  11.38  )
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

On Wed, 06 Apr 2022 18:01:15 +0200, Lucas Stach wrote:
> The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> core with a little bit of SoC integration around it.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.example.dts:36.45-46 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:364: Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.example.dtb] Error 1
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
