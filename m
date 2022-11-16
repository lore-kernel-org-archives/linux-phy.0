Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 797D0C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 15:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EWqEISqYqek0nnh8l0UsUG9+GegaskXN7nQ2fvIPNkM=; b=pDYwiTDuL2xJMZ
	bzDK3lQfnnje65Sum0JIkTRNQEWNHmqRjv5ZJcyg1W+BWkUUUjhdo9kdwmdp56OFDl1qdszBGP6eT
	ITZf+dsXRnyV37OhVCyre0IGdMaXq5PR9QxLU9MNaAiMuznmPqsM1p5rlicZ0Bf5dPvsLrjYvtDPt
	DsGti4EVV1NTX5AnAy9sJ0Nc0mIkoNcA4qTxdgUO2uwj7VJz0l0G+QhKWM3yFmjuiQCMuXVd6Pfbq
	YxEkGw4iYdWKXEWw+zq4wXFRzHu/RBTqEBuLc9b5hsWyTbpQyad/5jFfj1Fh+TiO7xaP9t53kgh/t
	6eqFZyQ30H5zVX+BPbTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovKaB-005VZB-OQ; Wed, 16 Nov 2022 15:44:11 +0000
Received: from mail-oa1-f51.google.com ([209.85.160.51])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovKa8-005VIO-Ed
	for linux-phy@lists.infradead.org; Wed, 16 Nov 2022 15:44:10 +0000
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-13b6c1c89bdso20457250fac.13
        for <linux-phy@lists.infradead.org>; Wed, 16 Nov 2022 07:44:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wMo6J/xzRkf1qXE2NKBwI6pYJF06fUQVfFkcN76kkF8=;
        b=jr1phrvBFrY3aox7d5hyPD1qrRnzh15jIhO9L714F9gkBGUh9KdP3QDkAVE3PFd5vb
         2Ix8IKWKsEkAbjS4W2IMf42vJOZzEdRCEa+UNqGNhC2YeBLaaPkZGTCNdMtb7p45lDle
         BOME5HeTZz0KOvoOiri4qbe3RTV2D+gf4z9TEZUAIBeyVlG6NeSwSblwMvjFeMLO4xEh
         BbUg04J5ThuTYeBcqX+FePbuYFOYVIBEUtt5v4L+lCV/6ZpGwW/xTQQ0LZy4gQffnMS/
         J0z1eqvSyKXxw+tx0EXDHKfS4ta6NXLdYva8WRuXS+u0ouB6H1p2VwNmSUtShTEyIkHh
         ETzA==
X-Gm-Message-State: ANoB5pne+/8GXHk0lY8pVZddKyxujLLvRU0sdpeigQiRoxeirRer+7g4
	+MX4RDIRcIlvyDwr6pKNiA==
X-Google-Smtp-Source: AA0mqf54pkgBbUpdwKOrjUT6QhVYiAi0ssoyyBFQndLmit2Qvve+VkWtQ12mUZTMUwvVfGPtCp7sdw==
X-Received: by 2002:a05:6870:be97:b0:132:712d:75cb with SMTP id nx23-20020a056870be9700b00132712d75cbmr1977748oab.145.1668613447117;
        Wed, 16 Nov 2022 07:44:07 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j59-20020a9d17c1000000b0066da36d2c45sm2641748otj.22.2022.11.16.07.44.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 07:44:06 -0800 (PST)
Received: (nullmailer pid 48656 invoked by uid 1000);
	Wed, 16 Nov 2022 15:44:08 -0000
Date: Wed, 16 Nov 2022 09:44:08 -0600
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, "vkoul@kernel.org" <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 08/10] dt-bindings: phy: Add qcom,snps-eusb2-phy schema
 file
Message-ID: <20221116154408.GA4193429-robh@kernel.org>
References: <20221116120157.2706810-1-abel.vesa@linaro.org>
 <20221116120157.2706810-9-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221116120157.2706810-9-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_074408_572660_D3AEB4D9 
X-CRM114-Status: GOOD (  17.54  )
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

On Wed, Nov 16, 2022 at 02:01:55PM +0200, Abel Vesa wrote:
> The SM8550 SoC uses Synopsis eUSB2 PHY. Add a dt-binding schema
> for the new driver.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../bindings/phy/qcom,snps-eusb2-phy.yaml     | 84 +++++++++++++++++++
>  1 file changed, 84 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> new file mode 100644
> index 000000000000..d6a4bdd0cd42
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> @@ -0,0 +1,84 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/qcom,snps-eusb2-phy.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Qualcomm SNPS eUSB2 phy controller
> +
> +maintainers:
> +  - Abel Vesa <abel.vesa@linaro.org>
> +
> +description:
> +  eUSB2 controller supports LS/FS/HS usb connectivity on Qualcomm chipsets.
> +
> +properties:
> +  compatible:
> +    const: qcom,sm8550-snps-eusb2-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  clocks:
> +    items:
> +      - description: ref src

parent to 'ref'? If so, parent clocks don't go in 'clocks'.

> +      - description: ref
> +
> +  clock-names:
> +    items:
> +      - const: ref_src
> +      - const: ref
> +
> +  usb-repeater:
> +    description:
> +      Phandle to eUSB2 to USB 2.0 repeater
> +
> +  vdd-supply:
> +    description:
> +      Phandle to 0.88V regulator supply to PHY digital circuit.
> +
> +  vdda12-supply:
> +    description:
> +      Phandle to 1.2V regulator supply to PHY refclk pll block.
> +
> +  resets:
> +    maxItems: 1
> +    description:
> +      Phandle to reset to phy block.
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +  - vdd-supply
> +  - vdda12-supply
> +  - resets
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,gcc-sm8550.h>
> +    #include <dt-bindings/clock/qcom,rpmh.h>
> +    #include <dt-bindings/clock/qcom,tcsrcc-sm8550.h>
> +
> +    usb_1_hsphy: phy@88e3000 {
> +        compatible = "qcom,sm8550-snps-eusb2-phy";
> +        reg = <0x88e3000 0x154>;
> +        #phy-cells = <0>;
> +
> +        clocks = <&rpmhcc RPMH_CXO_PAD_CLK>,
> +                 <&tcsrcc TCSR_USB2_CLKREF_EN>;
> +        clock-names = "ref_src", "ref";
> +
> +        vdd-supply = <&vreg_l1e_0p88>;
> +        vdda12-supply = <&vreg_l3e_1p2>;
> +
> +        resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
> +    };
> -- 
> 2.34.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
