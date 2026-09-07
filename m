Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BC7FC79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 06:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQWJsE/hhZ2mXOlPc6XGtFnDgTJJAiMCFUs+PFse5Ec=; b=ZkGsqMjuNpHakG
	k9E6Ma1BoEUwPYQ1n4Dvj9tKx+W6V7Vv8vMovgtx48WLAZE4uTbJqfndk1xRUDL0a7aW3ZE0bpoBm
	GoWfKsq52PJQT/Pjic4rdgSiRmRgmmH6c9RVeP4o32z9bHxymXHDDogczbq2Eei6qJMtKAbtvSCl3
	NQ/TyxmBBKW2kMTwQXt6izyl09dR0kVn05xd7bRP1JIQ46FFxHqB0dm0SS06RxmyKdel6Gal2DYsG
	5z7KRHMCUHtnq6Amrkv+SGtO/Xou7Fbu/0Z/K3ekvwYW2hJducLlqbDMgQTO0CqPQ1I+BYRkeebzq
	cADRjXyYsiDzgHIRncJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3SxY-000000062HG-0F9u;
	Mon, 07 Sep 2026 06:36:04 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3SxV-000000062H5-3ujz
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 06:36:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 51D4641285;
	Mon,  7 Sep 2026 06:36:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 079421F00A3A;
	Mon,  7 Sep 2026 06:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788762961;
	bh=fvYKRdXxIGC3gy/lhw4VnS34/hd+ivtyb/2EWm1V8Cs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kSHN7SMHPq7Wpbhq6EU5r5WynaR3/sBBwSlL6DZ9U85zSoDb3zIwiO0Mmsa888Z4N
	 fZQF1IUdtIHE7YKI7CpTSwOR5Q8R3/TmZOiOFo9ZOGzJul74TkqVla8sD0ws6E0xCE
	 Re94OsrUP7YeD0qCb0Owo6DyQw7SAaq64K7gQ4ZY2cGu7QkBoDo0ct+uOIJeu/ACBk
	 uBepBNND6vZlTtGxYDqQEajdcXx/U3D0wWUgw/e3lZ+QAe9i4jA21ohLc+NrUTnBgE
	 o2v71tkKF4Frvekl/0A8eeUof//byOUIjIRQCP89w45Zhzuui2VmsaoYk4eUGGjiiz
	 bPh/vkPH37g7g==
Date: Mon, 7 Sep 2026 08:35:56 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: airoha: Document support for
 AN7583 USB PHY
Message-ID: <20260907-auspicious-liberal-raccoon-bd7a81@quoll>
References: <20260901123933.15388-1-ansuelsmth@gmail.com>
 <20260901123933.15388-2-ansuelsmth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260901123933.15388-2-ansuelsmth@gmail.com>
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

On Tue, Sep 01, 2026 at 02:39:31PM +0200, Christian Marangi wrote:
> Add documentation for Airoha AN7583 USB PHY that describe the USB PHY
> for the USB controller.
> 
> Airoha AN7583 SoC support a maximum of 2 USB port. The USB 2.0 mode is
> always supported. The USB 3.0 mode is optional and depends on the Serdes
> mode currently configured on the system for the relevant USB port.
> 
> To correctly calibrate, the USB 2.0 port require correct value in
> "airoha,usb2-monitor-clk-sel" property. Both the 2 USB 2.0 port permit
> selecting one of the 4 monitor clock for calibration (internal clock not
> exposed to the system) but each port have only one of the 4 actually
> connected in HW hence the correct value needs to be specified in DT
> based on board and the physical port. Normally it's monitor clock 1 for
> USB1 and monitor clock 2 for USB2.
> 
> To correctly setup the Serdes mode attached to the USB 3.0 mode, a phys
> property is required with the phandle pointing to the correct Serdes port
> provided by the SCU node. Providing the phys property is optional if USB
> 3.0 is not used.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
>  .../bindings/phy/airoha,an7583-usb-phy.yaml   | 133 ++++++++++++++++++
>  1 file changed, 133 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
> new file mode 100644
> index 000000000000..f1a5d83e8968
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
> @@ -0,0 +1,133 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/airoha,an7583-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Airoha AN7583 SoC USB PHY
> +
> +maintainers:
> +  - Christian Marangi <ansuelsmth@gmail.com>
> +
> +description: >
> +  The Airoha AN7583 SoC USB PHY describes the USB PHY for the USB controller..
> +
> +  Airoha AN7583 SoC support a maximum of 2 USB port. The USB 2.0 mode is
> +  always supported. The USB 3.0 mode is optional and depends on the Serdes
> +  mode currently configured on the system for the relevant USB port.
> +
> +  On Airoha AN7583 there is an unified PHY implementation where a single
> +  PHY provide support for both the 2 USB 2.0 port and
> +  optionally one 3.0 USB.
> +
> +properties:
> +  compatible:
> +    const: airoha,an7583-usb-phy
> +
> +  reg:
> +    items:
> +      - description: phy register
> +      - description: ana register
> +      - description: pma register
> +      - description: dig register

"registers"

> +
> +  reg-names:
> +    items:
> +      - const: phy
> +      - const: ana
> +      - const: pma
> +      - const: dig
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +  usb3-phy:
> +    type: object
> +
> +    properties:
> +      phys:
> +        items:
> +          - description: phandle to Serdes PHY
> +
> +      '#phy-cells':
> +        description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
> +          as defined in dt-bindings/phy/phy.h.
> +        const: 1
> +
> +    required:
> +      - phys
> +      - '#phy-cells'
> +
> +    additionalProperties: false
> +
> +patternProperties:
> +  '^usb2-phy@[0-9a-f]+$':

You should not mix MMIO and non-MMIO children. Either children have
distinctive addressing, or not. Not both.

The other problem is that your children have no resources, so are not
really distinctive children and should be folded in to the parent.

I already asked that at v2, so let's finish with asking: drop the
children.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
