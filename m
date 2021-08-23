Return-Path: <SRS0=LI2T=NO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94515C4338F
	for <linux-phy@archiver.kernel.org>; Mon, 23 Aug 2021 01:45:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5CCDA6120C
	for <linux-phy@archiver.kernel.org>; Mon, 23 Aug 2021 01:45:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5CCDA6120C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3f5CPVZ132NgHC5co2f5E6GDT3ur2KSFWnPD5YDIfGk=; b=0adwDa8QGdgS8O
	1sMnFugQuKAViCuOmLDXxvX/TzluGYrgDhE4ZdYrpX+ih9OAC3FtJUDlXS5ZRQC+6FBeW1vetsOq1
	p7901Fa9uxnnLgl9wz1WkEgOHiixxezr4qWuGgD9qlzKhyNGNdzDTf/vx853j1cV1R8nl0+0aHmea
	WljYhYU5gdUbNr797FmlA7krCF+54I/mWU1fKpB1cGAh/+qpSljeLdvDsqrV9tlqoHWo6ytXFy8b0
	9FSwWTCRV28VGvirVS9zmWProXO6Z9KcOowGrgKq286VqJSnUnJ0m/B6ZCsMPfNWX0fhI7YRrWnHb
	/LBqwpyLW92ck3WDCoyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHz1U-00F8XL-Tl; Mon, 23 Aug 2021 01:45:12 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHz1P-00F8WE-1R
 for linux-phy@lists.infradead.org; Mon, 23 Aug 2021 01:45:11 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C2F112A5;
 Mon, 23 Aug 2021 03:45:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1629683104;
 bh=euWmE3CtpsP81m3SgrIa5KuUsrQe/fdxnN1qsqZYT/c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X3Xu+rRxHf0qqAY3Q+DKrcVIJ3GqYcvHs+iShYDLqmk9K1FxLOYvl5Xj7Bg6pNM3m
 eO7LDOZAQRqJ9qLmMxOwihC7hYklGcIjrt9lEj0dx9N3xBjnwSchu8ET4sgPUd9CA8
 isMjLz08Pn8LIDHfI6JmNC/24RwYk0OUTW2nZJoE=
Date: Mon, 23 Aug 2021 04:44:54 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Nikhil Devshatwar <nikhil.nd@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 6/6] phy: dt-bindings: cdns,dphy: add Rx DPHY compatible
Message-ID: <YSL9lkLB0wKk9sem@pendragon.ideasonboard.com>
References: <20210820190346.18550-1-p.yadav@ti.com>
 <20210820190346.18550-7-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210820190346.18550-7-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210822_184507_283193_8BB560D4 
X-CRM114-Status: GOOD (  14.41  )
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

Hi Pratyush,

Thank you for the patch.

On Sat, Aug 21, 2021 at 12:33:46AM +0530, Pratyush Yadav wrote:
> The DPHY is treated to be in Tx mode by default. Add a new compatible
> for Rx mode DPHYs.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> 
> ---
> 
> Changes in v4:
> - New in v4.
> 
>  Documentation/devicetree/bindings/phy/cdns,dphy.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> index d5a5e1f0b671..48b6a841152e 100644
> --- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> @@ -11,8 +11,9 @@ maintainers:
>  
>  properties:
>    compatible:
> -    items:
> +    oneOf:
>        - const: cdns,dphy
> +      - const: cdns,dphy-rx

It's customary to use an enum instead:

  compatibles:
    enum:
      - cdns,dphy
      - cdns,dphy-tx

I don't know if Rob has a preference for consistency (or for any other
reason). In either case,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

>  
>    reg:
>      maxItems: 1

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
