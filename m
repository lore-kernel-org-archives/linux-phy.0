Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12EB2C624D7
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 11:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K2aqu8qyP8fyaOn9uNp9p4nedv88u/1RJhzZLLeULFw=; b=EPOiqAvURv1r4P
	Jzwql5LWoCo/2XsYj2Gk8KX/HzZ/6jyZaPxaSM+r8FVjRkFH3refizDl/fs4UMmL2GHDu5+T/t3yk
	xZBKKPzIslAnDK+NEg/0OLNvZVtguSGSRQ0/nxeWT6sk0jpH0wr5DCVpL0R7uduYpx8HAVKcEjBgd
	YObpUj9gkcvpkllCS5/B/5FfjPitU+bGdLebK227OBjtDJWC0QjQ5LAbUxzCurEN/s1ZKCKF6o2EH
	DVcGTAdYMFCumPMq1AnxbsWBMoXmD4I8L8hmo/vyKXM5854oeD2TMLQSbAgPUfVTAKnVyDnSFppuD
	bEknGqTrn6cswHEwfmPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x260X-0000000HFC6-37mx;
	Thu, 03 Sep 2026 11:53:29 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x260V-0000000HFBa-0KiR
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 11:53:28 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5b5e0ec7021so340483e87.1
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 04:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788436404; x=1789041204; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=YlAxcekko1WzQ9ej7nCP/3I5A9S1XkCyAocKTij2/Qs=;
        b=cp89e1cNS6PrQH2pyAKr3Cm8qLqt+1bDZsvy0VfaJ8t5QCQSSIjrsQNg/yKetJ6/lb
         5peQm7BITbweu0H9dNmwYCfvjzkHCc3uSHhg4iwFzQX8xVKcfya+PU97XhIo7qXd5qyL
         W3JzUo2pyLnRYuU0pgvo5z/O6hURMcciHDhalJAIteS8Xa9XsRD9t4Di7/iogr3DZzEJ
         yMYb/Eu4DSSpyQT8BemnvTZ1d6s8px7BzrjgsMoSVdD/ZJ3eKNHHdbJQb7lmPb9ynrbn
         N2mdwXGP7vfyV4NEdEJmhCCK6xsfNzWFoZtQiSztdw7/IrbFyN/+fU1wr29S9PaH3glv
         dkYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788436404; x=1789041204;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YlAxcekko1WzQ9ej7nCP/3I5A9S1XkCyAocKTij2/Qs=;
        b=j2Mzd2RUpZb/gwR1c/Ylzyd/2es86vqG31PycLDOR25xpqVufMPazR+r/WNtrZRn87
         7Y786g/479xf93Dhwg8U7fDxvGgTzV5rgvgEONHEeTuvkBK85D+qt8TXzn6/MLp3CGTH
         dO6ZWRFyVyZb56aRsOekVzCkrhVxnDZY+tDqwBQaJIqjWlYjF6tL53yS33P34fk3a579
         P4BIbxYW0lIQ2mwQE4NdtewDjSheqzrsIXWoFSYHSyL03A+s6RrmUdspbfCLtSqmkRgG
         i7KWqhCWnQR+52TnhSdCs6U02tgxVRm18MglXOSWdliq24YAPG48x5aHPlGltNHtg6nD
         plhQ==
X-Forwarded-Encrypted: i=1; AKwUvBylreXHXh9LokA8EglpS++EBRXpbaXhMOgsk6C9W8CYkYNAunojBnGPl0kdehJlibMea8tBSoa36HU=@lists.infradead.org
X-Gm-Message-State: AFuF++lxhSlvjir61qdSqyfRzin5j8eMnHSlkQ8y4IJ1wG8A8F/ffDJk
	D1OPJ2a6IJ+T1lr29j/E7nB9vZt9kyo+I7QP3JieP+T49EjBIF9cI4wdiyZFbWIBgwk=
X-Gm-Gg: AYBFou33Yu2J91XxaaVM+8pLHUyhQDSPMW0T2i4mwCSiutnwhsDYetVc0jo0DFldoD0
	7EEzf+CvNA56ek4RTUMzuLeBVfbRpXI1yBTLEgU/9wgCJULTAc/JOTIyk9DJ3lbVLfjbvcFc2iB
	Kq3ThyGYndVFkc921tCz1RvBKBIlGSiLtsq7cv7UlAS8g5v0+CozQg2Rx5GFcalbiet9O4PwT5d
	fYWjUhZryxZaHt6H0JECA3odVipnh/3AI1osKLdlOq6AExYfSoFjt/rHnUxHX4/YXNbOTcVGBwo
	2ZBhowE6ondGIRy+omRPh7PsSxCzqgBTh3MkCy9EKTEJNXBcoN/9+0WDJS5ydpFSgMu3p9r9Lj9
	Aab1GlctI7dfK6hMMTs1vm0fvhBXAG+BrDggFvpAQw9PIVQZXz64YpWDhZy0hwR3sWX6ki8yIfT
	zV9vow8sQJT/K32l/tIp88r92fV0adPv3SNcukSMCgrELJaJPwDmvZAPpIIYGlgR0k5DqbqEP4L
	i+Q99APRuI+xFmZLMtXMZAvURPMNVYH9qeVRGvn/g==
X-Received: by 2002:a05:6512:2350:b0:5b6:4ae:19ef with SMTP id 2adb3069b0e04-5b608810e61mr1613364e87.5.1788436404014;
        Thu, 03 Sep 2026 04:53:24 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a34ad21ef8sm11778701fa.28.2026.09.03.04.53.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2026 04:53:23 -0700 (PDT)
Message-ID: <9b0ac659-999a-4caa-8578-f34a39a67e4f@linaro.org>
Date: Thu, 3 Sep 2026 14:53:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v16 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260901-x1e-csi2-phy-v16-0-dd863b929080@linaro.org>
 <20260901-x1e-csi2-phy-v16-1-dd863b929080@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260901-x1e-csi2-phy-v16-1-dd863b929080@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_045327_202692_4E796B2B 
X-CRM114-Status: GOOD (  23.54  )
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

On 9/1/26 23:15, Bryan O'Donoghue wrote:
> Add a base schema for the MIPI CSI2 PHYs on Qualcomm SoCs. This PHY
> supports both DPHY and CPHY operation. A special mode of DPHY operation -
> called variously split-mode or combo-mode also allows for two sensors to be
> connected to one PHY.
> 
> The submitted binding here describes the DPHY modes of operation only. CPHY
> is left to future work.

Like I've said in v14 review, the statement above is incorrect, and it has
to be changed, for whatever reason it hasn't happened so far.

 From https://lore.kernel.org/all/1e1bc17a-4c7a-4c08-b0c8-2a2ff31fe870@linaro.org/

>>> C-PHY bus type is also well described by this version of the bindings.

> Suggested-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 222 +++++++++++++++++++++
>   1 file changed, 222 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> new file mode 100644
> index 0000000000000..17de0701eb103
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> @@ -0,0 +1,222 @@
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
> +          single endpoint with the clock lane at position 0 and one to four
> +          data lanes.
> +
> +          DPHY split mode, where two independent sensors share the same PHY,
> +          is described by two endpoints, each with its own clock lane position;
> +          endpoint@0 with clock-lanes = <0> and one or two data-lanes and
> +          endpoint@1 with clock-lanes = <3> and one data lane.
> +
> +        unevaluatedProperties: false
> +
> +        patternProperties:
> +          "^endpoint(@[01])?$":
> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +            properties:
> +              bus-type:
> +                enum:
> +                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
> +                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
> +
> +              clock-lanes:
> +                maxItems: 1
> +
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +                items:
> +                  minimum: 1
> +                  maximum: 4
> +                description:
> +                  Data lane positions following this endpoint's clock
> +                  lane. Positions are a per-port logical numbering, not
> +                  package pad or ball positions.
> +
> +            required:
> +              - bus-type

A review comment given to v14 is still applicable, 'bus-type' property
should be set as optional with D-PHY mode fallback.

> +              - data-lanes
> +              - clock-lanes

Here 'clock-lanes' is a truly optional proiperty since its value is
immutable in each endpoint, it should be removed from the list of
required properties.

Also 'clock-lanes' are not expected to be found in C-PHY bus type case.

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
> +                    clock-lanes:
> +                      const: 0
> +                    data-lanes:
> +                      maxItems: 2
> +                endpoint@1:
> +                  properties:
> +                    clock-lanes:
> +                      const: 3
> +                    data-lanes:
> +                      items:
> +                        - const: 4
> +              required:
> +                - endpoint@0
> +            else:
> +              patternProperties:
> +                "^endpoint(@0)?$":
> +                  properties:
> +                    clock-lanes:
> +                      const: 0
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
> +    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/media/video-interfaces.h>
> +    #include <dt-bindings/power/qcom,rpmhpd.h>
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
> +                    clock-lanes = <0>;
> +                    data-lanes = <1 2 3 4>;
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

Apart of a few minor comments above, everything else looks good to me.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
