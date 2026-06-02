Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC233CD5BD1
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 22:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E06NveSizZelqAsXy5HTI8eJM+YQpO2NL078K3cZvnk=; b=Fe4xVjfr+y8v5Z
	yOzUrfk4hJDLNduOjeu1ESCGyr37RxxxpBWyS7soixljk98xY+CGS7NoC/NY/NxjYEKVZgUSAmfKC
	Av67GWcPFPQzbSNpxf2m4quFii8a/6nC41qq37KjzizFb+tHxNLveVyhsEecKcJvLED6XHWgVyCTf
	AUqAVn8alzbq9+f8xLomMXfJ4JOH697j9W9mpEVHV0nFYtfVTswS3DL9LfHWF9wTOpzA7G37B8HMm
	4iQW/UuqmXQWON8p3QP3kGw8mHwZpXVaEsItkTtXCWMq6JDAyuUE2TDYD9Ip//UfFfYo/ACFkBzHk
	Yn/gYQSfmLNR76JuMUww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUXxY-0000000DuP8-1wVs;
	Tue, 02 Jun 2026 22:51:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUXxX-0000000DuP2-3Seu
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 22:51:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B02A3601F3;
	Tue,  2 Jun 2026 22:51:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F168F1F00893;
	Tue,  2 Jun 2026 22:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780440702;
	bh=Sz5/MvLLQbOnGXSnuWO8WURL3Y3h66L7BNfbnbvuQXM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=nSNBrbGULN/CxYwstnK7Mu/aTW9axi+Q90F4q/3PIM70imp7NJagf8KyKdhje2GAp
	 0wlpTcsKT9HlfYOlwu6zAvyh5QICGf7tWD8PaSf+fc72eaatdfBG6+XaDXh5Nl02XQ
	 nCYV8DNEGnAar89v9R4PCOZSxgAF4d+1rFr01LCIEjJbruq4ys0m2i7iOwVsP1xOGt
	 9ekAdH3m9IRjVNPXfqpydIy677A1OXz/KkNl4CSF9RottHPlUu8lVNcOzc+L4Dgi7L
	 5u3D2egPrSXuNojY6cwX0XPQy/Q4rYi/DQQiot63hwQlB5KEyGIPvVUCAdIscp9wE3
	 8fE7KbiW9Z3DQ==
Message-ID: <478df3ed-d4ef-43aa-bb84-e2075798542b@kernel.org>
Date: Tue, 2 Jun 2026 23:51:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bod@kernel.org>
In-Reply-To: <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
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

On 02/06/2026 22:59, Vladimir Zapolskiy wrote:
> On 5/23/26 05:48, Bryan O'Donoghue wrote:
>> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
>> PHY devices.
>>
>> The hardware can support both CPHY, DPHY and a special split-mode DPHY.
>>
>> The schema here defines three ports:
>>
>> port@0:
>>       The first input port where a sensor is always required.
>>
>> port@1:
>>       A second optional input port which if present implies DPHY split-mode.
>>
>> port@2:
>>       A third always required output port which connects to the controller.
>>
> 
> This port numeration is imperfect, because port@0 and port@2 are required,
> while middle port@1 is optional.
> 
> Like it was stated before a number of times, it seems natural to operate
> with two ports, where input port may have two endpoints rather than 3 ports,
> also that approach solves the problem of a hole in the port numeration.

Can you confirm this is what you are after ?

port@0 {
     #address-cells = <1>;
     #size-cells = <0>;

     endpoint@0 {              /* primary sensor */
         reg = <0>;
         data-lanes = <0 1 2 3>;
         remote-endpoint = <&sensor0_out>;
     };

     endpoint@1 {              /* split-mode second sensor, optional */
         reg = <1>;
         data-lanes = <0>;
         remote-endpoint = <&sensor1_out>;
     };
};

port@1 {                     /* output to CAMSS, was port@2 */
     endpoint { remote-endpoint = <&controller_in>; };
};

This works for me BTW.

>> The CSIPHY devices have their own pinouts on the SoC as well as their own
>> individual voltage rails.
>>
>> The need to model voltage rails on a per-PHY basis leads us to define
>> CSIPHY devices as individual nodes.
>>
>> Two nice outcomes in terms of schema and DT arise from this change.
>>
>> 1. The ability to define on a per-PHY basis voltage rails.
>> 2. The ability to require those voltage.
>>
>> We have had a complete bodge upstream for this where a single set of
>> voltage rail for all CSIPHYs has been buried inside of CAMSS.
>>
>> Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
>> CAMSS parlance, the CSIPHY devices should be individually modelled.
>>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> ---
>>    .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 209 +++++++++++++++++++++
>>    1 file changed, 209 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>> new file mode 100644
>> index 0000000000000..270375f949880
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>> @@ -0,0 +1,209 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm CSI2 PHY
>> +
>> +maintainers:
>> +  - Bryan O'Donoghue <bod@kernel.org>
>> +
>> +description:
>> +  Qualcomm MIPI CSI2 C-PHY/D-PHY combination PHY. Connects MIPI CSI2 sensors
>> +  to Qualcomm's Camera CSI Decoder. The PHY supports both C-PHY and D-PHY
>> +  modes.
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,x1e80100-csi2-phy
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  "#phy-cells":
>> +    const: 1
>> +    description:
>> +      The single cell specifies the PHY operating mode.
> 
> #phy-cells should be 0, because the PHY operating mode is well defined
> by 'bus-type' property of an endpoint on the sensor side, the opposite
> side of CAMSS/CSID as a CSIPHY "consumer" should not dictate the PHY type.

Rob said consumer but, I'm also not very bothered about that. bus-type 
is perfectly acceptable to me.

>> +
>> +  clocks:
>> +    maxItems: 2
>> +
>> +  clock-names:
>> +    items:
>> +      - const: core
>> +      - const: timer
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  operating-points-v2:
>> +    maxItems: 1
>> +
>> +  power-domains:
>> +    items:
>> +      - description: MMCX voltage rail
>> +      - description: MXC or MXA voltage rail
> 
> Only "qcom,x1e80100-csi2-phy" device is supported so far, unlikely it's
> the case that "MXC or MXA voltage rail" should be specified, it'd be
> just one of two or both.

Hmm. I'm not being clear here if this is your take, I will reword it to 
make it clearer this generation of PHY _must_ have either

- MMCX and MXC
or
- MMCX and MXA

>> +
>> +  power-domain-names:
>> +    items:
>> +      - const: mmcx
>> +      - const: mx
>> +
>> +  vdda-0p9-supply:
>> +    description: Phandle to a 0.9V regulator supply to a PHY.
>> +
>> +  vdda-1p2-supply:
>> +    description: Phandle to 1.2V regulator supply to a PHY.
>> +
>> +  ports:
>> +    $ref: /schemas/graph.yaml#/properties/ports
>> +
>> +    properties:
>> +      port@0:
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        description: Sensor input. Always present.
>> +        unevaluatedProperties: false
>> +
>> +        properties:
>> +          endpoint:
>> +            $ref: /schemas/media/video-interfaces.yaml#
>> +            unevaluatedProperties: false
>> +            properties:
>> +              data-lanes:
>> +                minItems: 1
>> +                maxItems: 4
>> +              clock-lanes:
>> +                maxItems: 1
>> +              remote-endpoint: true
>> +            required:
>> +              - data-lanes
>> +              - remote-endpoint
>> +
>> +      port@1:
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        description:
>> +          Second sensor input. When present, indicates DPHY split mode.
>> +        unevaluatedProperties: false
>> +
>> +        properties:
>> +          endpoint:
>> +            $ref: /schemas/media/video-interfaces.yaml#
>> +            unevaluatedProperties: false
>> +            properties:
>> +              data-lanes:
>> +                maxItems: 1
>> +              clock-lanes:
>> +                maxItems: 1
>> +              remote-endpoint: true
>> +            required:
>> +              - data-lanes
>> +              - clock-lanes
>> +              - remote-endpoint
> 
> As it's stated above, it should be converted to a single port with two
> endpoints, it'd be done in accordance to video-interfaces.yaml.
> 
>> +
>> +      port@2:
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        description: Output to CAMSS controller.
>> +        unevaluatedProperties: false
>> +
>> +        properties:
>> +          endpoint:
>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>> +            unevaluatedProperties: false
>> +            properties:
>> +              remote-endpoint: true
>> +            required:
>> +              - remote-endpoint
>> +
>> +    required:
>> +      - port@0
>> +      - port@2
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - "#phy-cells"
>> +  - clocks
>> +  - clock-names
>> +  - interrupts
>> +  - operating-points-v2
>> +  - power-domains
>> +  - power-domain-names
>> +  - vdda-0p9-supply
>> +  - vdda-1p2-supply
>> +  - ports
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
>> +    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
>> +    #include <dt-bindings/power/qcom,rpmhpd.h>
>> +
>> +    csiphy4: csiphy@ace4000 {
>> +        compatible = "qcom,x1e80100-csi2-phy";
>> +        reg = <0x0ace4000 0x2000>;
>> +        #phy-cells = <1>;
>> +
>> +        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
>> +                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>;
>> +        clock-names = "core",
>> +                      "timer";
>> +
>> +        operating-points-v2 = <&csiphy_opp_table>;
>> +
>> +        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
>> +
>> +        power-domains = <&rpmhpd RPMHPD_MMCX>,
>> +                        <&rpmhpd RPMHPD_MX>;
>> +        power-domain-names = "mmcx",
>> +                             "mx";
>> +
>> +        vdda-0p9-supply = <&vreg_l2c_0p8>;
>> +        vdda-1p2-supply = <&vreg_l1c_1p2>;
>> +
>> +        ports {
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +
>> +            port@0 {
>> +                reg = <0>;
>> +                csiphy0_in_ep: endpoint {
>> +                    data-lanes = <0 1>;
>> +                    clock-lanes = <2>;
>> +                    remote-endpoint = <&sensor_out>;
>> +                };
>> +            };
>> +
>> +            port@2 {
>> +                reg = <2>;
>> +                csiphy0_out_ep: endpoint {
>> +                    remote-endpoint = <&controller_in>;
>> +                };
>> +            };
>> +        };
>> +    };
>> +
>> +    csiphy_opp_table: opp-table {
>> +        compatible = "operating-points-v2";
>> +
>> +        opp-300000000 {
>> +            opp-hz = /bits/ 64 <300000000>;
>> +            required-opps = <&rpmhpd_opp_low_svs_d1>,
>> +                            <&rpmhpd_opp_low_svs_d1>;
>> +        };
>> +
>> +        opp-400000000 {
>> +            opp-hz = /bits/ 64 <400000000>;
>> +            required-opps = <&rpmhpd_opp_low_svs>,
>> +                            <&rpmhpd_opp_low_svs_d1>;
>> +        };
>> +
>> +        opp-480000000 {
>> +            opp-hz = /bits/ 64 <480000000>;
>> +            required-opps = <&rpmhpd_opp_low_svs>,
>> +                            <&rpmhpd_opp_low_svs_d1>;
>> +        };
>> +    };
>>
> 
> --
> Best wishes,
> Vladimir


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
