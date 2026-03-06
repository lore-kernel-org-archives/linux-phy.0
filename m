Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94784FCC07D
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 22:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ki+jhxsdgiQU+asm7K7A5RJfYYjUm+fpzRZ7elHbNsI=; b=tquuvURzCbWjMb
	Eqkdml+KNkHqtZNxexy7V6qTG04HhDvdBDAC2G45vGpeSspZDBt16DrNi4LUByQ1qEDn5opZnja4g
	HMDypROgRikG7iN1Okt7CuTiN1pby9mevKauJMwc3PZ2MJ8CuF4DPdFa0s6cm0zwwEc9wL10yB0uq
	7XOfnMQVbpshxe9mKD9qScRoiZwVmozVbizjADUYBk8M4RUt0TE4MLo2Lzhy9hGsh/WLwjjMHhwYs
	yfrPU12iaOZQKfHudgoPt8Y6uzY9JgdPVCDQP5ddrbn0X08oFoMBJ+nqi2I/GnyJOYeUAuIdDBAeC
	6JDmku99+gJRPUxTVh8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vydbm-00000004aSq-1RAu;
	Fri, 06 Mar 2026 22:25:22 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vydbj-00000004aQJ-38DT
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 22:25:20 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-c6e3e4e7388so3892241a12.1
        for <linux-phy@lists.infradead.org>; Fri, 06 Mar 2026 14:25:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772835918; x=1773440718; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BA9nb83nCkXGkJ9IKyGDJ21XOXhsf5BHbt5T5gtrqN0=;
        b=Ly8zLU1V4Rm8KgDsR4ggDCxck3hSO2LBZSIjVVZIBTrvfE4jg0wjpVOG280vgCXosn
         r4RTcCyvUKta/37JXcA2/gLkQEEIcifvdL+Beaj2I+pkZtDKwAGOr6U4McSoCv4WXB6t
         HPgKnQogh5MtcytZebmwfIXwVtPdnYmhtcOgWvwWiLvwmmpVAub8hVw9MYRk419ACs7M
         l3Rhtq5E9TSFJH54HIu1t3YWg2oPLZJiGenIjjrZemdb/v5WiFv64btZXMz3Vm58vbGd
         NK1tF+Gwqu5g4ktQXkAKXKBuQZ20cw2Wtz3MMdr6sOBRB+VoZAYf+RhYIi5xNHd9iQfR
         TubQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772835918; x=1773440718;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BA9nb83nCkXGkJ9IKyGDJ21XOXhsf5BHbt5T5gtrqN0=;
        b=JUqEJec/sSemQ86VZBRqkl6viDKnTsjClrzONEthGdW7TEf70s0oJjgEslAaEW1IVe
         lb3fWoer5U+MHJsFnH70jyw4gs+mHOK/k/deJBE1GPltTjwewkI/qHqXN+JE1dN2Az/Z
         3m0mPty52qRN1Df1jvjvTJ0Ks/sTTwV92013WuFBv0xlUAeDwFgiMPEmwNWAgjDDRqPi
         sp+y8H7oU3nq2gHbu5h+QAXFwARnmyWndXRxZPW5VnVQnehXPwPe8jTpkg3bsY+Zkodr
         Y8LmfsVE2C/20sH3O8mOE+hCO8rIQMvdcNQJrhUhMSFhVpBbWEPhwdBiiIJDxYbsyDun
         83Uw==
X-Gm-Message-State: AOJu0Ywn6dhX0sYCaMjCeG7XzfZV3/o+nGisiaWbJ7cosXRH2f2dmp3d
	C1+t0j+0FD1+l2INzTmHHUs48wyv+1taHyGFUhYZzJ2g87xc9sbdjduxtKDXdBePdZ0=
X-Gm-Gg: ATEYQzwa8IghB7oIqgQ2lUAx0A876AF6yeKpNo6KVM/RiSl1kphzAKJizJ32PM8Qc5l
	Vix3efX1PQJ/zqPx6RUaIOpjPSdGTetHQ26aC4CtuCtsu09Agq66aLUfBC/kZ2yqNwMMnin7UyD
	/nFb304ipyPib4+QCX6kbSTYHlS6pPoNoaDNZ5VO5Nx/g0HQBmcZzDeBpmGUdAt25qMFW2AxBIl
	/mo1BGx2YarjNRJa/FpJzdF70Y4JCAV1yciqnio4l3d56Zpcxs13iZVXQCTVytKdQhqMuIMOtcu
	iHzhxqo1E7qLZsq+kwT8GUIYobgjJoy12ijo/q6p1mObiIlAovHSMIejLka3kt4aAe9oeARY+E9
	2VOzCDHhCcaspdl4AIm2F830q/Uij1x8cn6wWUKNmZbR66miP+LEWozNNzwyFxQRmSSLOObxDZQ
	7GEk3RtVjjPh7E1s+Z5ZzdL+p1U+undy4I44Pi6iOMCZVrok5YCS/M4do=
X-Received: by 2002:a17:902:e790:b0:2ae:5aed:1f4d with SMTP id d9443c01a7336-2ae8245cd73mr32902025ad.42.1772835918443;
        Fri, 06 Mar 2026 14:25:18 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e7c58asm32516605ad.25.2026.03.06.14.25.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 14:25:17 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-kernel@vger.kernel.org (open list),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/STI ARCHITECTURE),
	linux-hardening@vger.kernel.org (open list:KERNEL HARDENING (not covered by other areas):Keyword:\b__counted_by(_le|_be)?\b)
Subject: [PATCHv2 2/2] phy: miphy28lp: kzalloc + kcalloc to single kzalloc
Date: Fri,  6 Mar 2026 14:24:57 -0800
Message-ID: <20260306222457.8400-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260306222457.8400-1-rosenp@gmail.com>
References: <20260306222457.8400-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_142519_783604_5946DEB0 
X-CRM114-Status: GOOD (  10.32  )
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

Use flex array to simplify allocation.

Allows using __counted_by for extra runtime analysis.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/phy/st/phy-miphy28lp.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/st/phy-miphy28lp.c b/drivers/phy/st/phy-miphy28lp.c
index 43cef89af55e..c576fc5569fe 100644
--- a/drivers/phy/st/phy-miphy28lp.c
+++ b/drivers/phy/st/phy-miphy28lp.c
@@ -224,8 +224,8 @@ struct miphy28lp_dev {
 	struct device *dev;
 	struct regmap *regmap;
 	struct mutex miphy_mutex;
-	struct miphy28lp_phy **phys;
 	int nphys;
+	struct miphy28lp_phy *phys[] __counted_by(nphys);
 };

 enum miphy_sata_gen { SATA_GEN1, SATA_GEN2, SATA_GEN3 };
@@ -1168,16 +1168,14 @@ static int miphy28lp_probe(struct platform_device *pdev)
 	struct phy_provider *provider;
 	struct phy *phy;
 	int ret, port = 0;
+	size_t nphys;

-	miphy_dev = devm_kzalloc(&pdev->dev, sizeof(*miphy_dev), GFP_KERNEL);
+	nphys = of_get_child_count(np);
+	miphy_dev = devm_kzalloc(&pdev->dev, struct_size(miphy_dev, phys, nphys), GFP_KERNEL);
 	if (!miphy_dev)
 		return -ENOMEM;

-	miphy_dev->nphys = of_get_child_count(np);
-	miphy_dev->phys = devm_kcalloc(&pdev->dev, miphy_dev->nphys,
-				       sizeof(*miphy_dev->phys), GFP_KERNEL);
-	if (!miphy_dev->phys)
-		return -ENOMEM;
+	miphy_dev->nphys = nphys;

 	miphy_dev->regmap = syscon_regmap_lookup_by_phandle(np, "st,syscfg");
 	if (IS_ERR(miphy_dev->regmap)) {
--
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
