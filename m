Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66CB9CD1284
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 12:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=exLoByrum6KFQCTzSg2DMR+1HWkLEDDeFgnjIdXMSek=; b=eTwnjRrOWbxlRW
	rKLDdB7shf0Xv6RrzHuKof7ZVCjTFEiV8n+ANNyUhkGmbDraYclhrcbZATXHF2waEyKIutYXAwG3j
	z+9m7ulmwavD4Dk5e3cOv+51G5/AJRbg0Nhh6CHVAiEaA8glGIuk9UXh3Agxggejn0tCXRombaVtn
	e9YJVEf/Jsd0YlhGfskIFTyzyZdGk3sy4UlEGXe4Upahx0/uwzt81pwzOi5DYuwUViClncazyhVRP
	N0Mx5RXEOSXaChnPMVAVJNcQQKPwpwdg5xKcUgnQdSGMTHyDlDEVwOoLa2TBFS8ubhhdOIt66CkU6
	oyUFfIruAm5DAmgGE4mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMBg-00000002bF2-3UH6;
	Thu, 04 Apr 2024 12:27:24 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMBS-00000002b5l-2Pkv
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 12:27:21 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-343892ca0a7so544796f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 05:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233629; x=1712838429; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JgPBPMCw5GyB+aBTeOfPQm+FcgAEUC59VhTOSS1AQpE=;
        b=iulB9ZYXjhgcg6uRu9OXiahA5i3rcPtoUEUk0y+IJ5y/Gwh5KRq2r2AFJBw95z4Noi
         Z+7bGyDK1KRwm9HF191mvCYTT6noSH4csPvVIKYM15EldEHLo2zBjeCTn9kC3TRqwe/w
         43+Xz5aAcllZLA+vKpg/bWMkFA3CVAcbXE7byT+asgBRa0PLiPOTJRMjly+Wtj5b/Y6Y
         PxVWwRR58T/UR6kutOsw0zYZMG3JEfNrvJwnnUDYLjHWQxv3LzWxK8QIZjUN2iyYExR6
         fjIJLPT6HYFWFe6qa1AkYU3MzWWJGHsPZSRweyL02MtL5zxSE5KV2UxGpj3FDw7Iljz/
         qcIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233629; x=1712838429;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JgPBPMCw5GyB+aBTeOfPQm+FcgAEUC59VhTOSS1AQpE=;
        b=J7KI+/xup/sDh/SJsRFlrsLxMxWrU6TENkYGWfK7/ZJhCnBfAxQylBNU7USBM6a5u6
         oho5KhKjDU11udZKoRaSuSoMWin/gsBVkmDMdv+UzvUfObDp4O3ye4mKdPGb8JDIHsRS
         kNOYRbZdFnP2agsoRqgAOSd7STON0gpTB9SDlO5hRnhEJJ2OQOqx4NeNMuzVTpsGn7ni
         bPZkLvBIVrb4Po9aUicKwXt0UpXDhN7+dEmhDvh+l6y9U1sfupg7uJBqY20nfpkmH0Db
         gFvoBgefZDCtZHtnNO6pnRN1NQ+SkgMcIxMTi+mRM69qCT4aNYg7hMp2sz2zr4BiSSal
         3xBg==
X-Forwarded-Encrypted: i=1; AJvYcCVaQ/NqK/flb3XhoxmKsgJti+2BE8KDMDgNyUGDcJjGFu10nppKvfbTzqGX7UP4VqIxQJbEpOLojpdSgVrLmE84/jFvWzXhYgJxgUaGsg==
X-Gm-Message-State: AOJu0Yx3TmfB89XKhYmwzKx7TWjJNSva+GCfFO0jLkUN313Xw65ojIb1
	p1M0n3KoALYbJYAXDFdOnl79/Zue+KwPR6d2Uu0aJDg4w3ZgZRF02d+9cUFo8p4=
X-Google-Smtp-Source: AGHT+IGScuD3FBSROdWx9E6Axce9tMgIrVnBexnpdwLykG2zLE0tclwNZaj4pPDNauwOIO5TTuXZBg==
X-Received: by 2002:a5d:42c4:0:b0:343:7228:f70f with SMTP id t4-20020a5d42c4000000b003437228f70fmr2132667wrr.61.1712233629256;
        Thu, 04 Apr 2024 05:27:09 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.27.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:27:08 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	chanho61.park@samsung.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 10/17] phy: samsung-ufs: ufs: Add SoC callbacks for calibration and clk data recovery
Date: Thu,  4 Apr 2024 13:25:52 +0100
Message-ID: <20240404122559.898930-11-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_052710_991801_4F6540F3 
X-CRM114-Status: GOOD (  14.17  )
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

Some SoCs like gs101 don't fit in well with the existing pll lock and
clock data recovery (CDR) callback used by existing exynos platforms.

Allow SoCs to specifify and implement their own calibration and CDR
functions that can be called by the generic samsung phy code.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/phy/samsung/phy-exynos7-ufs.c      |  1 +
 drivers/phy/samsung/phy-exynosautov9-ufs.c |  1 +
 drivers/phy/samsung/phy-fsd-ufs.c          |  1 +
 drivers/phy/samsung/phy-samsung-ufs.c      | 13 ++++++++++---
 drivers/phy/samsung/phy-samsung-ufs.h      |  5 +++++
 5 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos7-ufs.c b/drivers/phy/samsung/phy-exynos7-ufs.c
index a982e7c128c5..15eec1d9e0e0 100644
--- a/drivers/phy/samsung/phy-exynos7-ufs.c
+++ b/drivers/phy/samsung/phy-exynos7-ufs.c
@@ -82,4 +82,5 @@ const struct samsung_ufs_phy_drvdata exynos7_ufs_phy = {
 	.clk_list = exynos7_ufs_phy_clks,
 	.num_clks = ARRAY_SIZE(exynos7_ufs_phy_clks),
 	.cdr_lock_status_offset = EXYNOS7_EMBEDDED_COMBO_PHY_CDR_LOCK_STATUS,
+	.wait_for_cdr = samsung_ufs_phy_wait_for_lock_acq,
 };
diff --git a/drivers/phy/samsung/phy-exynosautov9-ufs.c b/drivers/phy/samsung/phy-exynosautov9-ufs.c
index 49e2bcbef0b4..9c3e030f07ba 100644
--- a/drivers/phy/samsung/phy-exynosautov9-ufs.c
+++ b/drivers/phy/samsung/phy-exynosautov9-ufs.c
@@ -71,4 +71,5 @@ const struct samsung_ufs_phy_drvdata exynosautov9_ufs_phy = {
 	.clk_list = exynosautov9_ufs_phy_clks,
 	.num_clks = ARRAY_SIZE(exynosautov9_ufs_phy_clks),
 	.cdr_lock_status_offset = EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CDR_LOCK_STATUS,
+	.wait_for_cdr = samsung_ufs_phy_wait_for_lock_acq,
 };
diff --git a/drivers/phy/samsung/phy-fsd-ufs.c b/drivers/phy/samsung/phy-fsd-ufs.c
index d36cabd53434..f2361746db0e 100644
--- a/drivers/phy/samsung/phy-fsd-ufs.c
+++ b/drivers/phy/samsung/phy-fsd-ufs.c
@@ -60,4 +60,5 @@ const struct samsung_ufs_phy_drvdata fsd_ufs_phy = {
 	.clk_list = fsd_ufs_phy_clks,
 	.num_clks = ARRAY_SIZE(fsd_ufs_phy_clks),
 	.cdr_lock_status_offset = FSD_EMBEDDED_COMBO_PHY_CDR_LOCK_STATUS,
+	.wait_for_cdr = samsung_ufs_phy_wait_for_lock_acq,
 };
diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
index c567efafc30f..f57a2f2a415d 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.c
+++ b/drivers/phy/samsung/phy-samsung-ufs.c
@@ -46,7 +46,7 @@ static void samsung_ufs_phy_config(struct samsung_ufs_phy *phy,
 	}
 }
 
-static int samsung_ufs_phy_wait_for_lock_acq(struct phy *phy)
+int samsung_ufs_phy_wait_for_lock_acq(struct phy *phy, u8 lane)
 {
 	struct samsung_ufs_phy *ufs_phy = get_samsung_ufs_phy(phy);
 	const unsigned int timeout_us = 100000;
@@ -98,8 +98,15 @@ static int samsung_ufs_phy_calibrate(struct phy *phy)
 		}
 	}
 
-	if (ufs_phy->ufs_phy_state == CFG_POST_PWR_HS)
-		err = samsung_ufs_phy_wait_for_lock_acq(phy);
+	for_each_phy_lane(ufs_phy, i) {
+		if (ufs_phy->ufs_phy_state == CFG_PRE_INIT &&
+		    ufs_phy->drvdata->wait_for_cal)
+			err = ufs_phy->drvdata->wait_for_cal(phy, i);
+
+		if (ufs_phy->ufs_phy_state == CFG_POST_PWR_HS &&
+		    ufs_phy->drvdata->wait_for_cdr)
+			err = ufs_phy->drvdata->wait_for_cdr(phy, i);
+	}
 
 	/**
 	 * In Samsung ufshci, PHY need to be calibrated at different
diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
index e122960cfee8..7de6b574b94d 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.h
+++ b/drivers/phy/samsung/phy-samsung-ufs.h
@@ -112,6 +112,9 @@ struct samsung_ufs_phy_drvdata {
 	const char * const *clk_list;
 	int num_clks;
 	u32 cdr_lock_status_offset;
+	/* SoC's specific operations */
+	int (*wait_for_cal)(struct phy *phy, u8 lane);
+	int (*wait_for_cdr)(struct phy *phy, u8 lane);
 };
 
 struct samsung_ufs_phy {
@@ -139,6 +142,8 @@ static inline void samsung_ufs_phy_ctrl_isol(
 			   phy->isol.mask, isol ? 0 : phy->isol.en);
 }
 
+int samsung_ufs_phy_wait_for_lock_acq(struct phy *phy, u8 lane);
+
 extern const struct samsung_ufs_phy_drvdata exynos7_ufs_phy;
 extern const struct samsung_ufs_phy_drvdata exynosautov9_ufs_phy;
 extern const struct samsung_ufs_phy_drvdata fsd_ufs_phy;
-- 
2.44.0.478.gd926399ef9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
