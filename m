Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF95EEFCE4D
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 23:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l/QppkciLXjz3hThnMRoChUV6EfAQTYw4MIClrLw2HU=; b=J46vXlXntNG+tA
	kau0qyP3Xg5bn9DCHiSZT2imih+5QZRrqUxEe5EVIA9pS4DA/WBaW6LagmDHVVYGt41TOIRBvbvMu
	8pl0vHF2xn72QmiZccYKAkU98D4iGuOZ9CKI7XEJQm65HDkda8OEFA9UAueR0bZY2EcPl0An8R/35
	9d+CTz/Iw13pI4cJeKvDVfUbfPgEqkezKQxx0iGo3qdtVIlYE7FRWG5lXkrsm6kjwlNLx5Sov3Zcp
	bT2uNwgKSbcDcQIvnQPqYaS0Iu+WNTKGTezK3N8WG1SmyVnRPPhunlkpltz/KT7OD70kZ4RnlrWwz
	eBCiBLKbdB+iYgQmZ1QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxveR-00000000d5P-3Lmt;
	Wed, 04 Mar 2026 23:29:11 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxveN-00000000d4h-2Wq9
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 23:29:10 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-8272a56b91cso6211380b3a.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 15:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772666946; x=1773271746; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g3Yf+D04UD++q2u6SPTjJOtp/z2TTx4w7P+/iR0x8sU=;
        b=XfIWDXZrTgKF/MjvnWefnBSHVoOhFktP+oVyMvpupAvQcJHigBTWxDWobekWcE3Uah
         cv4HRT86cSqONJAQzJVYe4tox68z3n1mH4atw0FIp060PYVLnoWuHDoam1NhRSFVeLn6
         FFPIG0scRZcEXFPgacZfXLM5DDPM/7Z8fBUJDB/MlQgoqtDyRvMDkfXTyvgtsufDye0t
         6IHFAz0qIxE1erZhI7C5DaoJfUKBsD06Ajda0cfPG9FnWcNX3xvNOzsle+rTUS+vZG5x
         3F4AfsVqoa2B73y0QcpW/P3lGtQ1ke/a+MP5i0Bpo2V4pTydubdseDq+c7H8zfCS8fJf
         2SYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772666946; x=1773271746;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g3Yf+D04UD++q2u6SPTjJOtp/z2TTx4w7P+/iR0x8sU=;
        b=ltFOTcr+3RScZpQNqlvuX62xwzyItj/IGTz5aPekQNlEc25d5QI8npL+m1rEBNs9LP
         wK9WKSdQTX/1xsEZmpmPS2J3zk+vTXGRDpHdWX71kcHM+6PNCY7A/IdGf+mAr+zXQ2O1
         mWRnNobNycP7455bPWHK8bYpnSVqVFCyEF1n5qW7tJr0URRIRxhC/uQiA98J4H6T8ehC
         Okbu/l7EDwW+I7LC9E2wQI/bFRV8LMUrbImCuVbXGIoY1t0FPjpyIWQ0Fmxd80ZOCseh
         ObX4XZWW96yIjoOE0kb6GraVd2ZBjC9oTIkOvmaoPBW3KnJn+Hram84c8pkRIPltXgQX
         SiZg==
X-Gm-Message-State: AOJu0YyGKyQdvQtfnCG3pBJD/SxfGechd2pueZ0ZQLcHzYT86lAACvC0
	SKTtPI7BmX5BecXH4rKCpOpFhv2hgbWO4NY37dfOE8I3iHZpvnQHQgRAEUOPqiVqD30=
X-Gm-Gg: ATEYQzz0EzBuD9hM3rRZKcfBfEL5dZFYXZLy8JP96bZTSfLENM0cxVwNeyu3IvDXZCn
	3CWHrVRkX/ESw1Y4Ke7gTx5lIYlCReI5Fknl6kd5XfuWIJt3CpFgX/tVc5kT4LpBcI9tWGJjec1
	R+HjM1OpWvN3WJ7PtiduMGwZ0wZagk6fnbzZ3X88SlUHUxyuTFCyQR5CUNA1Mvd5TOffQzeqVIs
	kfFows4PB6dtoLaNawmpqOax8n81LtBSabBFJiD4/Upl5gQHhyCOVCFu9V0HJ9d6X5TOoRTuoOE
	090yFy2Xj1r0RnhVXJuuxJFeIvdNKLJ17WH+xZaDkEP+jHbgwbqc0cIWPXMw/chrP/bM2ryhSaj
	jR6kSk/bn6rQjk98Hq98S/d2TtmyUK2XeKl46Rf666aeBtvMvM2KO0ggrFWqDhYNU9T4h6xZvII
	GCePHiO+yL+DVwCb7Rhb9kyJ8yV0XEVMP8KuZ0yDBuMdL7ZzVRn4QVNA==
X-Received: by 2002:a05:6a00:91e2:b0:829:7553:afbe with SMTP id d2e1a72fcca58-8297553bf5emr2861233b3a.57.1772666946447;
        Wed, 04 Mar 2026 15:29:06 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8296c9f83f3sm2904789b3a.0.2026.03.04.15.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 15:29:05 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: linux-phy@lists.infradead.org
Cc: Patrice Chotard <patrice.chotard@foss.st.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/STI ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list),
	linux-hardening@vger.kernel.org (open list:KERNEL HARDENING (not covered by other areas):Keyword:\b__counted_by(_le|_be)?\b)
Subject: [PATCH] phy: miphy28lp: kzalloc + kcalloc to single kzalloc
Date: Wed,  4 Mar 2026 15:28:48 -0800
Message-ID: <20260304232848.469446-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_152907_637772_C9A415E7 
X-CRM114-Status: GOOD (  10.77  )
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
index 43cef89af55e..fd931ede7162 100644
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
+	miphy_dev = devm_kzalloc(&pdev->dev, struct_size(wiphy_dev, phys, nphys) ,GFP_KERNEL);
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
