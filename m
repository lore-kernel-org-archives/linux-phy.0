Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8428C4451C
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 08:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BaejvZNyNZw2rnt5o9LDGi+GJJaR2Bx5nw1gjhcfBUs=; b=ZPTfnK3mbe/sCE
	yAdVdTnDkSHVAswl/aK7kRyszs2lzSgut5w3GznoP2lAkjUhiqJVg4okFane/4BMXc4cZA+HAbs+Z
	SSvd5xmYYYtMoQscWHWPBp2o1n2JdG8qo9IlZwxoqpPEaWVpdW3uOhZn1h5MqEYg1drE59BvhyjeF
	7ar8ju7rXhZFiCTvPahqhBBy7qCIHkBJfSRRTPj0T4pnzrrwCTuaT1D7Ia/7EPccJgE8Swe5oQC3X
	snuWrRfeRHeoeaPig3xJfJjBT3use0AU8M6229ehqyxKxC4OEfpx9buC4ahK0Z9elig+chmIiOHfT
	AMiSw9BejOwpXuGNfV0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm5ZY-00000008kwr-1lmM;
	Tue, 21 Jul 2026 08:11:28 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm5ZW-00000008kw5-0GLL
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 08:11:27 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5aebf96bc89so1509796e87.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 01:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784621483; x=1785226283; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=SHcvhuYIyIQQusxUa8EX0EJ4eua+x7ToG1cGzxehLE8=;
        b=MFxh8BBCTWvf/CuI8G6aZjZpnj0FVqlghcXHJiaVRmuPWRzFNPK1NeNkmVsxNUGOrG
         g3XkwkaAU3cYB7F04LitYu8om5n/biI9brzoo7EdEgO2wntqOPrYj1ZA/BhviwP7ZYbY
         8EXqnpJ17YZFk9kMVvrXpnUwR9b3ufSYPpXGoO71JkPbLUboYD25DqNqANdkm1IAcUfM
         lwuLSTLUDRfVm6tZfTMz93jIILkS9zuzNfJGM4YWfHGCsDHipvlxJfocqpLlg6BAlaQB
         8ROT9KCgvEOTEG78rgsNd+sHYUlM3kI2ZEYjVnqu7h7JVlhSyFTJBtU0q7D8hwsw2d+V
         29bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784621483; x=1785226283;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SHcvhuYIyIQQusxUa8EX0EJ4eua+x7ToG1cGzxehLE8=;
        b=M66X3e2Hqr3NayUVCNxhEo6WJFKo8bfSR7KDDTKJVHnWO47lvdlZZKj5b3tkXrVkfN
         mBT7Omo4QZmqa1aI0JJT3V74U0C81WGbAQwBoz9yV6nOsVSUkLYfBz+afnz9YLyVyOw7
         4KdTPWV8UtAVGJzyMuk0BxJbMl1/qFo9NOMMQmuo1HjTBPy5rNVwDyBy6AuLwwoj9GrE
         +jAprFrYM3BcbPjdlD1xWygOlMzsvogYACl1qtTq9BpT2Gy0eBqXpPlOYtEv5HDOwTJQ
         GRVgUHJYoiWTvfwUZq8CPFs6j0bHkV5lbQDFkVYYXoo5gpABRZGjrtTa+jC/xGQJYhuh
         ZkQw==
X-Forwarded-Encrypted: i=1; AHgh+Rq7jTzL4kLtSlwbA/X8UTYeSDYqH+KIej13y0J8KlObwYa1OYyYO+lhrrPq1SZ9iBluxzE12yRlhmc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrJUABneFakmUVbAg4YxnQpgAPtGgeDt8+pMJW5OtJoU/jv++n
	FgDjBg4QIiH52zqomh+HmT7U6Jb4m9cteleqUjLZ4KZkN6D3P3fAwsXq0RCHE4S0wrk=
X-Gm-Gg: AR+sD11CC9kOg5fA56PENq6OayaUxY3+oVLgUidWKVtTz5IOa1h3j94M3YvLnjibNcZ
	tfeSzxGTp2kbtjgwycGgaxnb2evySw8/Z7FUHYd87C5vgYX0RNo00ekjoMrHUOklR8sIkkq2nWi
	njZBfYXfv5R9jP+D1VzH4aqim7J812kuglliGLDTCg77oYJGc4kDVVNvvyKGKTSRbe2vXNJ/WcK
	UIKCvPfCQgDJ1GJ35AcL2X2hdKu2AS4nOoYIC/W3YyxiYuz3uDqEV0Kp3JPQLF6jYnqgZlz4sGZ
	wIuniSAa2QxzoziPw3sy7kNmJC0n8C/p3EoKVAV2YdhgQUu8kyGZKrJE04HD2c3HsB3HVU70cTR
	UhqRIiIhL0rSC9B/YWxaOU5oM7KbcUeSrrjSXooU7cCoYL1WnmWKyvpWeobpLV3WtgfHw7/Xw/L
	RFT82W/2wTloq2n01HVL9pnOFXre2gvRyTtpX4A0TpmC2EJa2tFWVUSZxAHG4LzomzfZw=
X-Received: by 2002:a05:6512:ac4:b0:5b1:5ab9:65d3 with SMTP id 2adb3069b0e04-5b2a4a9a2c9mr406154e87.7.1784621483299;
        Tue, 21 Jul 2026 01:11:23 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291d9a8easm2769969e87.27.2026.07.21.01.11.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2026 01:11:22 -0700 (PDT)
Message-ID: <7e443a2e-4425-41f6-bdfb-0a91ef96bc55@linaro.org>
Date: Tue, 21 Jul 2026 11:11:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260719-x1e-csi2-phy-v12-0-cc7311326d1b@linaro.org>
 <20260719-x1e-csi2-phy-v12-1-cc7311326d1b@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260719-x1e-csi2-phy-v12-1-cc7311326d1b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_011126_162744_6FCA8657 
X-CRM114-Status: GOOD (  21.16  )
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

On 7/19/26 16:47, Bryan O'Donoghue wrote:
> Add a base schema for the MIPI CSI2 PHYs on Qualcomm SoCs. This PHY
> supports both DPHY and CPHY operation. A special mode of DPHY operation -
> called variously split-mode or combo-mode also allows for two sensors to be
> connected to one PHY.
> 
> The submitted binding here describes the DPHY modes of operation only. CPHY
> is left to future work.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 195 +++++++++++++++++++++
>   1 file changed, 195 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> new file mode 100644
> index 0000000000000..880fe602945cb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> @@ -0,0 +1,195 @@
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
> +  "#phy-cells":
> +    const: 1
> +    description:
> +      The single cell specifies the PHY operating mode.
> +

This has been reported before, #phy-cells shall be 0, the operation
mode is selected by bus-type of endpoints as it is described in
video-interfaces.yaml

Two competing values are redundant, the technical discussion has
not been started yet.

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

Please double check that there is such voltage rail as MXA.

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
> +          endpoint@1 with exactly one data-lane.
> +        unevaluatedProperties: false
> +
> +        patternProperties:
> +          "^endpoint(@[0-9a-f]+)?$":

endpoint regexp is not corrected, this issue has been reported
previously.

> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +            properties:
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +
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
> +  - "#phy-cells"
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
> +                    data-lanes = <0 1 2 3>;

data-lanes values has not been corrected in accordance to linux-media
requirements.

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

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
