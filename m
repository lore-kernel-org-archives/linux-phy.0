Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECE25CA0EED
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 11:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=alhYCIpvA30YtKWC+r5AiqPFVHTmghznsH8NKb+NDIo=; b=oDV1bAUcqIZaDe
	7Mbi5RdhOXJDtx6JaAtAsFqmUtS4rqsyFMtVbMTyb/1sD1USLKVQk8845nkzfjfGoOjZ9dTzckM/q
	y8hUGOHCGDXKSZBrpDFlI4EIoDC+TAHFvqA7FghCrDHTZs60Rb+PMbnudRKD6CIMrH/K1PzdCVYcv
	Kixe0eFmqVKdYJtbYLS3wNRRprxvgvx9O86giB4PMadn1WCXKO1LRfUV+eP3II+Qs6Ixnq4NaixXD
	B8A9R1zYIXrY93YC0xkqgO7pSQQBhJ7B217M0QuOZY1u0CBIf+V/xj/x+xNLF0TxLl8HOqJdYRVij
	r8F08ff9Asp6KkGdvzkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upQGb-00000002O3m-2FBQ;
	Fri, 22 Aug 2025 11:49:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upM84-00000001oDw-0hfc;
	Fri, 22 Aug 2025 07:24:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 59BC860266;
	Fri, 22 Aug 2025 07:24:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B8F5C4CEF4;
	Fri, 22 Aug 2025 07:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755847443;
	bh=WuDthur/naSlz9x9SdcEfVIvLuh26ZaWEM8NRd6Pykk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Stzro7ufnPBe9angyz46enQdBWHrKwFmd9T/VQcGvILXha1ulT3tW8OKmepm4mWZj
	 1j2TWmF3Sp0JkrV2MAOi3A28voPvdLBM/rw5MP2PZuI59lCJ4tiwEp+XNAxfgX8GYR
	 atgzOKqF4XCDTz3v/K7fqG5c7h3pmYohSBCww0HLHGBXibjeNXehjrJpdqMiKYKcZX
	 pMDWngELOgsdI/k+3H/6z79sqlBxIEKBsE7eE6De905l6ReWId2yH2y8IBJ14WgE2L
	 buLW/+xWUg5qKgc4o3w+xSw1XGi1b1Loe0h8UwFYiyisucKcINC+GvSxK3nHOsdWMY
	 2QIIWsh96WG1Q==
Date: Fri, 22 Aug 2025 09:24:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sven Peter <sven@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>, Janne Grunau <j@jannau.net>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH RFC 02/22] dt-bindings: usb: Add Apple dwc3
Message-ID: <20250822-banana-ferret-of-opposition-0bcfad@kuoka>
References: <20250821-atcphy-6-17-v1-0-172beda182b8@kernel.org>
 <20250821-atcphy-6-17-v1-2-172beda182b8@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250821-atcphy-6-17-v1-2-172beda182b8@kernel.org>
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

On Thu, Aug 21, 2025 at 03:38:54PM +0000, Sven Peter wrote:
> +
> +  The common content of the node is defined in snps,dwc3.yaml.

Drop sentence, redundant. Schema tells that.

...

> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  iommus:
> +    maxItems: 2
> +
> +  resets:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +unevaluatedProperties: false

This goes after required.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - iommus
> +  - resets
> +  - power-domains
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/apple-aic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    usb@82280000 {
> +      compatible = "apple,t8103-dwc3", "snps,dwc3";
> +      reg = <0x82280000 0x10000>;
> +      interrupts = <AIC_IRQ 777 IRQ_TYPE_LEVEL_HIGH>;
> +      iommus = <&dwc3_0_dart_0 0>, <&dwc3_0_dart_1 1>;
> +
> +      dr_mode = "otg";
> +      usb-role-switch;
> +      role-switch-default-mode = "host";
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index fe168477caa45799dfe07de2f54de6d6a1ce0615..0e085cb0762f765958d67be61ae0d3d773503431 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2399,6 +2399,7 @@ F:	Documentation/devicetree/bindings/power/reset/apple,smc-reboot.yaml
>  F:	Documentation/devicetree/bindings/pwm/apple,s5l-fpwm.yaml
>  F:	Documentation/devicetree/bindings/spi/apple,spi.yaml
>  F:	Documentation/devicetree/bindings/spmi/apple,spmi.yaml
> +F:	Documentation/devicetree/bindings/usb/apple,dwc3.yaml
>  F:	Documentation/devicetree/bindings/watchdog/apple,wdt.yaml
>  F:	arch/arm64/boot/dts/apple/
>  F:	drivers/bluetooth/hci_bcm4377.c
> 
> -- 
> 2.34.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
