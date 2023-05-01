Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FCB0C7EE21
	for <linux-phy@archiver.kernel.org>; Mon,  1 May 2023 19:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lszLsts/Q2Q7ayX2uw5U0XumPHnd3f6UJMKiEWIRi7Y=; b=SevrUan/YSWA4X
	1e02TPvAeyfptkfQFam6HX3vwl7W4vECDEfoFk0Qqql7RGrsqGA3BQd9xjXoFZkotvb16IAXlHQZl
	KSW0mmIs5v1+Ma8bcrMEjDg8o/NB3sCPAFiJ8AZxbjJ1chhKNLybZqEdkJ59QpMJfkgPka+poI9U4
	fLKXGfPu+8phiYWg0zQ817EOy8Q4imIv/76Ga10AOFzagg/HR1uIsg1g4AFPkkHT4TdTRbxgV88D5
	jBudMVXPLJQWKHNin891cge/7O90Tl9q1bKpFXp+a8t+U0kFGBxfOZBTcmVjC5caEMRJeLDO541zp
	ZR7GNf4Emz8yAMhLRXWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZcs-00GoWy-0H;
	Mon, 01 May 2023 19:55:58 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZci-00GoMl-2K;
	Mon, 01 May 2023 19:55:50 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-94f3cd32799so592074366b.0;
        Mon, 01 May 2023 12:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682970947; x=1685562947;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sVl+1ldEbgG0bY/nnbA49+7exJ4XMFuwhoQlwV/juHE=;
        b=m/BskhkoAc99W7NhroNRS7UdT5dY/EE+WENCsL3WAWHaSFrWoKbKUmi+F8+FlxcGo9
         keLARdtcbUPcdF0MYORoWNIbIMJ/fJ5AJnzU52Y60zydKrykYJBxlZyRp7iIAj/Ni8To
         5r4EO4/XPi+g6BD1hQRfwzbWwS8zHVDCiaVZ3rXFFCfPae3YI1tYFWw9TdjOqGNa6dcG
         NX2hlHVCDAzap072Xh5DzwMO0RbeKi+E4SKP5cu/pCcocudL65n4F9q9MMj3hr2l+dUr
         a6iy6HG4zRDqLqIN/hoX6eeSacwKjIL7/f2yOvCymRG+2w4Nu/hH7da9WD/ejyglAQVy
         tzOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682970947; x=1685562947;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sVl+1ldEbgG0bY/nnbA49+7exJ4XMFuwhoQlwV/juHE=;
        b=GSTQh+jlkprTKreunU6tx1EomhyXbM/7x20mr+FxmLy54/JiurSFNWbSADkdTV2CdO
         yu5kUyLNGnkxHMEPVl5c3Ksv+MeC32DMHjIrueFYEf+O+zCpsv9JDfJ3s1NiSqIu4uST
         s2k20e9EZGUEpkN42gJcfdzjaHp9zHPC6hrMAAdqlSygivblTm2XatFSaZ3CNQyqNj9N
         H8i+SVX/bY4MkSuyGeJ4O6po4RdsR0pZz8mrnsEXyuiwI4XCaxatkKSDSteGZ/6qgJ4O
         aUmhfktxfD+79XJYdaqWcwLUKOiMDyjDHGj5OPhUtVDX4X6R4ROZwNdZfdy7Zm2ElXxp
         HB3g==
X-Gm-Message-State: AC+VfDww4vidlMBxi+/jsy+oJiuORwZQGlZLd34NvVJgh3Gu8mtLttXZ
	Qv9dSJZOGRsfh+oxskiRr/g=
X-Google-Smtp-Source: ACHHUZ7jrkT0xfHVPcIzTIZhHTNk3x/WPV+vnt2Yz0ptrGIMq9z5ndA7ZxekxkLXc/Qxc166p+NkbA==
X-Received: by 2002:a17:906:6a15:b0:94f:a309:67b7 with SMTP id qw21-20020a1709066a1500b0094fa30967b7mr12450638ejc.56.1682970947470;
        Mon, 01 May 2023 12:55:47 -0700 (PDT)
Received: from localhost.my.domain (83.8.115.30.ipv4.supernova.orange.pl. [83.8.115.30])
        by smtp.gmail.com with ESMTPSA id og36-20020a1709071de400b009600ce4fb53sm6333650ejc.37.2023.05.01.12.55.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 12:55:47 -0700 (PDT)
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
Subject: [PATCH v3 08/13] Revert "phy: Remove SOC_EXYNOS4212 dep. from PHY_EXYNOS4X12_USB"
Date: Mon,  1 May 2023 21:55:20 +0200
Message-Id: <20230501195525.6268-9-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230501195525.6268-1-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_125548_788047_3EFCC560 
X-CRM114-Status: GOOD (  14.15  )
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

Support for the Exynos4212 SoC was originally dropped as there were
no boards using it. We will be adding a device that uses it, so add
it back.

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
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
