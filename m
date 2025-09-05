Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F6B5CA0FED
	for <linux-phy@archiver.kernel.org>; Fri,  5 Sep 2025 10:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83/5mL04XygMEfUcNcfTJnX88rpiWltP6PvgFke7MKQ=; b=yXU81xkUV4q5lG
	da42P5yvE0YRqhdYlsNUVtu9kRTKyJOh7SGd68WYLOhywNdyu+KLia2SCOjz8zVLupz1/kU2SEXFb
	xBqwbKcze3IebGNgHaKQuy7FaCZ+5JfxOP3Nw+F7ruUcnFEWVy0YBFgTJYaWje1gZE1c3ur4k/u2m
	A8bEBZADKanWqn9Xt2xfuy0Wj7Lo3ufIHrOKYuSFTseeRQ02oqfYv1WhjjU5stSYA9ocdvQruNNZS
	imqgF8bUV3cn6FajSVowosPqIXOdyBph8KX7Dg6WsFL7duU7oBffsRGd9bUP2+EbbbGQtwX0ZMVU/
	Y9/aPcrtlC/PI/PNCYtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuTJy-00000000vzy-3OdW;
	Fri, 05 Sep 2025 10:05:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuRpB-00000000MtR-1ZA4
	for linux-phy@lists.infradead.org;
	Fri, 05 Sep 2025 08:29:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 858BF6027D;
	Fri,  5 Sep 2025 08:29:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1B22C4CEF1;
	Fri,  5 Sep 2025 08:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757060976;
	bh=qTwRtRE61zsPY4Oik1TKuwEr2YgkQWcTIA6AodbDFbY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fyF9DvMEwnV5F2vH9gRUZIMZfim4cZhMh63nrQaXMvNQjJl/4Ri8WSywsq2l81CU9
	 ccDxiyhVMJNjeSSdDp0qu2qFf/RJvGTgK22FQda7UjES7SSAb4uF+fd/4EVK7OmLEh
	 NsG8WxdAtiT+Abc6fZiVs9P4bhB8WLQQSGSggExIGBWwkbXQcHZecPUkMH3AWRnLkh
	 KgL0azlZq3Ar0vx0wjx97yMYMrB+yhBCpua3HoliUHxTh/ewRTOLNwpF214mpgJIDs
	 /lVKkpWfDljD8d7co/3/N+CY+gRt6LjgnPjXWAfKY1JQTaJ2FzuJay1Ky9xPSoDxis
	 wx9GOZfGOaxEw==
Date: Fri, 5 Sep 2025 10:29:33 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Ioana Ciornei <ioana.ciornei@nxp.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH phy 13/14] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Message-ID: <20250905-bulky-umber-jaguarundi-1bf81c@kuoka>
References: <20250904154402.300032-1-vladimir.oltean@nxp.com>
 <20250904154402.300032-14-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250904154402.300032-14-vladimir.oltean@nxp.com>
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

On Thu, Sep 04, 2025 at 06:44:01PM +0300, Vladimir Oltean wrote:
> Going by the generic "fsl,lynx-28g" compatible string and expecting all
> SerDes instantiations on all SoCs to use it was a mistake.
> 
> They all share the same register map, sure, but the number of protocol
> converters and lanes which are instantiated differs in a way that isn't
> detectable by software. So distinguish them by compatible strings.
> At the same time, keep "fsl,lynx-28g" as backup.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  .../devicetree/bindings/phy/fsl,lynx-28g.yaml     | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> index ff9f9ca0f19c..55d773c8d0e4 100644
> --- a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
> @@ -11,8 +11,17 @@ maintainers:
>  
>  properties:
>    compatible:
> -    enum:
> -      - fsl,lynx-28g
> +    oneOf:
> +      - items:
> +          - const: fsl,lynx-28g

Don't change that part. Previous enum was correct. You want oneOf and
enum.

> +      - items:
> +          - enum:
> +              - fsl,lx2160a-serdes1
> +              - fsl,lx2160a-serdes2
> +              - fsl,lx2160a-serdes3

What are the differences? number of lanes? For this you can take
num-lanes property.

> +              - fsl,lx2162a-serdes1
> +              - fsl,lx2162a-serdes2
> +          - const: fsl,lynx-28g

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
