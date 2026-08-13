Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9DCAC5B572
	for <linux-phy@archiver.kernel.org>; Thu, 13 Aug 2026 08:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5xsEKDGxL5UNbdiakfM0BT1hvTzttcdEjyCtmNL+d4=; b=wcC0YOjJKDFw0p
	YYWgXFzqO/A0aXnXSd6WzIQkJY0sUkgZ6c1aptrrCmZKgoWQtT26fiJEIkhg68k5A8zIkJF7Q5hP6
	K1rHAM5BoWBqyCWzd+p0P1CCQwaiG4lgDiDgP2c0DXFnrWHuqjyaAzXfAsh29IpnFmTRZPLOfpy4l
	Z7bJWWcZip1mdy7e65iJmxR5Q9Rx18L+dbW2eCumIq1qkdK64nZXNGSOIXhWvHSPhjPM1Wym3k/0p
	fI8cSI1A+QmVRkWi4AVJCiQNz+TZcHsptIjOVRyb+e+xW6i/tz0zufvlfQOfjzLdgSp0LwDkDbrOB
	YPw4rIpKOmdIwdtxctmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuRGc-00000000ERN-0VI9;
	Thu, 13 Aug 2026 08:58:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuRGa-00000000ER3-1pRm
	for linux-phy@lists.infradead.org;
	Thu, 13 Aug 2026 08:58:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CBD8641652;
	Thu, 13 Aug 2026 08:58:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 605541F000E9;
	Thu, 13 Aug 2026 08:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786611503;
	bh=mUM3gx5fUhLkzXuel80f3jVm80HXZyBPiyyBV8LlM9c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OEH8U6YY/k3abK15cAm8SOWWeMYPxh5Eo9X4FPfZKKcfG3INBqRbgkVRjLKP79rXA
	 A7CoCi7FwUyaSnsrwPmAK4rSfej/0x4GCw19Rn/4hoJp/TpzGFH0ZtWS20aefiw8z2
	 yUpK1RtLBTD1t78I/ctYhQGTFPErN/oVl4u2tZ4TDwRJpg7mtoGf3TcBzLdLGUSw09
	 EOPERMHKk1D245B8nBhb5QfZHmVfnRD2izaXz0ETwRGk/6nUZdb3yhDgjh24zZqScJ
	 CoTJtfTB5gPKYIJQsx+FEA2RFEEU9ggslcprPlrFlOZqcNXicb8FA/aeBV3eANsS2p
	 jl00SOeF1vlCA==
Date: Thu, 13 Aug 2026 10:58:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Praveenkumar I <quic_ipkumar@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 01/14] dt-bindings: phy: Document the Qualcomm IPQ5332
 UNIPHY USB Super-speed PHY
Message-ID: <20260813-alluring-advanced-jackalope-55e5c1@quoll>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-1-8f355d7ff0ef@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260812-ipq5018-usb3-v2-1-8f355d7ff0ef@outlook.com>
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

On Wed, Aug 12, 2026 at 01:34:36PM +0400, George Moussalem wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Document the Qualcomm USB3 22ull UNIPHY present in the IPQ5018 and
> IPQ5332 SoCs.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  .../phy/qcom,ipq5332-uniphy-usb-ss-phy.yaml        | 111 +++++++++++++++++++++
>  1 file changed, 111 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-usb-ss-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-usb-ss-phy.yaml
> new file mode 100644
> index 000000000000..cc9eccac51dd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-usb-ss-phy.yaml
> @@ -0,0 +1,111 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,ipq5332-uniphy-usb-ss-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm UNIPHY USB Super-Speed 22ull PHY
> +
> +maintainers:
> +  - Praveenkumar I <quic_ipkumar@quicinc.com>
> +  - Varadarajan Narayanan <quic_varada@quicinc.com>
> +
> +description:
> +  USB Super-Speed UNIPHY found in Qualcomm IPQ5018 & IPQ5332 SoCs.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,ipq5018-uniphy-usb-ss-phy
> +      - qcom,ipq5332-uniphy-usb-ss-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 3
> +
> +  resets:
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description:
> +      Phandle to 5V regulator supply to PHY digital circuit.
> +
> +  qcom,phy-usb-mux-sel:
> +    description: |

Do not need '|' unless you need to preserve formatting.

> +      Mux selection for USB PHY. The USB3 and PCIe PHY pads are muxed and the
> +      mux selection is done via a register in TCSR syscon.

git grep qcom,phy-usb-mux-sel gave me zero, so I wonder how is it done
from the PCI side.

> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle of TCSR syscon
> +          - description: offset of PHY mux selection register
> +
> +  "#clock-cells":
> +    const: 0
> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - resets
> +  - vdd-supply
> +  - qcom,phy-usb-mux-sel
> +  - "#clock-cells"
> +  - "#phy-cells"
> +


> +additionalProperties: false

This goes after "allOf:" block.

> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,ipq5018-uniphy-usb-ss-phy
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: USB3 PHY CFG AHB clock
> +            - description: USB3 pipe clock
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,ipq5332-uniphy-usb-ss-phy
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: Shared PCIe/USB3 PHY AHB clock
> +            - description: USB3 PHY CFG AHB clock
> +            - description: USB3 pipe clock
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
> +
> +    phy@4b0000 {
> +        compatible = "qcom,ipq5332-uniphy-usb-ss-phy";
> +        reg = <0x4b0000 0x800>;

That is the same address as PCI PHY, so you have one device, not two.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
