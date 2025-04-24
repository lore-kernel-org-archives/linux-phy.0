Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96594C369D1
	for <linux-phy@archiver.kernel.org>; Thu, 24 Apr 2025 08:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97BxIgCrWbpqqAubRWfYGd4dzCn640p8KjhREMsx/2Q=; b=Dvtnm3tHNSj1m/
	x08p3ZINrx1u9L2BdlG83iUBhdIGSjMju/aCdcOF+/X90pl1dfZni2h+0vtcm4yp4DHCLw2tVFygY
	uqZRmeNi7YsyyFHeeqgPwoX3GS0A//aBPDVQ2Q7Ad8KUoBQ3plaAeujLvTKmPui7zCJCP9V1fNYYd
	Q8btEnzVW3epif6BL28xXpD+1b4EFToJosS4qRk+YFQsN2R6d/20JwCpZvmqDNCGOOC82+aZrjy5A
	fKI1Su13g53pb7dUlvFLxbpDojtbU+NzNoK464GwBT5j5RInv0I+wRnwA6qlx29dR8dfm+zeY2Oqs
	d0eSSk/ZwwOymp2JIP+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7sJe-0000000DPbM-0IyP;
	Thu, 24 Apr 2025 08:52:18 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7r75-0000000DCf4-1Pn5;
	Thu, 24 Apr 2025 07:35:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 86AA25C6268;
	Thu, 24 Apr 2025 07:32:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5402C4CEE3;
	Thu, 24 Apr 2025 07:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745480114;
	bh=kqdftvwo3yqYPI14qAH7mrwpx4M3j6MZCFUBG/sb9Ck=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mJDumgVWKKh/Ap6cT++S2/pVQcEExv4/jB5AxGOOqueaKcGEs3Oxn7oXWBC7q01MM
	 HQFltblZJwBePcq8wdYGQEWzr5xeF0hrMpq6gjlJZlPshX7K9fOWSKGX/kev2nx2u4
	 vvayvzC8nchfrKa55JdJvo1d4NJ6aaa2/pagtgTGOXcAH4YC1tjsY290umFRKFhYlQ
	 e/DLkkg5+1sG+hMweDNikHzws0SdZtZEPxDu/9RC26D0cIW5ix2D9OcH1TxdlnO71V
	 TsxndLYHZ32gn6qMcQKMRaM74OgXbKaU5WSN/coPP0bBLoZHkv1y7b+3JZkk81yyeb
	 NcEwhCMx7EAfQ==
Date: Thu, 24 Apr 2025 09:35:11 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Frank Wunderlich <frank-w@public-files.de>, 
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, Daniel Golle <daniel@makrotopia.org>, 
	Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 4/8] dt-bindings: phy: mtk-xs-phy: support type switch
 by pericfg
Message-ID: <20250424-auspicious-boisterous-pheasant-7d1f9f@kuoka>
References: <20250422132438.15735-1-linux@fw-web.de>
 <20250422132438.15735-5-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250422132438.15735-5-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_003515_415696_D09AA612 
X-CRM114-Status: GOOD (  13.01  )
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

On Tue, Apr 22, 2025 at 03:24:27PM GMT, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add support for type switch by pericfg register between USB3/PCIe.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> v4:
> - changes based on comments from Krzysztof
> - change to phy type configuration controller/register
> ---
>  .../devicetree/bindings/phy/mediatek,xsphy.yaml   | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> index 3b5253659e6f..0bed847bb4ad 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> @@ -151,6 +151,21 @@ patternProperties:
>          minimum: 1
>          maximum: 31
>  
> +      mediatek,syscon-type:

Although this should be probably mediatek,phy-type-syscon, because now
it feels like you define here type of syscon. Anyway, keep Rb tag.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
