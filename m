Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54A98C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 19:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNfb8XQxTnJTfz6y1Sii7VY5rX0um7t3SRsIqx7hI5s=; b=b1NVlWCjF2uGE+
	8/1q4djY7I7cTUr9UC61jeNjrGt2SsAu5UhAHawpKX8HyrivkYMrg82SwjfZ9LUVd106IhlIbv8QX
	TswlfCgVFhY6Xz9Uq8uHIlYRQ4/eWS2yRuEoXdeRis16Fu1WjZ7jtCIohHMgWfjLzEqPhqNd7803N
	z1jEifUPeHxyprC/KWPcEvkVGiQX3CN/sA4GIehUWVAu0Pzs/+rDb9r+bocHxo3HbpxXoi4aqzaTp
	mRT6ZEq7BustP/bX87uMaVpGX5J13A2+D1syjNBZROrYqNcRvgqWIIo9JcreGf9XcZaB/guR/McIM
	jSWQgOrltGDHubyI+Y+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv2vk-00E6Gu-NP; Wed, 08 Dec 2021 19:48:44 +0000
Received: from mail-oi1-f170.google.com ([209.85.167.170])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv2vX-00E6Dn-IG; Wed, 08 Dec 2021 19:48:33 +0000
Received: by mail-oi1-f170.google.com with SMTP id o4so5504108oia.10;
 Wed, 08 Dec 2021 11:48:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Nfn9Bm+LZepNTex7K/9pLhuPzvoyMVzxxUgpPvMegPY=;
 b=OPjWocpMub48oFWtMDkSLOqLomzgOcOGM+o0aTQdcmGa0ckEQmJqyPrmLWkCuXN26Q
 9AsTQzDGaFaBoVZ1xxe+au8ksnmzjwYW9rpmDKXMS0MMVVLaScIp6rJdu4W3S3hmzGQd
 kPYFqfR87rHqY+ka6upRrvLVpT16HSckR6VTYN0N4AwG9rWLM5HAFx2knCfH2DD9cHEX
 hHeinLyvWcBT+2JIMK9m6rgrMRMJG4saztvzp88Iuy8u9RNFNIxQZ4jlCNtUB91Co+nq
 90BPYZ9LAq9F8UNvmu/Yy97rnz+4/xmjNDRrb9w/ZCQZ+rxUgS6kuj9Mb/nMMMEPl8RG
 dTYw==
X-Gm-Message-State: AOAM533bq7wqZl2vouQ/UATQSrF2OcDuT6CBEKXCvnjieOYNc+ZPNaK9
 N4laL4TP6NiQulWWuaRZIA==
X-Google-Smtp-Source: ABdhPJwsN0EDUdKKA5+iVLdkwdpccAxhZRZyjWfXJTeD6J+w0CfrOWZ0AWaF6l/tViI29y2gyucL7A==
X-Received: by 2002:a05:6808:23cb:: with SMTP id
 bq11mr1501873oib.2.1638992910659; 
 Wed, 08 Dec 2021 11:48:30 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id z2sm609182oto.38.2021.12.08.11.48.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 11:48:30 -0800 (PST)
Received: (nullmailer pid 255448 invoked by uid 1000);
 Wed, 08 Dec 2021 19:48:28 -0000
Date: Wed, 8 Dec 2021 13:48:28 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: devicetree@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 "maintainer:BROADCOM IPROC GBIT ETHERNET DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Doug Berger <opendmb@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v3 6/8] dt-bindings: net: Convert SYSTEMPORT to YAML
Message-ID: <YbEMDIhKZEzpeKQR@robh.at.kernel.org>
References: <20211206180049.2086907-1-f.fainelli@gmail.com>
 <20211206180049.2086907-7-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211206180049.2086907-7-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_114831_642807_A6C79891 
X-CRM114-Status: GOOD (  26.14  )
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

On Mon, Dec 06, 2021 at 10:00:47AM -0800, Florian Fainelli wrote:
> Convert the Broadcom SYSTEMPORT Ethernet controller Device Tree binding
> to YAML.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../bindings/net/brcm,systemport.txt          | 38 ---------
>  .../bindings/net/brcm,systemport.yaml         | 82 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  3 files changed, 83 insertions(+), 38 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/brcm,systemport.txt
>  create mode 100644 Documentation/devicetree/bindings/net/brcm,systemport.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/brcm,systemport.txt b/Documentation/devicetree/bindings/net/brcm,systemport.txt
> deleted file mode 100644
> index 75736739bfdd..000000000000
> --- a/Documentation/devicetree/bindings/net/brcm,systemport.txt
> +++ /dev/null
> @@ -1,38 +0,0 @@
> -* Broadcom BCM7xxx Ethernet Systemport Controller (SYSTEMPORT)
> -
> -Required properties:
> -- compatible: should be one of:
> -	      "brcm,systemport-v1.00"
> -	      "brcm,systemportlite-v1.00" or
> -	      "brcm,systemport"
> -- reg: address and length of the register set for the device.
> -- interrupts: interrupts for the device, first cell must be for the rx
> -  interrupts, and the second cell should be for the transmit queues. An
> -  optional third interrupt cell for Wake-on-LAN can be specified
> -- local-mac-address: Ethernet MAC address (48 bits) of this adapter
> -- phy-mode: Should be a string describing the PHY interface to the
> -  Ethernet switch/PHY, see Documentation/devicetree/bindings/net/ethernet.txt
> -- fixed-link: see Documentation/devicetree/bindings/net/fixed-link.txt for
> -  the property specific details
> -
> -Optional properties:
> -- systemport,num-tier2-arb: number of tier 2 arbiters, an integer
> -- systemport,num-tier1-arb: number of tier 1 arbiters, an integer
> -- systemport,num-txq: number of HW transmit queues, an integer
> -- systemport,num-rxq: number of HW receive queues, an integer
> -- clocks: When provided, must be two phandles to the functional clocks nodes of
> -  the SYSTEMPORT block. The first phandle is the main SYSTEMPORT clock used
> -  during normal operation, while the second phandle is the Wake-on-LAN clock.
> -- clock-names: When provided, names of the functional clock phandles, first
> -  name should be "sw_sysport" and second should be "sw_sysportwol".
> -
> -Example:
> -ethernet@f04a0000 {
> -	compatible = "brcm,systemport-v1.00";
> -	reg = <0xf04a0000 0x4650>;
> -	local-mac-address = [ 00 11 22 33 44 55 ];
> -	fixed-link = <0 1 1000 0 0>;
> -	phy-mode = "gmii";
> -	interrupts = <0x0 0x16 0x0>,
> -		<0x0 0x17 0x0>;
> -};
> diff --git a/Documentation/devicetree/bindings/net/brcm,systemport.yaml b/Documentation/devicetree/bindings/net/brcm,systemport.yaml
> new file mode 100644
> index 000000000000..44781027ed37
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/brcm,systemport.yaml
> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/brcm,systemport.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom BCM7xxx Ethernet Systemport Controller (SYSTEMPORT)
> +
> +maintainers:
> +  - Florian Fainelli <f.fainelli@gmail.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - brcm,systemport-v1.00
> +      - brcm,systemportlite-v1.00
> +      - brcm,systemport
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    minItems: 2
> +    items:
> +      - description: interrupt line for RX queues
> +      - description: interrupt line for TX queues
> +      - description: interrupt line for Wake-on-LAN
> +
> +  clocks:
> +    items:
> +      - description: main clock
> +      - description: Wake-on-LAN clock
> +
> +  clock-names:
> +    items:
> +      - const: sw_sysport
> +      - const: sw_sysportwol
> +
> +  "systemport,num-tier2-arb":

Don't need quotes.

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Number of tier 2 arbiters
> +
> +  "systemport,num-tier1-arb":
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Number of tier 2 arbiters
> +
> +  "systemport,num-txq":
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Number of HW transmit queues
> +
> +  "systemport,num-rxq":
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Number of HW receive queues

No constraints for any of these?

> +
> +required:
> +  - reg
> +  - interrupts
> +  - phy-mode
> +
> +allOf:
> +  - $ref: "ethernet-controller.yaml#"
> +
> +additionalProperties: true

unevaluatedProperties: false

> +
> +examples:
> +  - |
> +    ethernet@f04a0000 {
> +        compatible = "brcm,systemport-v1.00";
> +        reg = <0xf04a0000 0x4650>;
> +        local-mac-address = [ 00 11 22 33 44 55 ];
> +        phy-mode = "gmii";
> +        interrupts = <0x0 0x16 0x0>,
> +                     <0x0 0x17 0x0>;
> +        fixed-link {
> +            speed = <1000>;
> +            full-duplex;
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 404e76d625f1..ed8de605fe4b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3972,6 +3972,7 @@ L:	netdev@vger.kernel.org
>  S:	Supported
>  F:	drivers/net/ethernet/broadcom/bcmsysport.*
>  F:	drivers/net/ethernet/broadcom/unimac.h
> +F:	Documentation/devicetree/bindings/net/brcm,systemport.yaml
>  
>  BROADCOM TG3 GIGABIT ETHERNET DRIVER
>  M:	Siva Reddy Kallam <siva.kallam@broadcom.com>
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
