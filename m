Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84237C44501
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 07:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mpjv+5st37jHONEyJOhQv7+wo+s7tFsGxJqB7cjeqX0=; b=B+u/AZgKbQcGn0
	o7E8o110jezzO6ovwJZmz4Su6jLwPvZbfZ2Qu/gwfH94pIqG2yZ9LkedCmeRXZJn8iJUey+NJI3S7
	6rDP4fphAU0CVJChDGIF8nwROeGJgoNeIOl0RvrvOA+avmenbfFZCHMAflpY0Nl7N97zyCzQd74gt
	1oTxAK7+GuSy0VWaQwiwS0KxPlZDDwQdWBDU6rRMZ3dEVq3rYlTp5eGBh3/irOd8Ymt1wV3Mwbijj
	A1/fzHFI1hkHCITLg+XIbScrgZi72sn+ZV4ixjrkhNtsZZHPbbL7GrwuDhCV48JaXzdDuugmKwpTd
	xr91oSY7fJLySww6nkpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whMxx-0000000GX5e-3zTh;
	Wed, 08 Jul 2026 07:45:10 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whMxv-0000000GX5G-2JAH
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 07:45:09 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5ad4c966e63so34929e87.3
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 00:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783496705; x=1784101505; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=mkXy4kbxINUY2w5Y8HT7KOs4yBngnLIiuXbssaXGyXo=;
        b=F064twn73aD1382codaA+L8TJ81+I/2tOUO3zNH6IuxqM1u7TdcPjBAPiscZrXYIrw
         3bOa5WmPyKCnwFCz3Fg7pcTiR6o18xGGHwpJWSfBxH/+uCXbJKXhf6/9K1TDw+7YQa5J
         wKK7mauWG2FvD+0dDZU7cnCL/zbsteqgH9ChOR+KrN1UERWmLpI1RXa5hYzuj82+poOI
         n/R+NOqGxWcpxlLA5BIZWdi1hSkHruxOoWyTqjr1txO4ofGzoyG5R9a7GK/nmVaJyaaL
         7uibnZ+73GT/+GFHMmf/vSz6ToOyMM8lVicNpWGCxN+edTC0vYed35HBsfbZZ2hEYpFo
         5vyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783496705; x=1784101505;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mkXy4kbxINUY2w5Y8HT7KOs4yBngnLIiuXbssaXGyXo=;
        b=BjNspcM0WynWxmG+aMNs50i6O7zfboBIhAFH48550WZ3drGXiVYqBFHTxgIvfrokSF
         b/BOscIwNrl/hN4Qaq1iEEGtJIWCvDJfkiL+SVHabmIXonxFVcasysixuJGqUtNwdzhz
         +wUwvN4MZ3+tHDun2tIBx2xmEa+yVMK9pkid9JO6qqqt8M88kNmOKQsRFFplvnAT3UCs
         6rt7Z+JFkBPeeHA2atJlBT5a7aCYMRHeplI+ZAOHdjGxhyAvFJG6jNawnYTVNjlFViC4
         zvKnDxvVwghkIjGV6uSf+ZuZzv6lI791JfqKXCDcqaYSYpUKBNSItqcZUy1b0ueCb2EL
         ZDOA==
X-Forwarded-Encrypted: i=1; AHgh+RoyFs3RAoQnqb+bL86GfHWcN8Jewyyt58BQ4FrXLaS+qD6ur0rXjfVHbhJmM9fD5kyZs754bizWl7w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7JvK+Q522zEPnf7OyEIHkxYV/T8APZcTj43j/19YOEhYYl4Pf
	/Pqh8Ewztfwfuk0xr7BcovTxtJ13VDRZZkAvRnkvzcIZjx2+2gceJfiRJeWI2J5TUsc=
X-Gm-Gg: AfdE7cnHZR5L1pn1EZekWRIqMnHklaWStJgQPMLOm4CowrFi+jTMqMHf8/e7GEI4ogk
	10Mc3AAynmfcEkvQMoK2h06KUpLfCMUR7vilbiKyG+NR/h7FVPxp6S0pNAkteiPzAsyPdiPhn4o
	rLtwo42D2zxbJi6fFdpyLDTfE0l7RtmPRebgunTezoKglpp3T1RBhQjKVzQp0LfOuhK4M78uo7w
	nqd6P/yVLsJfg/rD9VRwq1Gm7tL4PPghfPDlmNJNbEgiCastVdZjkykKUJtodogzfoiK6m1Eicj
	7KTWlHOqEfr1skkCiSbfKHIRYlzMmrapd+eey/0Lx4/3VnMP4PQkaDXKE5MnptIbokCmh8kOdyD
	13et6zelnPMH/s14Yt7//G3yHelFzVR3Vgkb9I7zvqLzbt/veBiUvUeNI50OJSzPPani0KAR9qp
	4xtUioywX/LN5dvLOxtLU3pz2SCQzc+3oBFDi/UzBbTc8vP+xvkh7a2sJZ7AxSczHjJYhvqwanl
	ZxYvw==
X-Received: by 2002:a05:6512:3e05:b0:5ae:b0ea:d32e with SMTP id 2adb3069b0e04-5b0114471b9mr260939e87.2.1783496704298;
        Wed, 08 Jul 2026 00:45:04 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13701a7sm4284357e87.12.2026.07.08.00.45.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jul 2026 00:45:03 -0700 (PDT)
Message-ID: <b7baffda-b97c-4b83-8d9e-e381d0289682@linaro.org>
Date: Wed, 8 Jul 2026 10:44:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260708-x1e-csi2-phy-v9-0-0210b90c04cf@linaro.org>
 <20260708-x1e-csi2-phy-v9-1-0210b90c04cf@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260708-x1e-csi2-phy-v9-1-0210b90c04cf@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_004507_699889_4BFC75AA 
X-CRM114-Status: GOOD (  25.75  )
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

On 7/8/26 02:39, Bryan O'Donoghue wrote:
> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
> PHY devices.
> 
> The hardware can support both CPHY, DPHY and a special split-mode DPHY.
> 
> The schema here defines two ports with three endpoints:
> 
> port@0: Sensor input.
>            endpoint@0: primary sensor
>            endpoint@1: optional second sensor, implies DPHY split-mode
> 
> port@1: Controller output.
> 
> The CSIPHY devices have their own pinouts on the SoC as well as their own
> individual voltage rails.
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
>   .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 202 +++++++++++++++++++++
>   1 file changed, 202 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> new file mode 100644
> index 0000000000000..a7fbf6804cd9e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> @@ -0,0 +1,202 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm SoC CSI2 PHY
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
> +  "#phy-cells":
> +    const: 1
> +    description:
> +      The single cell specifies the PHY operating mode.

Unfortunately my review comment given before was ignored before publishing
this version, thus I will repeat.

There is a clash between the proposed phy cells value and 'bus-type' property
of the media endpoint, the proposed value of phy cells brings no information,
and therefore the whole proposed '#phy-cells' prorperty shall be removed.

There shall be no third link introduced between CAMSS and CAMSS CSIPHYs.

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

None of the power domains finds its place in this device tree node, the
child device belongs to CAMSS, which already enables these power domains.

> +
> +  vdda-0p8-supply:
> +    description: Phandle to a 0.8V regulator supply to a PHY.

The property name shall be vdda-0p9-supply, the description shall be
changed accordingly

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
> +          by two endpoints; endpoint@0 with exactly two-data lanes and
> +          endpoint@1 with exactly one data-lane.
> +        unevaluatedProperties: false
> +
> +        patternProperties:
> +          "^endpoint(@[0-9a-f]+)?$":

This is too wide regexp mask for one or two endpoints only.

> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +            properties:
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +              remote-endpoint: true
> +            required:
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
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description: Output to the CAMSS CSID controller.
> +        unevaluatedProperties: false
> +
> +        patternProperties:
> +          "^endpoint(@[0-9a-f]+)?$":
> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> +            unevaluatedProperties: false
> +            properties:
> +              remote-endpoint: true
> +            required:
> +              - remote-endpoint
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - operating-points-v2
> +  - power-domains
> +  - power-domain-names
> +  - vdda-0p8-supply
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
> +    #include <dt-bindings/power/qcom,rpmhpd.h>
> +
> +    phy@ace4000 {
> +        compatible = "qcom,x1e80100-csi2-phy";
> +        reg = <0x0ace4000 0x2000>;
> +        #phy-cells = <1>;
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
> +        vdda-0p8-supply = <&vreg_l2c_0p8>;
> +        vdda-1p2-supply = <&vreg_l1c_1p2>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +                csiphy0_in: endpoint {
> +                    data-lanes = <0 1 2 3>;

The previously given review comment about numeration of lanes was
not implemented.

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
> +    };
> +
> +    csiphy_opp_table: opp-table {
> +        compatible = "operating-points-v2";
> +
> +        opp-300000000 {
> +            opp-hz = /bits/ 64 <300000000>;
> +            required-opps = <&rpmhpd_opp_low_svs_d1>,
> +                            <&rpmhpd_opp_low_svs_d1>;
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
