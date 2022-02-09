Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71DB5C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 22:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXw7qwoq8Z7ZWHu1r9rRLGkEgzIxppcxL0hOMla/NRE=; b=oBPRqylOHg5CQx
	AsWllewdEOhjr0gf1QPA025Uz0Muig4qxNLxQbUE/KjMz8PGF15XHaEtIaGmyzokjDMWqihHHqoCV
	U65foaufmFzcRFq41C1hTWpKr/2cGLfeKKiwbkcfA4kxuqRM/U4X7SaRMq0tRAugaA2jxwfJ2UPtE
	CW6oqiw5gwvOHYBDCla6pNZE87op1NnltkVhm2MmoOzbs4G8b6Y58twpQXSFKqYzhoh77bmS5nK08
	4L/6Fj4qMsyPHGwE89ZGBV7ZURfQpc7ZipeOuc9ssxzOMxZ/Zg5ctsgNubLsTvH7ph8Q4MfgL5m1Q
	EEwiqhMK8FamPejJ11aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHvSq-001rBG-SV; Wed, 09 Feb 2022 22:29:28 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHvSc-001r3j-Ow; Wed, 09 Feb 2022 22:29:16 +0000
Received: by mail-oi1-f175.google.com with SMTP id t199so4043928oie.10;
 Wed, 09 Feb 2022 14:29:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Y1j55Hi253ENIjk9c8eQJUDKu/kw6HxF3YDkUmKAaFA=;
 b=en06s3/xjlJJFhbGZTGkBPElBQOQ7v0c/Xv3T26zzDrtmCaM46rh1gSXBha1Ao0f7P
 cotdTbu810O9DKcuIHLqC3qOKsVNr/AnPTpx74ddPJcNy78caTdHbG+qaG8Lw88Fbsni
 73LuVlMu1Kc7T15sSJWQS/JmD+qygYe0hJzDNFSYcuXfb3S/8vJvXwPhWuW/oxwkIR+p
 MsEPvL7d4qac7s2xZahApyRPO8FZcbkYcYCAV46rEWQHv/mZxZcozZR47yUP+GXlGrxC
 yh8FmNBwvT/wz9H8+6SimV4PN+YdbnqBuI0gJ9w53DZHjYmVv6eEVrctfSL1dbO4/35M
 Qj6A==
X-Gm-Message-State: AOAM530xFZI1aGMG8gQrG69gQ1rpcoGq7MUJsCE+bER6MU986UogHV1C
 i324DZL9Vp4NMfC5zlUkVw==
X-Google-Smtp-Source: ABdhPJyWHZDh7iGpE68bYX52cJf57I+WPA/yoHKidBDIJKLnhHEM6X7QjjesMGIyqJ36cy6LVjG3dA==
X-Received: by 2002:aca:aa54:: with SMTP id t81mr1901323oie.126.1644445751859; 
 Wed, 09 Feb 2022 14:29:11 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id ep17sm7660740oab.21.2022.02.09.14.29.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 14:29:11 -0800 (PST)
Received: (nullmailer pid 1055586 invoked by uid 1000);
 Wed, 09 Feb 2022 22:29:10 -0000
Date: Wed, 9 Feb 2022 16:29:10 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Guenter Roeck <linux@roeck-us.net>, Vinod Koul <vkoul@kernel.org>,
 linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 4/8] dt-bindings: phy: samsung,dp-video-phy: convert to
 dtschema
Message-ID: <YgRANt0hByXkupTj@robh.at.kernel.org>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
 <20220129193646.372481-4-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220129193646.372481-4-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_142914_831211_79383D3F 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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

On Sat, 29 Jan 2022 20:36:42 +0100, Krzysztof Kozlowski wrote:
> Convert the Samsung SoC DisplayPort PHY bindings to DT schema format.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../bindings/phy/samsung,dp-video-phy.yaml    | 41 +++++++++++++++++++
>  .../devicetree/bindings/phy/samsung-phy.txt   | 11 -----
>  2 files changed, 41 insertions(+), 11 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/samsung,dp-video-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
