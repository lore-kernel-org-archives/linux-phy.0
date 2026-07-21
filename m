Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 686AAC44529
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 08:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCqcjaDga2B8J6/5sHwqrJ6K8QVX59bm6GXng2iG/2o=; b=IPaFutqRxEiQbP
	r9vopN+XO/KLVFYYNwhQT4dQDEmE2RiGH0lN09XxpbMMCO/zufSA+X6u7ND9QMACklesCaNisqsXZ
	STDfF5QaA2ptt/0g5kEDalgKbCEmrJIl3bUnhJo4fhoKTNpE7xpwhmH3yZr31viC2S9j2uPwmqfQ0
	+/887A4v3dHdvtPUacWZgAmY6A9V60WyEkFvKYybE+FJr2wgw5f4uektHeC2LQdZCuGB/fbjmzgKL
	Ve0hudYUOIUa3CdSunN29u3AGnsnRKnFjAdUZ6bOHAtUIMUDPZWmvER7Z+E3Gi35/LragjB75emog
	WD56uVjFFYqWolnB7O6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm5fG-00000008m4F-0VtT;
	Tue, 21 Jul 2026 08:17:22 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm5fD-00000008m3X-28cf
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 08:17:20 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5aeb72b0af1so1249937e87.3
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 01:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784621837; x=1785226637; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=gKMYuSxpffkyrGpleNqSwP2E6RLfbUM1DxXqtJdN6kU=;
        b=qJARENoQdWpo0hzB4kf8/lcyFydlHYS+CWJgKZWVCVmS+3y7zqdzD2NIzKrOnLKC8G
         kNkpyi5ts/FwVRI9Wg64A5PrSpPxgUFv3OqscHD/t1dNh7es8qbbOmupHpwh2QrF0y6o
         em+FpVyLJ0O7siIl2wyQNQ3QDR7MaBRdb7K8i74pyi8t4ZFJK5Un99DkU8rOzghqfHDY
         tdXZBP1AhnIBEWycb2zzE4Fgv2CZbEaL/K5E+RzGkO3LOzWKkPodQQbKqqHQ9Cfxnbzf
         EGUlGtfITUwH2AaekN0myCPDx5IHehPohpWq1POtcK4pepKQzIYDxs77+EbBH6GlDIZ+
         orQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784621837; x=1785226637;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gKMYuSxpffkyrGpleNqSwP2E6RLfbUM1DxXqtJdN6kU=;
        b=V3amRDdDqdW47OOMRcWjgQA+tV6TQf/U2pXCUZOIofwO91Uve9UFuJ7h9E9NBkMfkH
         BetNHMOfJqFpmEdy02W1KSwTwT8nsMVs8Ph4nq0alObnM6ZTCzijK+1prNJL14/3BgxZ
         BAujo+SCRIzG9mj/IU5vr4K0giRSmkD+M8eADXIHnVJlJmutUl250bI1pLWVQvnofmJo
         2AlBIhmTCMEcIipArMy8Oa7nvnDIm+ln9Two0pK2DEOXXMHddCfonROHi22uPz4AbJbL
         aHKizjcpWgnCgWaLxXnvYHKkiK4YEGlYEPzMzSGDN7EUFEa4kw5qjppzaGLvLM/ERkBQ
         GxqQ==
X-Forwarded-Encrypted: i=1; AHgh+Rr3On8pKwujeIIq3FMUFdpaGth8iAlqoZtGxVA65SI9dJUgf6bQurGLkuhg5BBT8b6GnXFtvQwNJEw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZGhOm/Wx/ormBRsGvsIm37GbExcwXSxIwNnBOokOPaYFdP6fk
	BlRJOqlCHz208LSwC/Lk7pN5S39kmm6coFqBOaI3CpaGwpEcLZC5dSz2p8QVlJhNPm8=
X-Gm-Gg: AR+sD11XqjuhHfhj2HLlNq2FBZFBo26mZ+keAGKECLO/aH4/ryBgPX4TOkelms6cM6w
	jqX27u57VNeCQO43bzKsA0E73PV9eOcHIVLFaqx2D1umaGx1AXTIYXCUK0i5wUlS/Ni/QMQPN/+
	6l4dCOI4AwWCz76S/xRIavlJOpd6ttCNCF19qjmxnGslW/3iJoEmlKzor57khywHPBLui+0TM0D
	crlR+tSvdfYA1Znn15aFVqN9I3/9z49pJxrz8vZYfqSBzm98nCajG1IgQWucgxDhprEyD2q5QvD
	J2RVAn7C9uA1VU/AC06v84wiF7jEHnHuwik595Nqfuy0doBYheeljSCHTqoc/+66Ef0BGjbb2xR
	/dMAEiUKYCXn7Y7sSuIVvudCWbogDlyjokjEJ16mZ5h6ZgRm7nsA/FvQh/og9jaI/+3CqQic8G7
	Cammy7KABAnM+XYCAoAqdbWZTuGCjdCStT5f+2gJb8FJax+d9/eHuaaXaS
X-Received: by 2002:a05:6512:3e24:b0:5ae:c063:638c with SMTP id 2adb3069b0e04-5b2a4a87341mr290377e87.7.1784621837200;
        Tue, 21 Jul 2026 01:17:17 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291e25e5bsm2736698e87.78.2026.07.21.01.17.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2026 01:17:16 -0700 (PDT)
Message-ID: <0da6d314-bfa9-493a-bcc6-8c3b75751d0c@linaro.org>
Date: Tue, 21 Jul 2026 11:17:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
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
References: <20260720-x1e-csi2-phy-v13-0-160c31958863@linaro.org>
 <20260720-x1e-csi2-phy-v13-1-160c31958863@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260720-x1e-csi2-phy-v13-1-160c31958863@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_011719_599718_053C5CAE 
X-CRM114-Status: GOOD (  21.74  )
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

On 7/20/26 04:11, Bryan O'Donoghue wrote:
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

Since there is no changes in dt bindings from v12, all comments from here
are still applicable to this version of the changeset:

https://lore.kernel.org/linux-arm-msm/20260719-x1e-csi2-phy-v12-0-cc7311326d1b@linaro.org/

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

This has been reported before, #phy-cells shall be 0, the operation
mode is selected by bus-type of endpoints as it is described in
video-interfaces.yaml

Two competing values are redundant and it opens a door to a wrong
hardware description, the technical discussion has not been started yet.

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
> +          endpoint@1 with exactly one data-lane.
> +        unevaluatedProperties: false
> +
> +        patternProperties:
> +          "^endpoint(@[0-9a-f]+)?$":

endpoint suffix regexp is incorrected, this issue has been reported
previously, still it is not fixed.

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
