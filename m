Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0334606A326
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 21:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VPIKJoF4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=juMNsF0T
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=uXQFleTQFaG5vthd+w3EOwkLs4qPOTvYIiTHHsR+aXA=; b=VPIKJoF4/rwAyBF0WAWhrluqkS
	wqm5/AUGYV7z3tehbtP6VHCYMclZyApi32eFPiUi4VAWfaavqhpivR7ewLepJC4Fv1e4GAUxAc4Bn
	TUIfqCgs4uaSyMTJsJi/BJbKLU/0e2nbAwQK7d1ERVtYZZ2935RiObxIzOGo1Jty5RszjLTXP07YE
	gI4K3CKozdk5HK3eQOEgH3QG43CZ/MKuDr+6DtmF0biAz7lWSmvIfRq3lBmbER7xA2199UTL+CFUw
	jB3HRpZaXh8r3kneq2d8oDOdifmCvR74DXfLMmscKGdmFyH5UQvzvZ+nbs1z6RzIayh/D0HhCC5Yg
	uGRRUd9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRQF-0000000DgPF-2KDb;
	Fri, 06 Nov 2026 21:24:31 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRQD-0000000DgOl-0iQY
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 21:24:30 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-3acd263d530so1393671fa.3
        for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 13:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1794000266; x=1794605066; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=JgQZorfmVJL6DWcFzREhLYKs0WMZqy2VS3+IW1fCCJ4=;
        b=juMNsF0TtzQuk4J5xadzwOAd9gEXi6azTxJv7Hb4RIntq0cuHxIOkoQC2w2sIksWVj
         +WEk2/JY3ahf7eYKK7PDnzw0Cjhdb0LrO/T6o4G4wPCrI+mg8D2gHCyID0udLfGcpNEb
         ReeHKsS7pjkacf/8Z58SnUpw2t4wnzv1btQRSG2MmaU4sjf1yQvY9B3LzZcVcljXM8Uf
         W0pnOHiq+Qk1BlrjFV9PJ0yaiMvGB17fkqXoPSkJdwwjhbFHiQkXrIY++b8sNgANYLMq
         obYf9FVTPc8PGp1Uu31pnsrLGtI85Mw58KHaLWdt3w4EcdHSLmRiuGsi9bumzvlu7a+E
         jqyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794000266; x=1794605066;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JgQZorfmVJL6DWcFzREhLYKs0WMZqy2VS3+IW1fCCJ4=;
        b=NgNprQweLlQrin3ecb2jcrobFwKg7wPrGgk+AdGGa6xhtE/nKsAqgXnBbitxJTjxQA
         cRnZhuGpZk5tq24jqmvsr0XEytMCrFCyIVM5UddV1Q7MuGrEY1GURkkpgvYJiR4FNqEy
         mq0FVmMzg9Ym5qBIUWwXPiMhlFmgwRJz/y2ifyedj2FYEWGTtNH3/u8hKh+cdW7HTp6i
         MMapiU6cEXejuJM8zr5Bb6lZGsAoLWMU9YSyJM2uPsy3Pub90yBbAXdSwhrKBs3vn3z6
         k9trvhVfPWThB9gk5jbvQmuWR9ect6U7ml856lD3Z61KenbSTBHhnycuGji4G1P9FiL7
         za1g==
X-Forwarded-Encrypted: i=1; AL+hErHyup+FuiEaEhz9UIzUZEDVj0ozmB1ghPp3/PVFy/qyvpjevEoOB05HAXlY0S2STGWdwoQ7xktRC14=@lists.infradead.org
X-Gm-Message-State: APuU4Z8p5jyAc9sHzXi1HYkdUwPPEe+rW+lvTfHpV1zBn5ICjAlrr5JY
	v7O7Mf4WEK2W3QafDLJG8F1OQSG0OztNwNCsaWBSrbg1+xD39Joc78V8WRqGbK25noA=
X-Gm-Gg: AYBFou2oVcCoJP5hqV/SIxT9dFIpKn5qqOkP/KDi7G4Crn4X+9bzwSAO/XB0Oft8A4c
	UKDIVQhvoCIXeAFLsoMLeUyqM0zIiCyQprn9aD/NS1OKwz5iMvb5wriLJFdamGZaDGE/N9yvgA9
	/4fTG+LZwgNM+5oi555nHr4uUX568uWZrY8CWvjoNdfErREP/2/K6GuU4OZxGJ68JrjU3GcAGOR
	Qm6lgbySSpyfYqZqfJaHUF97McJTJOtUkr+wJliYG6oDsNs65dcI9B5s/7BAQCU1nmh/bn7qgii
	G89O17RGjiR3P8JVUvj47Zm83LQlGQow1kbDMv2RB8wEfxoIjL37uf0gfu6zlfpNgJZpGI0HmMW
	SfKfQ8gJDCPi8twt1iT1cikqQHHqAtZ65JLcfnUZUY8q+LmodjIXXg2isQRGXlmGlDC1MzDp5Hd
	2gcGzJMpNwmSSzUheErk6/9tLNlgLRWPZb/4GJPFYzej1IAi11/zC0fQCEzJfCuMgynSk0sYRFV
	t1igxNcucM2vUiFp+eSBnG7umV2ZWX1Zv4vHVT3bxg44ZDDR4S4nSpU7bzi1a6X37jy5VFR5CGB
	ZvhPSab70zdBf8L7wOeETSuyOkoH/Wl8i0uEjKAS6qb3Eld7bMpopT+4kTLtwdcLphF4NxjNbvS
	uBKwBgQ==
X-Received: by 2002:a05:6512:1296:b0:5bf:a48b:7827 with SMTP id 2adb3069b0e04-5c0037d4da0mr1356307e87.2.1794000266266;
        Fri, 06 Nov 2026 13:24:26 -0800 (PST)
Received: from [192.168.1.101] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5c00309a58bsm497564e87.73.2026.11.06.13.24.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2026 13:24:25 -0800 (PST)
Message-ID: <a9ab1add-5f04-4687-83bf-ca29a068ee33@linaro.org>
Date: Fri, 6 Nov 2026 23:24:24 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/7] dt-bindings: phy: qcom,sm8150-csi2-phy: Add SM8150
 CSI2 PHY
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
 <20261106-sm8150-v7.4-rc1-camss-v3-3-0103e8a0bbcd@andrewgigena.dev>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20261106-sm8150-v7.4-rc1-camss-v3-3-0103e8a0bbcd@andrewgigena.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_132429_278712_E4C0392C 
X-CRM114-Status: GOOD (  20.21  )
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
X-Spam-Status: No, score=-20.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Andrew,

On 11/6/26 20:35, Andrew Gigena via B4 Relay wrote:
> From: Andrew Gigena <mail@andrewgigena.dev>
> 
> Document the Qualcomm SM8150 MIPI CSI2 D-PHY. The PHY sits between the
> CSI2 sensor and the CAMSS CSI decoder and is fed by the CSIPHY "core" and
> "timer" clocks, the TITAN top power domain and the vdda-phy/vdda-pll
> supplies.
> 
> Unlike the X1E80100 C-PHY/D-PHY combo PHY, SM8150 only has a D-PHY, has
> no separate AHB clock and no MMCX/MX power domains, so describe it in a
> dedicated schema.
> 

very much appreciated for changing the CAMSS phys to this format.

Please double check if SM8150 CSIPHY v1.1 is capable of C-PHY:

* https://git.codelinaro.org/clo/la/kernel/msm-4.14/-/blob/LA.UM.8.1.r1-16600-sm8150.0/drivers/media/platform/msm/camera/cam_sensor_module/cam_csiphy/cam_csiphy_soc.c#L239-256

D-PHY combo mode is also supported on the CSIPHY apparently.

Likely these features are supported on SM8150.

> Signed-off-by: Andrew Gigena <mail@andrewgigena.dev>
> ---
>   .../bindings/phy/qcom,sm8150-csi2-phy.yaml         | 163 +++++++++++++++++++++
>   1 file changed, 163 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sm8150-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sm8150-csi2-phy.yaml
> new file mode 100644
> index 000000000000..86d8970d1119
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,sm8150-csi2-phy.yaml
> @@ -0,0 +1,163 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,sm8150-csi2-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm SM8150 SoC CSI2 PHY
> +
> +maintainers:
> +  - Andrew Gigena <mail@andrewgigena.dev>
> +
> +description:
> +  Qualcomm MIPI CSI2 D-PHY. Connects MIPI CSI2 sensors to Qualcomm's Camera
> +  CSI decoder (CAMSS).
> +
> +properties:
> +  compatible:
> +    const: qcom,sm8150-csi2-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: core
> +      - const: timer
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
> +    maxItems: 1
> +
> +  power-domain-names:
> +    items:
> +      - const: top

In downstream camcc-sm8150.c, PLL0 is on MX, and PLL0 supplies CSIPHY
clocks. I believe MX shall be added to the list of 'power-domains'.

> +
> +  vdda-phy-supply:
> +    description: Phandle to a 0.88V regulator supply to a PHY.
> +
> +  vdda-pll-supply:
> +    description: Phandle to a 1.2V regulator supply to a PHY PLL.

Still it would be preferred to get 'vdda-0p9-supply' and 'vdda-1p2-supply'
properties.

> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description:
> +          Sensor input. A single sensor is described by a single endpoint with
> +          one to four data lanes, numbered 1-4. The clock lane is position 0.
> +
> +        properties:
> +          endpoint:

Back to downstream

* https://git.codelinaro.org/clo/la/kernel/msm-4.14/-/blob/LA.UM.8.1.r1-16600-sm8150.0/drivers/media/platform/msm/camera/cam_sensor_module/cam_csiphy/cam_csiphy_soc.c#L239-256

D-PHY combo mode is also supported on the SM8150 CSIPHY apparently,
it shall be reflected in a way that two endpoints could be present.

> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              bus-type:
> +                enum:
> +                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
> +                default: 4

Please double check if SM8150 CSIPHY v1.1 is capable of C-PHY:

* https://git.codelinaro.org/clo/la/kernel/msm-4.14/-/blob/LA.UM.8.1.r1-16600-sm8150.0/drivers/media/platform/msm/camera/cam_sensor_module/cam_csiphy/cam_csiphy_soc.c#L239-256

> +
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +                items:
> +                  minimum: 1
> +                  maximum: 4
> +
> +            required:
> +              - data-lanes
> +              - remote-endpoint
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Output to the CAMSS CSI input port.
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
> +  - vdda-phy-supply
> +  - vdda-pll-supply
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,sm8150-camcc.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/media/video-interfaces.h>
> +
> +    phy@ac65000 {
> +        compatible = "qcom,sm8150-csi2-phy";
> +        reg = <0xac65000 0x1000>;
> +
> +        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
> +                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>;
> +        clock-names = "core",
> +                      "timer";
> +
> +        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
> +
> +        operating-points-v2 = <&csiphy0_opp_table>;
> +
> +        power-domains = <&camcc TITAN_TOP_GDSC>;
> +        power-domain-names = "top";
> +
> +        vdda-phy-supply = <&vreg_l5a_0p88>;
> +        vdda-pll-supply = <&vreg_l12a_1p2>;
> +
> +        csiphy0_opp_table: opp-table {
> +            compatible = "operating-points-v2";
> +
> +            opp-400000000 {
> +                opp-hz = /bits/ 64 <400000000>;
> +            };
> +        };
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +
> +                endpoint {
> +                    bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
> +                    data-lanes = <1 2 3 4>;
> +                    remote-endpoint = <&sensor_out>;
> +                };
> +            };
> +
> +            port@1 {
> +                reg = <1>;
> +
> +                endpoint {
> +                    remote-endpoint = <&camss_csi0_in>;
> +                };
> +            };
> +        };
> +    };
> 

In general the change looks good, thank you, but likely it can be embedded
into the scheme for X1E.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
