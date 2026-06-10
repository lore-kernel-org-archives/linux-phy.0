Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABDE5CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 12:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWIdlV1sW5/eg9amK/2k9E12yuLzxMtx9fqwILkf+GY=; b=W9T1xznwz2nSC1
	uEEofXqZUYYhXzHV/4ixoPcqZ3ELIHFqma+D6El2YCdHPk9K/zT1yy6uvhvlIg4QkXw3spVYSuBnn
	nQm89Ur292r78F+XHiWuQXcQbToR2HMbBM2f+gzIe6oH1gOriADQ3ineE2eNcrlmgOGsSWVm/wo0j
	7GrtEVyaovM6l6zNdI838oJQY9Ockl4u1KPfKJxG5UqsximNrWCvRf4bIvpVZPsegF6WcrYahjwj0
	bVtPdRX7UstldirbB4uESCGGbzz9H15rOGPEs2a3a5cVbLLkdILzRYIrQW3aExO7dTto9LhIz0I0j
	O51xX0eNOrCqrMLPVNQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHvy-00000007dEo-1QcF;
	Wed, 10 Jun 2026 12:21:26 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHvx-00000007dEf-0MAT
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 12:21:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 45FC86001D;
	Wed, 10 Jun 2026 12:21:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BDF61F00893;
	Wed, 10 Jun 2026 12:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781094084;
	bh=p4hwxJfXp6tyKt+/pBsLy96/1b/jfZ3bP3WR7Sxnlwc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=Sd8rW3v90SoV1gNIpAb/iMEohMdPNSjgJabsJk92wEiqL6bMe//SGFkfQ/RDjYzMw
	 InTPpU2uqnmo57TuPo7taL8HPzTW0hU1u1AL7YUlUhmqcXj0YuRsH+5mVQ2pKVBI4r
	 KdFd6SA9ssok2m1pLC9amAwzzQK4GDKWcFb1EC6omXlalXYdY23aAgchVWCXyrzIh1
	 GvhJUpBGkQfc+gY20Ix71+DmJiCZA3oiqJ739KFGLWmREjf0xPTRVeSONKFpJDGlim
	 wDDUGEwD8t+fVE602f89mjaQNiEKg2Ttn3UoUa2d0oZeNYdaZ0a5tCE0tzJSB0sAie
	 W7fbu16oFUDdA==
Message-ID: <8a620fdf-a459-469e-9397-9e42c5f46353@kernel.org>
Date: Wed, 10 Jun 2026 13:21:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] media: dt-bindings: Add Himax HM1092 NIR sensor
To: Ramshouriesh <rshouriesh@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Aleksandrs Vinarskis <alex@vinarskis.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
 <6IjAyuvf2a5XQe20keFGcEpYJWFVXWOCVz0mYrSYdSL3zssxs9WxBU3tCUY9aNuWh15VfpDDG75rfmMdHojf4A==@protonmail.internalid>
 <20260610-a14-himax-hm1092-v1-2-0c9907da47ed@gmail.com>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
Autocrypt: addr=bod@kernel.org; keydata=
 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
In-Reply-To: <20260610-a14-himax-hm1092-v1-2-0c9907da47ed@gmail.com>
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

On 10/06/2026 12:09, Ramshouriesh wrote:
> Add a dt-binding schema for the Himax HM1092 1MP monochrome
> near-infrared CMOS sensor, used as the face-authentication IR camera on
> Snapdragon X laptops such as the ASUS Zenbook A14. The sensor streams
> 10-bit RAW over 1 or 2 MIPI CSI-2 data lanes.
> 
> The optional generic "leds" property (video-interface-devices.yaml)
> associates an IR illuminator flash LED with the sensor, which the
> driver strobes while streaming.
> 
> Signed-off-by: Ramshouriesh <rshouriesh@gmail.com>

Firstname/lastname ?

> ---
>   .../bindings/media/i2c/himax,hm1092.yaml           | 118 +++++++++++++++++++++
>   1 file changed, 118 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/himax,hm1092.yaml b/Documentation/devicetree/bindings/media/i2c/himax,hm1092.yaml
> new file mode 100644
> index 000000000000..085001493a20
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/himax,hm1092.yaml
> @@ -0,0 +1,118 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/himax,hm1092.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Himax HM1092 Monochrome NIR Sensor
> +
> +maintainers:
> +  - Ramshouriesh <rshouriesh@gmail.com>
> +
> +description:
> +  The Himax HM1092 is a 1 megapixel monochrome near-infrared CMOS image
> +  sensor with a MIPI CSI-2 interface, commonly used as the IR camera for
> +  face authentication on laptops. It supports 10 bit RAW output at
> +  1288x728 over 1 or 2 CSI-2 data lanes. An optional infrared
> +  illuminator LED may be associated with the sensor through the generic
> +  "leds" property; the driver strobes it while the sensor is streaming
> +  so the scene stays lit for IR capture.
> +
> +allOf:
> +  - $ref: /schemas/media/video-interface-devices.yaml#
> +
> +properties:
> +  compatible:
> +    const: himax,hm1092
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  avdd-supply:
> +    description: Analogue circuit voltage supply.
> +
> +  dovdd-supply:
> +    description: I/O circuit voltage supply.
> +
> +  dvdd-supply:
> +    description: Digital circuit voltage supply.
> +
> +  reset-gpios:
> +    maxItems: 1
> +    description: Active low GPIO connected to the XSHUTDOWN pad.
> +
> +  leds:
> +    description:
> +      Optional phandle to an infrared illuminator flash LED strobed by
> +      the driver while streaming.
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/$defs/port-base
> +    additionalProperties: false
> +
> +    properties:
> +      endpoint:
> +        $ref: /schemas/media/video-interfaces.yaml#
> +        additionalProperties: false
> +
> +        properties:
> +          data-lanes:
> +            minItems: 1
> +            maxItems: 2
> +          link-frequencies: true
> +          remote-endpoint: true
> +
> +        required:
> +          - data-lanes
> +          - link-frequencies
> +          - remote-endpoint
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - port
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        camera@24 {
> +            compatible = "himax,hm1092";
> +            reg = <0x24>;
> +
> +            reset-gpios = <&tlmm 109 GPIO_ACTIVE_LOW>;
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&cam_ir_default>;
> +
> +            clocks = <&camcc 1>;
> +            assigned-clocks = <&camcc 1>;
> +            assigned-clock-rates = <24000000>;
> +
> +            orientation = <0>;
> +
> +            leds = <&ir_flash>;
> +
> +            avdd-supply = <&vreg_l7m_2p9>;
> +            dvdd-supply = <&vreg_l7m_2p9>;
> +            dovdd-supply = <&vreg_l4m_1p8>;
> +
> +            port {
> +                hm1092_ep: endpoint {
> +                    data-lanes = <1>;

You probably mean data-lanes = <1 2> here no ?

> +                    link-frequencies = /bits/ 64 <400000000>;
> +                    remote-endpoint = <&camss_csiphy0_inep>;
> +                };
> +            };
> +        };
> +    };
> +...
> 
> --
> 2.53.0
> 

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
