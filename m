Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 268F1C6FD20
	for <linux-phy@archiver.kernel.org>; Tue, 21 Mar 2023 22:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7JLzA4iwTxSP28Tumau0xnvlM36r5Zjkm4Xq5DgiCE=; b=LwaWwvjmgGusJJ
	lfM6lvifdmMxNdlGSlG5dFhA4hB8wZwtzkFXPhWk4Y1XX5qeMonyyWj0MWZk3flqYIROlo5KFFZVP
	NnfJepyHmXgkYwCGJ0aLtprA+PNSSHd0N/PsGstqfwsf4KbbxV1QL+U8ffeNOmxXGYGKFp3JlCC/F
	qOU14g2HfrDEUtWSva2YB8Y4icTOSLcNoYx5vGd0PDn+2lcLNI7Ftj8S4xcApXIUTQyL2QYLkQ39T
	nI8nINUSZ79KhZWmI+CHgCpItwxHmXbrKE67T+ipdGU+2VULZpb7nDmshMzPHcwz67vS2qhudfJvm
	aBZxkcFzOyUgToJBSuZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pekY5-00DytH-2D;
	Tue, 21 Mar 2023 22:33:45 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pekY1-00DysH-0Z;
	Tue, 21 Mar 2023 22:33:43 +0000
Received: by mail-oi1-f176.google.com with SMTP id bj20so2871147oib.3;
        Tue, 21 Mar 2023 15:33:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679438018;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lq5IHN4ky6w3nFPQn7CkTtEA1+7XZPAY5dbicjXStOc=;
        b=Q+JvJjmYOljo/QAw9xmrQLm0F4UZLoZCuUvDBQypbb5zhwCr4PgVCghoJ4giwzHMY8
         Vf5ZssngRE3nqWUJCqwbG6uF5PMwDMOw6BkGWFMuXkgkzWq/+TXzxZ5lAqt551Jscol+
         TygsURxxoOaCFSQoiDgraCgZpqO5pm7B4Q+ee4H0Ctp6WeTfyvXsXYJw005ZmPkEHJa4
         iTRVSmBVVbPqRVKG16vNg0bntYKwLJz7YmZxyhn2WPPOPwlBrkN4D7GakZnV9zgzOyf+
         MfpVMBJqryaZse4GxKd8pmkW0pYP1k4DG1d2BzhzP9qqANtw/+AlGPxAeMj8SHpo8WJK
         HmoQ==
X-Gm-Message-State: AO0yUKV7UJeC+wypiQh5s+//gk03mzMabKHn0jv44ARW3C2WTJ/++C2b
	M9DthsVmr+GMgJP1xjRW8A==
X-Google-Smtp-Source: AK7set+RTgO3GuSot4uEnORzZq3leOTPVHBZNtYNYKqkygCniCpnwFTc8h7YWpTGdM34MeQJSF3ztA==
X-Received: by 2002:aca:1a09:0:b0:387:1e2d:f28c with SMTP id a9-20020aca1a09000000b003871e2df28cmr328398oia.40.1679438017104;
        Tue, 21 Mar 2023 15:33:37 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id b20-20020a056870d1d400b001768b4759e5sm4681974oac.14.2023.03.21.15.33.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 15:33:36 -0700 (PDT)
Received: (nullmailer pid 1784094 invoked by uid 1000);
	Tue, 21 Mar 2023 22:33:35 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Camelia Alexandra Groza <camelia.groza@nxp.com>, linux-gpio@vger.kernel.org, Madalin Bucur <madalin.bucur@nxp.com>, linuxppc-dev@lists.ozlabs.org, Ioana Ciornei <ioana.ciornei@nxp.com>, Linus Walleij <linus.walleij@linaro.org>, Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-phy@lists.infradead.org, Bagas Sanjaya <bagasdotme@gmail.com>, devicetree@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Jonas Gorski <jonas.gorski@gmail.com>, linux-arm-kernel@lists.infradead.org, Fernández Rojas <noltari@gmail.com>
In-Reply-To: <20230321201313.2507539-4-sean.anderson@seco.com>
References: <20230321201313.2507539-1-sean.anderson@seco.com>
 <20230321201313.2507539-4-sean.anderson@seco.com>
Message-Id: <167943790379.1778436.6467675853920923217.robh@kernel.org>
Subject: Re: [PATCH v12 03/13] dt-bindings: Convert gpio-mmio to yaml
Date: Tue, 21 Mar 2023 17:33:35 -0500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_153341_219467_D0885322 
X-CRM114-Status: GOOD (  22.32  )
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


On Tue, 21 Mar 2023 16:13:02 -0400, Sean Anderson wrote:
> This is a generic binding for simple MMIO GPIO controllers. Although we
> have a single driver for these controllers, they were previously spread
> over several files. Consolidate them. The register descriptions are
> adapted from the comments in the source. There is no set order for the
> registers, and some registers may be omitted. Because of this, reg-names
> is mandatory, and no order is specified.
> 
> Rename brcm,bcm6345-gpio to brcm,bcm63xx-gpio to reflect that bcm6345
> has moved.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> Linus or Bartosz, feel free to pick this up as the rest of this series
> may not be merged any time soon.
> 
> Changes in v12:
> - Put compatible first
> - Keep gpio-controller to one line
> - Add little-endian property
> - Alphabetize compatibles
> - Remove some comments
> - Remove some examples with insufficient novelty
> 
> Changes in v11:
> - Keep empty (or almost-empty) properties on a single line
> - Don't use | unnecessarily
> - Use gpio as the node name for examples
> - Rename brcm,bcm6345-gpio.yaml to brcm,bcm63xx-gpio.yaml
> 
> Changes in v10:
> - New
> 
>  ...m6345-gpio.yaml => brcm,bcm63xx-gpio.yaml} |  16 +--
>  .../devicetree/bindings/gpio/gpio-mmio.yaml   | 117 ++++++++++++++++++
>  .../bindings/gpio/ni,169445-nand-gpio.txt     |  38 ------
>  .../devicetree/bindings/gpio/wd,mbl-gpio.txt  |  38 ------
>  4 files changed, 118 insertions(+), 91 deletions(-)
>  rename Documentation/devicetree/bindings/gpio/{brcm,bcm6345-gpio.yaml => brcm,bcm63xx-gpio.yaml} (78%)
>  create mode 100644 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
>  delete mode 100644 Documentation/devicetree/bindings/gpio/ni,169445-nand-gpio.txt
>  delete mode 100644 Documentation/devicetree/bindings/gpio/wd,mbl-gpio.txt
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/gpio/brcm,bcm63xx-gpio.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/gpio/brcm,bcm63xx-gpio.yaml#
./Documentation/devicetree/bindings/mfd/brcm,bcm6318-gpio-sysctl.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/gpio/brcm,bcm6345-gpio.yaml
./Documentation/devicetree/bindings/mfd/brcm,bcm63268-gpio-sysctl.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/gpio/brcm,bcm6345-gpio.yaml
./Documentation/devicetree/bindings/mfd/brcm,bcm6362-gpio-sysctl.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/gpio/brcm,bcm6345-gpio.yaml
./Documentation/devicetree/bindings/mfd/brcm,bcm6368-gpio-sysctl.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/gpio/brcm,bcm6345-gpio.yaml
./Documentation/devicetree/bindings/mfd/brcm,bcm6328-gpio-sysctl.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/gpio/brcm,bcm6345-gpio.yaml
./Documentation/devicetree/bindings/mfd/brcm,bcm6358-gpio-sysctl.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/gpio/brcm,bcm6345-gpio.yaml

doc reference errors (make refcheckdocs):
Warning: Documentation/devicetree/bindings/mfd/brcm,bcm6318-gpio-sysctl.yaml references a file that doesn't exist: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
Warning: Documentation/devicetree/bindings/mfd/brcm,bcm63268-gpio-sysctl.yaml references a file that doesn't exist: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
Warning: Documentation/devicetree/bindings/mfd/brcm,bcm6328-gpio-sysctl.yaml references a file that doesn't exist: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
Warning: Documentation/devicetree/bindings/mfd/brcm,bcm6358-gpio-sysctl.yaml references a file that doesn't exist: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
Warning: Documentation/devicetree/bindings/mfd/brcm,bcm6362-gpio-sysctl.yaml references a file that doesn't exist: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
Warning: Documentation/devicetree/bindings/mfd/brcm,bcm6368-gpio-sysctl.yaml references a file that doesn't exist: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
Documentation/devicetree/bindings/mfd/brcm,bcm6318-gpio-sysctl.yaml: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
Documentation/devicetree/bindings/mfd/brcm,bcm63268-gpio-sysctl.yaml: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
Documentation/devicetree/bindings/mfd/brcm,bcm6328-gpio-sysctl.yaml: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
Documentation/devicetree/bindings/mfd/brcm,bcm6358-gpio-sysctl.yaml: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
Documentation/devicetree/bindings/mfd/brcm,bcm6362-gpio-sysctl.yaml: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
Documentation/devicetree/bindings/mfd/brcm,bcm6368-gpio-sysctl.yaml: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230321201313.2507539-4-sean.anderson@seco.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
