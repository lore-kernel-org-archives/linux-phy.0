Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63033C3ABCC
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 13:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+NeAApLJNRheHqkn4WcAAiunfCY28BU7q3ghWqnzCo=; b=lnd6jMpwtXVGn0
	eh4AfJk0SUQAr74QrwZe6XAJiktf0JTBUBrSCM4oUlw50CS/r5sh+OcUrO5406REMACo7OTDBrbDp
	poAA+Oa+1EOHcK88NAa0ZKdcWik2wOl2lLY6WBnEgFB3V9WxVXgARG0xxYkTlek3Sr2YWWAjSCq/f
	H7sPH5vr06txAoGRysVuOrUBrFyw3ILIRZR6t7C5qP7hu/HWy5JnoV551lOCY5ZI0sJCqyBdlG9UU
	uBuKpV2eILkhQp4L+iHjlkiO5ObpR9V5XkchpPfA7sySjFxr7amXwWsQPa+0WqOAeCCfnEQ8Lr/Q0
	zAYp9/GQ+rzBgMwrwybA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFCXi-0000000FGr9-3hMK;
	Wed, 14 May 2025 13:53:06 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF9Mr-0000000En8q-0265
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 10:29:42 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3a0b9af89f2so3985203f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 14 May 2025 03:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747218579; x=1747823379; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ePg3tJASnNM57hKgSxlRFPyIUggUvcLPatD9RWreDX0=;
        b=JwAPQkiz+brSlYt5nUBF+adGMxXiM26PpsISSVJ/Mlp3CbF946pZJ/aEnrxKQdpE88
         IWY4rl36rxSwDLiCqGElpNqYYcgsYqwwVITZSbyoyg+7IckYLQWSJjr+v3wqXG/6Mqfh
         LdbjX6fu6jbIEbkVSYXRksRLznPy0Bsv3L4KXXPOQauhLUbjic4VBJz+pMS8cV1rnkqb
         mUXZz35YkogPXS8Zr/qfcXoz9v4FUIlEBFU1WBfnUGP69iJ5VvDw+dmyiwfbiNiGS8Vc
         0yFbZ89u95lyqq3u3fZvt3MNLJZeEtnAqCgbr3jKaWfFm4x2ualDmSLGx+v295mzMI1v
         Oy5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747218579; x=1747823379;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ePg3tJASnNM57hKgSxlRFPyIUggUvcLPatD9RWreDX0=;
        b=UEXEz4kz6O3c82e+yJnYJo2SbeLJ9Kzdr9n0oTmjzRvYoCIDGREbsrO5f0mQZ40lsG
         g508Kz4GbprdBWeK4hNGqVhfZHHRfMckvE14rHKEiqz5Lr+TTvkrKMXtxw3wD0rUIDOq
         uWe61O9+ZoQZ5hOSHJqL6f6hZPtVAnOyDI/UApsfPvvrwpMwz51aR/6Nwx2MRpH4oQfX
         klfaDCL5HOYttilHenX6LsnNCGsLyjlfBdAC5DFj8bT9XLR/z4Vd/C1TrmyLACThI+E8
         ovpN3zKk/2N6gTaSLuhdBv9NnX/AHEt+5HWjE6VJgacot1XH3ORvjMOHBcFzPmtp3a8C
         LVxA==
X-Forwarded-Encrypted: i=1; AJvYcCXGRy3BYJcKn2zLMUqiUu/TwSq5zkYUq1BQ23Gv3j7OGIKw/NSM/zQnFWAujmsTyzA5lgq0vkeNdBw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyySFqEr8VQ8LHpIm7UkO0nEexgIh/wn9v/M1dOTcodzRDFbFG5
	vzbQ9z5b/G029S+/LNqYzoETndZIkg4yRQNTicKU8VIcEvgbIwF2ZrvwNa5wowLUQi5lXcXaiYt
	M+3Gq8A==
X-Gm-Gg: ASbGncsw+dZWSJWMg9SuG8gGzW8LhRiCQM6sDZI5xp7H5gAmqRxz06mJxDLslSJq4nS
	6J14X94gxDFtIVQcMj+Oip1T7RIiP9oKCNgJCY7DOZifhBmC7o8BjTmb3mM36+wf7rKtB+TrtJY
	+rrEIX0EixYLsgbIFkwyyz1AePedE02pmzDz7H+ieNVOdwXDOT9Uk6pdjtMIQZzgj+J/+XcJ5Lk
	Fd3hFFggh7zcDMTv6cYKSlu/JQvLn21iWyXBwoKA4S7v09kaW1Hsv+6/+0QgOd4FZopcP7SicXr
	ocz9Bw0Uq8L5Hsa3y7iGMtm7d0T6q+OnVLuXZ04+q1ypHywoos+7ngUG5q6bPpQ77oLMWacfGPT
	K+FnZHpa8/g0V
X-Google-Smtp-Source: AGHT+IHjhoBaynMax8DR4vj3heXMVE+0fDfHEiV7SJCVMWgYWeESkB2IAbrN10SkOnXtoBTQY+++DQ==
X-Received: by 2002:a05:6000:18a5:b0:3a1:fd29:b892 with SMTP id ffacd0b85a97d-3a34994b07bmr2207420f8f.49.1747218578833;
        Wed, 14 May 2025 03:29:38 -0700 (PDT)
Received: from [10.61.1.70] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f57dde01sm19583563f8f.15.2025.05.14.03.29.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 03:29:38 -0700 (PDT)
Message-ID: <5905cee1-9ad3-4984-86b4-1709aaed1c1c@linaro.org>
Date: Wed, 14 May 2025 11:29:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] dt-bindings: phy: Add Qualcomm MIPI C-/D-PHY schema
 for CSIPHY IPs
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_032941_052232_D28E3679 
X-CRM114-Status: GOOD (  15.55  )
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

On 13/05/2025 15:39, Vladimir Zapolskiy wrote:
> Add dt-binding schema for the CAMSS CSIPHY IPs, which provides
> MIPI C-/D-PHY interfaces on Qualcomm SoCs.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   .../devicetree/bindings/phy/qcom,csiphy.yaml  | 110 ++++++++++++++++++
>   1 file changed, 110 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml b/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
> new file mode 100644
> index 000000000000..ef712c5442ec
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
> @@ -0,0 +1,110 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,csiphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm CSI PHY
> +
> +maintainers:
> +  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> +
> +description: |
> +  Qualcomm SoCs equipped with a number of MIPI CSI PHY IPs, which
> +  supports D-PHY or C-PHY interfaces to camera sensors.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,sm8250-csiphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  vdda-csi-0p9-supply:
> +    description: Voltage supply, 0.9V
> +
> +  vdda-csi-1p2-supply:
> +    description: Voltage supply, 1.2V
> +
> +  '#phy-cells':
> +    const: 0
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/$defs/port-base
> +    description: CAMSS CSIPHY input port
> +
> +    patternProperties:
> +      "^endpoint@[0-1]$":
> +        $ref: /schemas/media/video-interfaces.yaml#
> +        unevaluatedProperties: false
> +
> +        properties:
> +          data-lanes:
> +            minItems: 1
> +            maxItems: 4
> +
> +          bus-type:
> +            enum:
> +              - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
> +              - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
> +
> +        required:
> +          - data-lanes
> +
> +    oneOf:
> +      - required:
> +          - endpoint
> +      - required:
> +          - endpoint@0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - '#phy-cells'
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sm8250-csiphy
> +    then:
> +      required:
> +        - vdda-csi-0p9-supply
> +        - vdda-csi-1p2-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,camcc-sm8250.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    phy@ac6e000 {
> +      compatible = "qcom,sm8250-csiphy";
> +      reg = <0x0ac6e000 0x1000>;
> +      clocks = <&camcc CAM_CC_CSIPHY2_CLK>,
> +               <&camcc CAM_CC_CSI2PHYTIMER_CLK>;
> +      interrupts = <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>;
> +      vdda-csi-0p9-supply = <&vreg_l5a_0p88>;
> +      vdda-csi-1p2-supply = <&vreg_l9a_1p2>;
> +      #phy-cells = <0>;
> +
> +      port {
> +        csiphy_in: endpoint {
> +          data-lanes = <1 2 3 4>;
> +          remote-endpoint = <&sensor_out>;
> +        };
> +      };
> +    };

I have something similar in the csiphy rewrite I've been doing.

Lets sync up IRL to discuss.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
