Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CF18C53209
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 20:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SysRUFsBMGojNQpemWEPSpccRxYTycmbRIIcwMI3k9M=; b=O7n55zSW1mcjsw
	h/a8EcMkvNL+kiWrUtMreNGgJxWE4Xr+WVGH9RYq2/F6AfWyKaXoNvlgBafBTQn8LocYLtIgPfpV8
	WZ6cOdT/OMqVqOIie1ydCU2RkE22zZ7exGAOlI7iku20YDMKA4T6c0cSvEOaS1gB/jyn4VOEUrY8+
	84h4U8ocUbSUSTwdsMyrFMhr9FAwDkPPZRElao5wkYKnS73HI3tR93ELt81+Wcg1rkBgLPSXr/IgB
	PTAjsMrXr04oTSJPo1qeO3IZkXh5/iQ+k7nr8zmUXXl04jUXT6RhB8a/7KLaNcaVPnlndaABXOeR4
	jhWWNl6UyefYCB7mXhHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woRXy-00000003nqt-1Bh0;
	Mon, 27 Jul 2026 20:03:34 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woRXv-00000003nqV-0EsL
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 20:03:32 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-39c93a972b9so3043441fa.2
        for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 13:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785182608; x=1785787408; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=e06HUI85J7qEibvlYFhV0EnRMDOk7ZPREkdwrntmP6k=;
        b=KZEKCmQHm1ZDROnt8+MSOb/duYrBTOxxCspYnNREvIOm45t6Fi19wYzsYoBpWiJv5J
         N+GARjWRlfdujSmlYmbDwYhHoZG9hJ4KSw6J/ksnBAcD7nJU41hzaUEZNf2TbZEgZJG2
         rBLv44Wpw+Ny2SrTC/LAsrQDu19dqlVFdOaZZrSQayDusLHgrvRv0fKTiYzA1/N/7J0/
         fm6imCEwFJU3wRuKRfS521Pwncuw90atRyELDZqTOdfwTV3ZYCWwQUWMvaet2wppbvKA
         9TdfdinxYc7P0bQMpQYMJMs5+k1fdEy9ldvLTZPSi0VT0Na+xXfFFlRG0sIt+tFNsan/
         ZAfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785182608; x=1785787408;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=e06HUI85J7qEibvlYFhV0EnRMDOk7ZPREkdwrntmP6k=;
        b=dQWph6SvvAXKXdXxdhn0mdWkj1d/zg5V53BTp9g5oPrAS1Y819lw5lXbQRTONItRM7
         H82If2cnGR8PFyRLqcORm4QRgDANYB8hM/hhVrR+VbYHYoXnsEPolSm+rr0z+S/w6kow
         5ho7kKehWRC9RVtsEGrTy/p2PjaTG+DB+J0ar3Z5Kx/jCtVXxhC5bUpbJ6O33ujGEOvA
         Xuyeh5jx9aqLbqBgSFugUgIV5hCx0MfPyF0bPN8bXUuxdyF2e07fxaVqYkiY/AvxHKEr
         V/W2DfSf01URWcAGHa0AP/P0/5tYUjrZYZyX4tXInxnMXRo2oN3cH50rQFWptMPDmfG8
         iVuA==
X-Forwarded-Encrypted: i=1; AHgh+RqaWwqgt5G1oIPQ7K/hHaKzQF6m3DYzjvuF+xAP6M8rBvQO4Az4rUE5EQ+5njp17MMgvxQG/tAZkZY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2qYXRsIo7Dr0Lwqq1mCWeQ7uLiuAeIDuLBN2HVH2Xizo6Y8bG
	ltIAbO9ltld1C0UCp1x29BdOs/JUknaoG8YsODpyWWa7WVkFPxGdjLodr3C+Cz2H6Ag=
X-Gm-Gg: AR+sD10QfaK1olq/lMsUZQbfc8+mDgpRBHChOPb0HSPekx08Hiri94h1agrJHKT68NM
	Qx8KFBe4MBniMPCoBWiz+USh1UTJMiAU5BKd9dbnHU9Yz3EF0eAWzhN/nem/Exy3Zt7WzAALU7W
	FKd6vFuKk3mIxFyNzIPGF8SugoICHiA1QhMwe2nuoX0dmj39FF+xtPx4iXTCh5Y4QE0oNQ/0Qjt
	CmL0BRiv6FTu3rO/G/j6XxygQgsEdnGsvOx/LdKH7b7MmOg76NVFPRpZjtrr0Rjdc14lgNT8pyc
	6IF1rJGCCDkJkNKWL0Z3tcmfwat+QtxhGrhTOuj1GPczDMsB9c+FsMrvQ+JoqcrQiEPsBwC5VZI
	gDgCFnzaNynx6erHt0PcZ3JrjWPrgeaRcy9ea8e4HPQ1ykUIKg+wwbh+PSeXSBm0VVIi2AZOrss
	mwtfpIB+UAiKzlrZK7irgTZSPUDW8FS35Ifl44u5R3dWuWTHtd2Pwp/R1J
X-Received: by 2002:a05:6512:3c94:b0:5b1:4fde:61a with SMTP id 2adb3069b0e04-5b2cd8064fbmr193340e87.2.1785182608171;
        Mon, 27 Jul 2026 13:03:28 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2be077b9asm1643146e87.2.2026.07.27.13.03.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jul 2026 13:03:27 -0700 (PDT)
Message-ID: <1e1bc17a-4c7a-4c08-b0c8-2a2ff31fe870@linaro.org>
Date: Mon, 27 Jul 2026 23:03:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260727-x1e-csi2-phy-v14-0-27d1bf477593@linaro.org>
 <20260727-x1e-csi2-phy-v14-1-27d1bf477593@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260727-x1e-csi2-phy-v14-1-27d1bf477593@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_130331_188742_B2534D91 
X-CRM114-Status: GOOD (  23.10  )
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

On 7/27/26 22:16, Bryan O'Donoghue wrote:
> Add a base schema for the MIPI CSI2 PHYs on Qualcomm SoCs. This PHY
> supports both DPHY and CPHY operation. A special mode of DPHY operation -
> called variously split-mode or combo-mode also allows for two sensors to be
> connected to one PHY.
> 
> The submitted binding here describes the DPHY modes of operation only. CPHY
> is left to future work.

C-PHY bus type is also well described by this version of the bindings.

> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 198 +++++++++++++++++++++
>   1 file changed, 198 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> new file mode 100644
> index 0000000000000..7d0363812aa89
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> @@ -0,0 +1,198 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm X1E80100 SoC CSI2 PHY
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
> +    const: qcom,x1e80100-csi2-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 3
> +
> +  clock-names:
> +    items:
> +      - const: core
> +      - const: timer
> +      - const: ahb
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  operating-points-v2: true
> +
> +  opp-table:
> +    type: object
> +
> +  power-domains:
> +    items:
> +      - description: Titan Top GDSC - Titan ISP Block, Global Distributed Switch Controller.
> +      - description: MMCX voltage rail
> +      - description: MXC or MXA voltage rail
> +
> +  power-domain-names:
> +    items:
> +      - const: top
> +      - const: mmcx
> +      - const: mx
> +
> +  vdda-0p9-supply:
> +    description: Phandle to a 0.9V regulator supply to a PHY.
> +
> +  vdda-1p2-supply:
> +    description: Phandle to 1.2V regulator supply to a PHY.
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description:
> +          Sensor input. Always present. A single sensor is described by a
> +          single endpoint with one to four data lanes. DPHY split mode,
> +          where two independent sensors share the same PHY, is described
> +          by two endpoints; endpoint@0 with exactly two data-lanes and

I believe it might be possible to set combo mode with two single data lane
sensors, but I can not be certain in it.

> +          endpoint@1 with exactly one data-lane.
> +        unevaluatedProperties: false
> +
> +        patternProperties:
> +          "^endpoint(@[0-9a-f]+)?$":

The review comment to a few previous versions of the series including v13
about too wide regexp mask has not been addressed so far, please fix this
issue in the next revision of the series.

> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +            properties:
> +              bus-type:
> +                enum:
> +                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
> +                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
> +
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +                description:
> +                  Logical lane indices 0-3, not physical pad positions.

In hardware description it's physical data lane indexes, the same is said in
video-interfaces.yaml documentation, the numeration starting from zero is
selected to follow even bits in CSI_COMMON_CTRL5 register (D-PHY mode):

* https://lore.kernel.org/all/59331aa7-8430-4754-861c-4ba6a4810ccd@oss.qualcomm.com/

> +
> +            required:
> +              - bus-type

'bus-type' property could be optional, if it's not present, it can
be assumed D-PHY mode.

> +              - data-lanes
> +              - remote-endpoint
> +
> +        allOf:
> +          - if:
> +              required:
> +                - endpoint@1
> +            then:
> +              properties:
> +                endpoint@0:
> +                  properties:
> +                    data-lanes:
> +                      minItems: 2
> +                      maxItems: 2
> +                endpoint@1:
> +                  properties:
> +                    data-lanes:
> +                      maxItems: 1
> +              required:
> +                - endpoint@0
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Output to the CAMSS CSID controller.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - operating-points-v2
> +  - power-domains
> +  - power-domain-names
> +  - vdda-0p9-supply
> +  - vdda-1p2-supply
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
> +    #include <dt-bindings/media/video-interfaces.h>
> +    #include <dt-bindings/power/qcom,rpmhpd.h>

Please sort the list of headers in alphabetical order.

> +
> +    phy@ace4000 {
> +        compatible = "qcom,x1e80100-csi2-phy";
> +        reg = <0x0ace4000 0x2000>;
> +
> +        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
> +                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
> +                 <&camcc CAM_CC_CORE_AHB_CLK>;
> +        clock-names = "core",
> +                      "timer",
> +                      "ahb";
> +
> +        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
> +
> +        operating-points-v2 = <&csiphy_opp_table>;
> +
> +        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
> +                        <&rpmhpd RPMHPD_MMCX>,
> +                        <&rpmhpd RPMHPD_MX>;
> +        power-domain-names = "top",
> +                             "mmcx",
> +                             "mx";
> +
> +        vdda-0p9-supply = <&vreg_l2c_0p9>;
> +        vdda-1p2-supply = <&vreg_l1c_1p2>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +                csiphy0_in: endpoint {
> +                    bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
> +                    data-lanes = <0 1 2 3>;
> +                    remote-endpoint = <&sensor_out>;
> +                };
> +            };
> +
> +            port@1 {
> +                reg = <1>;
> +                csiphy0_out: endpoint {
> +                    remote-endpoint = <&csid_in>;
> +                };
> +            };
> +        };
> +
> +        csiphy_opp_table: opp-table {
> +            compatible = "operating-points-v2";
> +
> +            opp-300000000 {
> +                opp-hz = /bits/ 64 <300000000>;
> +                required-opps = <&rpmhpd_opp_low_svs_d1>,
> +                                <&rpmhpd_opp_low_svs_d1>;
> +            };
> +        };
> +    };
> 

That's a great improvement, thank you.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
