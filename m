Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 403B5C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 15 Mar 2022 03:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:CC:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yd2HB//NQc52JaRj9EyltcRP0HPF+JSMq7BDzxw7i2A=; b=ZxoJmielK2wpXn
	MXDwgmAGf9g8qyXoU/Ycnx/jAnnDgPHxNLf9g+wg6U5qyzpLn2q5eVUXyy68LroKocvSgXWjCrFTv
	Kt2/yu0Tb2EoufomBQRV+3FoxMAS76fwsfbs/OznkoZvlIiW+CoXTYXPqWjTCyyWjNiyL2lDZ/JBQ
	Q7k7gLDJA+S0fLJ4NazmkJiSVkrpUQ3Gsju5NhRRj75xelnp9NqpY6h216E0L1zezuBcJad+vrrkz
	JeVhYE+q8jt6+d+0qhs6+W7FeEgL9o88tleF88bI+wvA4CoeAl1K2yJ18/mbGeRDHvWQLMEWOictL
	kKCU/9kth7zejJbqTRbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTxoa-007c6t-Mn; Tue, 15 Mar 2022 03:25:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTxoE-007c3N-U3; Tue, 15 Mar 2022 03:25:20 +0000
X-UUID: b03899931f014b34860fac26fef72ac3-20220314
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ptNKZXmHHAzN2TeENzenWHtfeGg3JtrH05NpgxeJpPQ=; 
 b=eMSlLiGkU3QU1O+rKzI9DSCGHnUaGaSWTEn3SGnNydEH1bzOW+HFipe2CQnuykO8BCh5fbFhYfhklEhpPtLJViFl8zTI9HsRsYMAGSH2K4Z9M3Mw7EJEr6QnvRTsOjlBdHuM+Q+5j5h8yyWv3lRnwVsTkRifxAvolOsBk+NXn9w=;
X-UUID: b03899931f014b34860fac26fef72ac3-20220314
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
 with ESMTP id 217445351; Mon, 14 Mar 2022 20:25:12 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 14 Mar 2022 20:15:10 -0700
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.792.3; 
 Tue, 15 Mar 2022 11:15:09 +0800
Received: from mhfsdcap04 (10.17.3.154) by mtkcas11.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 15 Mar 2022 11:15:08 +0800
Message-ID: <5a797c608b6eb29e6fba41fafc5f78f75b4ba1d3.camel@mediatek.com>
Subject: Re: [PATCH 2/2] dt-bindings: phy: mediatek: Add YAML schema for
 PCIe PHY
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Jianjun Wang <jianjun.wang@mediatek.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski@canonical.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>
CC: <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <rex-bc.chen@mediatek.com>, <randy.wu@mediatek.com>,
 <jieyy.yang@mediatek.com>, <chuanjia.liu@mediatek.com>,
 <qizhong.cheng@mediatek.com>, <jian.yang@mediatek.com>
Date: Tue, 15 Mar 2022 11:15:08 +0800
In-Reply-To: <e7765c888e6fc8eb4b15fa01d19afda335b16c26.camel@mediatek.com>
References: <20220311133527.5914-1-jianjun.wang@mediatek.com>
 <20220311133527.5914-3-jianjun.wang@mediatek.com>
 <0454647b-7aa3-ed70-0b92-1e5c98d0adc0@canonical.com>
 <e7765c888e6fc8eb4b15fa01d19afda335b16c26.camel@mediatek.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_202519_026730_8BDD6F5D 
X-CRM114-Status: GOOD (  25.29  )
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

On Mon, 2022-03-14 at 09:42 +0800, Jianjun Wang wrote:
> Hi Krzysztof,
> 
> On Fri, 2022-03-11 at 15:28 +0100, Krzysztof Kozlowski wrote:
> > On 11/03/2022 14:35, Jianjun Wang wrote:
> > > Add YAML schema documentation for PCIe PHY on MediaTek chipsets.
> > > 
> > > Signed-off-by: Jianjun Wang <jianjun.wang@mediatek.com>
> > > ---
> > >  .../bindings/phy/mediatek,pcie-phy.yaml       | 71
> > > +++++++++++++++++++
> > >  1 file changed, 71 insertions(+)
> > >  create mode 100644
> > > Documentation/devicetree/bindings/phy/mediatek,pcie-phy.yaml
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/mediatek,pcie-
> > > phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,pcie-
> > > phy.yaml
> > > new file mode 100644
> > > index 000000000000..da15b4bf3117
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/mediatek,pcie-
> > > phy.yaml
> > > @@ -0,0 +1,71 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/phy/mediatek,pcie-phy.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: MediaTek PCIe PHY Device Tree Binding
> > 
> > Title is for hardware, so s/Device Tree Binding//
> > 
> > > +
> > > +maintainers:
> > > +  - Jianjun Wang <jianjun.wang@mediatek.com>
> > > +
> > > +description: |
> > > +  The PCIe PHY supports physical layer functionality for PCIe
> > > Gen3
> > > port.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: mediatek,pcie-phy
> > 
> > Is it going to be exactly one pcie-phy for all Mediatek chipsets
> > for
> > next years? Are you sure about that? It sounds highly unlikely....
> 
> We have only one pcie-phy for now, but if this is not recommended, I
> will replace it with a specific name in the next version, thanks for
> your review.
Prefer to add specific ones

> 
> Thanks.
> 
> > 
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  reg-names:
> > > +    items:
> > > +      - const: sif
> > > +
> > > +  "#phy-cells":
> > > +    const: 0
> > > +
> > > +  nvmem-cells:
> > > +    maxItems: 7
> > > +    description:
> > > +      Phandles to nvmem cell that contains the efuse data, if
> > > unspecified,
> > > +      default value is used.
> > > +
> > > +  nvmem-cell-names:
> > > +    items:
> > > +      - const: glb_intr
> > > +      - const: tx_ln0_pmos
> > > +      - const: tx_ln0_nmos
> > > +      - const: rx_ln0
> > > +      - const: tx_ln1_pmos
> > > +      - const: tx_ln1_nmos
> > > +      - const: rx_ln1
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - reg-names
> > > +  - "#phy-cells"
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    pciephy: phy@11e80000 {
> > > +        compatible = "mediatek,pcie-phy";
> > > +        #phy-cells = <0>;
> > > +        reg = <0x11e80000 0x10000>;
> > > +        reg-names = "sif";
> > > +        nvmem-cells = <&pciephy_glb_intr>,
> > > +                      <&pciephy_tx_ln0_pmos>,
> > > +                      <&pciephy_tx_ln0_nmos>,
> > > +                      <&pciephy_rx_ln0>,
> > > +                      <&pciephy_tx_ln1_pmos>,
> > > +                      <&pciephy_tx_ln1_nmos>,
> > > +                      <&pciephy_rx_ln1>;
> > > +        nvmem-cell-names = "glb_intr", "tx_ln0_pmos",
> > > +                           "tx_ln0_nmos", "rx_ln0",
> > > +                           "tx_ln1_pmos", "tx_ln1_nmos",
> > > +                           "rx_ln1";
> > > +    };
> > 
> > 
> > Best regards,
> > Krzysztof
> 
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
