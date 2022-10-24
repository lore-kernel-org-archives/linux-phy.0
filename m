Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F35AFA373E
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 14:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2aHoyem8pUwwmZ3HmcYVObsXEPvVDC6B2IGMliJlFWI=; b=aUVzRJrwspMvdH
	WVrt6RWiiLfw2J2Eblxs6P7D+Umnv1Z8Cwnzm8wlEteywC5msTyaUS5fhx+mwPsUrzhP4TeOzVYbB
	YHnJo6aVdQ5mQA+8JPaqB46WK7w7QflGbyRCFanzeEBQfHDtYGgplk7rS4B2kVoWjl/AQajeQ+N7y
	U7B0+JOPxjDAsFul96n2NOPo8a7+l/wfnAYjGFUm+JAl6AaEA5NF2xsXSyfEN0F8Hp9t0ZzZggukk
	CqdDJ2IM03XQPEMOTdhFPpfN4jxcxFAV3cWh1bDwCOuaHMN8XV0q9C40z7yOG72e25BIQ5tr/2ccQ
	r4+9jNBdjS3Nc3hVsojg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omyGY-001sX2-VI; Mon, 24 Oct 2022 14:17:22 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omyGK-001sSC-94; Mon, 24 Oct 2022 14:17:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 401551477;
	Mon, 24 Oct 2022 07:17:12 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 243153F792;
	Mon, 24 Oct 2022 07:17:04 -0700 (PDT)
Date: Mon, 24 Oct 2022 15:17:01 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, soc@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, Rob Herring
 <robh@kernel.org>
Subject: Re: [PATCH v2 02/10] dt-bindings: phy: add binding document for
 Allwinner F1C100s USB PHY
Message-ID: <20221024151701.3dff5794@donnerap.cambridge.arm.com>
In-Reply-To: <20221012055602.1544944-3-uwu@icenowy.me>
References: <20221012055602.1544944-1-uwu@icenowy.me>
	<20221012055602.1544944-3-uwu@icenowy.me>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_071708_443894_4371CBDE 
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

On Wed, 12 Oct 2022 13:55:54 +0800
Icenowy Zheng <uwu@icenowy.me> wrote:

> Allwinner F1C100s has the most simple USB PHY among all Allwinner SoCs,
> because it has only one OTG USB controller, no host-only OHCI/EHCI
> controllers.
> 
> Add a binding document for it. Following the current situation of one
> YAML file per SoC, this one is based on
> allwinner,sun8i-v3s-usb-phy.yaml, but with OHCI/EHCI-related bits
> removed. (The same driver in Linux, phy-sun4i-usb, covers all these
> binding files now.)
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> Changes in v2:
> - Clarify the relation with other phy-sun4i-usb bindings.
> - Added Rob's ACK.
> 
>  .../phy/allwinner,suniv-f1c100s-usb-phy.yaml  | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml
> new file mode 100644
> index 000000000000..22ff8e0f2331
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/allwinner,suniv-f1c100s-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner F1C100s USB PHY Device Tree Bindings

I see that commit dd3cb467ebb56 [1] discourages the redundant "Device Tree
Bindings" suffix in the title name, so I think you should remove that.

The rest looks alright to me, compared against the manual and what the
driver expects, so with that fixed:

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=dd3cb467ebb56

> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <mripard@kernel.org>
> +
> +properties:
> +  "#phy-cells":
> +    const: 1
> +
> +  compatible:
> +    const: allwinner,suniv-f1c100s-usb-phy
> +
> +  reg:
> +    maxItems: 1
> +    description: PHY Control registers
> +
> +  reg-names:
> +    const: phy_ctrl
> +
> +  clocks:
> +    maxItems: 1
> +    description: USB OTG PHY bus clock
> +
> +  clock-names:
> +    const: usb0_phy
> +
> +  resets:
> +    maxItems: 1
> +    description: USB OTG reset
> +
> +  reset-names:
> +    const: usb0_reset
> +
> +  usb0_id_det-gpios:
> +    maxItems: 1
> +    description: GPIO to the USB OTG ID pin
> +
> +  usb0_vbus_det-gpios:
> +    maxItems: 1
> +    description: GPIO to the USB OTG VBUS detect pin
> +
> +  usb0_vbus_power-supply:
> +    description: Power supply to detect the USB OTG VBUS
> +
> +  usb0_vbus-supply:
> +    description: Regulator controlling USB OTG VBUS
> +
> +required:
> +  - "#phy-cells"
> +  - compatible
> +  - clocks
> +  - clock-names
> +  - reg
> +  - reg-names
> +  - resets
> +  - reset-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/clock/suniv-ccu-f1c100s.h>
> +    #include <dt-bindings/reset/suniv-ccu-f1c100s.h>
> +
> +    phy@1c13400 {
> +        compatible = "allwinner,suniv-f1c100s-usb-phy";
> +        reg = <0x01c13400 0x10>;
> +        reg-names = "phy_ctrl";
> +        clocks = <&ccu CLK_USB_PHY0>;
> +        clock-names = "usb0_phy";
> +        resets = <&ccu RST_USB_PHY0>;
> +        reset-names = "usb0_reset";
> +        #phy-cells = <1>;
> +        usb0_id_det-gpios = <&pio 4 2 GPIO_ACTIVE_HIGH>;
> +    };


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
