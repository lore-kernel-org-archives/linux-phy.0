Return-Path: <SRS0=ixR+=I7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C42DC433ED
	for <linux-phy@archiver.kernel.org>; Fri,  2 Apr 2021 10:13:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D2BAB60BBB
	for <linux-phy@archiver.kernel.org>; Fri,  2 Apr 2021 10:13:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D2BAB60BBB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pFSRO25J+UORvH2Yi8Ye+SptLtuvD/cHByupt3IYgtg=; b=jhwqvpjHkcvzgKHxoZGgLtrRw
	dH9E4mBnl0XrYAT+abQA4mguHJzFHQrJgoKA9KyfOKpnEFB8ENzcns5O2VORuidBs7cPg4NJ2iLHF
	SihUIOwZ5SNzJ+3g4Fb7XYBRKSkueGdViss0XJFAuVbi3nc9TCjWM+otgO70kgC0LXBQEwRcpzudT
	Tjwzj7+1LB7hjZNC7ntzUictWrAS1zna+KsGil9rkDgpWkir3mdS7/PzKgp8H/L8NdrmI5XpBO11z
	fah7yFE4cejNRFqVTnxRVoaIyUJIXEjV2ZrS8e88vF7mSuVTprJyQqTgZonUDi2Xly76ahty6aGUJ
	ByOUEgg5w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSGoO-00CiAO-3v; Fri, 02 Apr 2021 10:13:56 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSGcy-00CgZL-6V
 for linux-phy@lists.infradead.org; Fri, 02 Apr 2021 10:02:19 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id CAEF72C1;
 Fri,  2 Apr 2021 12:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1617357725;
 bh=BwK8ADmyN5yPbUxid040ws2OoDNAKB3jwfGdu8fQZu4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q6U9n5vdWLQqcMaG+9TqXJIFsIVakimELdS5Z4Q0CD1sqXzXU/wZzECK/T3glx4Qb
 RYFYe4xlxpBoHt9Em4McABWRJBPpzbetZ5xp3Qc9rIs63dc1STbbKAKWC2Mo+5BRmu
 1DLv5hDerBLDJY2N3NBSy04VBkudO9QtsHBZMong=
Date: Fri, 2 Apr 2021 13:01:20 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Rob Herring <robh@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Peter Chen <peter.chen@nxp.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 dmaengine@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH 12/16] dt-bindings: media: Add DT bindings for TI CSI2RX
 driver
Message-ID: <YGbrcKPA9K8Ws0lv@pendragon.ideasonboard.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-13-p.yadav@ti.com>
 <20210401155201.GA488101@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210401155201.GA488101@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210402_110208_962527_16218BFF 
X-CRM114-Status: GOOD (  21.17  )
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

On Thu, Apr 01, 2021 at 10:52:01AM -0500, Rob Herring wrote:
> On Tue, Mar 30, 2021 at 11:03:44PM +0530, Pratyush Yadav wrote:
> > TI's J721E uses the Cadence CSI2RX and DPHY peripherals to facilitate
> > capture over a CSI-2 bus. The TI CSI2RX platform driver glues all the
> > parts together.
> > 
> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > ---
> >  .../devicetree/bindings/media/ti,csi2rx.yaml  | 70 +++++++++++++++++++
> >  1 file changed, 70 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/ti,csi2rx.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/ti,csi2rx.yaml b/Documentation/devicetree/bindings/media/ti,csi2rx.yaml
> > new file mode 100644
> > index 000000000000..ebd894364391
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/ti,csi2rx.yaml
> > @@ -0,0 +1,70 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/ti,csi2rx.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: TI CSI2RX Wrapper Device Tree Bindings
> > +

A description would be useful, especially given that the TRM doesn't
mention "CSI2RX".

> > +maintainers:
> > +  - Pratyush Yadav <p.yadav@ti.com>
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: ti,csi2rx
> > +
> > +  dmas:
> > +    description: RX DMA Channel 0
> 
> items:
>   - description: RX DMA Channel 0
> 
> Or just 'maxItems: 1'
> 
> > +
> > +  dma-names:
> > +    items:
> > +      - const: rx0
> > +
> > +  reg:
> > +    maxItems: 1
> > +    description: Base address and size of the TI wrapper registers.
> 
> That's all 'reg' properties, drop 'description'.

According to SPRUIL1B, there are four register banks for the CSI_RX_IF,
and two register banks for the DPHY_RX. What's your plan to support
these ? Not everything need to be implemented at once, but backward
compatibility need to be taken into account in the design.

> > +
> > +  power-domains:
> > +    maxItems: 1
> > +    description:
> > +      PM domain provider node and an args specifier containing
> > +      the device id value.
> 
> Drop.
> 
> > +
> > +  ranges: true
> > +
> > +  "#address-cells":
> > +    const: 2
> > +
> > +  "#size-cells":
> > +    const: 2
> > +
> > +patternProperties:
> > +  "csi-bridge@":
> 
> "^csi-bridge@"
> 
> > +    type: object
> > +    description: CSI2 bridge node.
> 
> Just an empty node?

Even if the node is optional, it would be useful to include it in the
example below, to show how it's supposed to be used.

> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - dmas
> > +  - dma-names
> > +  - power-domains
> > +  - "#address-cells"
> > +  - "#size-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/soc/ti,sci_pm_domain.h>
> > +
> > +    ti_csi2rx0: ticsi2rx {
> > +        compatible = "ti,csi2rx";
> > +        dmas = <&main_udmap 0x4940>;
> > +        dma-names = "rx0";
> > +        reg = <0x0 0x4500000 0x0 0x1000>;
> > +        power-domains = <&k3_pds 26 TI_SCI_PD_EXCLUSIVE>;
> > +        #address-cells = <2>;
> > +        #size-cells = <2>;
> > +    };

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
