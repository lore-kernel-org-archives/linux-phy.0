Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69BB2C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 22:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0rLjJ9I2eUs8ygJSPELFeHwQcyWGacl0R99THIntVSI=; b=qtpiVvOBUD6yxx
	sfK9s//mh14rJfZhm8yiyVBqXSXBDD+EdTX6FUBWSGFeO6GNzN5WTaCqgIV7eZe1sKJOPJp2RkUlk
	yaNu8EylZWHhoDRLgExyQ6nQTKRotNnHRvWhBurNUaj1lXK5wFHXP+sCwRuEEWhbmU4KA0CqYvg2O
	J71tIFuCBtBlqQIime7pcf4wAnxJ5TTVReP94EHT5iQlrdiSlb+DO1jWRvuv5R+nVsd+T9VyH944P
	hcldcKuR5voDqEysRNJvJUFfnrnrVbr1OV5JbZGq9iGFMk/O2ojtWxTFiat97qJlOf4hvwz75H14q
	Bm4WYgt54K8h03yxq8oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHvwE-0020O9-Qp; Wed, 09 Feb 2022 22:59:50 +0000
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHvw0-0020JQ-Fu; Wed, 09 Feb 2022 22:59:37 +0000
Received: by mail-oi1-f178.google.com with SMTP id u13so4148681oie.5;
 Wed, 09 Feb 2022 14:59:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PS01IT7f00fD8ocmfo6l7+3uWA7i08pGf7Cni3oWefw=;
 b=7ORbiqKzKq2rukmmQdAyEHyvJlaWwtrVpklW5wqCw2YmJVzOsZDEsnGN/SRVt8GUbr
 bbXjm4jAJOuJh0Ax9AH+R2wF74l530YfFU9N6mrjRK2C4jxkmiWNhYWGMVmguCaaOJWe
 1PpXfsLl+I+s+9QT1VOgLIj00gHzSYUW2biumomf8MdKFHPtLAGxeMlBPf+/+XPyfLdn
 QXw+NiWJkSF8ZHzUN1kG2bXDnGjqpfXdAe7FymO5THCOVUe/2NdwQvjeqEah37LuoLSK
 9kSoDHMXCAEy1kjGltseNLNuIm0MMNksfXxQfe/kLTWQJYWIizBjwAYm7ddalqRDCSFY
 Wwdw==
X-Gm-Message-State: AOAM531+vP8p32TuH3h/rQS9r3diLYAqn1TX47XhM0cGqv2NEZp9229h
 A403lRw+BRMk/jMAjYao5w==
X-Google-Smtp-Source: ABdhPJwffIJTZ9p2vpY4Y+kXCCTdGMwKen87G0RMQMlsFMD0Ah/wmDmiZu3aRdaHDHjct16QO26o8g==
X-Received: by 2002:a05:6808:1903:: with SMTP id
 bf3mr2586558oib.18.1644447575874; 
 Wed, 09 Feb 2022 14:59:35 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id e26sm7532250oiy.16.2022.02.09.14.59.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 14:59:35 -0800 (PST)
Received: (nullmailer pid 1107859 invoked by uid 1000);
 Wed, 09 Feb 2022 22:59:34 -0000
Date: Wed, 9 Feb 2022 16:59:34 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Joonyoung Shim <jy0922.shim@samsung.com>, dri-devel@lists.freedesktop.org,
 Seung-Woo Kim <sw0312.kim@samsung.com>, David Airlie <airlied@linux.ie>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>, Inki Dae <inki.dae@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Sylwester Nawrocki <snawrocki@kernel.org>
Subject: Re: [PATCH 09/10] dt-bindings: display: samsung,exynos5433-mic:
 convert to dtschema
Message-ID: <YgRHVpZ7WNgg4QXg@robh.at.kernel.org>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
 <20220208171823.226211-10-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220208171823.226211-10-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_145936_562592_B63E122F 
X-CRM114-Status: GOOD (  10.50  )
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

On Tue, 08 Feb 2022 18:18:22 +0100, Krzysztof Kozlowski wrote:
> Convert the Exynos5433 MIC bindings to DT schema format.
> 
> The conversion includes also updates to the bindings, matching the
> current DTS and Linux driver: adding optional power-domains.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../bindings/display/exynos/exynos-mic.txt    | 51 ----------
>  .../samsung/samsung,exynos5433-mic.yaml       | 95 +++++++++++++++++++
>  2 files changed, 95 insertions(+), 51 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos-mic.txt
>  create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
