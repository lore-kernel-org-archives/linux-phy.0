Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 546F0C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 22:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKm69RDgBytV53w//UTR+C9d4ej3Io1j/4xnQ3Ufot8=; b=S5ZZI+adtA1DFX
	nFhnqheg5sAvc3MWWevxJ2+rhC2wZT04XSAtH7YHqCApaZrxkrboDQiHlAaCarK8VUwhHcqcZoJm0
	npoO2TvUeBaz6p9R+SDPFlHRRqpZLt3RrpUmI4qPz5jQp8bscWuMAixqQ4Y1cmfQ3LY013r4H+nQw
	d8OK++fNDR2rcdCLjzJhy8iaqdS6lIU7g9XL23mhMobDQ/T+AYH/siFYyN28Cv7XEipEGk634Qcjx
	yHOtLs9jXHhqhU8hBoHR3iG99izjxqBo4qQdM8zupF2kwpo9mDQIuKtoPFV0nEfQ4Uz0CAjxMytz+
	tmIBqF5T3WAiMAU0QjKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHvRH-001qg2-Ps; Wed, 09 Feb 2022 22:27:51 +0000
Received: from mail-oo1-f52.google.com ([209.85.161.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHvR5-001qdh-NU; Wed, 09 Feb 2022 22:27:40 +0000
Received: by mail-oo1-f52.google.com with SMTP id
 u25-20020a4ad0d9000000b002e8d4370689so4145749oor.12; 
 Wed, 09 Feb 2022 14:27:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=n6Zt6SK7/DgvEPgyY5EWkTCnk1/VAko+dmm1b1fAfZQ=;
 b=fVBd38+FCHPO7VRAdEYekxqMAf4FMugwsxAgkhNa8jjtJTHbvY5DTJrWpCK4ouR6L2
 6RrloBbCcGE7fqkCIXEPAnbYil3U9TyVUTgyQzPeZuwX2aYbWtE6IKxof94bq+Ow2t0/
 jwaNGfQEys39cKZ2TyDGGtCU8ld3KT0VWv0kB2VHYTzLWMItguFcLQ1NpzUA4ZSNxmsc
 H590kWbsII8gHO3VmWxxvVyp/nhe7EMfXHmSHR8FDZmRQOx//EW0i8rgJa/e4tBYlmvR
 umT1zijaXe/kw9nIYOdGK6D95zselZvIsjCa5q/QC0o5kt8DkvnEsdMEyVJC9TigBBzv
 8nWw==
X-Gm-Message-State: AOAM5321Muk+TQLd4BCUH1g2xyc8xrsIx8VVsR5cEoExScNIi1JPF+T+
 pjSG0ovxu++KtMJge/IIQg==
X-Google-Smtp-Source: ABdhPJy7dGqenDB3i9wIAZwLtdKrAH1MJUGI4lcZUua+U7n9oq6gYXN9+EkElDvo+3JJyOoYQ6EmBQ==
X-Received: by 2002:a05:6870:1944:: with SMTP id
 m4mr1755572oak.341.1644445657652; 
 Wed, 09 Feb 2022 14:27:37 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id s64sm7227147oos.0.2022.02.09.14.27.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 14:27:37 -0800 (PST)
Received: (nullmailer pid 1052607 invoked by uid 1000);
 Wed, 09 Feb 2022 22:27:36 -0000
Date: Wed, 9 Feb 2022 16:27:36 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, Alim Akhtar <alim.akhtar@samsung.com>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 2/8] dt-bindings: phy: samsung: drop old Eynos5440 PCIe phy
Message-ID: <YgQ/2C7tR/ceRsib@robh.at.kernel.org>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
 <20220129193646.372481-2-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220129193646.372481-2-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_142739_787364_3929D7B3 
X-CRM114-Status: UNSURE (   8.87  )
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

On Sat, 29 Jan 2022 20:36:40 +0100, Krzysztof Kozlowski wrote:
> The Exynos5440 PCIe phy support was removed in commit 496db029142f
> ("phy: samsung: phy-exynos-pcie: rework driver to support Exynos5433
> PCIe PHY") (with its own bindings), so drop the old bindings.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../devicetree/bindings/phy/samsung-phy.txt     | 17 -----------------
>  1 file changed, 17 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
