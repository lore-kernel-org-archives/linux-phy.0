Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6F35C83F22
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jul 2025 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tcA4UbAP2sQAtIPtkXcdfOhvxrsWd9Vtdg+rIxhec0=; b=wnp15SAbVIWXDc
	HK8RIleOTqlZWwWfIYNCppHjN67509S5Jsz60gaU5cuQmGDOvn7D8tCFEggWHsFKH0Q7uwJchdpjj
	YV2ZTf4ym4Jls2n5n+rKa2bYdO5tRYP1ZaS7Ojizvhp64jsZmRhhC/9FQ8pfa7MhJO5xfnLZF5E3z
	esmsbWlQnGMq/djDodnXENGXRK9AJT0tW4dkUxni3IYQLGME+RDpQQS1FMNM7dYIn3bxpPiPr6qrX
	zgkvt5qbOd+aps+ShWbANGOH17XJLsglIIWRWGaz851jfFWbg5KYCZ+lVBHdSEXBLRwLOYFoqCDSJ
	THypGofkqWniMvzfrS0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubKnB-00000002ZRW-1uke;
	Mon, 14 Jul 2025 15:08:33 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubJwL-00000002Qzn-3SdR
	for linux-phy@lists.infradead.org;
	Mon, 14 Jul 2025 14:13:59 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-558f7fc9d7fso182219e87.1
        for <linux-phy@lists.infradead.org>; Mon, 14 Jul 2025 07:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752502435; x=1753107235; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OiyN54HqkGhaI3X2oE54WY0+m9go1W47ITpgZXXs7J0=;
        b=VYV7GXNHe/8pPjpUpapnPXie/EUnNFyJlwF+pWJNC98HWv9NBWyphx0I+yn/gxgw/2
         UtrQGuFUejNEV+Qlu8GjuP1QCPDA0HFXwjzGA+QYpSs1JrLn2DvknAX5OUqEmeB0uB8Z
         26FbEa+RyYhBV1ppGX0JiNuoHngH8lzrrL9eMtqisW6Zz/SMV/pLOblMtKU5dNzjlNbZ
         frD6Da0oB2iYp3KQVc4DWRL20/EKhDbjP5SDJd/jVC4vEtbtwNjmIt2Xlsm2pigJg53r
         +pXBLy/VJmQz/ZNc/EqvddqU+zT3GOTqG3P562jWeXdNTqmxDEtSfgYCU0wMHPbXJaZo
         kmyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752502435; x=1753107235;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OiyN54HqkGhaI3X2oE54WY0+m9go1W47ITpgZXXs7J0=;
        b=wD5xJhxv0aKw6xl3wZpKvJIWRi5k6MbVwx6anG6lXQQWoOtA3B9XhZ0YfRz2arLS0d
         F/szjfUZMJZU5wHyBxBZL2sJ1ozcsIbt6Rq3EZ6nak0HrnKFbHdT60fWyPDFBXhHVila
         jsu4ViILtZQ7F8TA0TzPXSvk/G3vI3d8TlsqVy3Lp+aF37gdorbhPqmOtUZ+Ues7fLjD
         MnKnJx6N18sFKDyIHJubYvzidpRiPewwYyHsxRf9VL5GiAVQB5j1l0coJjRqwJzJFrHj
         gKdrzDaB/gHCVzmmeVa/vyX6N4JO9ZYzAgZ//MyUHFPTaqc3a5wlmtM62rkuCXLhcpNa
         0w4A==
X-Forwarded-Encrypted: i=1; AJvYcCW+U6/xjMRBILzSvlxuHeDIHLAikQApbLNdSfnnQslNFu7dbg1IUy8K6hxhVV8Uax3mNfVsl8eTBIY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyE0xM0172lCiR1SzZi5Q0xUYjBtj5hZl3Ak8X60QBPquuC+Ooq
	92e/52sdppsNU6BruQGWz016jUZzJg7hDw7kMiZriKFTxI5spVyEFvzGGm0Whxyu5E4=
X-Gm-Gg: ASbGnctVsZ9jsBt5LmWhewUSLfrrwRtnS0FNfVj8zg0lNk62JZmv+Ag4cdYpAD7ZhSF
	1FJ/+BU7c8oe6wNJX+MTIMNyGvO3P6aYfL3fQsAuCDbX42sfvCm0TdeihsPybxM8WL30lwctInq
	iF359mMg8pfIhPrstGi/ZFVFBeiAZvPTIjqJeofPzgwkajMYnmD3OeCLKK1I0MIMp0vCN+RbJzW
	G36gRSc2Ue1R4nunUAULy87q+o8HZLEeObwyJqrxnteaFjd+BOckMvE6mH7sgeldk9rXFAlZk4E
	7DQmYo+9c9zsWb9XJW99VCZAK4/Y/cHyliRtmmPPdrq92sJgZGfw6AyYeQhTwIriGzSNKMP9D35
	VDscKSOLAhfnRhH+PYRVts+SK8xkWJpKgVysAbRdwgQYccUsObh4wgWr3EhJwki1RHBVF11Xm61
	Mg
X-Google-Smtp-Source: AGHT+IGC8Q7q44pTIG5Hqdyx76e0tz+NV3O/Al80pmn7k0s9+o2E96eS2uXy7hjZVJc9Tqvik/DEmQ==
X-Received: by 2002:a05:651c:b21:b0:32b:3b00:406b with SMTP id 38308e7fff4ca-3306ce94988mr4877941fa.4.1752502435259;
        Mon, 14 Jul 2025 07:13:55 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fab8ed35bsm15350211fa.84.2025.07.14.07.13.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 07:13:54 -0700 (PDT)
Message-ID: <8ed5eeee-78a2-4b26-989f-03676a9e5da7@linaro.org>
Date: Mon, 14 Jul 2025 17:13:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom: Add MIPI CSI2 C-PHY/DPHY
 Combo schema
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-1-74acbb5b162b@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250710-x1e-csi2-phy-v1-1-74acbb5b162b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_071357_884884_04353018 
X-CRM114-Status: GOOD (  21.67  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 7/10/25 19:16, Bryan O'Donoghue wrote:
> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
> PHY devices.
> 
> The hardware can support both C-PHY and D-PHY modes. The CSIPHY devices
> have their own pinouts on the SoC as well as their own individual voltage
> rails.
> 
> The need to model voltage rails on a per-PHY basis leads us to define
> CSIPHY devices as individual nodes.
> 
> Two nice outcomes in terms of schema and DT arise from this change.
> 
> 1. The ability to define on a per-PHY basis voltage rails.
> 2. The ability to require those voltage.
> 
> We have had a complete bodge upstream for this where a single set of
> voltage rail for all CSIPHYs has been buried inside of CAMSS.
> 
> Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
> CAMSS parlance, the CSIPHY devices should be individually modelled.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   .../phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml     | 95 ++++++++++++++++++++++
>   1 file changed, 95 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..e0976f012516452ae3632ff4732620b5c5402d3b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml
> @@ -0,0 +1,95 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm MIPI CSI2 Combo PHY
> +
> +maintainers:
> +  - Bryan O'Donoghue <bod@kernel.org>
> +
> +description:
> +  Qualcomm MIPI CSI2 C-PHY/D-PHY combination PHY. Connects MIPI CSI2 sensors
> +  to Qualcomm's Camera CSI Decoder. The PHY supports both C-PHY and D-PHY
> +  modes.
> +
> +properties:
> +  compatible:
> +    const: qcom,x1e80100-mipi-csi2-combo-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  clocks:
> +    maxItems: 4
> +
> +  clock-names:
> +    items:
> +      - const: camnoc_axi
> +      - const: cpas_ahb
> +      - const: csiphy
> +      - const: csiphy_timer
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  vdda-0p8-supply:
> +    description: Phandle to a 0.8V regulator supply to a PHY.
> +
> +  vdda-1p2-supply:
> +    description: Phandle to 1.2V regulator supply to a PHY.
> +
> +  phy-type:
> +    description: D-PHY or C-PHY mode
> +    enum: [ 10, 11 ]
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +  - vdda-0p8-supply
> +  - vdda-1p2-supply
> +  - phy-type
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
> +    #include <dt-bindings/phy/phy.h>
> +
> +    csiphy0: csiphy@ace4000 {
> +        compatible = "qcom,x1e80100-mipi-csi2-combo-phy";
> +        reg = <0x0ace4000 0x2000>;
> +        #phy-cells = <0>;
> +
> +        clocks = <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
> +                 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +                 <&camcc CAM_CC_CSIPHY0_CLK>,
> +                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>;
> +        clock-names = "camnoc_axi",
> +                      "cpas_ahb",
> +                      "csiphy",
> +                      "csiphy_timer";
> +
> +        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
> +
> +        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +
> +        vdda-0p8-supply = <&vreg_l2c_0p8>;
> +        vdda-1p2-supply = <&vreg_l1c_1p2>;
> +
> +        phy-type = <PHY_TYPE_DPHY>;
> +    };
> 

There is no ports at all, which makes the device tree node unusable,
since you can not provide a way to connect any sensors to the phy.

--
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
