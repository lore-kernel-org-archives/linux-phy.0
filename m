Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A639CC54EED
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 15:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DyvfpRPARANN0uLT8Qnn8aiozZt/jm6NqVpkPyDXkQY=; b=T0pQn7XjYvdRoa
	AgJlEoFpfehvZKPKaj+iZWPeDWw4W970NlirAK12+X4pjQDdAzCjZbDzTYbs30cR591VwjBxkQs5M
	+1K0XlHtdT8CHGk+wT73smwS3ov2+2aGxqmC+4wx91o3zJiy4vJqwkXQtysVxekNa5cp2lGkvLHD0
	cpstsIzeYpZTqArGj/1SwpKGLEThZszaH1UwXsk7Ix6i1dcFgWytrk7NAUXSRNCM5gzDeD7vPSOCT
	d2X5JLtgw8uhVhEXCD3vBxCZqXYXH2ks9nKmb/Npo4vZSmhNaSl7fciRWiH/bsBhksw5WG+h4GGsF
	4ZvvdFVPuP544OLUCkYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL4Ld-00BZx9-N8; Thu, 26 Jan 2023 15:39:33 +0000
Received: from mail-oo1-f46.google.com ([209.85.161.46])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL4LZ-00BZuV-O3
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 15:39:31 +0000
Received: by mail-oo1-f46.google.com with SMTP id z12-20020a4a490c000000b004f21c72be42so272174ooa.8
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 07:39:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8OyUzZZcNDwmAtXS1x+xMHt5sX1Ua0I8k7dbZu+PLxI=;
        b=BCnA/wthfONTIqA3fdLViU+ThbJls9tenplSfzXcGS0TUBIxo9DUxCu5ZPePoIxZA8
         6uZu+Drki+yf7mu04WHsMBhZ3Iw0l50gTo85D1w4rweVousR91hxcj8mFEWDTimrgfUt
         qjTBklqEKn7egyHfmAnyVyg6TxcSpZZ+p01Fcb2iay/ZxSXbKlSKFHeqJFitzsG8qFSN
         QI741mzWpHxRp3NjOYbD7vr/wFw1YeItOcCej6S/Y23G9J7A8EfJkH5KVe0Qmx/J9JpB
         urdkqJjbCl6tNnRmGteccdYzLcqaJ5STstv5EfLsMpEOdvkTX55Q6DwAVicj2Jdjt9tl
         ZAeg==
X-Gm-Message-State: AFqh2kpVlxaBFJzLSjC0qIdtSL/YA8+AmwylD7USTPX+XSHvtOEX4vWX
	PSeye4QDJDT6wJRYZ2kUXlOS5eOSpA==
X-Google-Smtp-Source: AMrXdXuzl12U2eZ6cBhuAvI3012MMIRRpbGZ866zX4YAmcPm4utJKeTyVgTyrj2wbI4b32brKc1sDQ==
X-Received: by 2002:a4a:d6d8:0:b0:4f2:2e05:4fe0 with SMTP id j24-20020a4ad6d8000000b004f22e054fe0mr17851159oot.4.1674747568485;
        Thu, 26 Jan 2023 07:39:28 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k26-20020a4ad11a000000b004f29c6fb6besm630136oor.31.2023.01.26.07.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 07:39:28 -0800 (PST)
Received: (nullmailer pid 1544999 invoked by uid 1000);
	Thu, 26 Jan 2023 15:39:25 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: linux-phy@lists.infradead.org, Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, "vkoul@kernel.org" <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Lee Jones <lee@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org
In-Reply-To: <20230126135909.1624890-2-abel.vesa@linaro.org>
References: <20230126135909.1624890-1-abel.vesa@linaro.org>
 <20230126135909.1624890-2-abel.vesa@linaro.org>
Message-Id: <167474700388.1532445.1638627474554677881.robh@kernel.org>
Subject:  Re: [RFC v2 1/7] dt-bindings: phy: Add qcom,snps-eusb2-repeater schema file
Date: Thu, 26 Jan 2023 09:39:25 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_073929_808602_E4590858 
X-CRM114-Status: GOOD (  13.64  )
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


On Thu, 26 Jan 2023 15:59:03 +0200, Abel Vesa wrote:
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

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230126135909.1624890-2-abel.vesa@linaro.org

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
