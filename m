Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF64AFB5EBE
	for <linux-phy@archiver.kernel.org>; Tue, 17 Mar 2026 05:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUpRNIkHf+ddvjwLCARDwtXN30oB1CvPHLQgnu3Z1lg=; b=E8fxTo/9X9pfff
	R2Aa8NjOlq0CXqdIHeFwXy30VE4x4XKYmPdEBPt9AVwdhZB1q6cX18Zkn5QeTUFbyWOvsHPnXbl8+
	OzjNhIlC9zQeesuok2Cq+wQ5w7MvRe0t2VI5ygSaf+5cP0hKASja8jXnDfCLyxP165n1otW2MJwMr
	qMDgVnfYjNjqD4WWN0j91ZaJcK+RBtkk+VzHqh82MD2erOu8WdVLBHyCtfQ4Y0gbtmhRgV/6WWgla
	xEIlnW9FeANi+DJBD4mlRHwDqKq49I7NQw+6gyJTTmjjlzhKDo0EG4E8lJbEsvCzGXAYGMlnRJWfe
	9/6csfDALAEDw8Q3jGkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Mx0-00000005RJ5-0GZq;
	Tue, 17 Mar 2026 05:26:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Mwy-00000005RIx-2HYv
	for linux-phy@lists.infradead.org;
	Tue, 17 Mar 2026 05:26:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A56A860018;
	Tue, 17 Mar 2026 05:26:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB66CC4CEF7;
	Tue, 17 Mar 2026 05:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773725199;
	bh=iRRuxqRIArqXAoR/NBolpSJ0w2RG2sEua0rX3QTRhAI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DG2ofQYcOyhl31A2USOEdaGUOarol/cHRyEL/51Tq13oizmN/DcrvFJLPF7uGoOUr
	 FN2852k1L81iX4Nwqcs6fST+H5cTsuyo3vqf6MDIZtzjZxBTjdQai/5k1nzvIB7NgB
	 fSRdG7t2tLV9wHpx4VZgltxt136jYETum/Qi1corRl2oiN4RDfdzDj+G0e69brz3pM
	 djOpFM+0+NNj0SjCvI/7qXtO48zlfEmE3rXH0pOcb5lKYbb9TcMvpJ/qG7l7KG3lM3
	 5HSp1F7Sayo9FCpIauk1+eOF7IEqAALpO6egjc5JHMrmDx0WMxf5t5f5buA5ahYrcH
	 LXMg8GeSMdHkA==
Message-ID: <edf766b8-2664-4dac-b626-551807b3e5ef@kernel.org>
Date: Tue, 17 Mar 2026 05:26:35 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-1-90c09203888d@linaro.org>
 <3VqSGUgMUKaCja5WYOrOP8nJ_mw_eDPdItA8d1CvqUg4ASPS5IUc_aT2E-XIo0YmnYo8QltXVw8_6NDxtdqGGw==@protonmail.internalid>
 <5705b48a-fc24-4c5f-aa6d-40952f0070d9@oss.qualcomm.com>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <5705b48a-fc24-4c5f-aa6d-40952f0070d9@oss.qualcomm.com>
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

On 16/03/2026 21:31, Vijay Kumar Tumati wrote:
> Hi Bryan,
> 
> On 3/15/2026 4:52 PM, Bryan O'Donoghue wrote:
>> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
>> PHY devices.
>>
>> The hardware can support both C-PHY and D-PHY modes. The CSIPHY devices
>> have their own pinouts on the SoC as well as their own individual voltage
>> rails.
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
>>    .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 133 +++++++++++++++++++++
>>    1 file changed, 133 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>> new file mode 100644
>> index 0000000000000..b83c2d65ebc6e
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>> @@ -0,0 +1,133 @@
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
>> +
>> +  clocks:
>> +    maxItems: 4
>> +
>> +  clock-names:
>> +    items:
>> +      - const: csiphy
>> +      - const: csiphy_timer
>> +      - const: camnoc_axi
>> +      - const: cpas_ahb
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  operating-points-v2:
>> +    maxItems: 1
>> +
>> +  power-domains:
>> +    items:
>> +      - description: TITAN TOP GDSC
>> +      - description: MXC or MXA voltage rail
> Would it be better to provision MXA or MXC as an additional optional
> power domain? I see 'cam_cc_cphy_rx_clk_src', the parent of all CSIPHYx
> clocks, need all three power domains on this chipset.

I don't think this should be optional. Have the dts point to an "mx" 
power-domain and then select which one is right for a PHY MX/MXA or MXC.

Your worst case here is some future PHY which has more or fewer PDs 
which is then either a special case in this file or a whole new file for 
that compat.

>> +      - description: MMCX voltage rail
>> +
>> +  power-domain-names:
>> +    items:
>> +      - const: top
>> +      - const: mx
>> +      - const: mmcx
>> +
>> +  vdda-0p8-supply:
>> +    description: Phandle to a 0.8V regulator supply to a PHY.
>> +
>> +  vdda-1p2-supply:
>> +    description: Phandle to 1.2V regulator supply to a PHY.
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
>> +  - vdda-0p8-supply
>> +  - vdda-1p2-supply
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
>> +    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
>> +    #include <dt-bindings/phy/phy.h>
>> +    #include <dt-bindings/power/qcom,rpmhpd.h>
>> +
>> +    csiphy@ace4000 {
>> +        compatible = "qcom,x1e80100-csi2-phy";
>> +        reg = <0x0ace4000 0x2000>;
>> +        #phy-cells = <1>;
>> +
>> +        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
>> +                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
>> +                 <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
>> +                 <&camcc CAM_CC_CPAS_AHB_CLK>;
>> +        clock-names = "csiphy",
>> +                      "csiphy_timer",
>> +                      "camnoc_axi",
>> +                      "cpas_ahb";
> Although it's not a concern from my side, just want to be explicitly
> sure that everyone is happy with the clock names, just to avoid any
> changes later on when other modules are separated out.

These are the names we already use in CAMSS so ... they're good enough 
to start from.

>> +
>> +        operating-points-v2 = <&csiphy_opp_table>;
>> +
>> +        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
>> +
>> +        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
>> +                        <&rpmhpd RPMHPD_MX>,
>> +                        <&rpmhpd RPMHPD_MMCX>;
>> +        power-domain-names = "top",
>> +                             "mx",
>> +                             "mmcx";
>> +
>> +        vdda-0p8-supply = <&vreg_l2c_0p8>;
>> +        vdda-1p2-supply = <&vreg_l1c_1p2>;
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
>> +                            <&rpmhpd_opp_low_svs>;
>> +        };
>> +
>> +        opp-480000000 {
>> +            opp-hz = /bits/ 64 <480000000>;
>> +            required-opps = <&rpmhpd_opp_low_svs>,
>> +                            <&rpmhpd_opp_low_svs>;
> 480mhz should be svs?

Yes you're right thanks for spotting.

>> +        };
>> +    };
>>
> Thanks,
> Vijay.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
