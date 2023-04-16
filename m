Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 903A9C77B78
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 10:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CkrPaODWz0tOd17LNICuEpxmd5D/8HbNtNzmY3cQ5Sc=; b=ypbSnRk+crbhpq
	0Iwe3JaQEEWE0iHJV7ugoGSwIFY/ajWSMrSBsiKqyX9JUTWYS26b9uYOjiIn7eLk4xvxNtEb3A/3o
	f6ssDzIpcsmcCagw65hSNiksbORnEU7W3wIIB8xr5Qebb2MHc/BLbNQJOwCe3rGBeJjDW2gNb4ElF
	DkOBhyGv87dSE73VsKVjKpyWzQMhQd23J51lSk9Oxhd0vrWOP20CZUytw9b9xtjo+fR0eCihdzH8a
	bhk4+aywKTUfyRicgaCsLR/bn9Gf5wAkHocr6YyC5QTpDxYh+t3eycAOWT0IxIecd8t2aMFvedVwc
	ubK2R7xzkN9KkPewmZAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzSi-00DVaP-0T;
	Sun, 16 Apr 2023 10:18:24 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzSX-00DVT0-0o;
	Sun, 16 Apr 2023 10:18:14 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-505934ccc35so3275342a12.2;
        Sun, 16 Apr 2023 03:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681640291; x=1684232291;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C2Jvxyw959FBVgqwdIHjHqfLuFNRZ5ppQl2qELcKy9w=;
        b=a8/reai+fkCe0l97u3b5U2wOLRijCZpCFVTYo9W7WwvGifVyD2Svg5XOangqDnMw9v
         UiQvk2DzAV2i+ZCWAFQf/6bgUeFkblmNvoTTxbnSkRfeiNwAyelGLE3L7Hus0jMxVeXM
         5Xe/OpzoGwoC5Ih4ac9xayLYGRbO/Wft4yl576G4A6GdZlWl6UQKPspsHDch9VcoQOwv
         oEN6Dki2IBGnGA/7V1JeTbXIKTMN4FvNKfu6IyOLQ7F9R/vKjSABVb+9/mjqBpZ8LtmY
         EFV3hnyMz5SAO4Dhu/sQauy3yzQAFpgDXXcGm1+raTjNnE6nlXvp3FAkLShA3ESTSZqK
         8EuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681640291; x=1684232291;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C2Jvxyw959FBVgqwdIHjHqfLuFNRZ5ppQl2qELcKy9w=;
        b=gnOdO68g8kXzeKualFUXhREGws/rZPcp569oCl8mfDKlgH8yUIofin5sKnvedCKint
         4GIQL2jFUpiD2u8V8+cIbv/DdCfKDkmc8kGJtZSIaCA73Iokh3NKqZiTOubWTjr+l0oI
         paSinWU4P0OmW167LgJX8gQkHq+cXMlXbsEjXRffwa0ujPka2u0Ewz/31FhzRlxzhifD
         XwuHN9IVEYrFOU9ddPetp9Wm7UssMeke407Np5z8ffkSRd6gANUGDaronWMSqPXmrxbb
         78Dnz+Iy2EWAJv86iUvqcpk2bI0cwy5tcViumIh6Wjsa4gYJ5CSk48AHIGhxpJybMQZ/
         XScw==
X-Gm-Message-State: AAQBX9dgi9dQXiXvfN/4etllbX7YYGe3Z0mER04PRESk18d8+7BsDMmw
	MJH+IykMeojd+79R0IX6CUc=
X-Google-Smtp-Source: AKy350aSVJC1e8d38M+/4GkG/aB/xdn2FE4imNsQNhQV8/4WJrKgBKEMZUfyCo5fWAX95bzv7TNC2Q==
X-Received: by 2002:aa7:cf87:0:b0:506:77e5:d157 with SMTP id z7-20020aa7cf87000000b0050677e5d157mr9264259edx.19.1681640290762;
        Sun, 16 Apr 2023 03:18:10 -0700 (PDT)
Received: from localhost.my.domain (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id r20-20020a056402019400b0050476da5160sm4427443edv.45.2023.04.16.03.18.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 03:18:10 -0700 (PDT)
From: Artur Weber <aweber.kernel@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org,
	Russell King <linux@armlinux.org.uk>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Kukjin Kim <kgene@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Artur Weber <aweber.kernel@gmail.com>
Subject: [PATCH 02/12] dt-bindings: clock: add Exynos4212 clock compatible
Date: Sun, 16 Apr 2023 12:16:14 +0200
Message-Id: <20230416101624.15866-3-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230416101624.15866-1-aweber.kernel@gmail.com>
References: <20230416101624.15866-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_031813_294029_448B879E 
X-CRM114-Status: UNSURE (   9.94  )
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

Re-introduced as part of the Exynos4212 re-introduction effort.

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
 .../devicetree/bindings/clock/samsung,exynos-clock.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml
index 0589a63e273a..a36781a455b6 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml
@@ -24,6 +24,7 @@ properties:
           - samsung,exynos3250-cmu-dmc
           - samsung,exynos3250-cmu-isp
           - samsung,exynos4210-clock
+          - samsung,exynos4212-clock
           - samsung,exynos4412-clock
           - samsung,exynos5250-clock
       - items:
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
