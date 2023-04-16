Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D108C77B7A
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 13:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XbK2eddfDBDw6Hdu0ruI9s3YR7HUZ3EPOLQRYvTW+F0=; b=XajNFfOzYdNdOQ
	RCILJ8ylu2FdkIRfXB60D9++tjunoM7u2ogJu5G7gpCD8Vf5cNCVtgaEzj4vCiKN6P/hIl+hVFjry
	Ra01cFqTok+dPPs0v/wQJWpeWn6AfGHICaxAdczjB7yeI13oQe1aHiEjCGmMj8Qw+/xzbqiDz/W4+
	xbnMJuPfKE3qcBGJxJgns5KbhmqkYTE3PDPrw6xQMpTCotus+twcZ4nug3bEzqUodDkfZLnbxAhR1
	RwXyVeAWaBybyv5AWYCVkhSqjpPrTXLAjo9DR4lV99KIA6lVOnDCspneZVN86btV7JfM4knM6k1Yl
	3onEsk0fxgFefoLVP9sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po2Y7-00DsPc-1p;
	Sun, 16 Apr 2023 13:36:11 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po2Xn-00Ds27-2t;
	Sun, 16 Apr 2023 13:35:54 +0000
Received: by mail-ej1-x62c.google.com with SMTP id q23so47999658ejz.3;
        Sun, 16 Apr 2023 06:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681652151; x=1684244151;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Vw7IkhYneCykALUpZzpj7USB2Ld/fNOUvy0zl1WvSk=;
        b=cRF1bWrdsBz4f28aZ73WeavD7TVKFP4oorqaP9bWG8O8IiWQMq6oY9JC4JbyW/RXbI
         pkAHJvSNy+9TOSdXB4wPGHxW/STgx2xQCxCS27jEE/M1kjEgCuCakrG5TfRRvPLkA/ku
         1E+4amkPNqjoEeluN/gFoP5QOmn6tt33rYhSIQuGUVve2Dg6r73qDcTd6dcZ3bU3RaFW
         h0wm+l0CGb4J2vvOhwEui7B4ekSLqcRt+JzITkXsBir50i1qqZ1S1A4BYyV/nBVnei0l
         GKmkD9EbNNZqQQggx6rN0Rde62raOEqByS31trHH0ssCuKNBxHuw2NjgHOaN8Vi1ByVK
         34sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681652151; x=1684244151;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Vw7IkhYneCykALUpZzpj7USB2Ld/fNOUvy0zl1WvSk=;
        b=TiwExJMxfad+X1kzaUDxDS460Wk4YKY2aZB9Hy3RDQPKPA2jzMa/9ikA9qdqQdYsyq
         zqt3jsaklPZmPA+0HenrvXW+n70tSgbZutJd02Z2atY8wM2PXM69td5zoVuUChXeRlpP
         +IKmf1i2C98uk7dXsDxLdMVL6Vr9G6dYju3/oN704dTRUHJSKiuwwpeENS7BqKOY++Th
         Ilo5YkodGz+kfpBraAWgjCV9kXm+x4AOrJa8kO8kxEgb1x2VduMyQoI1MTmuODEpmP4A
         DRhZ7BnMzk+FZxjujOLA7G4Mochqy+5yn/AJe3PEusFjCkvUL2ezjn5/j/DRAyI1KATZ
         dmqA==
X-Gm-Message-State: AAQBX9fZ/S8gDDJpPnA+7IrmOqWiuG7TmSXWEhZn5LF6b/HW/1nq317A
	6BQerR+gKWG/1GP6bpaJQjs=
X-Google-Smtp-Source: AKy350b1tv+Q7WC1YUJEbb+ngTtMSVvXW1d2BFu4xZaTGXGIYcrGI3kWjHi0WWPUS/315j1JDD0IHw==
X-Received: by 2002:a17:906:fe4d:b0:94f:6218:191e with SMTP id wz13-20020a170906fe4d00b0094f6218191emr1084789ejb.20.1681652151296;
        Sun, 16 Apr 2023 06:35:51 -0700 (PDT)
Received: from localhost.my.domain (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id gn23-20020a1709070d1700b009373f1b5c4esm5122958ejc.161.2023.04.16.06.35.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 06:35:50 -0700 (PDT)
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
Subject: [PATCH v2 08/12] Revert "phy: Remove SOC_EXYNOS4212 dep. from PHY_EXYNOS4X12_USB"
Date: Sun, 16 Apr 2023 15:34:18 +0200
Message-Id: <20230416133422.1949-9-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230416133422.1949-1-aweber.kernel@gmail.com>
References: <20230416133422.1949-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_063551_949315_A7A3DCF4 
X-CRM114-Status: GOOD (  13.34  )
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

The platform was originally dropped in commit bca9085e0ae9 ("ARM:
dts: exynos: remove Exynos4212 support (dead code)"), as there were
no boards using it.

We will be adding a device that uses it, so add it back.

This reverts commit fee7e1d50c6e6da1d99035181ba5a5c88f5bb526.

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
 drivers/phy/samsung/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
index 3ccaabf2850a..f10afa3d7ff5 100644
--- a/drivers/phy/samsung/Kconfig
+++ b/drivers/phy/samsung/Kconfig
@@ -59,7 +59,7 @@ config PHY_EXYNOS4210_USB2
 config PHY_EXYNOS4X12_USB2
 	bool
 	depends on PHY_SAMSUNG_USB2
-	default SOC_EXYNOS3250 || SOC_EXYNOS4412
+	default SOC_EXYNOS3250 || SOC_EXYNOS4212 || SOC_EXYNOS4412
 
 config PHY_EXYNOS5250_USB2
 	bool
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
