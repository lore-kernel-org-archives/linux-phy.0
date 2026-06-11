Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D9BACD98C7
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 09:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7kSDqb7neBYyZCh0KnEd/GFDSUzQc4SRKtI7sBhf2pw=; b=G2SNSrDQe35tz1
	D3X83AQaFgnwig4DF7BsKEVVaJ/VCd13pMk0KS20m78H5KNET2SKnU7slGkLaNw1uz4UD/q/QDQa3
	OSZTWNYC+C+9JDPKfbJjdM3P/3/EdFByNMa4zq/eWmPKlLCiK0641tM0hFjCAWkWa3kM8dtLSKUoS
	8X72CtsVABsif/45w3heREPkiushSmu/rYr1Y7anaOnbawncGbYx7bpesyWckMtdlyT5/T90TVoc2
	s9JHcrcyqAI5JnHFYLq0cCMJycmW8MvSt36LBJd1IxvUI1pkAZyEXmNXrHKOIpbhvhT0v5rZOCznk
	oFrEmudlifQSFwtbFbiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXbRW-0000000968X-2km4;
	Thu, 11 Jun 2026 09:11:18 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXbRU-0000000968R-2N0v
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 09:11:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 27FE84393F;
	Thu, 11 Jun 2026 09:11:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70E6D1F00893;
	Thu, 11 Jun 2026 09:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781169076;
	bh=lzXA25URE+Z/E5E0m7kyKvf5l04TxbOXv1Cr7KL0nNY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=L/O6gOxkcdGkahO3ZcEeCmWCstQzOYodjryBqWFDBpewPmLuSXaK5nD90m8jnkAcW
	 0t638v0UGOqWLQDL/HS530NuJL8eFfOdRBV3pgtdT240I/4TaLALPaS4iXZbhJFLxB
	 aZ6QtkdIzsyuUSEDr9GbPBXgpsadFUhCpbscl1xKOD76iigVgKul3pDaw2i+g3Ps+S
	 Kg5sWZ/N0k/dpjji8LXdfl6sa7qT9+mfYIF57gN9B/MlMqT7efkwJBh3VA7VwifVUs
	 6BOgp4QrVYBOGpPPTqyb/z4r7gGG5NBkQ4y1dKvDUTKB65BbWH7C3ejevR6kIyiKf9
	 KpK70uKEQY98A==
Date: Thu, 11 Jun 2026 11:11:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ramshouriesh <rshouriesh@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Aleksandrs Vinarskis <alex@vinarskis.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/9] media: dt-bindings: Add Himax HM1092 NIR sensor
Message-ID: <20260611-fluffy-dark-ammonite-e3d5ed@quoll>
References: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
 <20260610-a14-himax-hm1092-v1-2-0c9907da47ed@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Jun 10, 2026 at 04:39:27PM +0530, Ramshouriesh wrote:
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
> ---
>  .../bindings/media/i2c/himax,hm1092.yaml           | 118 +++++++++++++++++++++
>  1 file changed, 118 insertions(+)
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

Drop, unevaluatedPropertes already allows that.

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

use unevaluatedProperties here

> +
> +        properties:
> +          data-lanes:
> +            minItems: 1
> +            maxItems: 2
> +          link-frequencies: true
> +          remote-endpoint: true

And drop these two

> +
> +        required:
> +          - data-lanes
> +          - link-frequencies
> +          - remote-endpoint

Why do you need this? Which other binding did you take as an
example/starting point?

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks

Supplies are required

> +  - port
> +
> +unevaluatedProperties: false

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
