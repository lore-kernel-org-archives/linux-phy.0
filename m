Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C113C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 10 Jan 2022 20:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wYcWAloi7RoGKTiKOYHjxOqst9wPWRulp5HG1E4R2Bo=; b=jZImZ4K70IAcpY
	3SB0996gRoaA0Jz47D5ugss1b80RhBqqPq8yE5or84K2KdIk31n8ixiRJacIXV4B1R/0uuG9bJJJv
	k8ngF0Rr/QbVVnzxBV/Aaj9/JzSwuMZQyyzOqko2tlEKdvgUuz+0TZWZ/bfOGJzwynYt0axy5C2f7
	CrGDLa+YrQd93BlxwRp1jv/EUa1WrgFaVem3rRZG1W8slrhzs731Lts/JUjQIUrKRPgJayEcoSBFF
	urgrH6Bims/qHdWuwR/7XU6JHw0fG9AM3GPoFxlSGaLjOxDb6XgP7LPtHTKbhYe2vNTvr/OXEclDq
	dnSklfG6Kzy24xPWLhjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n71fh-00DIrF-SS; Mon, 10 Jan 2022 20:53:41 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n71fe-00DIpd-A5
 for linux-phy@lists.infradead.org; Mon, 10 Jan 2022 20:53:40 +0000
Received: by mail-ot1-x32b.google.com with SMTP id
 g79-20020a9d12d5000000b0058f08f31338so16454781otg.2
 for <linux-phy@lists.infradead.org>; Mon, 10 Jan 2022 12:53:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=SlNkfjPl8bJ5V8M/bxJmWndgQif9YSbLDO09vemRv3M=;
 b=Teluis0uizho9gwqRGOWQdDpfU6/sbEJFjCpWVFDEhnQbjulh1wKPyqYjEA0U0YIHP
 les+MmdNr1b1CQa6cgd6a6z9Wy/K0GcCmxyzgGdqsaj+PJDv0idl6fPTqsclyh5iInda
 Pag+YAlaVZWEWBzewDE+8C6317jpB6cssSHkmLVKzmJGe3PCr5Rg9Hbm9X7VghMQqzVm
 6r2Z9lyMAIn9ANv/thuBN3WmTRrOlXL2ol19rmRDy6Y/E5z66Ig86QPoxjEm14xaf6g0
 K5sHa9TzAMmQVdmN9KBePNbZdZzRvwjXH59YOffrYFVeRKt4kGjVmApCz0QmWrn87sl1
 sr4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SlNkfjPl8bJ5V8M/bxJmWndgQif9YSbLDO09vemRv3M=;
 b=eM//CLJLLEBFMobobITQpjfpK3VvaJL703Jih6g1dw654pKyO1Oic6s1dijuD7niID
 I1Kg0NhzBQpu01UyhnWMhAt+HBy6s+0aS6EyVUM3YgTvXvjhSPUDXeHUX/0aaJmxWHBe
 ExBzzFoEqFOchjVus3dP+DLSN/oe4RxmiQDXueVg4bkUCp+6oNa7lMMK0pMnUcPM1pvJ
 TpMvVWDhwVmAl6NO638NJ/SSO+bBBSS/n9mwHBqIL1B+SBS/FyqV/OfwW1qGdwWEFTF8
 BTUrDJxl7dQAameGzaCCjGJX5RIum4QzcVeVjlTKIyR3wSL8kiRK9Od899abAoEcvRFN
 2qvg==
X-Gm-Message-State: AOAM533BjgDl6s+3BsiUu0oBv9bSUDmD7iHbj+tocpeDipIUs3lJ3f6a
 3sEspy7Q93lFEaT6G5nWWRELJg==
X-Google-Smtp-Source: ABdhPJyzRdF2hLe7MG4+OZzcjpZxsWbk3LYYXPkoN4uMWf+x4IFXdxA/DSyYGcgBa3FFA6QpStBrfw==
X-Received: by 2002:a9d:6013:: with SMTP id h19mr1224781otj.270.1641848016323; 
 Mon, 10 Jan 2022 12:53:36 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id b26sm1523623oob.10.2022.01.10.12.53.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Jan 2022 12:53:35 -0800 (PST)
Date: Mon, 10 Jan 2022 12:54:21 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: David Heidelberg <david@ixit.cz>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 ~okias/devicetree@lists.sr.ht, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: convert Qualcomm USB HS phy to yaml
Message-ID: <Ydyc/TJiVUHXRDVw@ripper>
References: <20211230000740.103869-1-david@ixit.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211230000740.103869-1-david@ixit.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220110_125338_435909_87A09FB7 
X-CRM114-Status: GOOD (  23.39  )
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

On Wed 29 Dec 16:07 PST 2021, David Heidelberg wrote:

> Conversion of Qualcomm USB HS phy documentation to yaml.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
> v2:
>  - changed uint8 array to matrix
>  - improved clock-names check
>  - move reset-names items, adjust DTS files later
>  - added clocks and resets min and maxItems
>  - if'ed resets, since apq8064 doesn't have phy reset
> ---
>  .../bindings/phy/qcom,usb-hs-phy.txt          |  84 --------------
>  .../bindings/phy/qcom,usb-hs-phy.yaml         | 108 ++++++++++++++++++
>  2 files changed, 108 insertions(+), 84 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.txt b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.txt
> deleted file mode 100644
> index b3b75c1e6285..000000000000
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.txt
> +++ /dev/null
> @@ -1,84 +0,0 @@
> -Qualcomm's USB HS PHY
> -
> -PROPERTIES
> -
> -- compatible:
> -    Usage: required
> -    Value type: <string>
> -    Definition: Should contain "qcom,usb-hs-phy" and more specifically one of the
> -                following:
> -
> -                        "qcom,usb-hs-phy-apq8064"
> -                        "qcom,usb-hs-phy-msm8916"
> -                        "qcom,usb-hs-phy-msm8974"
> -
> -- #phy-cells:
> -    Usage: required
> -    Value type: <u32>
> -    Definition: Should contain 0
> -
> -- clocks:
> -    Usage: required
> -    Value type: <prop-encoded-array>
> -    Definition: Should contain clock specifier for the reference and sleep
> -                clocks
> -
> -- clock-names:
> -    Usage: required
> -    Value type: <stringlist>
> -    Definition: Should contain "ref" and "sleep" for the reference and sleep
> -                clocks respectively
> -
> -- resets:
> -    Usage: required
> -    Value type: <prop-encoded-array>
> -    Definition: Should contain the phy and POR resets
> -
> -- reset-names:
> -    Usage: required
> -    Value type: <stringlist>
> -    Definition: Should contain "phy" and "por" for the phy and POR resets
> -                respectively
> -
> -- v3p3-supply:
> -    Usage: required
> -    Value type: <phandle>
> -    Definition: Should contain a reference to the 3.3V supply
> -
> -- v1p8-supply:
> -    Usage: required
> -    Value type: <phandle>
> -    Definition: Should contain a reference to the 1.8V supply
> -
> -- extcon:
> -    Usage: optional
> -    Value type: <prop-encoded-array>
> -    Definition: Should contain the vbus extcon
> -
> -- qcom,init-seq:
> -    Usage: optional
> -    Value type: <u8 array>
> -    Definition: Should contain a sequence of ULPI address and value pairs to
> -                program into the ULPI_EXT_VENDOR_SPECIFIC area. This is related
> -                to Device Mode Eye Diagram test. The addresses are offsets
> -                from the ULPI_EXT_VENDOR_SPECIFIC address, for example,
> -                <0x1 0x53> would mean "write the value 0x53 to address 0x81".
> -
> -EXAMPLE
> -
> -otg: usb-controller {
> -	ulpi {
> -		phy {
> -			compatible = "qcom,usb-hs-phy-msm8974", "qcom,usb-hs-phy";
> -			#phy-cells = <0>;
> -			clocks = <&xo_board>, <&gcc GCC_USB2A_PHY_SLEEP_CLK>;
> -			clock-names = "ref", "sleep";
> -			resets = <&gcc GCC_USB2A_PHY_BCR>, <&otg 0>;
> -			reset-names = "phy", "por";
> -			v3p3-supply = <&pm8941_l24>;
> -			v1p8-supply = <&pm8941_l6>;
> -			extcon = <&smbb>;
> -			qcom,init-seq = /bits/ 8 <0x1 0x63>;
> -		};
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> new file mode 100644
> index 000000000000..a60386bd19b2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> @@ -0,0 +1,108 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,usb-hs-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm's USB HS PHY binding description
> +
> +maintainers:
> +  - Bjorn Andersson <bjorn.andersson@linaro.org>
> +
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        const: qcom,usb-hs-phy-apq8064
> +  then:
> +    properties:
> +      resets:
> +        maxItems: 1
> +
> +      reset-names:
> +        const: por
> +
> +  else:
> +    properties:
> +      resets:
> +        minItems: 2
> +        maxItems: 2
> +
> +      reset-names:
> +        items:
> +          - const: phy
> +          - const: por
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - qcom,usb-hs-phy-apq8064
> +          - qcom,usb-hs-phy-msm8916
> +          - qcom,usb-hs-phy-msm8974
> +      - const: qcom,usb-hs-phy
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 2
> +
> +  clock-names:
> +    maxItems: 2
> +    contains:
> +      items:
> +        - const: ref
> +        - const: sleep
> +
> +  resets: true
> +
> +  reset-names: true
> +
> +  v1p8-supply: true
> +
> +  v3p3-supply: true
> +
> +  extcon: true
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  qcom,init-seq:
> +    $ref: /schemas/types.yaml#/definitions/uint8-matrix
> +    description: >
> +      Sequence of ULPI address and value pairs to
> +      program into the ULPI_EXT_VENDOR_SPECIFIC area.
> +      This is related to Device Mode Eye Diagram test.
> +    maxItems: 32 # no hard limit
> +    items:
> +      items:
> +        - description: >
> +            the address is offset from the ULPI_EXT_VENDOR_SPECIFIC address
> +        - description: value
> +
> +required:
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    otg: usb-controller {
> +      ulpi {
> +        phy {
> +          compatible = "qcom,usb-hs-phy-msm8974", "qcom,usb-hs-phy";
> +          #phy-cells = <0>;
> +          clocks = <&clk 0>, <&clk 258>;
> +          clock-names = "ref", "sleep";
> +          resets = <&gcc 10>, <&otg 0>;
> +          reset-names = "phy", "por";
> +          v3p3-supply = <&pm8941_l24>;
> +          v1p8-supply = <&pm8941_l6>;
> +          extcon = <&smbb>;
> +          qcom,init-seq = /bits/ 8 <0x1 0x63>;
> +        };
> +      };
> +    };
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
