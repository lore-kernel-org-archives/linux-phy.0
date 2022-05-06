Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0190C433F5
	for <linux-phy@archiver.kernel.org>; Fri,  6 May 2022 22:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Bf4U0wWYmtwyTukD13twIv2GTRkpCX82PkNFUiBHYI=; b=L21/LNLZ2HfTUR
	+PiOZ5ATjFejA/PPnIlenn3K1xIwkEcnhbnx0zlfCb5HyaIEfG8bORi+8qHSfG3qppdiMSaZ8LmNX
	esWUSsCfgTtdj2OVa1/j6IlbFQ0v3dC3I3zNyotw5NB8vdWa0IZ+X0u22otIJ5MUwRIm9M6iJy8wV
	7gS8QQEUzNE6L5A+Z0vRPd68YUMBLZ9NdnFPaJHNsFOY9ZyE2tvlVo5IpxReKyiLl0c5nnn+icyUV
	vag2UaWpawx1X9vXxZjNJA9RjKduJvq6aEnf56WFSGeuNaVMUr463dM9XRqdot0H73hEvkG1ttzI1
	dAoGHDqxnPB36hTHBMbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nn6cM-005EWV-1I; Fri, 06 May 2022 22:40:10 +0000
Received: from mail-oa1-f53.google.com ([209.85.160.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nn6c9-005EPS-JX; Fri, 06 May 2022 22:39:59 +0000
Received: by mail-oa1-f53.google.com with SMTP id
 586e51a60fabf-d6e29fb3d7so8686405fac.7; 
 Fri, 06 May 2022 15:39:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=EARAirmRDARZJDnc2wIGPiTE3SCh1Sk7ihIbfULQouQ=;
 b=L5Om3Oy8ePtrjJhq+DrECZoYJGhmvHvakTl8VZ3O/W06qevGkK4G9/iQGRv81HeoZc
 T1ydRJLUzU9+ptQ6s2AsW5+fEQ9RpVSF1h0vevrSgv0BRp2QqY5+nxwfGI/s6ALXsACA
 j/fR7yy6zwWOHP5rP9xG5z7mcJA4hztUiImz25FGwHXojMAACoDi/ttHvk9wNTv85kkf
 AZWUWeY3XucqMo+MjoUzJ0VOVf9+U2U7hlq6o1OEUukRJFFR9gRcEo807yFWtlL7pJbE
 VKlxT1DGlwQJbA/qLZmVNm4oFzqnucu0zxqLudiA9dX7z/N/6bZE43pyHLLri9QJIY2k
 iXVQ==
X-Gm-Message-State: AOAM532yxAfNu0HbYDDvYGxIYMqepTSaMFzyR84yfv5nyqUVBH77FvKB
 +srkCcm1yfwt1BHDwHQyWw==
X-Google-Smtp-Source: ABdhPJyCG67cLedleTEytlah9EbrGMeFPIlbBbUWhHQVbzJSRnDcIllrDprW/uYuVOEWDyz152z+xg==
X-Received: by 2002:a05:6870:c59a:b0:e9:3d37:1bbd with SMTP id
 ba26-20020a056870c59a00b000e93d371bbdmr5428453oab.91.1651876795325; 
 Fri, 06 May 2022 15:39:55 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 e6-20020aca1306000000b00325cda1ffb5sm2059016oii.52.2022.05.06.15.39.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 May 2022 15:39:54 -0700 (PDT)
Received: (nullmailer pid 2407412 invoked by uid 1000);
 Fri, 06 May 2022 22:39:53 -0000
From: Rob Herring <robh@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Marek Vasut <marex@denx.de>, Robert Foss <robert.foss@linaro.org>,
 devicetree@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 linux-arm-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Sandor Yu <Sandor.yu@nxp.com>, patchwork-lst@pengutronix.de
In-Reply-To: <20220506181034.2001548-2-l.stach@pengutronix.de>
References: <20220506181034.2001548-1-l.stach@pengutronix.de>
 <20220506181034.2001548-2-l.stach@pengutronix.de>
Subject: Re: [PATCH v0.5 1/9] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI TX
Date: Fri, 06 May 2022 17:39:53 -0500
Message-Id: <1651876793.638106.2407411.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220506_153957_684967_9C342507 
X-CRM114-Status: GOOD (  11.06  )
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

On Fri, 06 May 2022 20:10:26 +0200, Lucas Stach wrote:
> The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> core with a little bit of SoC integration around it.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
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
