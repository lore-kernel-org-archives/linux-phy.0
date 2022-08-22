Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99941C32789
	for <linux-phy@archiver.kernel.org>; Mon, 22 Aug 2022 07:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:CC:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQE3BgPY9XGKGxm9EriSsdofaXs4DoryD/VM+po/YH4=; b=ZZmJEwrbgUCvuU
	EQfPgj2yCR3L9jXEz06p38kZu0AZTsO+rSr34JCAgs4wqT8C/C7sRFmi1A9+az1oHJ8s0z4y2S0El
	Wd+qDxSMDPmU2n9YjFhTKNOGHXqckGvgkUAElR7vTQYtWml9w7h/iAwcPXFhqPqqSbLKX43r5Dd1A
	42E+zQdGQUehQ33+2T5JgrJNz6vXgHIzb7Q08ZguUAOjI+SUrTiO+n82PYj5UAEB5FIeEHT9dMwcj
	gE9Im3VJcqYuXHJe/3Pj0FLlYAchypNPUtYRMQSI2ow4Qe+2DipqoOLwIm333xkviL0HzaCKtCJbm
	Zv5XHws97kjbyk/CNE7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ20s-0061C8-SV; Mon, 22 Aug 2022 07:38:22 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ20p-00614O-41; Mon, 22 Aug 2022 07:38:20 +0000
X-UUID: e2ba2bc92cc344639692e06c55e31258-20220822
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID; bh=CJugcxX+eOv/HfKlyYUWU1xq3Wn9o4AB7EJIdNcHq8s=;
	b=L4nWy9VxoGQHC/NJGrG++HhulEfCnS9PIJJUJHMv2Yb/km6Ou2i/q3ABgKmgit6sLwqqS5hPMqIth2ylxKT4sr9e7X/Dg2WDz8VK80aX8nAAlV67kMdA4U6qfAtddoilBb2k2bGN7xIz2AQotEpZxaHziFaYvuGDJ+LEJHvI9Vs=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.10,REQID:5a015c95-6c13-4d54-b8f8-7843c1ce175a,OB:0,L
	OB:0,IP:0,URL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_
	Ham,ACTION:release,TS:0
X-CID-META: VersionHash:84eae18,CLOUDID:9d6635cf-20bd-4e5e-ace8-00692b7ab380,C
	OID:IGNORED,Recheck:0,SF:nil,TC:nil,Content:0,EDM:-3,IP:nil,URL:11|1,File:
	nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: e2ba2bc92cc344639692e06c55e31258-20220822
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 552020658; Mon, 22 Aug 2022 00:38:10 -0700
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.792.15; Mon, 22 Aug 2022 15:07:36 +0800
Received: from mhfsdcap04 (10.17.3.154) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 22 Aug 2022 15:07:35 +0800
Message-ID: <816ecf6287533137b750c8bde9de5830e4229c56.camel@mediatek.com>
Subject: Re: [PATCH 2/7] dt-bindings: phy: mediatek,tphy: add property to
 set pre-emphasis
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Vinod Koul
	<vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>
CC: Kishon Vijay Abraham I <kishon@ti.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Eddie Hung
	<eddie.hung@mediatek.com>
Date: Mon, 22 Aug 2022 15:07:35 +0800
In-Reply-To: <438da392-f419-ad76-7e91-aa4aab36e12c@linaro.org>
References: <20220819091344.2274-1-chunfeng.yun@mediatek.com>
	 <20220819091344.2274-2-chunfeng.yun@mediatek.com>
	 <438da392-f419-ad76-7e91-aa4aab36e12c@linaro.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_003819_332210_977008AF 
X-CRM114-Status: GOOD (  15.54  )
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

On Fri, 2022-08-19 at 15:15 +0300, Krzysztof Kozlowski wrote:
> On 19/08/2022 12:13, Chunfeng Yun wrote:
> > Add a property to set usb2 phy's pre-emphasis.
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> >  Documentation/devicetree/bindings/phy/mediatek,tphy.yaml | 7
> > +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git
> > a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> > b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> > index 848edfb1f677..aee2f3027371 100644
> > --- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> > @@ -219,6 +219,13 @@ patternProperties:
> >          minimum: 1
> >          maximum: 15
> >  
> > +      mediatek,pre-emphasis:
> > +        description:
> > +          The selection of pre-emphasis (U2 phy)
> > +        $ref: /schemas/types.yaml#/definitions/uint32
> > +        minimum: 1
> > +        maximum: 3
> 
> Instead of hard-coding register values in bindings, you should rather
> describe here feature/effect. If it is in units, use unit suffixes.
> If
> it is some choice, usually string enum is appropriate.
How about changing description as bellow:

"The level of pre-emphasis, increases one level, boosts the relative
amplitudes of signal's higher frequencies components about 4.16% (U2
phy)"

Thanks

> 
> Best regards,
> Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
