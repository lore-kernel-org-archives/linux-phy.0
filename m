Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13C1DC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 27 Dec 2021 16:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JxEc+VXMiBOyjdyxWWZucvDgHfW0LEsGFTn17rBhpuw=; b=IxjrTUoDjOQSGe
	ykCoEoWD5PbLBTVGOCzTWnsrJIUeE6ll5XXRpT03TTPvZS1KuNHyhDbUdrxtST2d8WEHeBrJC76me
	RRQAsTet3byykPmQycz9kJv+U4hDyXxvH7ksd1qgTJ7ey/27Szn/n2d7yzsphAfIQq5em0mpWxUYF
	UVgNy2RdtJKCjsfPMfpIP14lpE0Vxrl/fKbHa7AgT/5q38mBzrR+dINGGQyqxHQEks7/N/BNXpe1P
	uJHemriGczLSD4tN+AHGcHvkgzxNoRvH3opZDtz/d5SqG36IJSUxIj0wCybhKwb/rbOItIaqYf/0o
	SkxYMjKrah0usSjF0yWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n1tJR-00H5h6-HA; Mon, 27 Dec 2021 16:57:29 +0000
Received: from mail-qv1-f52.google.com ([209.85.219.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n1tJO-00H5gF-Ll
 for linux-phy@lists.infradead.org; Mon, 27 Dec 2021 16:57:27 +0000
Received: by mail-qv1-f52.google.com with SMTP id h5so14211575qvh.8
 for <linux-phy@lists.infradead.org>; Mon, 27 Dec 2021 08:57:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=h9MD2ILL8cJCsMX2TWi0ZW0BbPKpv24auuKjJHOTHVE=;
 b=YqbqBURpqIVGb/Wk7iEiPI86YScDyRXsoWklCii+gzUIkkN8xqRUXFFnZjlXczgxOs
 SYmMsoINgEV78dmK5nyiRBrxAmnefGZBdnKc17Uc4rhqhFawWmOsWf7MaoxGqNTAqzQQ
 jB6CDZf1aji9vIyYqX5bXBMFC63A4SVyBavIfGwMw4RmJWAvAxMR2Cb/S8bB+xsdY7cK
 bNVcQuhIkHnTGutWNhuFjZLdOe/pxOx8mZ+XYLy368YQPT/TXLssbUm1wm1sdqSUgJkS
 DQNy1gBrwwPYxQT2a08HpV/1ph3GdVBNUtktl3vewkfjjMwMwM1Hh6cD/n6zfDOJQqlS
 WEig==
X-Gm-Message-State: AOAM531cjoUlTLb62KlJGquMxl+pL80wU57qP+6OXTvTic1jujb9kDjS
 UR1rqjscx3E6LL4TP9Ip2w==
X-Google-Smtp-Source: ABdhPJxKexGLS6oGqUfy3flP+Go9wPBi6+ZdDc6jbPj363M5hgtTre+ACko+KJJCU7CnuveKZggnfQ==
X-Received: by 2002:ad4:5aad:: with SMTP id u13mr16025862qvg.46.1640624245151; 
 Mon, 27 Dec 2021 08:57:25 -0800 (PST)
Received: from robh.at.kernel.org ([24.55.105.145])
 by smtp.gmail.com with ESMTPSA id c7sm14263292qtx.67.2021.12.27.08.57.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Dec 2021 08:57:24 -0800 (PST)
Received: (nullmailer pid 653619 invoked by uid 1000);
 Mon, 27 Dec 2021 16:57:22 -0000
Date: Mon, 27 Dec 2021 12:57:22 -0400
From: Rob Herring <robh@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Swapnil Jakhade <sjakhade@cadence.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 devicetree@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH v7 4/4] phy: dt-bindings: Add Cadence D-PHY Rx bindings
Message-ID: <YcnwcpPdOOJ7WgSe@robh.at.kernel.org>
References: <20211227105545.4852-1-p.yadav@ti.com>
 <20211227105545.4852-5-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211227105545.4852-5-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211227_085726_738726_55F4BDD5 
X-CRM114-Status: GOOD (  13.05  )
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

On Mon, 27 Dec 2021 16:25:45 +0530, Pratyush Yadav wrote:
> The Rx mode DPHY is different from Tx mode DPHY. Add a separate binding
> for it.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> 
> ---
> 
> (no changes since v6)
> 
> Changes in v6:
> - Add a new binding for DPHY Rx.
> 
>  .../devicetree/bindings/phy/cdns,dphy-rx.yaml | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
