Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8F81C433EF
	for <linux-phy@archiver.kernel.org>; Fri,  6 May 2022 22:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87DDpal/0VQ76jBawWQKVczayfV9d0F314UZMmKH/jw=; b=jwF6NnrVVcXODf
	d8BO+g7R2IGe5/z2t5ERy/6pAkllyCRXihYUgw31N8x/l6yE9o0lm7Egmp3gvHKgTAMH+fpLph/xA
	OjRfZIsJysJisyt8ZN2o1W8UZRH+/KIQJm1wiDTx8ROe0aRWtjEic4O3+O8RDIN17FuhxkFZLLAJl
	EfohEoXIUIOFnxcuOe7qM2/Ir5rVV60D86DPmyjSmOLylMncU5clYYU3fWA6NBPqSWaC1QZvDeKv3
	OVnyjLN0wRcglGKxS8dGkYpbI12JTNm7yteQTzHi6xwmERJj2kFeB5G2FRWG9ujBI3/4BGKU87Sbt
	AjmifSlRjhCO5JoYdEqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nn6cd-005Ean-5Z; Fri, 06 May 2022 22:40:27 +0000
Received: from mail-oa1-f54.google.com ([209.85.160.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nn6cC-005EQ2-2B; Fri, 06 May 2022 22:40:01 +0000
Received: by mail-oa1-f54.google.com with SMTP id
 586e51a60fabf-e93bbb54f9so8671903fac.12; 
 Fri, 06 May 2022 15:39:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=gdnoN48c4OtIQTvkUpqjNfjiuzwFbiiCs1QABjCyBsY=;
 b=WSfqzxJFh2WCjBKbaeRVpVH2lUt6iMQLD2AzqhN68qc/KWlmW8O2TOGOxrpOXFbOlQ
 vrQTuzHCOzKb4/mN0pGZDbHqbed7C/bAAKJ2DKinL5qhSu/zM69sckozQPuBpy4ATkov
 pgpmdO2UiIkoIWnA3lnEvNCVAUXtQLDMOHBAn3i3pciH5kosIeM5qfLdtE7l5tpMkv7d
 8Q7UtbPVF44Eu3itYwUSMGbfHEN5ddFHKgT94NTbs0RVujnNn0/y7eC7YgTO6Opa1ZvS
 e9cPMMXqxOgIivuBj2s7DlFz3EduTy6YGu343CHsp54n1t73//NkwH4bp5gjAG3Quwh6
 sbFA==
X-Gm-Message-State: AOAM531ix7rG8jx8eP6JK2tEB6cJrv2s279SCOZ+3l6kX/gU866MbT/0
 uQaXMMGlv5IcxadWokOoRQ==
X-Google-Smtp-Source: ABdhPJypMneSibUbRivL8Yoczz0j4CFSkTRWYurL+negj4qJZ/gZTxYlBuqjNPARGG9bxw2fstna9g==
X-Received: by 2002:a05:6870:d68e:b0:e2:af08:6cc3 with SMTP id
 z14-20020a056870d68e00b000e2af086cc3mr5506584oap.189.1651876798315; 
 Fri, 06 May 2022 15:39:58 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 g93-20020a9d2de6000000b0060603221240sm2113095otb.16.2022.05.06.15.39.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 May 2022 15:39:57 -0700 (PDT)
Received: (nullmailer pid 2407415 invoked by uid 1000);
 Fri, 06 May 2022 22:39:53 -0000
From: Rob Herring <robh@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 linux-phy@lists.infradead.org, Sandor Yu <Sandor.yu@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, dri-devel@lists.freedesktop.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Marek Vasut <marex@denx.de>, NXP Linux Team <linux-imx@nxp.com>,
 Robert Foss <robert.foss@linaro.org>, patchwork-lst@pengutronix.de,
 Pengutronix Kernel Team <kernel@pengutronix.de>
In-Reply-To: <20220506181034.2001548-4-l.stach@pengutronix.de>
References: <20220506181034.2001548-1-l.stach@pengutronix.de>
 <20220506181034.2001548-4-l.stach@pengutronix.de>
Subject: Re: [PATCH v0.5 3/9] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI PVI
Date: Fri, 06 May 2022 17:39:53 -0500
Message-Id: <1651876793.651712.2407414.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220506_154000_140226_19C18691 
X-CRM114-Status: GOOD (  10.01  )
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

On Fri, 06 May 2022 20:10:28 +0200, Lucas Stach wrote:
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
