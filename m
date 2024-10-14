Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 577B5CFC501
	for <linux-phy@archiver.kernel.org>; Mon, 14 Oct 2024 07:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fr8cr+pzGoQLsQjLEKl1zVnfYlNiqgBIOvknEe+geUA=; b=jvZPj5jGC4IW2G
	bNSv4GWPRHr8bv4yIaV7N8Vq02ApFdb/4vjnpfnXL/RhrU6TMm2dfjT8hg5H2rRYV7BZAerKopn8W
	D+fW3y76/Eqn6bNn1x9f32njrtEzjYr6azD+tJPU5G3h5D1P7/qBepZYJ/SMhfPqB1+hte0DbrLxE
	YPEvYtn/wti9b0jUL5E9+2gl3zbVUverleFW0+kUf9M7/v5TABuw1oLswl0xhbvd+HTBZgi4DfeI3
	Z7DMsn4KK8oQ6J4UohgRxNhCZ0p9NZPpVOND9ab8QWrGw+1jz8GiyveilwcRuv3uB+BXl7QLN7BLV
	TIZiz4Rfq+9uZaWUZcPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0FLQ-000000041qq-0AqE;
	Mon, 14 Oct 2024 07:18:20 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0FLM-000000041p3-35Mf
	for linux-phy@lists.infradead.org;
	Mon, 14 Oct 2024 07:18:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 15DAEA4139B;
	Mon, 14 Oct 2024 07:18:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8807EC4CEC3;
	Mon, 14 Oct 2024 07:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728890295;
	bh=S1utHm/xnR4E60uk3XBCaXk9y0n3j7/N34HZYkGL7vo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RFaLrK5qrJ/MeNuLMqikMSYb+aMVUNZoDzWDnBTmGvaHqz0PMeYE4xkicaz2OQwdd
	 NWglYcrQlQbsmVA4LFcvKC2eWljEgLjA9fWOGXG4qlzIVrZxwQbpULnKLjrfVuMM67
	 0SZS8ZpeAJt/aFD5WeurNUX1OYZbhOD7a1Xed2lDgbp1HWNWq6qMRgI0Cyqeodee7J
	 XtjlXcV/+lD6q6iraGmH/j/IMAd/abBesH34K6nBVZA/U2um7jwd/so1Y+z0CXcvdM
	 iSwTMdgyQ2sEBw9h0wBVD+IxYY43L+Z6MLmAamsgT8x1tMpRCE5MLHzukFAaf2QmSs
	 uGWC8sSytaW1A==
Date: Mon, 14 Oct 2024 09:18:11 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, chris.packham@alliedtelesis.co.nz
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
Message-ID: <sck3hvr6vtdsnseyzdoxdwasd47c7m5yzavpyodc7rj3cwbu26@kqxistduok3u>
References: <20241012134834.1306992-1-markus.stockhausen@gmx.de>
 <20241012134834.1306992-2-markus.stockhausen@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241012134834.1306992-2-markus.stockhausen@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_001816_978004_79F35722 
X-CRM114-Status: GOOD (  24.18  )
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

On Sat, Oct 12, 2024 at 09:48:33AM -0400, Markus Stockhausen wrote:
> Add bindings for the SerDes of the Realtek Otto platform. These are
> MIPS based network Switch SoCs with up to 52 ports divided into four
> different model lines.
> 
> Changes in v3
> 

<form letter>
This is a friendly reminder during the review process.

It seems my or other reviewer's previous comments were not fully
addressed. Maybe the feedback got lost between the quotes, maybe you
just forgot to apply it. Please go back to the previous discussion and
either implement all requested changes or keep discussing them.

Thank you.
</form letter>

>  - renamed to realtek,rtl8380m-serdes.yaml
>  - removed parameter controlled-ports
>  - verified with make dt_binding_check
>  - recipient list according to get_maintainers
> 
> Changes in v2:
> 
>  - new subject
>  - removed patch command sequences
>  - renamed parameter controlled-ports to realtek,controlled-ports
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---
>  .../bindings/phy/realtek,rtl8380m-serdes.yaml | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
> new file mode 100644
> index 000000000000..c1deef8ec63c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/realtek,rtl8380m-serdes.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek Otto SerDes controller
> +
> +maintainers:
> +  - Markus Stockhausen <markus.stockhausen@gmx.de>
> +
> +description:
> +  The MIPS based Realtek Switch SoCs of the Realtek RTL838x, RTL839x, RTL930x
> +  and RTL931x series have multiple SerDes built in. They are linked to single,
> +  quad or octa PHYs like the RTL8218B, RTL8218D or RTL8214FC and are one of
> +  the integral part of the up-to-52-port switch architecture. Although these
> +  SerDes controllers have common basics they are designed differently in the
> +  SoC families.
> +
> +properties:
> +  $nodename:
> +    pattern: "^phy@[0-9a-f]+$"
> +
> +  compatible:
> +    items:
> +      - enum:
> +          - realtek,rtl8380m-serdes
> +          - realtek,rtl8392m-serdes
> +          - realtek,rtl9302b-serdes
> +          - realtek,rtl9311-serdes
> +
> +  reg:
> +    items:
> +      description:
> +        The primary register memory location. On RTL83xx devices this is the
> +        address to the I/O register range, on RTL93xx devices this is the
> +        address of the MDIO style command/data registers.

Not much improved, still missing constraints.

I don't understand why you introduce changes like this.


> +
> +  "#phy-cells":
> +    const: 4
> +    description:
> +      The first number defines the SerDes to use. The second number a linked
> +      SerDes. E.g. if a octa 1G PHY is attached to two QSGMII SerDes. The third
> +      number is the first switch port this SerDes is working for, the fourth
> +      number is the last switch port the SerDes is working for.
> +
> +  firmware-name:
> +    maxItems: 1
> +    description:
> +      An alternative name of the SerDes firmware image file located in the
> +      firmware search path. Set to "" to disable firmware loading.

Missing property, not empty string, should rather indicate unneeded
firmware.

> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    serdes: phy@1b00e780 {
> +      compatible = "realtek,rtl9302b-serdes";
> +      reg = <0x1b0003b0 0x8>;

This does notmatch unit address... and again: this was not an issue in
previous version. Your new versions of patchset introduce errors and
bugs. This is not how the process should look like. Review should
improve the patch, not reduce its quality.

Please start carefully reviewing your changes *before* you post.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
