Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35A0CCD6E55
	for <linux-phy@archiver.kernel.org>; Mon,  1 Jun 2026 22:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/y1c1nu+2SGE3bpikD/6dGwlxIXMDJ/3keaNltn4pPg=; b=mDp86/8qOAJCnZ
	0aG+44jsP5WEVVyxxVHmMsRMuf2XmXFZshHPxe35Lg+kZ9U3U+HuQtSdtYa52J9VkizY9QeExq2nq
	sHL6uP9tYSAmS/DYomvz7C+vY+jnfaQKwvi6s6bp2umm5ThVCWo3uSg16JvEnzWM+8TVkMDTDu2/C
	h8Nl1BCqbVxKL9cIL48epqmHDI4I7jPlL6+m7QMKn1ozN7GdanViG6kXZHlfWrEumo9w/c7kgGHyG
	uX/PhMt47GnxeOKMFQoxYHyDAePjncfDNH7DEjTXc0IGjzsZ8jWedyU4N4MucZQXg7aRVGR7gwI85
	uVkBzUMOLQSmzAxiN+gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUBaD-0000000C1rK-3KNf;
	Mon, 01 Jun 2026 22:58:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUBaB-0000000C1qz-1pob
	for linux-phy@lists.infradead.org;
	Mon, 01 Jun 2026 22:58:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A9F1143401;
	Mon,  1 Jun 2026 22:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 571081F00893;
	Mon,  1 Jun 2026 22:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780354686;
	bh=MzlIrZ2xitOElGGvcFl7v9dFMNgCf3mriv86YlPvr/U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PsSONfve6OOJYc+tFMyWBx8YeL/z8+OtDwdrC2ic3L9RzBOfRQJYP5R2EU7cQkTvU
	 hcTSdNRgJWGay4ighXmn52Jv3RUOnifIMCvXDROjbR3eHmnCQpTDcuurLP3ARPN1Ft
	 p4jPWvakR1AVlNhZ1IkZyg/wj1JPf9Xe23A5piS8pgg5bQXeIyVH+Q7IOY6os+aw/y
	 I8MTU0bKrUXu+xGf3NiSSanr0vfgnWcGxOqAukOqpGDmquKLvXk35EBRZY85xcBJnV
	 teMxLYCmGKhC/uoA2j7M9TGW8xaXRMSCqtaX/YCWIyZqYvpvSG6jUBj9kwuZPKnH/i
	 tR14u2DAzwWCA==
Date: Mon, 1 Jun 2026 17:58:05 -0500
From: Rob Herring <robh@kernel.org>
To: Caleb James DeLisle <cjd@cjdns.fr>
Cc: linux-mips@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: econet: Document EN751221 USB PHY
Message-ID: <20260601225805.GA129257-robh@kernel.org>
References: <20260518141343.401555-1-cjd@cjdns.fr>
 <20260518141343.401555-2-cjd@cjdns.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260518141343.401555-2-cjd@cjdns.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_155807_542014_416B8E00 
X-CRM114-Status: GOOD (  19.18  )
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

On Mon, May 18, 2026 at 02:13:42PM +0000, Caleb James DeLisle wrote:
> Document the USB PHY devices which appear in EcoNet EN751221, EN751627,
> and EN7528 based SoCs.
> 
> Signed-off-by: Caleb James DeLisle <cjd@cjdns.fr>
> ---
>  .../bindings/phy/econet,en751221-usb-phy.yaml | 128 ++++++++++++++++++
>  MAINTAINERS                                   |   6 +
>  2 files changed, 134 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/econet,en751221-usb-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/econet,en751221-usb-phy.yaml b/Documentation/devicetree/bindings/phy/econet,en751221-usb-phy.yaml
> new file mode 100644
> index 000000000000..a44f59601747
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/econet,en751221-usb-phy.yaml
> @@ -0,0 +1,128 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +# Copyright (C) 2024 EcoNet
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/econet,en751221-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: EcoNet EN751221 USB PHY
> +
> +maintainers:
> +  - Caleb James DeLisle <cjd@cjdns.fr>
> +
> +description: |

Don't need '|' unless there is formatting to preserve.

> +  USB PHY controller found on EcoNet EN751221 SoCs as well as on EN751627 and
> +  EN7528. These devices generally have two ports, one of which is a USB 3.0,
> +  and the other is USB 2.0. The USB 3.0 port is driven by one of two PHY
> +  blocks, depending on whether the connected device has negotiated USB 3.0 or
> +  2.0. These PHYs are also used on other EcoNet silicon in varying
> +  configurations, such as only port 0 (the USB 3.0 port), or only port 1 (the
> +  USB 2.0 port).
> +
> +properties:
> +  compatible:
> +    enum:
> +      - econet,en751221-usb-phy
> +      - econet,en751627-usb-phy
> +      - econet,en7528-usb-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#address-cells": true
> +  "#size-cells": true
> +  ranges: true
> +
> +  clocks:
> +    maxItems: 1
> +    description: |
> +      Crystal oscillator clock source. EcoNet devices run at either 20Mhz or
> +      25Mhz. 25Mhz devices require additional tuning in the USB 3.0 PHY.
> +
> +  clock-names:
> +    items:
> +      - const: xtal
> +
> +patternProperties:
> +  "^usb-phy@[0-9a-f]+$":
> +    type: object
> +    description: USB 2.0 or 3.0 PHY sub-node.
> +
> +    properties:
> +      compatible:
> +        enum:
> +          - econet,usb2-phy
> +          - econet,usb3-phy
> +
> +      reg:
> +        maxItems: 1
> +
> +      resets:
> +        maxItems: 1
> +
> +      econet,usb-port-id:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        enum: [0, 1]
> +        description: |
> +          Physical port number. Since USB 3.0 requires a second PHY for the 2.0
> +          fallback, multiple PHYs can map to the same physical port.

What is special about this platform needing this property. Lots of 
platforms have 2 phys for USB 2.0 and 3.0 yet don't need a property 
like this. Can't you figure out which phys are the same USB port by the 
USB controller 'phys' property which would define that?

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
