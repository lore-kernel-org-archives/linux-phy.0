Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40CDBC61DA4
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 15:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUqRTtvz4++jVIESw5OjhsmLxZZ09t99ytAP2trTkDU=; b=s8TQkEfPISfWdD
	dXnZmq3xV6G+CaxrUGa/yiqpDKq5XrU+EFNXxZlO7gElufKav/ju8ybkXeZWZCbKUj/ONKWmAhovL
	4OduMIJiVH7+dUe7DTrFjComM9/n4zmozDHr4r48NntweJc9Df6Lg0BA6AlHLgKyU++wnhK2GJeyZ
	on5XI13qaVuKbfodfWodPalI2BR3DaZ4IAwzeWzm7jwDCKdqhA3x4wbzvSn3phqhKGR1KaN0wruOJ
	UDq/SskbPOIy654qO1GjN1M4EwyEDbZNNnK8cBmTiMwhoQoOFBfQMpfZgh/VoSPS+ozyROceLRMta
	z9+MZKoc2eKqNBzgos8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNb7j-00GEbD-MG; Thu, 02 Feb 2023 15:03:39 +0000
Received: from mail-oi1-f171.google.com ([209.85.167.171])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNb7g-00GEYG-SP
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 15:03:38 +0000
Received: by mail-oi1-f171.google.com with SMTP id j21so1648023oie.4
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 07:03:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UvTEwmvDcai5Hh/VZKSiaeACzpspNyaYbdFC4BxG9Vw=;
        b=2ZhHG6MkgUuUPgiBTDoeAM1aHkD7NIOusY7iLU9URXPolHUNSgLLqZPLrutQljt8Cm
         cHfHUlNDuGR4nW9g+Tm/eZMCKBavxaAOfPIH8QNUGIETpH36w5QSPKngLbi6Rv9hl+Tl
         2lfCijwCyW36GJvHwDOTTH/qmlTjdHwocyV4p+vdo7Wh3PuggytPCqUUiaBYgbHGLE7x
         0Mwg3KHPTWmc1mm/Tm8ezyXPw7cim7w4e8m/OSlW/avGiRu/nuhD/GAZaDIH4ml1web4
         ule60fXgXCwIcU2aw4Q9T2qLrM48UXdP+f7ssh3Hyn93xVRehDfPtulbc46y9figLE3L
         ZbTQ==
X-Gm-Message-State: AO0yUKUetAdLy0+1lE5EIXTapAGA2tkHUsmy1gGwwUA7Ma3agJBJkOAv
	Ds/E+zGNulacHqWELDoQzw==
X-Google-Smtp-Source: AK7set+bA5yyR6vdQFFHDqhA79+FbXA1M9yolgiLz2mvM49bfLSzO8phSA+39jcZTwIbokmloj9QuA==
X-Received: by 2002:a05:6808:d47:b0:378:7d9c:8d3c with SMTP id w7-20020a0568080d4700b003787d9c8d3cmr3783713oik.31.1675350212469;
        Thu, 02 Feb 2023 07:03:32 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id p184-20020acad8c1000000b003547a3401e6sm8087537oig.43.2023.02.02.07.03.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 07:03:31 -0800 (PST)
Received: (nullmailer pid 1858077 invoked by uid 1000);
	Thu, 02 Feb 2023 15:03:31 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, vkoul@kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <20230202132511.3983095-2-abel.vesa@linaro.org>
References: <20230202132511.3983095-1-abel.vesa@linaro.org>
 <20230202132511.3983095-2-abel.vesa@linaro.org>
Message-Id: <167535003746.1854137.3170990536949157461.robh@kernel.org>
Subject: Re: [PATCH v4 1/8] dt-bindings: phy: Add qcom,snps-eusb2-phy
 schema file
Date: Thu, 02 Feb 2023 09:03:31 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_070336_937224_9D563017 
X-CRM114-Status: GOOD (  16.69  )
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


On Thu, 02 Feb 2023 15:25:04 +0200, Abel Vesa wrote:
> The SM8550 SoC uses Synopsis eUSB2 PHY. Add a dt-binding schema
> for the new driver.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 
> The v3 version of this patch was here:
> https://lore.kernel.org/all/20230126131415.1453741-2-abel.vesa@linaro.org/
> 
> Changes since v3:
>  * removed blank line, like Rob suggested
>  * dropped quotes and reset description, like Rob suggested
>  * dropped the RPMH_CXO_PAD_CLK clock and the ref_src clock name
>    to match the schema
>  * fixed filenames of the includes in the example (sm8550-gcc and
>    sm8550-tcsr)
> 
> Changes since v2:
>  * none
> 
> Changes since v1:
>  * dropped the "ref src" clock
>  * dropped the usb-repeater property
> 
>  .../bindings/phy/qcom,snps-eusb2-phy.yaml     | 74 +++++++++++++++++++
>  1 file changed, 74 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.example.dts:20:18: fatal error: dt-bindings/clock/qcom,sm8550-tcsr.h: No such file or directory
   20 |         #include <dt-bindings/clock/qcom,sm8550-tcsr.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:434: Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1508: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230202132511.3983095-2-abel.vesa@linaro.org

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
