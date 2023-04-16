Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28910C77B61
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 10:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XbK2eddfDBDw6Hdu0ruI9s3YR7HUZ3EPOLQRYvTW+F0=; b=xHbR1pYlVRJBVT
	eUpN0tGqoU5Z2G43OQTVzLaNAqSZCsB1P5HXEN4xr4QDgf192wP8/sYvd2erYxmTAkEs5TEw1we9L
	t/T3lQwchSDzFMzK+DjatO8R1wZaBz0YeJOb6n503NOr3yYvX9B2jqrJmJ95c17BS87PFiM+4HLBT
	jVXMep0ZObkkAyaLNmgOuiOdmvneXgv+EEbu8FIA2ZMCo4gqVprtRU/an4EL+Gt/JlJlWqIRPVHgX
	0hicud4WreTQzR1N2du3i7NMDPpmXVZegOqjuFKSQo260c3tvJY8nQwkg1DdCdcxD6Dlek2UqE5BF
	SHbILlplIL/TeJhzw2Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzSz-00DVoN-1u;
	Sun, 16 Apr 2023 10:18:41 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzSi-00DVWZ-1t;
	Sun, 16 Apr 2023 10:18:26 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-94f70a552fcso1184066b.2;
        Sun, 16 Apr 2023 03:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681640304; x=1684232304;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Vw7IkhYneCykALUpZzpj7USB2Ld/fNOUvy0zl1WvSk=;
        b=d3y8JwMRUwKh1tdSMa3QufUNZpkVuowkFvs4vXbquxrQmW8u3zh+YVaqidheSd18Yh
         sSXeivwOOH8D+8PiCzIwl0EluBzr+9LDHM11AiA/JtHuqWxwbIi1PP50x1HeBbs+dIx+
         GAR9wetWmRxOwNik60THfZ4owhwjEkCv9bHYWlG2oLvny7tsaMg5681VpCrmwlljWfMv
         /wvCkvIWlVWZ39PtNCy0m59vaZ/dl71wsBwPGfsJlJRxSzm0LqR8Cy8U4iSU06DUsyE/
         gQLfm8LhsjWqkWVFZxRz8gZjMnreGOJTOz/pjnzDOzrXfhsYMnFiuabKdZgsoL0zsaeX
         PaXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681640304; x=1684232304;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Vw7IkhYneCykALUpZzpj7USB2Ld/fNOUvy0zl1WvSk=;
        b=YTq60tV2+Iad7/Gh8RlqY/ojgE/uEEBJaFFxdoIjh2IRKoyKgpLG2QEh1/7V2rZMKn
         rR37HjFdte9DJ92ZshiLyL+cvDsh6cGXUryUb93ukJpoBDlHPshNKySKJX8bysXIALXj
         no9gFGGf3ZMQXJkZl4+Ob569r6OKI30lZAjuIILVpwHwRdbKeEQ4nkAltBPeqt32nkgR
         AOY++QR3rK/NNW4zsKq5CNQpvIxcR6dna2OdmNIErajM94i8xNbQ1H/E9rkdpxcB0edE
         tDj3S83c5ThTdOBwM367LTj7Xx7UDZsHiffKVKorPbU514rpBJl+x9TJuv6DoSQMg6TY
         eNUA==
X-Gm-Message-State: AAQBX9e/BBt9vhoXttSWMHzkOU3/MYimnM/NOpdU9E74aGZoh2nxgrpN
	dtwuo+208MuXkRdXN2veCtk=
X-Google-Smtp-Source: AKy350baF3wt8f4vZvCbFp7IBlN80m1snCFuzJDRbGXEHsXmYWJBHgGmsrQ4P3yYeHwlqivEcl086w==
X-Received: by 2002:a05:6402:1b02:b0:501:d4f9:3141 with SMTP id by2-20020a0564021b0200b00501d4f93141mr11301812edb.32.1681640303935;
        Sun, 16 Apr 2023 03:18:23 -0700 (PDT)
Received: from localhost.my.domain (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id r20-20020a056402019400b0050476da5160sm4427443edv.45.2023.04.16.03.18.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 03:18:23 -0700 (PDT)
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
Subject: [PATCH 08/12] Revert "phy: Remove SOC_EXYNOS4212 dep. from PHY_EXYNOS4X12_USB"
Date: Sun, 16 Apr 2023 12:16:20 +0200
Message-Id: <20230416101624.15866-9-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230416101624.15866-1-aweber.kernel@gmail.com>
References: <20230416101624.15866-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_031824_633504_9B0294DD 
X-CRM114-Status: GOOD (  13.21  )
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
