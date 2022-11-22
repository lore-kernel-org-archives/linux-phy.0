Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01BFCC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 22 Nov 2022 14:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBwj9MNPr3a7ieRb5IwEjO29+kttVvt1+toAMD8N6As=; b=1N4aX4Wb7kyq8l
	ADpUJvUymOMJ2VgSeRLO12uW8+GVlFiIOBSrkYLvgwAhzgGyKr6YYvQDgRqU+5SKglwWkOGnTVDFD
	FV67/e/sFqnQ1OmLq9mFzTzPlnjQX9ZlA9hUiYLclb4NXpyoeo7WwOGdwQQ38yG6kRLmURP4a7feB
	9U8zRVXJkudQnY8dlUKNmXf4FFE3RdX4C6nlaOWvih/vxrh5i+s34QX+kcXezPKpX8M8h6r1AKnu+
	xb7nsPjuuk6pDC8B9VzRWpVtZjY4lmowLkHJBrlADKSHTsVWiYN+Osp6xFtjTKGXouNF3DBuQgZME
	DdQ1eLIyxEAJZLMdO9xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxU1o-009s8A-CM; Tue, 22 Nov 2022 14:13:36 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxU1W-009s0i-H7; Tue, 22 Nov 2022 14:13:20 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AMEDCjT009946;
	Tue, 22 Nov 2022 08:13:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1669126392;
	bh=V8LkFZIM3tGLhnTmS1ipkc+xFqua74H2fHbU7YYtILA=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=N+Q/20DwesScmiGcoDN/AsLpjHH1iEY75mbL0+/Dh/S18VWE5+hcf9cLYUrlYNcWQ
	 NqXot91yTCNqAI8iMxYqJroEQw+7e/a8EXCqZWD6gf3FoRkU+Cy0oA2bduWEzmbBaJ
	 OJKZOI01FkFZChXXSeO33IG4EE8oQZpO7t8/2/R0=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AMEDCBI029736
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 22 Nov 2022 08:13:12 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 22
 Nov 2022 08:13:12 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 22 Nov 2022 08:13:12 -0600
Received: from ubuntu (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with SMTP id 2AMED3Z5031729;
	Tue, 22 Nov 2022 08:13:05 -0600
Date: Tue, 22 Nov 2022 06:13:01 -0800
From: Matt Ranostay <mranostay@ti.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC: <r-gunasekaran@ti.com>, <rogerq@kernel.org>, <vkoul@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vigneshr@ti.com>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy-j721e-wiz: add j721s2 compatible
 string
Message-ID: <Y3zY7QIpj+7gPvO0@ubuntu>
References: <20221122092203.762308-1-mranostay@ti.com>
 <20221122092203.762308-2-mranostay@ti.com>
 <3160a4dd-f8c0-5cce-8c15-c9a4c173ef1e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3160a4dd-f8c0-5cce-8c15-c9a4c173ef1e@linaro.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_061318_650162_02248BEE 
X-CRM114-Status: GOOD (  12.50  )
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

On Tue, Nov 22, 2022 at 11:19:09AM +0100, Krzysztof Kozlowski wrote:
> On 22/11/2022 10:22, Matt Ranostay wrote:
> > Add ti,j721s2-wiz-10g compatible string to binding documentation.
> > 
> > Signed-off-by: Matt Ranostay <mranostay@ti.com>
> > ---
> >  Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> > index a9e38739c010..b837748f33d1 100644
> > --- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> > +++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> > @@ -18,6 +18,7 @@ properties:
> >        - ti,am64-wiz-10g
> >        - ti,j7200-wiz-10g
> >        - ti,j784s4-wiz-10g
> > +      - ti,j721s2-wiz-10g
> >  
> Keep items sorted.
>

Noted. Will correct in v2

- Matt

> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
