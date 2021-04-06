Return-Path: <SRS0=WDaa=JD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AAFBC433ED
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 18:00:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B5EBD613A0
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 18:00:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B5EBD613A0
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WMoJdqdXZHKrPZzs4WuWLkNUTszUxxkn3LpU26L0OsQ=; b=Uqfvuc1AhRT1F7vA7V9zLWZ//
	Ssf7s7t1zt4WVR6W77bce0jys6dHAryBCg7G2I0K5B2zNJ+O4489BHETiQCYeYHiIAyxkHKXZ5x1e
	5x4KtR7k7xrEpjBjoHaSjhueJ0NS7H50w/skTqxkiaIC4FZCogkIs3qTboy0AUPIoyUBGwSwG1ngu
	Rtqg8KqkRc8vWoAaAKL/gJ0aJ1ydZ3eAGyFTvAvuxhFNdFU9SmMTmLR+d285Qecye1hdPGpZ1ME1Q
	jolvq8ETKvFjVdPZ+T65FZ8QpKqwkCLCNxM0JGgB8Jdlw7ZayXE8zEeD2+128VjOlWE15zaoaRUJq
	V8yrZ8PFQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTq0J-003BRc-56; Tue, 06 Apr 2021 18:00:44 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTq0E-003BQZ-4G
 for linux-phy@lists.infradead.org; Tue, 06 Apr 2021 18:00:40 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 136I0U1p074029;
 Tue, 6 Apr 2021 13:00:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617732030;
 bh=pdrN4fdiS9znRyNa4gZLkEt2osmeyCC9GkQ1FnhYcZc=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=mxcBPsucGP/zPR5/Dg0J6lzgkt6c9+IlWEow/j2r1uYATMNTbVz99zNTZICQZGM4D
 Id5qBL4YxBrFdp/HbqF/GXHH+Zf3J8HyGJTmSmy5iD6178SYj/CXMHmOfTog3DCKZE
 QPq4evHt0UTK2WFhKpmu6hfvKU4SUpGAQsQG020s=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 136I0UXh114415
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 6 Apr 2021 13:00:30 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 6 Apr
 2021 13:00:30 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 6 Apr 2021 13:00:30 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 136I0TqO115647;
 Tue, 6 Apr 2021 13:00:29 -0500
Date: Tue, 6 Apr 2021 23:30:28 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Rob Herring <robh@kernel.org>
CC: Mauro Carvalho Chehab <mchehab@kernel.org>, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi
 <peter.ujfalusi@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Alexandre Courbot
 <acourbot@chromium.org>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Stanimir Varbanov
 <stanimir.varbanov@linaro.org>, Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Peter Chen <peter.chen@nxp.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <dmaengine@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH 12/16] dt-bindings: media: Add DT bindings for TI CSI2RX
 driver
Message-ID: <20210406180026.dexu6xelj63wvfeg@ti.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-13-p.yadav@ti.com>
 <20210401155201.GA488101@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210401155201.GA488101@robh.at.kernel.org>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_190038_754453_C30F57C7 
X-CRM114-Status: GOOD (  21.69  )
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

On 01/04/21 10:52AM, Rob Herring wrote:
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

Ok.

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

Ok.

> 
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +    description:
> > +      PM domain provider node and an args specifier containing
> > +      the device id value.
> 
> Drop.

Ok.

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

Ok.

> 
> > +    type: object
> > +    description: CSI2 bridge node.
> 
> Just an empty node?

No. It should be a node for the Cadence csi2rx IP (compatible 
"cdns,csi2rx"). I'm not sure how to model this. This subnode is needed 
but it should take its properties from the Cadence csi2rx schema. Will a 

  properties:
    allOf:
      - $ref: cdns,csi2rx.yaml#

be a good idea?

> 
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
> > -- 
> > 2.30.0
> > 

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
