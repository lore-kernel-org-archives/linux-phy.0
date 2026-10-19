Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF3AFCCF2DA
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 07:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Ljm+ZrBXPZrWB4W2/H74Q4Qt2JnZ3Sx2rOveFOG0k0=; b=vosnoIEmNrxrIm
	8w9QrVlPvp7h1N6sl+ZVC5l4HjduWkF4v5YBAZA5SFwqDcFglQt42bGcvfwI1EoU8cNRFLNmB/Dnv
	BnAiy0WxfxG1QxDJ95i485D4GKF0r8MhNUle8LTQ2ZRRuXFfZ4VuBpSLbps7UBg8o5Pq89IHR1CfW
	MqqHqThDnT+x/Uqgg9F/ZHv32k24e5P66MWIE6rTnKlG8wmCk/LN/jZRAZ61LeFe+oaEMd7jnYAgF
	S/imSDKZhxOV9Jg3jfCUDpWsXUK0Kbo3KPBqNpAVGvusP11siM/ymM6zmIIYk1jAWksQIQ38A8b/6
	ZL1Y8brM2WtvIU+yLfYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIhcC-00000006krx-1MLJ;
	Mon, 19 Oct 2026 07:17:00 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIhcB-00000006krY-2toz
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 07:16:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D0CC3602A8;
	Mon, 19 Oct 2026 07:16:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D903C1F000C4;
	Mon, 19 Oct 2026 07:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792394218;
	bh=XYSVoR0LXdlVmOJW7CQxG2dIDUVuom9NuxitFvzPwok=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gkRw5jtsxd4oI1yI9mEulsBWR+qyfg3uNXIDAbhNA1Yf3HrJBo0Rv8iq/jsTKXsGg
	 Hoq1MhocawIEWn2GMJ+DeqcH/OFJ3+N2ZSpHFLW67Jrf43Dj8AOcpskunZN3+y1zjZ
	 XK6IDjzr5stKZ+CfdetfV2LlBZDPn60MZDarA3Mi9L9Y6fysx6hWWtcLvbV1as+me1
	 0jLAJ1WVhsiKXeEy1WptjwxEhRFCwjnNLQj3GlHaIHDb3KeO+obaoLX04o5pBHxFNr
	 YLaSaQPH9JOojXs5JTiRDPJ1ZXfRHKITviD25XEgjn2l/l8ATiIYyBZFtX0hnFGyYi
	 omtTMeK+mULVQ==
Date: Mon, 19 Oct 2026 09:16:55 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
Cc: bod@kernel.org, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, mani@kernel.org, 
	gjorgji.rosikopulos@oss.qualcomm.com, hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com, 
	jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com, vladimir.zapolskiy@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/7] dt-bindings: phy: qcom: Add qcom,sa8775p-csi2-phy
 schema
Message-ID: <20261019-ninja-velociraptor-of-gallantry-2efa3c@quoll>
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
 <20261016235502.2274268-3-anusha.nandi@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261016235502.2274268-3-anusha.nandi@oss.qualcomm.com>
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

On Fri, Oct 16, 2026 at 04:54:57PM -0700, Anusha Arun Nandi wrote:
> Add a device-tree binding for the Qualcomm SA8775P MIPI CSI2
> PHY, modelled as a standalone generic-PHY provider like the existing
> qcom,x1e80100-csi2-phy, so CAMSS can consume the CSIPHY through the
> common PHY framework instead of driving it in-line.

A nit, subject: drop second/last, redundant "schema". The
"dt-bindings" prefix is already stating that these are schemas.
See also:
https://elixir.bootlin.com/linux/v7.1-rc7/source/Documentation/devicetree/bindings/submitting-patches.rst#L23

> 
> Follows the qcom,x1e80100-csi2-phy schema's shape: a ports/port@0
> sensor-input endpoint carrying data-lanes/bus-type (D-PHY only for
> now, C-PHY bus-type value is accepted by the schema but wired up by a
> companion series), a port@1 CSID output, and a mandatory
> operating-points-v2 table plus power-domains/power-domain-names.
> 
> Unlike x1e80100, SA8775P's CSIPHY has a single power-domain: the
> Titan Top GDSC, matching the legacy in-tree CAMSS driver's
> sa8775p_resources.pd_name = "top" (drivers/media/platform/qcom/camss/
> camss.c) and the existing lemans.dtsi camss node's power-domains =
> <&camcc CAM_CC_TITAN_TOP_GDSC>. It is not OPP-scaled, only kept
> enabled, the same way x1e80100's own "top" domain is.
> 
> The PHY takes three clocks (core, timer and the shared CSID CSIPHY RX
> clock) and the vdda-phy/vdda-pll supplies. The core/timer naming
> matches x1e80100's clock-names convention for the same pair of
> clocks.
> 
> Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,sa8775p-csi2-phy.yaml   | 172 ++++++++++++++++++
>  1 file changed, 172 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
> new file mode 100644
> index 000000000000..b66ec2f14189
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
> @@ -0,0 +1,172 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright (c) 2026 Qualcomm Innovation Center, Inc. All rights reserved.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,sa8775p-csi2-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm SA8775P CSI2 PHY
> +
> +maintainers:
> +  - Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
> +
> +description:
> +  Qualcomm MIPI CSI2 D-PHY. Connects MIPI CSI2 sensors to Qualcomm's Camera
> +  CSI Decoder on the SA8775P SoC.
> +
> +properties:
> +  compatible:
> +    const: qcom,sa8775p-csi2-phy
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
> +      - const: csiphy_rx

You just named it basde on clock name. Instead, name it based on the
input name. csiphy is also completely redundant.

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
> +
> +  power-domain-names:
> +    items:
> +      - const: top
> +
> +  vdda-phy-supply:
> +    description: Phandle to PHY supply.
> +
> +  vdda-pll-supply:
> +    description: Phandle to PLL supply.
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description:
> +          Sensor input. A single sensor is described by a single endpoint
> +          with one to four data lanes, numbered 1-4. The clock lane is
> +          position 0.
> +
> +        unevaluatedProperties: false
> +
> +        patternProperties:
> +          "^endpoint(@0)?$":

so not a pattern really and just endpoint.

> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +            properties:
> +              bus-type:
> +                enum:
> +                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
> +                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
> +                default: 4
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
> +              - data-lanes
> +              - remote-endpoint
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
> +  - vdda-phy-supply
> +  - vdda-pll-supply
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,sa8775p-camcc.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/media/video-interfaces.h>
> +
> +    csiphy0: csiphy@ac9c000 {

Drop unused label

git grep csiphy@

Don't come with own style.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
