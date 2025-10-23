Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C28CCCD193
	for <linux-phy@archiver.kernel.org>; Thu, 23 Oct 2025 06:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4oEUgG2b4MCS4AlDtN+TuWBk/Sf9xyISJECbXHM6K5o=; b=CZMKIv7K3vTGHk
	mDhjAefQGkcxByvQl2eNvsAZ5wAMB9yZpeffm2YBf0bl+eoVF+3AEg1HV10qJFEEY6QX7b7rNPShH
	WyhV8aK5INwE5jDCRuFHx99RvMqnojN4Tl5Wfl7i69fKL1VbXBa10buUXFBokpqLxSNWi8LMACr8l
	LxXncbLVrGdKl8KXPH2ti1wyqKD9I9qlyoMWby08DoGkSWKthKSNvIWOqhYne9FhNc0/IMkRVJnE/
	wNBowThCXq1DuC693FC6AQZ4PPJeuD/k8u+7bVawSFk93/NaXUqVe7XtxDbyu1z4SM0CquldOrlrd
	AhGlt6JPAnydlDc8iqjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBp3H-00000005Ehn-2paz;
	Thu, 23 Oct 2025 06:43:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBp3E-00000005Eh0-2WcV;
	Thu, 23 Oct 2025 06:43:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D31C548C52;
	Thu, 23 Oct 2025 06:43:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EC70C4CEE7;
	Thu, 23 Oct 2025 06:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761201835;
	bh=wq+PR3JQ5rz4ZSLM4QLGVeX/gN+W7vLpvlbttzeFtxQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UOGZ6THX+KPz+fnPS5IScnjRV0adu4aQoy6YNzJ+hZrkQ7aeE9Ms19UvzFAVImC1E
	 6QlKvIyK47+4zHYNw+rZnANKkid7mEn6aX/h9hIf3MrFgTLAk/MIcfagQD5MyuFijV
	 vSlQyyDsYGYBK0zsR6y4yjEcbe7gpgbWSd2benJxLYFlPAx19knlG7j1f3PXB5oAeu
	 oYKjMgn018VPkjFeAV3D5wAf2RW+LQFZF1dBZ1HMR3KVANuH6n/2BE5B3zFYBilpNq
	 wGlsZXsShmlWcPwcWUF5QHN6WgdJSwBxGCo45QA1rBJtO8h6sqdCvM7lFtzSW8hj5m
	 R+ZAR0vgmbEjA==
Date: Thu, 23 Oct 2025 08:43:53 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Roy Luo <royluo@google.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?utf-8?B?QW5kcsOp?= Draszik <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, 
	Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: google: Add Google Tensor G5
 USB PHY
Message-ID: <20251023-collie-of-impossible-plenty-fc9382@kuoka>
References: <20251017235159.2417576-1-royluo@google.com>
 <20251017235159.2417576-2-royluo@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251017235159.2417576-2-royluo@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_234356_703335_AE4DFCB9 
X-CRM114-Status: GOOD (  18.69  )
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

On Fri, Oct 17, 2025 at 11:51:58PM +0000, Roy Luo wrote:
> Document the device tree bindings for the USB PHY interfaces integrated
> with the DWC3 controller on Google Tensor SoCs, starting with G5
> generation. The USB PHY on Tensor G5 includes two integrated Synopsys
> PHY IPs: the eUSB 2.0 PHY IP and the USB 3.2/DisplayPort combo PHY IP.
> 
> Due to a complete architectural overhaul in the Google Tensor G5, the
> existing Samsung/Exynos USB PHY binding for older generations of Google
> silicons such as gs101 are no longer compatible, necessitating this new
> device tree binding.
> 
> Signed-off-by: Roy Luo <royluo@google.com>
> ---
>  .../bindings/phy/google,gs5-usb-phy.yaml      | 104 ++++++++++++++++++
>  1 file changed, 104 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml b/Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml
> new file mode 100644
> index 000000000000..c92c20eba1ea
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml
> @@ -0,0 +1,104 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2025, Google LLC
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/google,gs5-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Google Tensor Series (G5+) USB PHY
> +
> +maintainers:
> +  - Roy Luo <royluo@google.com>
> +
> +description: |
> +  Describes the USB PHY interfaces integrated with the DWC3 USB controller on
> +  Google Tensor SoCs, starting with the G5 generation.
> +  Two specific PHY IPs from Synopsys are integrated, including eUSB 2.0 PHY IP
> +  and USB 3.2/DisplayPort combo PHY IP.
> +  The hardware can support three PHY interfaces, which are selected using the
> +  first phandle argument in the PHY specifier::

Just one ':', anyway this sentence and below does not belong to
description but to phy-cells. You describe the cells.

Or just mention the header with IDs - here or in phy-cells.

> +    0 - USB high-speed.
> +    1 - USB super-speed.
> +    2 - DisplayPort
> +
> +properties:
> +  compatible:
> +    const: google,gs5-usb-phy
> +
> +  reg:
> +    items:
> +      - description: USB2 PHY configuration registers.
> +      - description: USB 3.2/DisplayPort combo PHY top-level registers.
> +
> +  reg-names:
> +    items:
> +      - const: u2phy_cfg
> +      - const: dp_top
> +
> +  "#phy-cells":
> +    const: 1
> +
> +  clocks:
> +    items:
> +      - description: USB2 PHY clock.
> +      - description: USB2 PHY APB clock.
> +
> +  clock-names:
> +    items:
> +      - const: usb2_phy

core

> +      - const: u2phy_apb

apb

> +
> +  resets:
> +    items:
> +      - description: USB2 PHY reset.
> +      - description: USB2 PHY APB reset.
> +
> +  reset-names:
> +    items:
> +      - const: usb2_phy
> +      - const: u2phy_apb

Same here

> +
> +  power-domains:
> +    maxItems: 1

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
