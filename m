Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FFDBC43334
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 02:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:CC:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTQGPcrhTR79nl1VSKbVtxzkTF1G3gkgTxTFXXk/G64=; b=RVy6bwSFgYbg/E
	AQk34sE9HPFQf2HzDcn/ggN+/++VZRzpyOdveej3eu788m5m6MBRJpxD1fCDBYZOID+qMqdxOz/O4
	TKiD9pYfGJwhLoU4MSP9ql0iuZsfQCFEyXf/ZqKRtTZKLsi5dBveDufjO/j3QA7Iu6L0qaHVi5mOG
	XbKMY4vagoOEO5sc24NBG5I0vTXLvcmFBI7dS7nYQ0AKRFk4FkL8uVBCdvhbiTiHZ1MtA4kkeRcrA
	2tBuuImCZYjtEpSYMADc8CActqyHPXIb82zhT+UrGt4bAYZqOR2SH7jz2ji2dzE1DCeH0eo6Ki66R
	qyso8wTAeVaukPSsUagA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzUZA-005FuF-Ms; Fri, 10 Jun 2022 02:40:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzUYx-005Fqp-Ln; Fri, 10 Jun 2022 02:39:53 +0000
X-UUID: a1ff8b578fdb4a8ebf8808fea38aa704-20220609
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.5,REQID:6583abad-659e-45ce-8e85-a8e18a4e8da5,OB:0,LO
	B:0,IP:0,URL:25,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,RULE:Release_Ham,ACT
	ION:release,TS:25
X-CID-META: VersionHash:2a19b09,CLOUDID:6ba3de7e-c8dc-403a-96e8-6237210dceee,C
	OID:IGNORED,Recheck:0,SF:nil,TC:nil,Content:0,EDM:-3,IP:nil,URL:1,File:nil
	,QS:0,BEC:nil
X-UUID: a1ff8b578fdb4a8ebf8808fea38aa704-20220609
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
	(envelope-from <rex-bc.chen@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1336040316; Thu, 09 Jun 2022 19:39:40 -0700
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 9 Jun 2022 19:29:39 -0700
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Fri, 10 Jun 2022 10:29:30 +0800
Received: from mtksdccf07 (172.21.84.99) by mtkmbs11n2.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.2.792.3 via Frontend
 Transport; Fri, 10 Jun 2022 10:29:28 +0800
Message-ID: <92f634007cbdba37bf7c672e03814bdad53fa4de.camel@mediatek.com>
Subject: Re: [PATCH v10 02/21] dt-bindings: mediatek,dp: Add Display Port
 binding
From: Rex-BC Chen <rex-bc.chen@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Guillaume Ranquet <granquet@baylibre.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, "David
 Airlie" <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring
	<robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, Matthias Brugger
	<matthias.bgg@gmail.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, "Kishon
 Vijay Abraham I" <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, "Helge
 Deller" <deller@gmx.de>, CK Hu <ck.hu@mediatek.com>, Jitao shi
	<jitao.shi@mediatek.com>
CC: Markus Schneider-Pargmann <msp@baylibre.com>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-phy@lists.infradead.org>,
	<linux-fbdev@vger.kernel.org>
Date: Fri, 10 Jun 2022 10:29:27 +0800
In-Reply-To: <f2856b8f-9465-2638-aabf-d2dda842766b@collabora.com>
References: <20220523104758.29531-1-granquet@baylibre.com>
	 <20220523104758.29531-3-granquet@baylibre.com>
	 <f2856b8f-9465-2638-aabf-d2dda842766b@collabora.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_193951_748943_272D47D1 
X-CRM114-Status: GOOD (  31.22  )
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

On Wed, 2022-05-25 at 17:30 +0200, AngeloGioacchino Del Regno wrote:
> Il 23/05/22 12:47, Guillaume Ranquet ha scritto:
> > From: Markus Schneider-Pargmann <msp@baylibre.com>
> > 
> > This controller is present on several mediatek hardware. Currently
> > mt8195 and mt8395 have this controller without a functional
> > difference,
> > so only one compatible field is added.
> > 
> > The controller can have two forms, as a normal display port and as
> > an
> > embedded display port.
> > 
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> > ---
> >   .../display/mediatek/mediatek,dp.yaml         | 99
> > +++++++++++++++++++
> >   1 file changed, 99 insertions(+)
> >   create mode 100644
> > Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > 
> > diff --git
> > a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.ya
> > ml
> > b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.ya
> > ml
> > new file mode 100644
> > index 000000000000..36ae0a6df299
> > --- /dev/null
> > +++
> > b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.ya
> > ml
> > @@ -0,0 +1,99 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: 
> > http://devicetree.org/schemas/display/mediatek/mediatek,dp.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: MediaTek Display Port Controller
> > +
> > +maintainers:
> > +  - CK Hu <ck.hu@mediatek.com>
> > +  - Jitao shi <jitao.shi@mediatek.com>
> > +
> > +description: |
> > +  Device tree bindings for the MediaTek (embedded) Display Port
> > controller
> > +  present on some MediaTek SoCs.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - mediatek,mt8195-dp-tx
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: faxi clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: faxi
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +    properties:
> > +      port@0:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: Input endpoint of the controller, usually
> > dp_intf
> > +
> > +      port@1:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: Output endpoint of the controller
> > +
> 
> You should add port@0 (and port@1, probably) as required... with what
> you've done
> here, you're saying that "ports" is required, but you're allowing it
> to be empty..
> 
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>      properties:
>        port@0:
>          $ref: /schemas/graph.yaml#/properties/port
>          description: Input endpoint of the controller, usually
> dp_intf
> 
>        port@1:
>          $ref: /schemas/graph.yaml#/properties/port
>          description: Output endpoint of the controller
> 
>      required:
>        - port@0
>        - port@1
> 
> ^^^ that's how it should look.
> 

Hello Angelo,

ok, I will add this.

> > +  max-lanes:
> > +    maxItems: 1
> > +    description: maximum number of lanes supported by the hardware
> > +
> > +  max-linkrate:
> > +    maxItems: 1
> > +    description: maximum link rate supported by the hardware
> 
> As you've put it (in the example below), the max-linkrate property
> wants a value
> that corresponds to what you find in the HW registers... this is
> wrong.
> 
> Devicetree bindings should be generic and devicetrees shouldn't have
> hardware
> specific bits inside, hence, please change this property to accept a
> link rate
> specified in Mbps and also specify that in the description.
> 
> Thanks,
> Angelo
> 

ok, I will change it to real linkrate value.

BRs,
Bo-Chen

> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - ports
> > +  - max-lanes
> > +  - max-linkrate
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/power/mt8195-power.h>
> > +    edp_tx: edp_tx@1c500000 {
> > +        compatible = "mediatek,mt8195-dp-tx";
> > +        reg = <0 0x1c500000 0 0x8000>;
> > +        interrupts = <GIC_SPI 676 IRQ_TYPE_LEVEL_HIGH 0>;
> > +        power-domains = <&spm MT8195_POWER_DOMAIN_EPD_TX>;
> > +        pinctrl-names = "default";
> > +        pinctrl-0 = <&edp_pin>;
> > +        max-lanes = /bits/ 8 <4>;
> > +        max-linkrate = /bits/ 8 <0x1e>;
> > +
> > +        ports {
> > +            #address-cells = <1>;
> > +            #size-cells = <0>;
> > +
> > +            port@0 {
> > +                reg = <0>;
> > +                edp_in: endpoint {
> > +                    remote-endpoint = <&dp_intf0_out>;
> > +                };
> > +            };
> > +            port@1 {
> > +                reg = <1>;
> > +                edp_out: endpoint {
> > +                	remote-endpoint = <&panel_in>;
> > +                };
> > +            };
> > +        };
> > +    };
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
