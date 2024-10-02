Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F7A4CF31BA
	for <linux-phy@archiver.kernel.org>; Wed,  2 Oct 2024 20:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/LaNEnCOeYqan7XatLiAZbf93C+RaMXMh6dIxeXd0Cw=; b=p9Ze3cVhic7ZBf
	N1s9M08/NgDMpVNCSwmkBb8WoQ0KEPd5+Z4GzItUMBTrl+3wIwOblmjPq/vnAok242oUHUfCFFYe0
	BiCqM5Axv3SrzxiOVKp8zxXz2BUVNP0nKlNM0hd+jNssQtC3Pd2JFXKutnuzZ1cBKIsHCcf2kpbwe
	w6nABWxDmRmtIutTDx1B/18/yqms47op6D4H+WlBSaAFqaA+aSN1fUglFSMyZESyjL5zH/0LZyWfx
	f+ky0goNvHv64eaI0EKCUNMxwRYyDndNRja6TZwd/9jgWe3Gb56ibMYkYYaxUi2TKljJICmJNCNQc
	KUXHsB2bu87aWlI1KOSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sw5o7-00000007O6Z-0hlG;
	Wed, 02 Oct 2024 20:18:47 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sw5lh-00000007No4-0xo7
	for linux-phy@lists.infradead.org;
	Wed, 02 Oct 2024 20:16:18 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-42cd74c0d16so1283595e9.1
        for <linux-phy@lists.infradead.org>; Wed, 02 Oct 2024 13:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727900175; x=1728504975; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=grqdGWxVlr6gg9Igkyge2iFlQEJRxUTK9OOJod+O8as=;
        b=mNzaCv8yLKxrzB4+7GQACbq/CqzHMI1HKnJGFE4tngZgKEfIuTwvmipHRxMQUw/92J
         +DVS/k8+ky+hlPeUTE+2jsB24AlZW4ADsOc/iUrowQTvh5hCu7zbKNyJCCF+vpieoWvd
         PTfmkAoTZSVbifZ+wSzsY5e6QeT0QRK9nhbzHmB/2ZoxCxaD1NZ6qRvDRgMJMsboP9gx
         T0AJuMWaKaaoBLNnHT435z6gsAZT7RifPHmtL0LUE2DxNkJ78X/OrzS4bR1Y5eNAAcco
         Nah9qU1VDhGPo9QpEEJHsTakjIS1Rtc8yn4cuwKKCxZaiTGeEnD9z3Cq4GmGgfQ2Sjty
         oiKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727900175; x=1728504975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=grqdGWxVlr6gg9Igkyge2iFlQEJRxUTK9OOJod+O8as=;
        b=hc7d6CtjnEDqDAm/c+zdfFv2s4KlmauWm3CFLp4b746e6XWUq9uLaRDZFomnqYaw2v
         0eOj8elrOCUIBCYpv63Um0UBu6bGiPUNF+45bD4K7YMUN/pu9pwb2QrEUuFMuRZy9J2c
         0QH9SbB/msGnIGFuc9MhncEXl16DDYDlibd9b5ncIpGBBrL1HvagjxsJQekxE1bgw7j/
         PvT0G6t6+I5Wn4x2o11tPaVvWSBUmqe/YuX29GjDNwXjSlXkKSOxDa2PhUk1LVfEf5LO
         mru+irk3Le9xSEYnP85ytYNxH5i5q1UXv+knfdIYWd3ovckM+gxw3wOhcbCWnHhQnG/U
         izJQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4QgQe3++pFAQmwV089KbOKlTWPX2ob92DnBoD4/gZ6MDYqTbYgyibxy6uoOe8J0kCkFJrckFusqk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcpTOqyURRP4Wvz/Ji4zf3ft99QR0fnJZIfu0Mip9rOoEf2Sor
	NMZepSpC9u7H7HHO/tBZZuRRnnYyJLss8dZ4TQx9wz2Fh0s6j8WOPB4O7gVdX58=
X-Google-Smtp-Source: AGHT+IEQc2WmlGwouFQBkWQzt6fGr5tg/HyKqMkIdRZTfK8Hcv4Eq8Fi6eRvtniBCRuj83IQhPoGdQ==
X-Received: by 2002:adf:f285:0:b0:368:37ac:3f95 with SMTP id ffacd0b85a97d-37cfb9d32d9mr2626016f8f.31.1727900175454;
        Wed, 02 Oct 2024 13:16:15 -0700 (PDT)
Received: from gpeter-l.lan ([145.224.66.77])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cd564d2e8sm14850600f8f.18.2024.10.02.13.16.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 13:16:15 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: vkoul@kernel.org,
	kishon@kernel.org,
	krzysztof.kozlowski@linaro.org,
	alim.akhtar@samsung.com
Cc: tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 2/3] phy: samsung-ufs: add support for HIBERN8_ENTER and HIBERN8_EXIT
Date: Wed,  2 Oct 2024 21:15:54 +0100
Message-ID: <20241002201555.3332138-3-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
In-Reply-To: <20241002201555.3332138-1-peter.griffin@linaro.org>
References: <20241002201555.3332138-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_131617_291826_05126E95 
X-CRM114-Status: GOOD (  14.49  )
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

Add two new states CFG_POST_HIBERN8_ENTER and CFG_PRE_HIBERN8_EXIT to
the phy driver which map to the new PHY_MODE_UFS_HIBERN8_ENTER
and PHY_MODE_UFS_HIBERN8_EXIT modes.

These are used to program phy specific calibration values when entering
and exiting hibern8. When exiting from hibern8 state we also update the
logic to wait for cdr lock.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/phy/samsung/phy-samsung-ufs.c | 18 ++++++++++++++++--
 drivers/phy/samsung/phy-samsung-ufs.h |  2 ++
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
index 6c5d41552649..7162ae5c7bc8 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.c
+++ b/drivers/phy/samsung/phy-samsung-ufs.c
@@ -87,6 +87,12 @@ static int samsung_ufs_phy_calibrate(struct phy *phy)
 		return -EINVAL;
 	}
 
+	if (ufs_phy->mode == PHY_MODE_UFS_HIBERN8_ENTER)
+		ufs_phy->ufs_phy_state = CFG_POST_HIBERN8_ENTER;
+
+	if (ufs_phy->mode == PHY_MODE_UFS_HIBERN8_EXIT)
+		ufs_phy->ufs_phy_state = CFG_PRE_HIBERN8_EXIT;
+
 	cfg = cfgs[ufs_phy->ufs_phy_state];
 	if (!cfg)
 		goto out;
@@ -105,8 +111,9 @@ static int samsung_ufs_phy_calibrate(struct phy *phy)
 				goto out;
 		}
 
-		if (ufs_phy->ufs_phy_state == CFG_POST_PWR_HS &&
-		    ufs_phy->drvdata->wait_for_cdr) {
+		if ((ufs_phy->ufs_phy_state == CFG_POST_PWR_HS ||
+		     ufs_phy->ufs_phy_state == CFG_PRE_HIBERN8_EXIT) &&
+		     ufs_phy->drvdata->wait_for_cdr) {
 			err = ufs_phy->drvdata->wait_for_cdr(phy, i);
 			if (err)
 				goto out;
@@ -137,6 +144,13 @@ static int samsung_ufs_phy_calibrate(struct phy *phy)
 		/* Change back to INIT state */
 		ufs_phy->ufs_phy_state = CFG_PRE_INIT;
 		break;
+	case CFG_POST_HIBERN8_ENTER:
+		ufs_phy->ufs_phy_state = CFG_PRE_HIBERN8_EXIT;
+		break;
+	case CFG_PRE_HIBERN8_EXIT:
+		/* Change back to INIT state */
+		ufs_phy->ufs_phy_state = CFG_PRE_INIT;
+		break;
 	default:
 		dev_err(ufs_phy->dev, "wrong state for phy calibration\n");
 	}
diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
index 9b7deef6e10f..b42ed586aba8 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.h
+++ b/drivers/phy/samsung/phy-samsung-ufs.h
@@ -89,6 +89,8 @@ enum {
 	CFG_POST_INIT,
 	CFG_PRE_PWR_HS,
 	CFG_POST_PWR_HS,
+	CFG_POST_HIBERN8_ENTER,
+	CFG_PRE_HIBERN8_EXIT,
 	CFG_TAG_MAX,
 };
 
-- 
2.46.1.824.gd892dcdcdd-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
