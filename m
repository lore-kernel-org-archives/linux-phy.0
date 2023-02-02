Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7DDFC61DA4
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 15:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9r5DxHiurhd0Dg8M9iCVAXQCGc306p8WdFfcaxkDj0o=; b=mZCm/8vWsv6lzA
	hgTvPsl8FKoE6vry6rXFK/AXILqzOB3L4FTPaG2LRaLgbqQAEpnVqJwwlsl+pZ4/5MoSW1aKNq65C
	3d29fCrZvwx7e11Q+0MNUFBHsN+tJswL4/bOBgY2Dp2u0lXCNOzeFDH0tH2ltCff2Of7VtiER1JK9
	WAMWH7zmsYoZodp+2NH/5Y6hlFM9EwXOfigUPFlki7wrLLzPdq9+HxAWZ7D/jjgqZJsz9nzGQDEMV
	qRKkv8/am0bfQeNVgssfU/WnikY+nSr+Iw12YOMxCpPEP+cWPRYyQ3cx0xA2CKXI3vJ3H5Aqg4C/j
	ZpWcdqS3Bz5i/faIwHFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNb7t-00GEgV-7y; Thu, 02 Feb 2023 15:03:49 +0000
Received: from mail-oi1-f171.google.com ([209.85.167.171])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNb7h-00GEZl-NC
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 15:03:39 +0000
Received: by mail-oi1-f171.google.com with SMTP id bx13so1617604oib.13
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 07:03:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eaGBuW2eiAUWLAbhvcH7sX8zp4za8aw/4jDrYwgHmCA=;
        b=Hs92HPQEBD8M04lweS8YOPa/EM0x0DvXlnfEO4DE1CW0q/RP9tMf211xszZcMA13gD
         PVq/oGacoJu2y3d6qyYlCFsIq37CqWuIpBXeaNFLkaV0OjSYAmOzKMoePaFVfBtgwgZl
         rDviMX4l8Zik04fD1eF705O3uplT3tA1FP61FvNrIor2bMi5wb2uYvcMLzTo6iRJnZnm
         mwadAXMHqT8eGcTTdlYMmlf2HYLaCBH1CGhPAxergUt1SJBN2MG2LQf7GQP83WA4TRp9
         Ax5xsPxvS9GMvPEqD8bCEOnA6r+VirGH3LM+veMRcVoux+uLSdMACqftp2uDsSrM2Ote
         k0UA==
X-Gm-Message-State: AO0yUKXn7ck/i9aHodI0rsbwTOL94AM0zyhlWg9hLqlqy9FjTPAcU2dN
	fpX6oQDMzDm4YKmSkrOo4g==
X-Google-Smtp-Source: AK7set/zJDHBmEsnM2EiuNQ+EOQRgpUewV4nbZTL+K+udzmJHwcrQzAad3Em6PvVUuZy6oh+DZt6ig==
X-Received: by 2002:a05:6808:221b:b0:365:367:7c7a with SMTP id bd27-20020a056808221b00b0036503677c7amr4142713oib.11.1675350216914;
        Thu, 02 Feb 2023 07:03:36 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id g131-20020acab689000000b0036e9160f57csm8075076oif.20.2023.02.02.07.03.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 07:03:36 -0800 (PST)
Received: (nullmailer pid 1858082 invoked by uid 1000);
	Thu, 02 Feb 2023 15:03:31 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, vkoul@kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Lee Jones <lee@kernel.org>, linux-phy@lists.infradead.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
In-Reply-To: <20230202133816.4026990-3-abel.vesa@linaro.org>
References: <20230202133816.4026990-1-abel.vesa@linaro.org>
 <20230202133816.4026990-3-abel.vesa@linaro.org>
Message-Id: <167535003913.1854224.16066209140007684917.robh@kernel.org>
Subject: Re: [RFC v3 2/7] dt-bindings: phy: Add qcom,snps-eusb2-repeater
 schema file
Date: Thu, 02 Feb 2023 09:03:31 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_070337_783749_C389EE92 
X-CRM114-Status: GOOD (  13.43  )
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


On Thu, 02 Feb 2023 15:38:11 +0200, Abel Vesa wrote:
> The SM8550 SoC uses Synopsis eUSB2 repeater found in PM8550b.
> Add a dt-binding schema for the new driver.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../phy/qcom,snps-eusb2-repeater.yaml         | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.example.dtb: pmic@7: compatible:0: 'qcom,pm8550' is not one of ['qcom,pm6125', 'qcom,pm6150', 'qcom,pm6150l', 'qcom,pm6350', 'qcom,pm660', 'qcom,pm660l', 'qcom,pm7250b', 'qcom,pm7325', 'qcom,pm8004', 'qcom,pm8005', 'qcom,pm8009', 'qcom,pm8019', 'qcom,pm8028', 'qcom,pm8110', 'qcom,pm8150', 'qcom,pm8150b', 'qcom,pm8150c', 'qcom,pm8150l', 'qcom,pm8226', 'qcom,pm8350', 'qcom,pm8350b', 'qcom,pm8350c', 'qcom,pm8841', 'qcom,pm8909', 'qcom,pm8916', 'qcom,pm8941', 'qcom,pm8950', 'qcom,pm8953', 'qcom,pm8994', 'qcom,pm8998', 'qcom,pma8084', 'qcom,pmd9635', 'qcom,pmi8950', 'qcom,pmi8962', 'qcom,pmi8994', 'qcom,pmi8998', 'qcom,pmk8002', 'qcom,pmk8350', 'qcom,pmm8155au', 'qcom,pmp8074', 'qcom,pmr735a', 'qcom,pmr735b', 'qcom,pms405', 'qcom,pmx55', 'qcom,pmx65', 'qcom,smb2351']
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.example.dtb: pmic@7: 'phy@fd00' does not match any of the regexes: '(.*)?(wled|leds)@[0-9a-f]+$', '^adc-tm@[0-9a-f]+$', '^adc@[0-9a-f]+$', '^audio-codec@[0-9a-f]+$', '^charger@[0-9a-f]+$', '^mpps@[0-9a-f]+$', '^rtc@[0-9a-f]+$', '^temp-alarm@[0-9a-f]+$', '^usb-detect@[0-9a-f]+$', '^usb-vbus-regulator@[0-9a-f]+$', '^vibrator@[0-9a-f]+$', 'gpio@[0-9a-f]+$', 'pinctrl-[0-9]+', 'pon@[0-9a-f]+$'
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.example.dtb: /example-0/pmic@7: failed to match any schema with compatible: ['qcom,pm8550', 'qcom,spmi-pmic']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230202133816.4026990-3-abel.vesa@linaro.org

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
