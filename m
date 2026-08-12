Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8549BC5AC67
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 02:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UTj3dtgxAVrJKBzHEaOiWojRB5ZqFyAg7GgiFE0Ah/0=; b=EHC3bonKzHsxBY
	nWbZW8IwGDX2RRuppHT5bl0Fk/uRRYSzZHyrnRIrdjPnPS+8v2+x1WR93WqzyIXlSF6d+sR4Gbny/
	kr4dQP9JeRzAARehzq5qrnFmHyM9JqPOuADYUfIDX4XJpvFkXlFd3iwaM9tmrWSSMl9aM+iPE41WH
	S/3CnVjNi4877rNfHdNlsDk8YJLLtSzgfWwflSSK54uDN7Ku61IDP8nUrgny7btpuCtm33UxYIKCL
	wbwE2VKFbP7OpxwuCXARDrfhVWfVs826PXERPcvuq/61GQ5fZUuq3JMFwMpfqaSJGHFacYLVtg6AY
	PA6komsCCYpusoRYekyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtya5-0000000FGSD-0Bqd;
	Wed, 12 Aug 2026 02:20:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtya1-0000000FGRm-1pBZ
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 02:20:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D1F3F41525;
	Wed, 12 Aug 2026 02:20:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FB891F000E9;
	Wed, 12 Aug 2026 02:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786501232;
	bh=W6K7AJPCj2c8QjILmtFakdTykNFHwT3Mct84yCpHZ74=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=lGAEoycATjOLptjfutdd6e0dG4ZVQUff1fb2W1ZaHJk5UAB3I1ZRWYsbf/P7wTXXN
	 6+EELHLBgttgQk1nH+18nWb78+0E5UUYfp8reqYE6eq+almfv2Q8lNASjK8klvTsIo
	 8UhpTwI2tTvAB+bP23bUvHbos3VICqni9QnERQQIvZwigJoTHaED0ta1l5IAFMsiG4
	 wNguwo/K8/Gc3Y3js7UpqTQZc/mruSlSfDXFU238y2I0699OKwu5wTJSqpUorm8vgZ
	 SoTYXZSOF2M6z4BwZecTpUG1V3emuz7vVyC3jDsCy1RwkuoeaOvLZbxRKpViKYXJkL
	 bDdEGoRBpYp8w==
Date: Tue, 11 Aug 2026 21:20:31 -0500
From: Rob Herring <robh@kernel.org>
To: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, vkoul@kernel.org,
	neil.armstrong@linaro.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	johan@kernel.org, rogerq@ti.com, Julian.FRIEDRICH@frequentis.com,
	upstream+omap@sigma-star.at
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: ti,phy-usb3: Add aspcie
 reference clock setting
Message-ID: <20260812022031.GA554483-robh@kernel.org>
References: <20260806091112.164695-1-david.oberhollenzer@sigma-star.at>
 <20260806091112.164695-2-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260806091112.164695-2-david.oberhollenzer@sigma-star.at>
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

On Thu, Aug 06, 2026 at 11:11:11AM +0200, David Oberhollenzer wrote:
> The PHY control logic in the OMAP PCIe PHY subsystem has a
> configurable reference clock selection. It can either use
> the ljcb_clkp/ljcb_clkn pin as inputs, recovering the clock
> from the bus (RX mode), or generate the reference clock
> internally, driving the bus pins as outputs (TX mode).
> 
> The setting is exposed through a register in a system controller.
> A device tree property is added to specify the syscon node,
> register offset and mode value.
> 
> Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
> ---
>  .../devicetree/bindings/phy/ti,phy-usb3.yaml  | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
> index 84f538aa587c..11787b042345 100644
> --- a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
> @@ -52,6 +52,20 @@ properties:
>        enum: [wkupclk, sysclk, refclk, dpll_ref,
>               dpll_ref_m2, phy-div, div-clk]
>  
> +  ti,syscon-acspcie-tx-rx:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description: |

Don't need '|' unless there is formatting to preserve.

> +      Syscon register and setting to configure the clock buffer to run
> +      in RX mode (clock pins are inputs, the clock is recovered from
> +      the bus), or in TX mode (pins are outputs, internal reference
> +      clock drives the bus).

Wrap lines at 80 chars.

> +    maxItems: 1
> +    items:
> +      items:
> +        - description: Phandle to the system control module
> +        - description: Register offset of CTRL_CORE_SMA_SW_6
> +        - description: Setting for PCIE_TX_RX_CONTROL
> +
>    syscon-phy-power:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
>      maxItems: 1
> @@ -94,6 +107,17 @@ allOf:
>      else:
>        properties:
>          syscon-pllreset: false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: ti,phy-pipe3-pcie
> +    then:
> +      properties:
> +        ti,syscon-acspcie-tx-rx: true

This has no effect. Invert the if and move the else here.

> +    else:
> +      properties:
> +        ti,syscon-acspcie-tx-rx: false
>  
>  required:
>    - reg
> @@ -135,4 +159,19 @@ examples:
>          syscon-pllreset = <&scm_conf 0x3fc>;
>          #phy-cells = <0>;
>      };
> +
> +  - |
> +    /* TI PIPE3 PCIE PHY */
> +    pcie-phy@4a0a4000 {
> +        compatible = "ti,phy-pipe3-pcie";
> +        reg = <0x4a0a4000 0x80>,  /* phy_rx */
> +              <0x4a0a4400 0x64>;  /* phy_tx */
> +        reg-names = "phy_rx", "phy_tx";
> +        clocks = <&dpll_pcie_ref_ck>, <&dpll_pcie_ref_m2ldo_ck>;
> +        clock-names = "dpll_ref", "dpll_ref_m2";
> +        #phy-cells = <0>;
> +        syscon-phy-power = <&scm_conf_pcie 0x1c>;
> +        syscon-pcs = <&scm_conf_pcie 0x10>;
> +        ti,syscon-acspcie-tx-rx = <&scm_conf1 0x10 0x2>;
> +    };
>  ...
> -- 
> 2.55.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
