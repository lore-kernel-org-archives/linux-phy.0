Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 440A1C433EF
	for <linux-phy@archiver.kernel.org>; Fri,  6 May 2022 22:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fiX1H2CPSXdBjCXGrNJuO/5j1oN/yWubMoN7ABIi1zI=; b=Sa9g9SsmecgIUp
	mj0lStbxpFacSGvbyCtrw0Jc27Ab4O0CgV4ew2G4fsf3/FyHmqxTwapT9Fl/amCcO8BsTgoQEHEng
	Q6N7isq1QQcUpTFGvb4TJcZH3kfJ+IPhmktLzYyDUGZ/25Lzt4FAlorZhXPhn9gmGodcMYNvgkIHP
	Z4tYtS053xnMP4QNznUvZCpeUruDG+IN0KzSf5TCYhc64lkF1UIYO6+K+W33Ejn9jTBh/Z1hjcB42
	6RYnzZVpNM30xrjSI9vL+uMcH0M4xUdAU/bTXnjc9Wcd36zBhM/RrQ5Yvykf2k2RcmT39BAzoiaOQ
	qaXVQJ+vYqcP0xUVzRog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nn6cm-005EeG-Ds; Fri, 06 May 2022 22:40:36 +0000
Received: from mail-oi1-f170.google.com ([209.85.167.170])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nn6cE-005ERS-Gi; Fri, 06 May 2022 22:40:04 +0000
Received: by mail-oi1-f170.google.com with SMTP id m25so9040891oih.2;
 Fri, 06 May 2022 15:40:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=6BDcq2/11wXT5ygpG8JsCxIz2tjuPiA5pRN86PbS0vI=;
 b=nmPWXaWGRiJ81abOJrP07EFcapY3Ni5hi41fIa4YmYqK4T1lncgKiJ4XGv0HC9LqhR
 5zp5+SMv+VvD4XdreK8vcvSbW1SunDWavX7/9Cs0NfTx6mB0tROEq80g1MYAiWePgToA
 TTCmwPAj8bIKTSZrZ62qkn7gsg55ktzsyBeMx6tqYJBTgWRmYSPm0rV3cfY8WQ1SO3WK
 PQ1/Ll+JZV38U+LvN5/ukj8IpVostkt/zsgJ4QqoL0lEaAeWZPWtPoF2wj9jNdkbMn39
 JR7Ifbh837Jln4plBmvA8N4IvYoIY9XQDiTzc312SFc59G3dK4J0tToR8kbVuIb6sNOQ
 z2qg==
X-Gm-Message-State: AOAM530t2yGerW656G7y0glLAHsXeHzqysQqjTsB8okDAf3JPlIx9Y8l
 IChJmxfPQ5qRLUGaUiEuiA==
X-Google-Smtp-Source: ABdhPJykNbPqgTnhxpQ3+9FySStpxKn6CnG4HKiaM88MdReBQJlRzfsjbL84a8XB3b8YS+Vagne/ig==
X-Received: by 2002:a54:460b:0:b0:322:7964:1b60 with SMTP id
 p11-20020a54460b000000b0032279641b60mr2534634oip.16.1651876801265; 
 Fri, 06 May 2022 15:40:01 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 k2-20020a056870570200b000edae17a8cesm2166063oap.3.2022.05.06.15.40.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 May 2022 15:40:00 -0700 (PDT)
Received: (nullmailer pid 2407417 invoked by uid 1000);
 Fri, 06 May 2022 22:39:53 -0000
From: Rob Herring <robh@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Marek Vasut <marex@denx.de>, patchwork-lst@pengutronix.de,
 Pengutronix Kernel Team <kernel@pengutronix.de>, devicetree@vger.kernel.org,
 Sandor Yu <Sandor.yu@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Robert Foss <robert.foss@linaro.org>,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
In-Reply-To: <20220506181034.2001548-6-l.stach@pengutronix.de>
References: <20220506181034.2001548-1-l.stach@pengutronix.de>
 <20220506181034.2001548-6-l.stach@pengutronix.de>
Subject: Re: [PATCH v0.5 5/9] dt-bindings: phy: add binding for the i.MX8MP
 HDMI PHY
Date: Fri, 06 May 2022 17:39:53 -0500
Message-Id: <1651876793.663191.2407416.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220506_154002_606111_FA875904 
X-CRM114-Status: GOOD (  11.35  )
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

On Fri, 06 May 2022 20:10:30 +0200, Lucas Stach wrote:
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
