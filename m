Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6094FC61DA4
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0fs7CZyCob8cAG6GZOAmhtjZlTbhLCaQZbDuq914lhw=; b=FYU6MzLlhJY9+D
	I1CbbGuhAg93nWWz5vY8EOuqz4QyvU0g70PvK3KZiiKF5WkUCx0kXcSqyE0or29JU6xv9XoI9gB6H
	AqPtHatQbwzIahLJsEAYfxnXjtZGOLeqpaMIdD7e0uwLChxWXWygOR9nMKsO9jlF98x/2OfhAHG2n
	/AqDYVBR/C72bXHpvaaVEif4iicBLo3RUkFkixohdwi9srLpbF2Q7ZlBr0VTy3Ga+wdHyCSXDrkHO
	0dQLoW2dEV8+SU7YUHVTM40qjc8EyU/uSjBmt/G5CcWH1CVmc1RPsWU13C5d41918FI5BNVgh1AwI
	Lfb7G56jDRQR6bKf6pMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLW8W-00GWXb-FU; Fri, 27 Jan 2023 21:19:52 +0000
Received: from mail-ot1-f44.google.com ([209.85.210.44])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLW8S-00GWVM-9y
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 21:19:50 +0000
Received: by mail-ot1-f44.google.com with SMTP id r17-20020a056830449100b0068bb088317aso794704otv.12
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 13:19:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zMBH4OaEcfhMng/uMsZ7qj6zrdL3KO0FA5Oo+Mfrzqk=;
        b=FpLj09NpI4tQb0AFgYS0JeQRKCyB2bFzAMiDdds2i+Rz7+DEUyWxrSAkU8YRyEguj9
         BhxeB20P/CJPv5Pg1olLSN2zy3rdfT3Ru+RAFHb5P4BqF3TJZPIgsCPcpI1ybGPp+Wzm
         3DMX/KgJlgI8Ip9/otuKYDB6CRoDGBX6zYBCs6Bov+SeQq1vj/mTJiB5O1OQM2P7uMi2
         TVwZgl+x4e1C4DkU/H7gLSJrr8RrsOmEZ6QTXZ5oPtGh65sAwycJtFR6ItU7FtmswFYK
         wFi0RVNLTnT/ZNVzahak2eq1AdGbopl8VXf2rLX78jiHAnD57/DIQAlUkBWuDL7mUumM
         9EBg==
X-Gm-Message-State: AFqh2ko9oZMaO3yQnUhg45CMuRKX8c4DAAaEAIQMujRlN/kzGaXhyK/b
	Lh/mL+HtWS/4rXL47JKCgw==
X-Google-Smtp-Source: AMrXdXthH4OPTLyVNiYD9/v8bT3CTUREw48g/jXBA27Bcqp8oBqcG1VsOfg0TD/wsmn6S/zokuyvkw==
X-Received: by 2002:a9d:4c8a:0:b0:670:6419:c3ee with SMTP id m10-20020a9d4c8a000000b006706419c3eemr20672876otf.16.1674854385834;
        Fri, 27 Jan 2023 13:19:45 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z5-20020a9d62c5000000b0068bba70ab10sm143815otk.62.2023.01.27.13.19.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 13:19:45 -0800 (PST)
Received: (nullmailer pid 699757 invoked by uid 1000);
	Fri, 27 Jan 2023 21:19:44 -0000
Date: Fri, 27 Jan 2023 15:19:44 -0600
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, "vkoul@kernel.org" <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 1/8] dt-bindings: phy: Add qcom,snps-eusb2-phy schema
 file
Message-ID: <20230127211944.GA696408-robh@kernel.org>
References: <20230126131415.1453741-1-abel.vesa@linaro.org>
 <20230126131415.1453741-2-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230126131415.1453741-2-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_131948_366680_9C49A635 
X-CRM114-Status: GOOD (  18.39  )
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

On Thu, Jan 26, 2023 at 03:14:08PM +0200, Abel Vesa wrote:
> The SM8550 SoC uses Synopsis eUSB2 PHY. Add a dt-binding schema
> for the new driver.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 
> The v2 version of this patch was here:
> https://lore.kernel.org/all/20230126124651.1362533-2-abel.vesa@linaro.org/
> 
> Changes since v2:
>  * none
> 
> Changes since v1:
>  * dropped the "ref src" clock
>  * dropped the usb-repeater property
> 
>  .../bindings/phy/qcom,snps-eusb2-phy.yaml     | 78 +++++++++++++++++++
>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> new file mode 100644
> index 000000000000..49a5dad486c2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> @@ -0,0 +1,78 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +

Remove blank line

> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/qcom,snps-eusb2-phy.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"

Drop quotes

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
> +      - description: ref
> +
> +  clock-names:
> +    items:
> +      - const: ref
> +
> +  resets:
> +    maxItems: 1
> +    description:
> +      Phandle to reset to phy block.

Drop description.

> +
> +  vdd-supply:
> +    description:
> +      Phandle to 0.88V regulator supply to PHY digital circuit.
> +
> +  vdda12-supply:
> +    description:
> +      Phandle to 1.2V regulator supply to PHY refclk pll block.
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

Doesn't match the schema.

> +
> +        vdd-supply = <&vreg_l1e_0p88>;
> +        vdda12-supply = <&vreg_l3e_1p2>;
> +
> +        resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
> +    };
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
