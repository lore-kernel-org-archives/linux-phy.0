Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4C49C87FC9
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 07:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tp6GzXzfuxnhzWCrCvSDqbLPlIBztvxlWz5xosPEveQ=; b=wZQaPY4EG7YqCA
	j/mFPdsBCf0JYT3cPp7NeCaQI7EBqCAXLndsHjHizM6WJ8z3xDcyyDhyHNbhsWfdfkSBN+mYlPTv4
	p39P12I02gTXQZEbn97PGbj7Yy+Io220SK1TspmY4ya+45URoMQO0CPhwY6SFEFkAIWe8Sxsny1fB
	77k45B1pBwTzFvR8g1GTlxON3heeehKdrt0ieBqhgJq29R3Qi1weIHnSHBWagHI+ChD3FChRTMJEw
	HdCJ3kCmqzrZXVCcwGchpo7haD8fsrLoJoJ0EDQAHM2/y+AdlcAwdIU6Hril76k/EyOMTxWK/v+7F
	L+21nKA0ufjvTH/dFlkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh1Mc-00000000tXs-2aQf;
	Wed, 30 Jul 2025 07:36:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh1LJ-00000000tRr-236I
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 07:35:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9D9F44327E;
	Wed, 30 Jul 2025 07:35:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8CEEC4CEE7;
	Wed, 30 Jul 2025 07:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753860915;
	bh=Rb42T9aQ/AvFB04Um0C8TnqGFJJMEejYJB7uNmy/X7s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lyXofFu8g8SSyulnEKipqT2pOCKv+cop+PA7ESplvce5MRGTqNlVUjnLgz/DgTKnT
	 Qr1msG/NOCq5NC4G3D0vr4xL1GHxj/7mI/6dBp8NGoHTokAr1pzK1jk/1qUR3n/IxJ
	 lTJfOJVDIjylOZ1QnwCvyHVHIC6+B/QpW2o9eVsKR7bX3N8VsCfBv4hzVT7qWrk+4u
	 WbwWmEQH67o8hVqDOQeBuDmHDZyd2HB6uJHZSeqlhmHHoT+pMgg+FX9676Jn7R2Quq
	 GRyPuKp8BNJMFu+dJPuX7m5PvNv6PYIcD4Edhtk1PRNwgBYS+6E8UCC5BGYvlwUxrA
	 oO6+qJ8rcpEdw==
Date: Wed, 30 Jul 2025 09:35:12 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Dimitri Fedrau <dima.fedrau@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: add support for NXPs TJA1145 CAN
 transceiver
Message-ID: <20250730-aromatic-optimistic-hyena-f1db1a@kuoka>
References: <20250728-tja1145-support-v1-0-ebd8494d545c@liebherr.com>
 <20250728-tja1145-support-v1-1-ebd8494d545c@liebherr.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250728-tja1145-support-v1-1-ebd8494d545c@liebherr.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_003517_570510_675B16BA 
X-CRM114-Status: GOOD (  15.09  )
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

On Mon, Jul 28, 2025 at 05:39:29PM +0200, Dimitri Fedrau wrote:
> Adding documentation for NXPs TJA1145 CAN transceiver.
> 
> Signed-off-by: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
> ---
>  .../devicetree/bindings/phy/nxp,tja1145-can.yaml   | 79 ++++++++++++++++++++++

Why isn't this in can directory with rest of CAN bindings?

>  1 file changed, 79 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/nxp,tja1145-can.yaml b/Documentation/devicetree/bindings/phy/nxp,tja1145-can.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..10bf2bce1b35788b3284c42e544a56eda6d79947
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/nxp,tja1145-can.yaml

Filename should match compatible.

> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/nxp,tja1145-can.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TJA1145 CAN transceiver
> +
> +maintainers:
> +  - Dimitri Fedrau <dimitri.fedrau@liebherr.com>
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#

Missing ref to transceiver properties. Look at other CAN bindings.

> +
> +properties:
> +  compatible:
> +    const: nxp,tja1145
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  reg:
> +    maxItems: 1

reg is the second property, also in "required:" block.

> +
> +  spi-max-frequency:
> +    maximum: 4000000
> +
> +  spi-cpha: true
> +
> +  spi-cs-setup-delay-ns:
> +    minimum: 50
> +    default: 50
> +
> +  spi-cs-hold-delay-ns:
> +    minimum: 50
> +    default: 50
> +
> +  spi-cs-inactive-delay-ns:
> +    minimum: 250
> +    default: 250
> +
> +  vcc-supply:
> +    description:
> +      CAN transceiver supply voltage
> +
> +  vio-supply:
> +    description:
> +      Supply voltage for I/O level adaptor
> +
> +  vbat-supply:
> +    description:
> +      Battery supply voltage
> +
> +required:
> +  - compatible
> +  - "#phy-cells"
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        canphy@0 {

can-phy if something like this exist. If not, then probably can-transceiver

> +            compatible = "nxp,tja1145";
> +            #phy-cells = <0>;
> +            reg = <0>;

Please follow DTS coding style.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
