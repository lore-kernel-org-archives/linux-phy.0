Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A575C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 22:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0rWFdjefkYPrFqCZkkQ0lGjkkWirrRrT6DV5Z7YRUw=; b=oYR+D85JfatJaq
	XeHPKuNqpr9M0ow1ZDP1KBVpViSsnV43GCEmRFA/HTSEqVgET0Nm4FYYZgV4LHFxrZb5bqWiZgdDJ
	nGrVKXGrhVDXALTd4Y8smpn54Ti6X5ZNUWt3AsSm1dYZgM3WSYILmEuOJnBGs2yUMO34xKtPjLS23
	daJLsGpwYUF9FhMJw3SPO0HU9Tj+Khdo7VkJXnboOjN+2106MSt2X2Vpfl/7VgrLaDlxhdZM3Y3q0
	hn089hQV0sPqtPg0u2ZZXG+f13bytybWgKFE7p7dlqHQCtfydyKqXiwgC/m3Rv2bAtY87EGq6YdBO
	SqfpqhOv7U1J4Dy6gOOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHvr8-001yNs-O3; Wed, 09 Feb 2022 22:54:34 +0000
Received: from mail-oi1-f181.google.com ([209.85.167.181])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHvqv-001yJF-BP; Wed, 09 Feb 2022 22:54:22 +0000
Received: by mail-oi1-f181.google.com with SMTP id s185so4148825oie.3;
 Wed, 09 Feb 2022 14:54:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6GbViqjX2s1KVg61FHQ0TVRuw5O1ks6inA3ssFWIfJ8=;
 b=LSwt5AzuuEPVc7MToE8hzRP9/tC+O19joKZJNFsreIBLu4BTmFb7ff1Q/wnQHYT9mZ
 kegT1khxCC0+ZcQXPilKmIyWJpOf0zlRLbu53+TI9LkPXX18tUxL+sfWNbCFDKlh0NeE
 AjMeFFESqdh/qv20VSARlhPXFWVTkofwVKQi/GKjQ5FVhpOI7FFNj0NmVebgYbzrijm/
 BIAJipY7dsZgeyUERvvVeQ2qAD3JIVCoToPL9bEg6mv7yw1rK2HQjTlXXI4EhBBR8SEf
 tJYoGh0m1WY1IK43Z2FxMN8ZOBIPjhiNNcOcVNrHEkA0FfvOHEyGk9DlqztydgSMrYDK
 LKmA==
X-Gm-Message-State: AOAM530ETRawwB//QIBJnqYFC8mfbjpzAKfG63ugH2VHoBwPkC82ZRPE
 DTQ1p1EJ43cciDBHO8r8Lg==
X-Google-Smtp-Source: ABdhPJxTGXgRssJw2GYnmEEUbCzvymNHxtSMoA4l0QobCAsPiTRJLeonWFEGnxjf3OjpdEJjkbBNHw==
X-Received: by 2002:a05:6808:1302:: with SMTP id
 y2mr2365158oiv.308.1644447260712; 
 Wed, 09 Feb 2022 14:54:20 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id p11sm7699220oiv.17.2022.02.09.14.54.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 14:54:20 -0800 (PST)
Received: (nullmailer pid 1099593 invoked by uid 1000);
 Wed, 09 Feb 2022 22:54:19 -0000
Date: Wed, 9 Feb 2022 16:54:18 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, dri-devel@lists.freedesktop.org,
 Inki Dae <inki.dae@samsung.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sylwester Nawrocki <snawrocki@kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 linux-kernel@vger.kernel.org, Alim Akhtar <alim.akhtar@samsung.com>,
 devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>
Subject: Re: [PATCH 08/10] dt-bindings: display: samsung, exynos-hdmi: convert
 to dtschema
Message-ID: <YgRGGh6MZaTM3S9B@robh.at.kernel.org>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
 <20220208171823.226211-9-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220208171823.226211-9-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_145421_411982_95A0A869 
X-CRM114-Status: GOOD (  10.92  )
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

On Tue, 08 Feb 2022 18:18:21 +0100, Krzysztof Kozlowski wrote:
> Convert the Exynos HDMI bindings to DT schema format.
> 
> The conversion includes also updates to the bindings, matching the
> current DTS and Linux driver:
> 1. Add required properties: VDD supplies, power-domains.
> 2. Add optional properties: HDMI-EN supply, ports.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../bindings/display/exynos/exynos_hdmi.txt   |  64 -----
>  .../display/samsung/samsung,exynos-hdmi.yaml  | 227 ++++++++++++++++++
>  2 files changed, 227 insertions(+), 64 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_hdmi.txt
>  create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
