Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4AD6C761A6
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 16:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NyujxP3d+8Pe4/jD3Y7WTFsK8nigIbwhc1NK5hpd2nI=; b=006WxHb2zEfC4F
	cgpxkeJhFGG6e/k98zWgTljLODQdcG0/09FRDWN9hudiLaP+CqedZOU0ZDfJTOC9Arwe4hbPunhgE
	Tt/oZK+uzlars3YKhPqmch6CRj+odZwxZtkVHSQshARz6ebk3yCElWceK+gpGpJdyilWK8jJJoRn2
	apxXZmjCj844BGBREwom3FJ0xf0s8nPFqhzXIN2S/Y/J4NpuKTXtGIXCpzRWS0dMm+MYf+6PnBUZX
	FqKhgYVAb4s7ZbTfbWCd5Ls3aNBtbgw8FMxGOlTj90JZ4JfNiyN56/9muj3QBauG6zs3rluMTQ8zJ
	fTOGuwxpJSkPl17M+XGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkSlx-00839G-1R;
	Thu, 06 Apr 2023 16:47:41 +0000
Received: from mail-oi1-f179.google.com ([209.85.167.179])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkSlu-008380-0z
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 16:47:39 +0000
Received: by mail-oi1-f179.google.com with SMTP id b19so29494346oib.7
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 09:47:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680799656; x=1683391656;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=goftEu/oL/56f1SzPdGbJy2Za/7DOnQGB7Rg7sScybg=;
        b=cBYU/WWwYJ5T+dj1UlbefCfsoBxxaeKVNQWkLhGg5WopOR565XdFUhiH/BEKaF/GAy
         9lfkCqc8QkfeuKuE50f/VKWisQVq2p2SktA/x4LTVP41CK7JnWyBZwhqh0S/UMPJKMUr
         zf0e4WjTQyaB1BENcrWcehVdvlv/X0nYWMMoJjwKZSp/nX5MOnxzhWxfK+CFlV5VoF9E
         sPKK0cSUd/ydS7iYJPdVbBtKV5OjLf/ZDw9/LMaxnzTttwyzM1Z8iZn+dA0HDyVbRf2j
         g9kHOAp+E87oOA3brvSmK+shLHiGl5teYixlB5mksPtOPVsn3XAcE4mDjJ6OJFyYLNog
         KhWg==
X-Gm-Message-State: AAQBX9fbrSOAjjAEAi4VdfZTWRb+pZaSH4pDrjaXij7SOYL0ekfvfm/f
	KUpkDj2RUwVLFlEJaGp8/g==
X-Google-Smtp-Source: AKy350Yon2Li5QLhuLgTOLq8dbTiEim2m/ZmXxUprhFvPZtz4VV5R+lfSjreM2TmT/a9JHFtn1qfnQ==
X-Received: by 2002:a05:6808:984:b0:383:e301:1795 with SMTP id a4-20020a056808098400b00383e3011795mr3720625oic.4.1680799656216;
        Thu, 06 Apr 2023 09:47:36 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id p10-20020acad80a000000b003898bec0e01sm860605oig.17.2023.04.06.09.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 09:47:35 -0700 (PDT)
Received: (nullmailer pid 3282908 invoked by uid 1000);
	Thu, 06 Apr 2023 16:47:35 -0000
Date: Thu, 6 Apr 2023 11:47:35 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, Abraham I <kishon@ti.com>, Swapnil Jakhade <sjakhade@cadence.com>, devicetree@vger.kernel.org, Yuti Amonkar <yamonkar@cadence.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH 4/5] dt-bindings: phy: ti,phy-j721e-wiz: drop
 assigned-clocks
Message-ID: <168079965469.3282835.8696594614789018779.robh@kernel.org>
References: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
 <20230404190115.546973-4-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230404190115.546973-4-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_094738_341639_3C9C901A 
X-CRM114-Status: GOOD (  10.05  )
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


On Tue, 04 Apr 2023 21:01:14 +0200, Krzysztof Kozlowski wrote:
> The meta schema from DT schema already defines assigned-clocks, so there
> is no need for device schema to mention it at all.  There are also no
> benefits of having it here and a board could actually need more of clock
> assignments than the schema allows.
> 
> Keep however the assigned-clocks in children nodes, as apparently their
> proper parenting is required.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/phy/ti,phy-j721e-wiz.yaml    | 12 ------------
>  1 file changed, 12 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
