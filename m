Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABB98C52D7C
	for <linux-phy@archiver.kernel.org>; Sun, 18 Aug 2024 16:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=coeQkr80LKM1wrFC5Zz0SwQfzN7iEi8alBsyEoBUPxY=; b=RlZ00Zfz3DMvNx
	/qyO/4+CTqiGy6CBbcyvp4ohgtn+GFKBxdCN0oaPQcCksCmaooOfgpyr0vx6LNgzn6fKFdmGibkcC
	AgskoQEktdaZfhrOYDfNlTck9vmeITmCYW4NhLK3VByB99mTPJbW0RPguVX/ZEPz75Koc/wCx8Li5
	ToNAgLh8ov4vwwQlEZQ+wU+i0G68wmVKDaHwVEAQ53uMOCqfMHwbtk6wpQc0KHix7IRfDlZWjkCH6
	vy/nL8TNNG9FE5mRXyLC230shWUmztYXQ6neLMT9tAlnmgW3povcF9G2ddCokBR5WazNdLvR0jZso
	sPU2SY/O6UjHNObG+Raw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfiP4-0000000GnL3-1duU;
	Sun, 18 Aug 2024 16:05:14 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfiOK-0000000GnCk-3udv;
	Sun, 18 Aug 2024 16:04:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 10113CE02C4;
	Sun, 18 Aug 2024 16:04:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD504C32786;
	Sun, 18 Aug 2024 16:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723997066;
	bh=zOh8sLLniupBfxa1ZvD5qt1zclMnT9P4G1dPyjbnZjM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p1t1lls702regXytE2r0csn0P8XdquKfZFZqW1TtFiWw6klyVviJ395rc8ifokGma
	 WbR/2hGw0+yowaxddFwvYwokfFrqY7V59659EaaHkQNO85ap/S+jI/3W2lHml2w8P6
	 tCVf/m+ZpcOKbm4plSyiLyFcks7j/VY1BU7oEnPt7T+HVenrgp5b+gkbqJJrGtUB6u
	 YwPvk539p/XSwOzfbMZc9iLnce9jONEljnfOyuSxbgafjGs1pWp1lmdhYhZg2vQ1v4
	 skdSlVAmRg0Yft1nFsDdJCLxVXtF8HCcFlWMkwyoMlvCTNGn1XxbyGmknKzxp+7322
	 pGIqzJGy7WFXA==
Date: Sun, 18 Aug 2024 10:04:24 -0600
From: Rob Herring <robh@kernel.org>
To: Christian Bruel <christian.bruel@foss.st.com>
Cc: vkoul@kernel.org, kishon@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	fabrice.gasnier@foss.st.com
Subject: Re: [PATCH v2 2/5] dt-bindings: phy: Add STM32MP25 COMBOPHY bindings
Message-ID: <20240818160424.GA156214-robh@kernel.org>
References: <20240816132058.920870-1-christian.bruel@foss.st.com>
 <20240816132058.920870-3-christian.bruel@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240816132058.920870-3-christian.bruel@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_090429_345076_1BFB4410 
X-CRM114-Status: GOOD (  21.84  )
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

On Fri, Aug 16, 2024 at 03:20:54PM +0200, Christian Bruel wrote:
> Document the bindings for STM32 COMBOPHY interface, used to support
> the PCIe and USB3 stm32mp25 drivers.
> Following entries can be used to tune caracterisation parameters
>  - st,output-micro-ohms and st,output-vswing-microvolt bindings entries
> to tune the impedance and voltage swing using discrete simulation results
>  - st,rx-equalizer register to set the internal rx equalizer filter value.
> 
> Signed-off-by: Christian Bruel <christian.bruel@foss.st.com>
> ---
>  .../bindings/phy/st,stm32-combophy.yaml       | 144 ++++++++++++++++++
>  1 file changed, 144 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml b/Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml
> new file mode 100644
> index 000000000000..c33a843b83a3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml
> @@ -0,0 +1,144 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/st,stm32-combophy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32MP25 USB3/PCIe COMBOPHY
> +
> +maintainers:
> +  - Christian Bruel <christian.bruel@foss.st.com>
> +
> +description:
> +  Single lane PHY shared (exclusive) between the USB3 and PCIe controllers.
> +  Supports 5Gbit/s for USB3 and PCIe gen2 or 2.5Gbit/s for PCIe gen1.
> +
> +properties:
> +  compatible:
> +    const: st,stm32mp25-combophy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 1
> +    description: |
> +      The cells contain the following arguments.
> +
> +      - description: The PHY type
> +          enum:
> +            - PHY_TYPE_USB3
> +            - PHY_TYPE_PCIE
> +
> +  clocks:
> +    minItems: 2
> +    items:
> +      - description: apb Bus clock mandatory to access registers.
> +      - description: ker Internal RCC reference clock for USB3 or PCIe
> +      - description: pad Optional on board clock input for PCIe only. Typically an
> +                     external 100Mhz oscillator wired on dedicated CLKIN pad. Used as reference
> +                     clock input instead of the ker
> +
> +  clock-names:
> +    minItems: 2
> +    items:
> +      - const: apb
> +      - const: ker
> +      - const: pad
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: phy
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  wakeup-source: true
> +
> +  interrupts:
> +    maxItems: 1
> +    description: interrupt used for wakeup
> +
> +  access-controllers:
> +    minItems: 1
> +    maxItems: 2
> +
> +  st,syscfg:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: Phandle to the SYSCON entry required for configuring PCIe
> +      or USB3.
> +
> +  st,ssc-on:
> +    type: boolean
> +    description:
> +      A boolean property whose presence indicates that the SSC for common clock
> +      needs to be set.
> +
> +  st,rx-equalizer:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 7
> +    default: 2
> +    description:
> +      A 3 bit value to tune the RX fixed equalizer setting for optimal eye compliance
> +
> +  st,output-micro-ohms:
> +    minimum: 3999000
> +    maximum: 6090000
> +    default: 4968000
> +    description:
> +      A value property to tune the Single Ended Output Impedance, simulations results
> +      at 25C for a VDDP=0.8V. The hardware accepts discrete values in this range.
> +
> +  st,output-vswing-microvolt:
> +    minimum: 442000
> +    maximum: 803000
> +    default: 803000
> +    description:
> +      A value property in microvolt to tune the Single Ended Output Voltage Swing to change the
> +      Vlo, Vhi for a VDDP = 0.8V. The hardware accepts discrete values in this range.
> +
> +required:
> +  - compatible
> +  - reg
> +  - st,syscfg
> +  - '#phy-cells'
> +  - resets
> +  - reset-names
> +  - clocks
> +  - clock-names
> +
> +allOf:
> +  - if:
> +      required:
> +        - wakeup-source
> +    then:
> +      anyOf:
> +        - required: [interrupts]
> +        - required: [interrupts-extended]

Drop this if/then. We should have this somewhere common as it applies to 
all.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
