Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D538E77180
	for <linux-phy@archiver.kernel.org>; Tue, 10 Dec 2024 18:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+yyB0cHrw+88SwxoD7KS3wvrEI/puLCHUbDFe3LGs4g=; b=qjVrCewXv0v2w+
	dXrRhzBkrixmdOpU7m3hODoqJ2fj3MSWZZRM1pQQh0r7Jux+wZ+Z35LWq9NaC/yAQj5G+936vPPJj
	DsJArytO+nDjSJAUqK2azwSmIt0RPS19ukQ/y+W1p19uedOO8U+Sp4OjmMzUFdmPpcFC/Kb0hEdd/
	sWXfFhV9Vx+BeRTum8JlWuUZqFMK8Wav9bbuzTbGI36yM+paYSLcWV1rmsDWUwUQUqUM8Or3zPItT
	76YfQXSyPENZly9lTtU3ujswJRwbfpjdh8M0J3c6RsK4TDhppUA/pxXMdOImfPDaLAEA83OViShvq
	ReR9wyYAqbIrmSzpQwPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL5Ex-0000000CRVx-1PmB;
	Tue, 10 Dec 2024 18:45:47 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL5Ev-0000000CRVC-3EmG
	for linux-phy@lists.infradead.org;
	Tue, 10 Dec 2024 18:45:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A9C3FA41966;
	Tue, 10 Dec 2024 18:43:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C80DC4CED6;
	Tue, 10 Dec 2024 18:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733856344;
	bh=OB5DgYuePvYBlbGv8W3gJQ1FsMSp+KmUVfAIg9wjr8M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l6S36KueRi870kpf9AOxkZRG7YV24Ph05U8fJBCcU1qmYjUe5Wo6ro9oCAH96EK8P
	 u2q9VKDFig43EadBkj4bumesqcumc2XBav6oTqS3cV7Bh31aH11kLtx371WtwSOnlg
	 C4Vki6vtERNHDxJMdeLSYv8VcYX8a46hJNWX6IMBanfcqd8RYSIwa2ef9y62fBlkO/
	 ECYwMhopKBWsnOVkPZ/jBgwmeMEuhdisurdadEno6NpuMnD+6YxsqBPXpKPwzyt2y6
	 2ifO4nGrYvCGaqEaIuFaikHl94gZpT0rJFniFm1orY7KeGSQmzV0d0yFgauSnybni+
	 7y+EAR299GbKQ==
Date: Tue, 10 Dec 2024 12:45:42 -0600
From: Rob Herring <robh@kernel.org>
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, p.zabel@pengutronix.de,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	gregkh@linuxfoundation.org, yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH v2 01/15] dt-bindings: soc: renesas: renesas,rzg2l-sysc:
 Add #renesas,sysc-signal-cells
Message-ID: <20241210184542.GA4077820-robh@kernel.org>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
 <20241126092050.1825607-2-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241126092050.1825607-2-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_104545_937609_D74F57CF 
X-CRM114-Status: GOOD (  27.59  )
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

On Tue, Nov 26, 2024 at 11:20:36AM +0200, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> The RZ/G3S system controller (SYSC) has registers to control signals that
> are routed to various IPs. These signals must be controlled during
> configuration of the respective IPs. One such signal is the USB PWRRDY,
> which connects the SYSC and the USB PHY. This signal must to be controlled
> before and after the power to the USB PHY is turned off/on.
> 
> Other similar signals include the following (according to the RZ/G3S
> hardware manual):
> 
> * PCIe:
> - ALLOW_ENTER_L1 signal controlled through the SYS_PCIE_CFG register
> - PCIE_RST_RSM_B signal controlled through the SYS_PCIE_RST_RSM_B
>   register
> - MODE_RXTERMINATION signal controlled through SYS_PCIE_PHY register
> 
> * SPI:
> - SEL_SPI_OCTA signal controlled through SYS_IPCONT_SEL_SPI_OCTA
>   register
> 
> * I2C/I3C:
> - af_bypass I2C signals controlled through SYS_I2Cx_CFG registers
>   (x=0..3)
> - af_bypass I3C signal controlled through SYS_I3C_CFG register
> 
> * Ethernet:
> - FEC_GIGA_ENABLE Ethernet signals controlled through SYS_GETHx_CFG
>   registers (x=0..1)
> 
> Add #renesas,sysc-signal-cells DT property to allow different SYSC signals
> consumers to manage these signals.
> 
> The goal is to enable consumers to specify the required access data for
> these signals (through device tree) and let their respective drivers
> control these signals via the syscon regmap provided by the system
> controller driver. For example, the USB PHY will describe this relation
> using the following DT property:
> 
> usb2_phy1: usb-phy@11e30200 {
> 	// ...
> 	renesas,sysc-signal = <&sysc 0xd70 0x1>;
> 	// ...
> };
> 
> Along with it, add the syscon to the compatible list as it will be
> requested by the consumer drivers. The syscon was added to the rest of
> system controller variants as these are similar with RZ/G3S and can
> benefit from the implementation proposed in this series.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
> 
> Changes in v2:
> - none; this patch is new
> 
> 
>  .../soc/renesas/renesas,rzg2l-sysc.yaml       | 23 ++++++++++++++-----
>  1 file changed, 17 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
> index 4386b2c3fa4d..90f827e8de3e 100644
> --- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
> @@ -19,11 +19,13 @@ description:
>  
>  properties:
>    compatible:
> -    enum:
> -      - renesas,r9a07g043-sysc # RZ/G2UL and RZ/Five
> -      - renesas,r9a07g044-sysc # RZ/G2{L,LC}
> -      - renesas,r9a07g054-sysc # RZ/V2L
> -      - renesas,r9a08g045-sysc # RZ/G3S
> +    items:
> +      - enum:
> +          - renesas,r9a07g043-sysc # RZ/G2UL and RZ/Five
> +          - renesas,r9a07g044-sysc # RZ/G2{L,LC}
> +          - renesas,r9a07g054-sysc # RZ/V2L
> +          - renesas,r9a08g045-sysc # RZ/G3S
> +      - const: syscon
>  
>    reg:
>      maxItems: 1
> @@ -42,9 +44,17 @@ properties:
>        - const: cm33stbyr_int
>        - const: ca55_deny
>  
> +  "#renesas,sysc-signal-cells":
> +    description:
> +      The number of cells needed to configure a SYSC controlled signal. First
> +      cell specifies the SYSC offset of the configuration register, second cell
> +      specifies the bitmask in register.
> +    const: 2

If there's only one possible value, then just fix the size in the users. 
We don't need #foo-cells until things are really generic. Plus patch 
8 already ignores this based on the schema. And there's implications to 
defining them. For example, the pattern is that the consumer property 
name is renesas,sysc-signals, not renesas,sysc-signal.

Maybe someone wants to create a 'h/w (signal) control' subsystem (and 
binding) that is just 'read, assert, or deassert a h/w signal'. Perhaps 
even the reset subsystem could be morphed into that as I think there 
would be a lot of overlap. Maybe that would cut down on a lot of these 
syscon phandle properties. I would find that a lot more acceptable than 
the generic 'syscons' and '#syscon-cells' binding that was proposed at 
some point.


> +
>  required:
>    - compatible
>    - reg
> +  - "#renesas,sysc-signal-cells"

New required properties are an ABI break.

>  
>  additionalProperties: false
>  
> @@ -53,7 +63,7 @@ examples:
>      #include <dt-bindings/interrupt-controller/arm-gic.h>
>  
>      sysc: system-controller@11020000 {
> -            compatible = "renesas,r9a07g044-sysc";
> +            compatible = "renesas,r9a07g044-sysc", "syscon";

What happens on a new kernel and a DT without this change?

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
