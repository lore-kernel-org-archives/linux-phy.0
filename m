Return-Path: <SRS0=mHkV=JJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 120FFC433ED
	for <linux-phy@archiver.kernel.org>; Mon, 12 Apr 2021 17:50:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC4CA61350
	for <linux-phy@archiver.kernel.org>; Mon, 12 Apr 2021 17:50:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AC4CA61350
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cY+f/IZ3fVJmvX30mmw0B1HDKUOFZoQLWxdeA88JM6w=; b=q3jtcqrIkSPZiDqKG4WDcvntG
	7eWyhtF8bKxW97yUD3BQDRLvVSVUcJZJtcXCkU8d/Qt9PH5lDiZvFKAs5sbYvBHRPPpzCM2slANRg
	ORYVCRI1esUmahtK7TNYBCZWJ9jrsj1mznpTPJOlpaBvAt06fV/uvjNba4lnVmcpo0usY/tFaFRb0
	StheQtfBTYMkSy4N+PNYVJod1lf8EHPNVgdxpGiD8Ub6dk1yGZCzg2GerxHors7eoHUokHNFSbXN8
	27K7jb4xjfHbGrKaj/Uyayr2g+TFc8ytm3GzaA9BrecloUjkGhLlB4byrIdMBiNUSp8PVLiSeTNky
	zdUORPx0w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW0hL-007O7m-3G; Mon, 12 Apr 2021 17:50:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW0hG-007O7L-Py
 for linux-phy@desiato.infradead.org; Mon, 12 Apr 2021 17:50:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=bFCs+VpPyphB2HOiiJJru9pRy8xratHPzgF28m8aMpo=; b=4eNKzpqsI4t+rvHEgS1UoloQc/
 bXSXzlO8t91ubPesEcI2SPXM8Egqb13I/eig+Msabjhdu3WLrQQ7ANcv5KKiLO68XDC0wsNQeHEXU
 eJyC8jwQksw1/B3LYpjjTZ7q0zh4b7zQtGysLxi9zgfHUAWnzk0cnG9iIztB0guSCQQXONd3b8/c3
 64eXzbqwSgwYekzyP6thZ26mWRD1Akj+QQLFq2Jhmj0z64mXlxG83iQWAKFNuFer+LCkYTer20i77
 zcaxhvcC5urM/ufUyrAJfnvXi+GlV1gP1T3I4CiWk0DTKIPI0huY6jjFJJB+VuL8NvV5ywHFs0hnE
 JTY3P/yQ==;
Received: from mail-oo1-f42.google.com ([209.85.161.42])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW0hD-006Sp4-Mx
 for linux-phy@lists.infradead.org; Mon, 12 Apr 2021 17:50:01 +0000
Received: by mail-oo1-f42.google.com with SMTP id
 c12-20020a4ae24c0000b02901bad05f40e4so3222024oot.4
 for <linux-phy@lists.infradead.org>; Mon, 12 Apr 2021 10:49:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bFCs+VpPyphB2HOiiJJru9pRy8xratHPzgF28m8aMpo=;
 b=URhvWhMxBcJfUhBqNJ1JGScNkBp1XZeGo87YJ9/IDKRQAzt0xUwwXlht9sHqXIbvhK
 tiYMND1H2BxTvjydoH30wwOTBXhjQvLW/4ZF4zEqe1ZBPsBj+27XnnP1JsK5sv4IqKcS
 FTpIX/UGT+9w2IE3pe+oU90Pl8tEbCZo0uaAmejMH/ZRlvS8rQpxyGZMU3I3zRRwMGyV
 Amq1kP7tFxciOria+zVAFxYpahuGpxZyKx0ohpMX16E5/lZbC+GZHCDzUhdWg2hZhDhf
 EvVh53igTI7T4ep76ou2IxXM9eYVH8x+KdBVy3XbmGT4B859R5vOkufAEa6qAftw3X2x
 ySJA==
X-Gm-Message-State: AOAM5326V2OBB9Hix2ayaBsHke2Su6REIHXZj3uvK810/5ym/RsWDnY9
 aX2eO4gjG5XQhDqo5RKycQ==
X-Google-Smtp-Source: ABdhPJzYjjV91KasGRlpdX2d8GjTfvG8l5nL7+XHdF2vj7lCJ8IP3juCXaE7zPb2z5C2tsbupG+PCw==
X-Received: by 2002:a4a:6b04:: with SMTP id g4mr23753024ooc.78.1618249798739; 
 Mon, 12 Apr 2021 10:49:58 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 3sm2791398otw.58.2021.04.12.10.49.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Apr 2021 10:49:57 -0700 (PDT)
Received: (nullmailer pid 4108783 invoked by uid 1000);
 Mon, 12 Apr 2021 17:49:56 -0000
Date: Mon, 12 Apr 2021 12:49:56 -0500
From: Rob Herring <robh@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Aswath Govindraju <a-govindraju@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Sriram Dash <sriram.dash@samsung.com>,
 linux-can@vger.kernel.org, netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: Add binding for TI TCAN104x CAN
 transceivers
Message-ID: <20210412174956.GA4049952@robh.at.kernel.org>
References: <20210409134056.18740-1-a-govindraju@ti.com>
 <20210409134056.18740-2-a-govindraju@ti.com>
 <f9b04d93-c249-970e-3721-50eb268a948f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f9b04d93-c249-970e-3721-50eb268a948f@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_104959_771470_1BCC553F 
X-CRM114-Status: GOOD (  21.65  )
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

On Mon, Apr 12, 2021 at 12:19:30PM +0200, Marc Kleine-Budde wrote:
> On 4/9/21 3:40 PM, Aswath Govindraju wrote:
> > Add binding documentation for TI TCAN104x CAN transceivers.
> > 
> > Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> > ---
> >  .../bindings/phy/ti,tcan104x-can.yaml         | 56 +++++++++++++++++++
> >  1 file changed, 56 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > new file mode 100644
> > index 000000000000..4abfc30a97d0
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > @@ -0,0 +1,56 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: "http://devicetree.org/schemas/phy/ti,tcan104x-can.yaml#"
> > +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > +
> > +title: TCAN104x CAN TRANSCEIVER PHY
> > +
> > +maintainers:
> > +  - Aswath Govindraju <a-govindraju@ti.com>
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: "^tcan104x-phy"
> > +
> > +  compatible:
> > +    enum:
> > +      - ti,tcan1042
> > +      - ti,tcan1043
> 
> Can you create a generic standby only and a generic standby and enable transceiver?

As a fallback compatible fine, but no generic binding please. A generic 
binding can't describe any timing requirements between the 2 GPIO as 
well as supplies when someone wants to add those (and they will).

> 
> > +
> > +  '#phy-cells':
> > +    const: 0
> > +
> > +  standby-gpios:
> > +    description:
> > +      gpio node to toggle standby signal on transceiver
> > +    maxItems: 1
> > +
> > +  enable-gpios:
> > +    description:
> > +      gpio node to toggle enable signal on transceiver
> > +    maxItems: 1
> > +
> > +  max-bitrate:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      max bit rate supported in bps

We already have 'max-speed' for serial devices, use that.

> > +    minimum: 1
> > +
> > +required:
> > +  - compatible
> > +  - '#phy-cells'
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +
> > +    transceiver1: tcan104x-phy {
> > +      compatible = "ti,tcan1043";
> > +      #phy-cells = <0>;
> > +      max-bitrate = <5000000>;
> > +      standby-gpios = <&wakeup_gpio1 16 GPIO_ACTIVE_LOW>;
> > +      enable-gpios = <&main_gpio1 67 GPIO_ACTIVE_LOW>;
> > +    };
> > 
> 
> 
> -- 
> Pengutronix e.K.                 | Marc Kleine-Budde           |
> Embedded Linux                   | https://www.pengutronix.de  |
> Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
> Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |
> 




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
