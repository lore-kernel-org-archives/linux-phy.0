Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1246C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 22:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V2KYJJRKj/4ewIO322gPhoP6RV0Ym1hCHJEQSeeO6BY=; b=n/kb9K8pDIkz2+
	aEpz1JBr2FRb59vc/tYMbdfcUbnU70JbxgqztMi0QECfT/6Gesi7Zha4inOGTklpdGDURwVqhMLDz
	fS4r/8YB3yJ9i7uqSxt7QgWi/ehRRrSsWMsv1qEDLt/PbGlENb4ItmiYnSzgGXkaOYwL2GGgf1ENo
	+2RN70rxJH8FLWPQ1EjORmJamLOoxC6oljb4IQ20P01AhL9+nb2wref7lDI+XX5w8CYPwBltGfax4
	KxO0VfztRS3hpqvGaexRcmJqFXpvi8GCSkdQl04WBNdvJv+b4ds9ZsMDYhJEKn/ybDXdr0P/DoCPo
	Ry4MVbgPozBKlR0dzyHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHvc4-001tlC-Aa; Wed, 09 Feb 2022 22:39:00 +0000
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHvbr-001th5-JI; Wed, 09 Feb 2022 22:38:49 +0000
Received: by mail-oi1-f179.google.com with SMTP id q8so4087128oiw.7;
 Wed, 09 Feb 2022 14:38:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=o7EbDM3Sg4dJqZKRFYlRADRzkTEFhskqXnPZDWtN3zo=;
 b=BcuwlueX+ZA4h7OZ+Fya5m6nL8TlBcbVVAFBC5v+G0fGMX0RY+zkqdcd+gO7jLbhTx
 /KiOqnZEhYYmpJXCvRq2AHOxeOs8iGTzZaBp9SFstkXQ/s0IGFq95K/dATkQv5Wjy2WG
 uTqlHwe520hf57OdTmx2kCdr5GVtwJeCmr2W1cZz3mJ4VHsl8U2UFolVcQG1OTSF1H6h
 j2GoqYn6A1TUilzl20DcZdKKhEfW90q54QkdmVes8aZ/iNVfk/gS/zJ1/gUpVRVDr2QP
 BQQHA6gWYsW7cIpzpf4RZoQfevCdCfAARqM/h3SHEcZxOiMm4bsaCLq1kZHfEP6nbMrr
 S8Lg==
X-Gm-Message-State: AOAM530LryO/PKvadVsqCE47XCSQcdyVtlAj6zOEDJS31PEC0DqGLxWy
 0Le063B0mS82Waa0u0flmQ==
X-Google-Smtp-Source: ABdhPJyC00fwTEI84ZbvpKeVOvCbdh3+1qBMumfSSXhULHlVqUVf+3trh4gQ4rQ7UzAVMaA66zNkDw==
X-Received: by 2002:a05:6808:2011:: with SMTP id
 q17mr2512976oiw.199.1644446326809; 
 Wed, 09 Feb 2022 14:38:46 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id a10sm6994619otb.58.2022.02.09.14.38.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 14:38:46 -0800 (PST)
Received: (nullmailer pid 1072549 invoked by uid 1000);
 Wed, 09 Feb 2022 22:38:45 -0000
Date: Wed, 9 Feb 2022 16:38:45 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: linux-samsung-soc@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, David Airlie <airlied@linux.ie>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-phy@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Inki Dae <inki.dae@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sylwester Nawrocki <snawrocki@kernel.org>,
 Joonyoung Shim <jy0922.shim@samsung.com>
Subject: Re: [PATCH 04/10] dt-bindings: display: samsung,exynos5433-decon:
 convert to dtschema
Message-ID: <YgRCdVy5RJr7acnI@robh.at.kernel.org>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
 <20220208171823.226211-5-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220208171823.226211-5-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_143847_658378_0B635822 
X-CRM114-Status: GOOD (  12.36  )
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

On Tue, 08 Feb 2022 18:18:17 +0100, Krzysztof Kozlowski wrote:
> Convert the Exynos5433 DECON display controller bindings to DT schema
> format.
> 
> The conversion includes also updates to the bindings, matching the
> current DTS and Linux driver:
> 1. Require "fifo" interrupt.
> 2. Add "dsd" as a last clock.
> 3. Document "power-domains" and "iommus" properties.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../display/exynos/exynos5433-decon.txt       |  60 -------
>  .../samsung/samsung,exynos5433-decon.yaml     | 148 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  3 files changed, 149 insertions(+), 60 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos5433-decon.txt
>  create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-decon.yaml
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
