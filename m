Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 038C6C25B10
	for <linux-phy@archiver.kernel.org>; Fri, 10 May 2024 15:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vnrFmgc1014fsKX6As4RCTbt6xJYU+ys6H9cZ+j/ILo=; b=XuI04FiRuxuCGm
	MBF4XaubUBA/U3CDhlDeuBRKKC0RQdgLi1PT8/osLEeYqyZ5riabheujIId4w+XdgdG82psp2wZ/x
	nq2gVMyd02J6/YkFirDT4C6qix1Ulv4VS8be3U1Kk76QkF7elSa58YplQgdhQxMVi8FdQOO8zpSAz
	e2XRi+1W070Ya9inmAqmmwzi1i0PlhWCgXumCP+FwCGZm85Fe76m5iPu5+eDCJAMa/QVS2Z2tCpWv
	79hgtEXEAnNI2o8XQjJIPPfEQrJLQowSt65A7suwjjQqQG5C3YRKxcZPgHfM4v/8Pyqkvy2oJ40mc
	8vEVt0UKWaivAdzoOazA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5SKx-00000005kJT-2bkv;
	Fri, 10 May 2024 15:39:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5SKs-00000005kFn-3d51;
	Fri, 10 May 2024 15:39:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 17B3661E59;
	Fri, 10 May 2024 15:38:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81117C113CC;
	Fri, 10 May 2024 15:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715355531;
	bh=5i/Kwz7QCD09ox7fq0+nK+iuNVgav4u7fr/M1k9fkGQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s4m+dHD8MracwXhQxc+HGvMM7x1N6E+yIVYj0BVRNfpR4cYP8M2xhklBBxbbTOam+
	 o1s1UzSaLNLahxTkZo3hGkAw/9i5mz4OE1qRquZm1qsFeIcdIAswRHAF/oKVTy1U/s
	 7xOhUSBjoOsn1zmsLJXq1/sK6yj29qTMzs71rBixyPYwB02YqA0aOsHREhwwjpuThP
	 DnSAxMb59p3CCP5XT8z2GtK8xQotVUCqE4Zx+53dizwzQzrjqX5L3NI9vDjz5haYNn
	 36Atqs8xCY1wAoZBYSgLWCJ7ZppgmbycjLkcmfBrk5t5H16ktF5b1yUaFa8nO/Nj3J
	 0j2p6WNko87ZA==
Date: Fri, 10 May 2024 10:38:49 -0500
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: conor@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, frank.li@nxp.com,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de,
	imx@lists.linux.dev
Subject: Re: [PATCH v4 2/3] dt-bindings: phy: Add i.MX8Q HSIO SerDes PHY
 binding
Message-ID: <20240510153849.GA308062-robh@kernel.org>
References: <1715234181-672-1-git-send-email-hongxing.zhu@nxp.com>
 <1715234181-672-3-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1715234181-672-3-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240510_083903_032970_98FA4833 
X-CRM114-Status: GOOD (  20.87  )
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

On Thu, May 09, 2024 at 01:56:20PM +0800, Richard Zhu wrote:
> Add i.MX8QM and i.MX8QXP HSIO SerDes PHY binding.
> Introduce one HSIO configuration 'fsl,hsio-cfg', which need be set at
> initialization according to board design.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  .../bindings/phy/fsl,imx8qm-hsio.yaml         | 142 ++++++++++++++++++
>  1 file changed, 142 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8qm-hsio.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8qm-hsio.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8qm-hsio.yaml
> new file mode 100644
> index 000000000000..e8648cd9fea6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8qm-hsio.yaml
> @@ -0,0 +1,142 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,imx8qm-hsio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8QM SoC series HSIO SERDES PHY
> +
> +maintainers:
> +  - Richard Zhu <hongxing.zhu@nxp.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8qm-hsio
> +      - fsl,imx8qxp-hsio
> +  reg:
> +    minItems: 4
> +    maxItems: 4

Need to define what is each entry:

items:
  - description: ...
  - description: ...
  - description: ...
  - description: ...


> +
> +  "#phy-cells":
> +    const: 3
> +    description:
> +      The first defines lane index.
> +      The second defines the type of the PHY refer to the include phy.h.
> +      The third defines the controller index, indicated which controller
> +      is bound to the lane.
> +
> +  reg-names:
> +    items:
> +      - const: reg
> +      - const: phy
> +      - const: ctrl
> +      - const: misc
> +
> +  clocks:
> +    minItems: 5
> +    maxItems: 14
> +
> +  clock-names:
> +    minItems: 5
> +    maxItems: 14
> +
> +  fsl,hsio-cfg:
> +    description: Refer macro HSIO_CFG* include/dt-bindings/phy/phy-imx8-pcie.h.

I can't, it's not in this patch. But it should be.

Please say something about what this is for, not just refer to header.

> +    $ref: /schemas/types.yaml#/definitions/uint32

       maximum: 3

> +
> +  fsl,refclk-pad-mode:
> +    description:
> +      Specifies the mode of the refclk pad used. INPUT(PHY refclock is
> +      provided externally via the refclk pad) or OUTPUT(PHY refclock is
> +      derived from SoC internal source and provided on the refclk pad).
> +    $ref: /schemas/types.yaml#/definitions/string
> +    enum: [ "input", "output" ]

default?

Really, this could just be a boolean for the non-default mode.

> +
> +  power-domains:
> +    minItems: 1
> +    maxItems: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +  - fsl,hsio-cfg
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx8qxp-hsio
> +    then:
> +      properties:
> +        clock-names:
> +          items:
> +            - const: pclk0
> +            - const: apb_pclk0
> +            - const: phy0_crr
> +            - const: ctl0_crr
> +            - const: misc_crr
> +        power-domains:
> +          minItems: 1

Should be maxItems? min is already 1.

> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx8qm-hsio
> +    then:
> +      properties:
> +        clock-names:
> +          items:
> +            - const: pclk0
> +            - const: pclk1
> +            - const: apb_pclk0
> +            - const: apb_pclk1
> +            - const: pclk2
> +            - const: epcs_tx
> +            - const: epcs_rx
> +            - const: apb_pclk2
> +            - const: phy0_crr
> +            - const: phy1_crr
> +            - const: ctl0_crr
> +            - const: ctl1_crr
> +            - const: ctl2_crr
> +            - const: misc_crr
> +        power-domains:
> +          minItems: 2
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8-clock.h>
> +    #include <dt-bindings/clock/imx8-lpcg.h>
> +    #include <dt-bindings/firmware/imx/rsrc.h>
> +    #include <dt-bindings/phy/phy-imx8-pcie.h>
> +
> +    hsio_phy@5f1a0000 {

phy@...

> +        compatible = "fsl,imx8qxp-hsio";
> +        reg = <0x5f1a0000 0x10000>,
> +              <0x5f120000 0x10000>,
> +              <0x5f140000 0x10000>,
> +              <0x5f160000 0x10000>;
> +        reg-names = "reg", "phy", "ctrl", "misc";
> +        clocks = <&phyx1_lpcg IMX_LPCG_CLK_0>,
> +                 <&phyx1_lpcg IMX_LPCG_CLK_4>,
> +                 <&phyx1_crr1_lpcg IMX_LPCG_CLK_4>,
> +                 <&pcieb_crr3_lpcg IMX_LPCG_CLK_4>,
> +                 <&misc_crr5_lpcg IMX_LPCG_CLK_4>;
> +        clock-names = "pclk0", "apb_pclk0", "phy0_crr", "ctl0_crr", "misc_crr";
> +        power-domains = <&pd IMX_SC_R_SERDES_1>;
> +        #phy-cells = <3>;
> +        fsl,hsio-cfg = <IMX8Q_HSIO_CFG_PCIEB>;
> +        fsl,refclk-pad-mode = "input";
> +    };
> +...
> -- 
> 2.37.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
