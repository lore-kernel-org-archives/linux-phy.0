Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15FCCFD5320
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 09:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=221hHXxAjnsbNi+UM2ZEgWjk44vnrZwugKxdU+s7O0Q=; b=t/XQJsxWQzuN+5
	XWYyj9Vgm5gFk/smaYKdtpLo5Rvr1RZpcH5icXYyx+lPb5/rGJ85Qq5TEYrrypMW0NWru0m/yi9uy
	6RMZ4f6THEHVzB8YfnRbdvFOIzaubFxGtiZVlJeshNTMN/207MbO+ABIHI52E2uva2aS48EELLjPE
	85mvNEanWjtWiwp4zUhlOReNsc3zk5R42QOoZ1uk3mIXYmKe18OYbNRIe4fKXSdTOarTGZdoIpu/w
	C3qLhkOToF4DNZfm8mHHCrzw9IjJwKrv7NsEHliawrkIqzO9IGSycTpTf+4Ei5GC8BkijEMygY/SQ
	hsuxL3covhiu5D2j/ZMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvuMC-000000089rZ-2Zft;
	Fri, 27 Feb 2026 09:42:00 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvuMA-000000089rE-1Y74
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 09:41:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B8787409DF;
	Fri, 27 Feb 2026 09:41:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1012CC116C6;
	Fri, 27 Feb 2026 09:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772185317;
	bh=GunYsepcvS7P0kWU+eE1Pj5AXzd/lEdEY7FWtR3ZB0o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E8XdEtMTB8GvWT1s1lmZFvQnKzs2cPe4WebgYWtgWdxqxa/t+c6uHPPOO94W3zy0u
	 Y+Fij5gKuJZjUyPdvXkSqi+IdRgj5Xorye4n2iZQm0gQvtL6rDA4TraNZNH0lS1MRn
	 stt/1q1HhpAPJaQugONZlSRBA0/4yLr11X1HqFqlPGj+XWtsdIkBCqYuSIUgH6BwKX
	 uneTRJnZn/bus1BZ9TqllRTPQ/5HB0CeKy9JrAklP9dYjDdgzUOpK34RqHImCpukpe
	 GI4tmMpZoF76o62EbxNJvOqrPypF4juiQ0ETsyV0xw2oTPh8p+YOLXMmp4cLGrkHFx
	 oZkmDDPStpftQ==
Date: Fri, 27 Feb 2026 10:41:55 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bryan O'Donoghue <bod@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
Message-ID: <20260227-overjoyed-spiritual-saluki-7561c2@quoll>
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_014158_450962_0AA9C7BA 
X-CRM114-Status: GOOD (  22.38  )
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

On Thu, Feb 26, 2026 at 12:34:25PM +0000, Bryan O'Donoghue wrote:
> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
> PHY devices.
> 
> The hardware can support both C-PHY and D-PHY modes. The CSIPHY devices
> have their own pinouts on the SoC as well as their own individual voltage
> rails.
> 
> The need to model voltage rails on a per-PHY basis leads us to define
> CSIPHY devices as individual nodes.
> 
> Two nice outcomes in terms of schema and DT arise from this change.
> 
> 1. The ability to define on a per-PHY basis voltage rails.
> 2. The ability to require those voltage.
> 
> We have had a complete bodge upstream for this where a single set of
> voltage rail for all CSIPHYs has been buried inside of CAMSS.
> 
> Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
> CAMSS parlance, the CSIPHY devices should be individually modelled.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 114 +++++++++++++++++++++
>  1 file changed, 114 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> new file mode 100644
> index 0000000000000..c937d26ccbda9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> @@ -0,0 +1,114 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm CSI2 PHY

Qualcomm SoC CSI2 PHY


> +
> +maintainers:
> +  - Bryan O'Donoghue <bod@kernel.org>
> +
> +description:
> +  Qualcomm MIPI CSI2 C-PHY/D-PHY combination PHY. Connects MIPI CSI2 sensors
> +  to Qualcomm's Camera CSI Decoder. The PHY supports both C-PHY and D-PHY
> +  modes.

So just to be clear: this is not MIPI CSI, but only the CSI PHY? There
are no ports here, which seems fine for the phy and will be in the MIPI
CSI block?

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
> +
> +  clocks:
> +    maxItems: 4
> +
> +  clock-names:
> +    items:
> +      - const: csiphy

probably: core or iface

> +      - const: csiphy_timer

timer

> +      - const: camnoc_axi

axi or noc

> +      - const: cpas_ahb

bus, ahb or cpas, depending whether this is only one ahb or this is bus of
some cpas subblock

See also: https://lore.kernel.org/all/20260115-sm6150_evk-v3-2-81526dd15543@oss.qualcomm.com/


> +
> +  interrupts:
> +    maxItems: 1
> +
> +  operating-points-v2:

Just true. It is not an array.

> +    maxItems: 1

Also opp-table like in other schemas.


> +
> +  power-domains:
> +    maxItems: 1
> +
> +  vdda-0p8-supply:
> +    description: Phandle to a 0.8V regulator supply to a PHY.
> +
> +  vdda-1p2-supply:
> +    description: Phandle to 1.2V regulator supply to a PHY.
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
> +  - vdda-0p8-supply
> +  - vdda-1p2-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
> +    #include <dt-bindings/phy/phy.h>
> +
> +    csiphy@ace4000 {

phy@ or csi-phy@

> +        compatible = "qcom,x1e80100-csi2-phy";
> +        reg = <0x0ace4000 0x2000>;
> +        #phy-cells = <1>;
> +
> +        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
> +                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
> +                 <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
> +                 <&camcc CAM_CC_CPAS_AHB_CLK>;
> +        clock-names = "csiphy",
> +                      "csiphy_timer",
> +                      "camnoc_axi",
> +                      "cpas_ahb";
> +
> +        operating-points-v2 = <&csiphy_opp_table>;
> +
> +        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
> +
> +        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +
> +        vdda-0p8-supply = <&vreg_l2c_0p8>;
> +        vdda-1p2-supply = <&vreg_l1c_1p2>;
> +    };
> +
> +    csiphy_opp_table: opp-table-csiphy {

Drop entire node, not relevant here.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
