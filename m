Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DE9606A329
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 21:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=B3QfNnS/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=CnSVmbcA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ph8mMnyRGIjQrmjYlS0Qvk/Vl8Jt09L1abH7FfTtjf0=; b=B3QfNnS/fiHJcmVYJxRezpGq/y
	jO0IjJaw9n5k+u6A08w/h8elSKocYiJPLm6bYucrGp0sNASwTDoyG2R68dF5B5Cbc6J8/ZnN8nVE9
	b50obtX59ff6+VSI4PJufeGKZGwQSlwrO/v//LdxE55RGYjHU+53aMDUONKmhaOwDCZBORycYhd5H
	ODINDrovSoUeBw55pWy054GmUWjrG2jPXK/t3pPCWTBCZIbthVEjlHoOGVBWsHrbHWN8l08RWEOFa
	RpnckaoSqg4nw2ftqHU7K/b6PBiJhKDOwxvdjpCG0cG5EnGY9O0smHyiED9qMNtx+tPZ6+K+F81SP
	YvCVmjwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRe6-0000000Diwa-3ARL;
	Fri, 06 Nov 2026 21:38:50 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRe2-0000000DivC-0WnZ
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 21:38:48 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-3ab35a9d9ceso1335411fa.3
        for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 13:38:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1794001124; x=1794605924; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=uG5G+zK2Jay3P3mKTZXtyylvcBJ3H0UWbosExNjzy0o=;
        b=CnSVmbcApil830YO8b0ltqV1sEBwsvEnTqpXGNuK+6mhLUnfcPy8/XSyCZHbXhUufg
         0TXQr+p9CTO6xO1YnXu3rN9AzacBKXOSoDR7SUJlVEB8wvHMl/qss/PujxbalOaTp0e5
         A9Y0rCK5qCXxZiG0uMtjY8GLb2cUYlZ4PYeBHoIR2q1qAwjHVrnoIex0+szKHbZLQqVu
         6Suh+tdTVIFciTESYPEUmEdU0FKa8YeES5q6wyRnn2zuupvOFTt+pnMJgk9LjCtGpXz9
         T3Gq2vQeGNiXLeuhFoUpvvyx8Fi0jKz9SnKs7NnOfDKNzxysbCPjKp8HYNEDxLpU9hbp
         9Exw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794001124; x=1794605924;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uG5G+zK2Jay3P3mKTZXtyylvcBJ3H0UWbosExNjzy0o=;
        b=0N1EzWKn8pYlxQc1mtJ2R8oQ2YRXq0zFJD7tIOoaWfpSt/wvlFKh8r1lAy/39wDGku
         BKDqWh/34AGAsiZx/TY4NJUJnsof6pwVDnjvDY8U/s7w6veBfdzQP83fzpThQo3z9SX2
         +nRaxU2ydq6MCs0CwoSomnErUlzUAWhlQsC8c5o3EjOC/3YUW14g4W+J1Mab41oMBq7q
         pE7IvQ1G5BnFuGGbZqZBRWHqtpbKc/Rj1VYODsuFmaJ9rtzJ3Ql0mgVRVPDrpZSyEu0+
         mtxM+yBVh3UFiSu6JzBSrjgrngpA5mMXMl22ruUsHAkQzYtWOUqS/MwgPOp6FXnWc7/8
         3B7Q==
X-Forwarded-Encrypted: i=1; AL+hErH12lcdPeTYXm26POqunyb91/bwc45K+QTribR+MvNGRk4rTDRfQa9tdU+8hOZbtBqMpzNGe4VQHCo=@lists.infradead.org
X-Gm-Message-State: APuU4Z/OYpx4CzjNu8Ob7R48Sh9AXDIRANaVC/mrGBhIFzBRlMhF1EJC
	9f5+4hJ6l2AY2zGF/tfyUsz6rIt3lYov6OI0jks3RWTXivigaInv4qVRg0Ywk2R7br4=
X-Gm-Gg: AYBFou3yQe8DQWbyVw9ArYrVK3rMc53CXod68hPCzkEHlaQAp1SQC7rKFZQhzbMGK+N
	MZ98yY5uNnWama0PjNbSHWVkHQmrf0zps03zqd1Wre025n5WE5gpRX3D8hdBXigEEM97P+Af6nL
	ny15n+O2hyzbUAqQRS7Oj6hg2PymU8tT5WboMENgSr5NjrpBT+30qINzWjAkTFBLRwzxyvnsn3m
	ghL/8kegQy0H/j7I6cmNHBZt9uLsKOu8CHVM7dGveoeVUQXWMu1tL946uKTp1WBlUH6QO4cY9Ze
	DVD6r0itbtGDquiBiaOBbkTeNo4+tFapNVLAnkDstz2+ce2P9wubQ1YIvcy3lK+uU0t9yM6Nlxs
	EXWlDNuemJVkJr/jsejWNEG4MGCyvH7nhBWGEuxXNqNILvh0KFZm+DF/brSsNOafP8Uv/l1ISsJ
	ZWk/BbbzHkWeS2wEXQyuhZHg2tg+0IDDFX+rL8wawOsgA49TrPlAMKA3m9p8p41ET3DZnBSfEnB
	35bG9N76UHh1eKnfpJYQ9m5v0/7Rrjst4OggZx0oLFvjpruVSx41gzrdb6bMJz3ZeFpIzwUm3mz
	nVWFOqXcGL9Uv0nfr0Ckg6MDWiT6cGICHI5yM6x2LSDZWKt+KaPlvdkLARZwIQWrBTLjuFGuKwD
	IqKliSg==
X-Received: by 2002:a05:6512:23a8:b0:5bf:ce1f:cdb with SMTP id 2adb3069b0e04-5c0039162fcmr1408155e87.1.1794001123717;
        Fri, 06 Nov 2026 13:38:43 -0800 (PST)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5c0087ddd18sm270965e87.21.2026.11.06.13.38.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2026 13:38:43 -0800 (PST)
Message-ID: <21be3761-9da9-48c6-aaa1-b56f8625167a@linaro.org>
Date: Fri, 6 Nov 2026 23:38:42 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/7] dt-bindings: media: qcom,sm8150-camss: Add SM8150
 CAMSS
To: mail@andrewgigena.dev, Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <20261106-sm8150-v7.4-rc1-camss-v3-2-0103e8a0bbcd@andrewgigena.dev>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20261106-sm8150-v7.4-rc1-camss-v3-2-0103e8a0bbcd@andrewgigena.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_133846_926416_7F91C7F6 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/6/26 20:35, Andrew Gigena via B4 Relay wrote:
> From: Andrew Gigena <mail@andrewgigena.dev>
> 
> Document the Qualcomm SM8150 Camera Subsystem. The IP integrates four
> CSIPHY, four CSID (two full and two lite), two VFE and two VFE-Lite
> instances, with 19 clocks, 8 interrupts, eight IOMMU streams, four
> interconnect paths and three power domains.
> 
> The CSIPHY I/O spaces are not part of the CAMSS container device: each
> CSIPHY is driven by the dedicated qcom,sm8150-csi2-phy driver, so this
> binding only describes the VFE and CSID resources. Each CSI input port
> is described with data lanes starting at 1, as required by the CAMSS
> PHY mode.
> 
> Describe SM8150 in a dedicated schema instead of reusing another SoC's
> schema.
> 
> Signed-off-by: Andrew Gigena <mail@andrewgigena.dev>
> ---
>   .../bindings/media/qcom,sm8150-camss.yaml          | 285 +++++++++++++++++++++
>   1 file changed, 285 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8150-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sm8150-camss.yaml
> new file mode 100644
> index 000000000000..371ff1ce0bd2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,sm8150-camss.yaml
> @@ -0,0 +1,285 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/qcom,sm8150-camss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm SM8150 Camera Subsystem (CAMSS)
> +
> +maintainers:
> +  - Andrew Gigena <mail@andrewgigena.dev>
> +
> +description:
> +  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
> +
> +properties:
> +  compatible:
> +    const: qcom,sm8150-camss
> +
> +  reg:
> +    maxItems: 8
> +
> +  reg-names:
> +    items:
> +      - const: vfe0
> +      - const: csid0
> +      - const: vfe1
> +      - const: csid1
> +      - const: vfe_lite0
> +      - const: csid_lite0
> +      - const: vfe_lite1
> +      - const: csid_lite1

That's an intermix of names, and you will get a review comment from
Krzysztof about it, I stand aside.

> +
> +  clocks:
> +    maxItems: 19
> +
> +  clock-names:
> +    items:
> +      - const: camnoc_axi
> +      - const: cpas_ahb
> +      - const: vfe0_axi
> +      - const: vfe0
> +      - const: vfe0_cphy_rx
> +      - const: vfe0_csid
> +      - const: vfe1_axi
> +      - const: vfe1
> +      - const: vfe1_cphy_rx
> +      - const: vfe1_csid
> +      - const: vfe_lite0
> +      - const: vfe_lite0_cphy_rx
> +      - const: vfe_lite0_csid
> +      - const: vfe_lite1
> +      - const: vfe_lite1_cphy_rx
> +      - const: vfe_lite1_csid
> +      - const: gcc_ahb
> +      - const: gcc_axi_hf
> +      - const: gcc_axi_sf

Drop 'gcc_axi_sf'.

> +
> +  interrupts:
> +    maxItems: 8
> +
> +  interrupt-names:
> +    items:
> +      - const: vfe0
> +      - const: csid0
> +      - const: vfe1
> +      - const: csid1
> +      - const: vfe_lite0
> +      - const: csid_lite0
> +      - const: vfe_lite1
> +      - const: csid_lite1

Here too.

> +
> +  interconnects:
> +    maxItems: 4
> +
> +  interconnect-names:
> +    items:
> +      - const: cam_ahb
> +      - const: cam_hf_0_mnoc
> +      - const: cam_sf_0_mnoc
> +      - const: cam_hf_1_mnoc

Drop 'cam_' prefix and 'cam_sf_0_mnoc' also.

> +
> +  iommus:
> +    maxItems: 8
> +
> +  power-domains:
> +    items:
> +      - description: IFE0 GDSC - Image Front End, Global Distributed Switch Controller.
> +      - description: IFE1 GDSC - Image Front End, Global Distributed Switch Controller.
> +      - description: Titan Top GDSC - Titan ISP Block, Global Distributed Switch Controller.
> +
> +  power-domain-names:
> +    items:
> +      - const: ife0
> +      - const: ife1
> +      - const: top
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    description:
> +      CSI input ports, one per CSI2 PHY instance.
> +
> +    patternProperties:
> +      "^port@[0-3]$":
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +
> +        description:
> +          Input port for receiving CSI data from a CSIPHY.
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +                items:
> +                  minimum: 1
> +                  maximum: 4
> +
> +              bus-type:
> +                enum:
> +                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY

Or C-PHY, right?..

In fact you shall drop bus-type from here, because the link between
CAMSS and PHY's output is not a CSI-2 bus, it makes it inapplicable.

'bus-type' is needed only between CSIPHY and a sensor connected to it.

> +
> +            required:
> +              - data-lanes
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - interconnects
> +  - interconnect-names
> +  - interrupts
> +  - interrupt-names
> +  - iommus
> +  - power-domains
> +  - power-domain-names
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/qcom,gcc-sm8150.h>
> +    #include <dt-bindings/clock/qcom,sm8150-camcc.h>
> +    #include <dt-bindings/interconnect/qcom,sm8150.h>
> +    #include <dt-bindings/media/video-interfaces.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        isp@acaf000 {
> +            compatible = "qcom,sm8150-camss";
> +
> +            reg = <0 0xacaf000 0 0x4000>,
> +                  <0 0xacb3000 0 0x1000>,
> +                  <0 0xacb6000 0 0x4000>,
> +                  <0 0xacba000 0 0x1000>,
> +                  <0 0xacc4000 0 0x4000>,
> +                  <0 0xacc8000 0 0x1000>,
> +                  <0 0xaccb000 0 0x4000>,
> +                  <0 0xaccf000 0 0x1000>;
> +
> +            reg-names = "vfe0",
> +                        "csid0",
> +                        "vfe1",
> +                        "csid1",
> +                        "vfe_lite0",
> +                        "csid_lite0",
> +                        "vfe_lite1",
> +                        "csid_lite1";
> +
> +            clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
> +                     <&camcc CAM_CC_CPAS_AHB_CLK>,
> +                     <&camcc CAM_CC_IFE_0_AXI_CLK>,
> +                     <&camcc CAM_CC_IFE_0_CLK>,
> +                     <&camcc CAM_CC_IFE_0_CPHY_RX_CLK>,
> +                     <&camcc CAM_CC_IFE_0_CSID_CLK>,
> +                     <&camcc CAM_CC_IFE_1_AXI_CLK>,
> +                     <&camcc CAM_CC_IFE_1_CLK>,
> +                     <&camcc CAM_CC_IFE_1_CPHY_RX_CLK>,
> +                     <&camcc CAM_CC_IFE_1_CSID_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_0_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_0_CPHY_RX_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_0_CSID_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_1_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_1_CPHY_RX_CLK>,
> +                     <&camcc CAM_CC_IFE_LITE_1_CSID_CLK>,
> +                     <&gcc GCC_CAMERA_AHB_CLK>,
> +                     <&gcc GCC_CAMERA_HF_AXI_CLK>,
> +                     <&gcc GCC_CAMERA_SF_AXI_CLK>;
> +
> +            clock-names = "camnoc_axi",
> +                          "cpas_ahb",
> +                          "vfe0_axi",
> +                          "vfe0",
> +                          "vfe0_cphy_rx",
> +                          "vfe0_csid",
> +                          "vfe1_axi",
> +                          "vfe1",
> +                          "vfe1_cphy_rx",
> +                          "vfe1_csid",
> +                          "vfe_lite0",
> +                          "vfe_lite0_cphy_rx",
> +                          "vfe_lite0_csid",
> +                          "vfe_lite1",
> +                          "vfe_lite1_cphy_rx",
> +                          "vfe_lite1_csid",
> +                          "gcc_ahb",
> +                          "gcc_axi_hf",
> +                          "gcc_axi_sf";
> +
> +            interrupts = <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 360 IRQ_TYPE_EDGE_RISING>,
> +                         <GIC_SPI 359 IRQ_TYPE_EDGE_RISING>;
> +
> +            interrupt-names = "vfe0",
> +                              "csid0",
> +                              "vfe1",
> +                              "csid1",
> +                              "vfe_lite0",
> +                              "csid_lite0",
> +                              "vfe_lite1",
> +                              "csid_lite1";
> +
> +            power-domains = <&camcc IFE_0_GDSC>,
> +                            <&camcc IFE_1_GDSC>,
> +                            <&camcc TITAN_TOP_GDSC>;
> +
> +            power-domain-names = "ife0",
> +                                 "ife1",
> +                                 "top";
> +
> +            interconnects = <&gem_noc MASTER_AMPSS_M0 0
> +                             &config_noc SLAVE_CAMERA_CFG 0>,
> +                            <&mmss_noc MASTER_CAMNOC_HF0 0
> +                             &mc_virt SLAVE_EBI_CH0 0>,
> +                            <&mmss_noc MASTER_CAMNOC_SF 0
> +                             &mc_virt SLAVE_EBI_CH0 0>,
> +                            <&mmss_noc MASTER_CAMNOC_HF1 0
> +                             &mc_virt SLAVE_EBI_CH0 0>;
> +
> +            interconnect-names = "cam_ahb",
> +                                 "cam_hf_0_mnoc",
> +                                 "cam_sf_0_mnoc",
> +                                 "cam_hf_1_mnoc";
> +
> +            iommus = <&apps_smmu 0x840 0x620>,
> +                     <&apps_smmu 0x860 0x620>,
> +                     <&apps_smmu 0xa40 0x620>,
> +                     <&apps_smmu 0xa60 0x620>,
> +                     <&apps_smmu 0xc40 0x620>,
> +                     <&apps_smmu 0xc60 0x620>,
> +                     <&apps_smmu 0xe40 0x620>,
> +                     <&apps_smmu 0xe60 0x620>;
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +
> +                    endpoint {
> +                        bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
> +                        data-lanes = <1 2 3 4>;
> +                        remote-endpoint = <&csiphy0_out>;
> +                    };
> +                };
> +            };
> +        };
> +    };
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
