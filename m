Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FFD3C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 22:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0lBvdvmLgQDd4Lt0JYHzyQIQQ3vi0i7GnPK12g+yLU=; b=m50V5O8dpAOhzT
	60N6kjjVOcTHsIeHY0MeU/qGjTcrJJRzhxme33ItQw2i9GIS5fB7lf3/S+3MbJi3QS1hbx3dN48BJ
	LdixHdPikTEQC7hjpxEkW62LzwCCGcGKAhxOyk2DxN2R1g5cUDfkoz6VfihuHey29E91MJ2m0WEH2
	81V1Oh4q3ypygXiNHZDqHOMfCqvfFaWpQIcfI2nMBGJqbxZGaag2ipVRJ+gbKrYNQ16Y5Ilj2D1KN
	CcT9/GhSfd7/kRX9pbGpgLPR4hJy485nNXPTwOgO+CE81sZOoW8bmXCv1JJ5846jRvvGU453l9F/5
	L0KIuXeK/6qIHXaDPctw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHvmn-001xH8-Ts; Wed, 09 Feb 2022 22:50:05 +0000
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHvml-001xFe-He; Wed, 09 Feb 2022 22:50:04 +0000
Received: by mail-oi1-f178.google.com with SMTP id x193so4197382oix.0;
 Wed, 09 Feb 2022 14:50:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WffXTGUWmaJ7sTpJG2IxQlCthN1RWy2Bou30UXKrVTo=;
 b=m1xye1gJPROW4VML13EiZqfsSHUpyzFOyS1EXHxPVe+THB5og3R7k3v2ROiYPD8kwR
 XsCpnVABG2kmab8bJ7URs9gXmPxBHfgigydSs5w5Bs161cKycqTxVjp0H0tdhfayY6Ul
 +VwYOtuddv+WYaNg9a4HIdbr9Ef3dM4nX8x1xSFyNfv5VjV1npDgY38mn4MPpeCBr3Lc
 Hww+y8Ey/dQf6QsPySJ2aaTFVs2cE4EouuR0wFfMYeSQLm09BXOAcizCQ8luUJHkxMCa
 G69EPlZiErZytuiUrfxmcy764HmEthf2pknM5WkNzJT1eCWOYriEQHBsqx31iSKj/X0V
 WiOw==
X-Gm-Message-State: AOAM530mYpTMpAKnj1XLkRH2XAcSsQPZFPz9riQcPY4Vtxd/RIdSrHqO
 6gjg8UZnHIbg//SWdOqqfw==
X-Google-Smtp-Source: ABdhPJx8mqDeUisKN1aZZaSd6vum38tFuwaTd5L7VHbg0gs7E9FGeM7654sTp6Au28nfs+jCy+Tauw==
X-Received: by 2002:a05:6808:d4a:: with SMTP id
 w10mr2153365oik.192.1644447001335; 
 Wed, 09 Feb 2022 14:50:01 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id e16sm7174776otr.11.2022.02.09.14.49.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 14:50:00 -0800 (PST)
Received: (nullmailer pid 1091386 invoked by uid 1000);
 Wed, 09 Feb 2022 22:49:59 -0000
Date: Wed, 9 Feb 2022 16:49:59 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: devicetree@vger.kernel.org, Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 linux-kernel@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <snawrocki@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Joonyoung Shim <jy0922.shim@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 06/10] dt-bindings: display: samsung,exynos-hdmi-ddc:
 convert to dtschema
Message-ID: <YgRFF899BNPaZE5F@robh.at.kernel.org>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
 <20220208171823.226211-7-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220208171823.226211-7-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_145003_608373_D48E1772 
X-CRM114-Status: GOOD (  10.34  )
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

On Tue, 08 Feb 2022 18:18:19 +0100, Krzysztof Kozlowski wrote:
> Convert the Exynos HDMI DDC bindings to DT schema format.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../display/exynos/exynos_hdmiddc.txt         | 15 -------
>  .../samsung/samsung,exynos-hdmi-ddc.yaml      | 42 +++++++++++++++++++
>  2 files changed, 42 insertions(+), 15 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_hdmiddc.txt
>  create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
