Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2E87C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 22:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XvF9G6l6LuRJUoYcaPw3IQi3by/7sBmOi7ivrD0sxRw=; b=ebCuflwr1eR081
	+ctcPzl3gKBzoXax42gP19R0XOa6uSd59ClN0PdSptVtC1G6rnwmGVgivuSzAoMptGN+Rh7e5g7rK
	bolE2klNVP6BpkbemHr/k0f3waQM7DWxspXxoONVveaPTHiVLFXjdoAHAZAhCxRp1bWB8+cuig6/8
	oNvRw1/J08dPMA6EqnZ+aTN+gDmV1Ds9lupAdBmR3RKhE5sc11V2EMbYIPa1ccTqOpXxFswXicMeU
	9Z0IdATK8q6olKwqHg5tNwwqjN/lEp4VPWnzyQwlUSdHnoOKqXnHbYqKqTV+ouLfKo1ytpl090V9k
	J+FUy3TTUKU6E50Y0AFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHvox-001xv2-9K; Wed, 09 Feb 2022 22:52:19 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHvoj-001xol-VU; Wed, 09 Feb 2022 22:52:07 +0000
Received: by mail-oi1-f176.google.com with SMTP id v67so4097020oie.9;
 Wed, 09 Feb 2022 14:52:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=81LsmVmsIyFRiRR0GZyYCY+f6XNSwVWGjlc1C5pOq40=;
 b=XPlkcs348nOn4Ws2hXQm0Gvo20J30GKwWkb+2rWOjZKRjYa/h2Yd28/akh9h2NCPbB
 +1FQ0pjx754VauIh4S1wgnwf/PUFpVV6OnCnV+0RaCp2pQIuQ+s1ZDVbWKPi/NvqGbi5
 9rY6viqBNYUYEK5b8x1Mj3KtWwrrLtyOq0FUfWD6bx8nYRJOn3itqEIWFjDdbaqeVEoV
 NPFVCjc0fZvSohIusQemqdYewYSzFQg+0ognl0XOkt0KV88gerSVh9ZCP3W7sFGXKAme
 +MmpA8lRG97K03DNV0clef6hzrntDVK4oLyOo1FcFeRZ4ld3ZHh4DjAmJRjQ3++0AcdM
 vELQ==
X-Gm-Message-State: AOAM532fVTOzpW/piSSXihp8b1p3mZACCYHZ/yjqMg/YH+A5lxEvUlBb
 kiR0bsdm8N56s91Vz3UV8w==
X-Google-Smtp-Source: ABdhPJxhDG37kNewELAxYMxYsCIOApDp892YsjkBS8cWBqFp2a6lGLrKakiPXdho3A+kprdu+INhvA==
X-Received: by 2002:a05:6808:1154:: with SMTP id
 u20mr2513366oiu.169.1644447125325; 
 Wed, 09 Feb 2022 14:52:05 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id 100sm7174314oth.75.2022.02.09.14.52.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 14:52:04 -0800 (PST)
Received: (nullmailer pid 1095802 invoked by uid 1000);
 Wed, 09 Feb 2022 22:52:03 -0000
Date: Wed, 9 Feb 2022 16:52:03 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Inki Dae <inki.dae@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, linux-kernel@vger.kernel.org,
 Seung-Woo Kim <sw0312.kim@samsung.com>, dri-devel@lists.freedesktop.org,
 linux-phy@lists.infradead.org, Kyungmin Park <kyungmin.park@samsung.com>,
 Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Kishon Vijay Abraham I <kishon@ti.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Sylwester Nawrocki <snawrocki@kernel.org>, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 07/10] dt-bindings: display: samsung,exynos-mixer:
 convert to dtschema
Message-ID: <YgRFk12N+lLo0WL/@robh.at.kernel.org>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
 <20220208171823.226211-8-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220208171823.226211-8-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_145206_037072_E3099382 
X-CRM114-Status: GOOD (  11.51  )
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

On Tue, 08 Feb 2022 18:18:20 +0100, Krzysztof Kozlowski wrote:
> Convert the Exynos Mixer bindings to DT schema format.
> 
> The conversion includes also updates to the bindings, matching the
> current DTS and Linux driver:
> 1. Add clocks required on Exynos4210 and Exynos4212 types of Mixer.
> 2. Add second memory range on Exynos4210 and Exynos4212.
> 3. Add interconnects, iommus and power-domains.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../bindings/display/exynos/exynos_mixer.txt  |  26 ----
>  .../display/samsung/samsung,exynos-mixer.yaml | 143 ++++++++++++++++++
>  2 files changed, 143 insertions(+), 26 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_mixer.txt
>  create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos-mixer.yaml
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
