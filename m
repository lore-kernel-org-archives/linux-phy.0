Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D3DAC79F80
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 08:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2VUbp5oWCiktB0/Yf+CHYyaBY2s9uBJKoaSWN0cQxtE=; b=ohC4/wJG2/iMKg
	LnCiiBbPRmTwYqe/ePO5DWQODGwAPJUeR+I0dLy2MAmzgEPxwA73+QE4rablFBFzqdPHtpNqIBwdu
	/ZxjroLbSrhUUvZB9PrhLt6gubRHO+NoZOdoUJ6fbxFZD4WqETvVRDiL5yYB/wTm27FIDQZ/vlUgs
	41Y9eJTy3mYOrqPzF5H4hLkElQpXb2tocqoyUevKLxF8K8VtSvde46Y0NdQD9NwcQl+xVo0J82Vnt
	hznhYGrHYt9VcoXHSJZK8orYnAnd2b+n5ctaV+eTm4YWDYxQjuEzLizqheq5h6kaRIXMvpkDDG/AE
	cD/cifrvUwcFekqL790A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2PQs-00000001OeY-3iJ9;
	Fri, 04 Sep 2026 08:37:58 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2PQr-00000001Odi-1DJp
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 08:37:58 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-84e27035206so625325b3a.3
        for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 01:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788511076; x=1789115876; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=m7TrYEnnyTFBxKR6bNzgdL9dbIZbk8gO2x1bfmprK5g=;
        b=hyDdc7VL6K3s/8tcBks6YtO2t64Dvi/3eid03StuzekMCwh9guPB6T8kyf/QyuZUvj
         59lnJmCctghAZ8dklo2mhN9BrLyxXr+l6R0pkAHbYoDza12OFKdxn3tyIu5v8SxfbXsf
         EvFT3mobLgBjQFfCNznQZJhERoXmGwFFsSNrIas4/HyAm8E69ne6Uo4EsBbKiuFC1N0e
         xpjRQYwIal65F6XqLZvBGtI6nDCE3J6kLGlWuO9sozjDjWtRwLU0Z3bNAqgwnRro9TQj
         R7c/VhBqKjutF8owwe98ZUNAyEWWBoF0QGi57+cfidAcVsMOs3PoSn/RffXk8cipX8ES
         DHUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788511076; x=1789115876;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=m7TrYEnnyTFBxKR6bNzgdL9dbIZbk8gO2x1bfmprK5g=;
        b=kTPN9YjRFFTAf1gHQ7apVqwy55vWgwWHoZdv4hT/5KnlnqUuinHMWMZefrLbIRCuva
         0JxqjWZJOCv6i1BuEYeP6zXLEs2fO9vziX3Xlfq06/w4R8fs33en/Gp1hHn+saRkGlfs
         p1+48Y3IzmC7/NSqBwGSDEoX9CpD0y6sDxbkM7hmrK781Z7yK+gp+NoVJhEq8S/Zga6b
         gi+SrbLz7ALLwyUkXDB+NPZ72MzUAE+sEb7tSi+p99DVRb5OlG3XXBhOYHdK4eQYv99D
         vv2gBr9mUaZKPB0YCh4jQUC6ZvSC8bJ6Aq5Hec2vHSqyDjDxmdQ/mV+7Cik/2XbBVDdr
         ZrLw==
X-Forwarded-Encrypted: i=1; AKwUvBzxbGoszzUPt0gdEtkfXa/rjxSTqmxleXebbxs0Zmwqe6JsAWd2O6eqCiI/Szk+LiolxT+cQ/+NHGk=@lists.infradead.org
X-Gm-Message-State: AFuF++lEBInCUHQsYOaQQ4UA+UYq/2ISNO1oJhn+Xfd7zWbJaHGWtyml
	dLdmZ/CC5REqvBLvT3N+jShkOm+Mll4KAEX4I6KyJ4RZRfsqReHCQGSV
X-Gm-Gg: AYBFou0vjzVlgAPRXs6fi+Y2K9dssvppIDuBwL959N2d6H0ZyZFKhc0LxEXMG5iruy3
	cctZSnbPPtBNsqvYLgGL0ycSA6LevtFFbQOr3vfJaeR+EPVEhKMx/vWsyEwsg92m+fCQWrbYhXK
	yg6YvcEA4dV8YMBHwocMumLcwwMOrqExeM/PifNYj4Uj8rpB+2mxoLV5uBFuyV69t5I+SRyl4G/
	yZ98ojtvVpv153eey9XE6XysNGpThFjGt36PjMK9XNPnYyWZZSVael6QsfxykK5nVLDJNTWQSAl
	k7TJiWX3rjWAwUohEB12eOdm5POlyyVwG4K0STfuDt00gvxCUm549FWWv+j+fpIZEDcYLmEzep1
	8BuCAHqImuBti9u3+TgVDmTHRm2mQu+fkxbrbytYf3pST8jSXU8OvRFxeDjVX9X0G4sJmPHIW1w
	u/Ly+wkUCZomFLVw1xVyU9vhwKAi+olWOcvWGyXfnEihHgfkC72A2rDt/mgFE=
X-Received: by 2002:a05:6a00:22ca:b0:857:726d:2e9d with SMTP id d2e1a72fcca58-8616b966f55mr6002481b3a.26.1788511076377;
        Fri, 04 Sep 2026 01:37:56 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-86152e2f1e0sm874077b3a.36.2026.09.04.01.37.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 01:37:56 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v2 2/4] phy: core: Add common helper for get phy phandle by index
Date: Fri,  4 Sep 2026 16:37:06 +0800
Message-ID: <20260904083709.425893-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260904083709.425893-1-inochiama@gmail.com>
References: <20260904083709.425893-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_013757_329787_5F8744D3 
X-CRM114-Status: GOOD (  16.18  )
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

Several phy helper use index to get phy phandle of a device node,
add a common function for the future reuse.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 drivers/phy/phy-core.c | 51 +++++++++++++++++++++++++-----------------
 1 file changed, 30 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index ea79913fbb87..a7d7acb5d3c2 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -681,33 +681,49 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 	return phy;
 }
 
+/**
+ * of_phy_get_by_index() - lookup and obtain a reference to a phy using a
+ * device_node by index.
+ * @np: device_node for which to get the phy
+ * @index: index of the phy from device's point of view
+ *
+ * Returns: the phy driver, after getting a refcount to it; or
+ * -ENODEV if there is no such phy. The caller is responsible for
+ * calling of_phy_put() to release that count.
+ */
+static struct phy *of_phy_get_by_index(struct device_node *np, int index)
+{
+	struct phy *phy;
+
+	phy = _of_phy_get(np, index);
+	if (IS_ERR(phy))
+		return phy;
+
+	if (!try_module_get(phy->ops->owner))
+		return ERR_PTR(-EPROBE_DEFER);
+
+	get_device(&phy->dev);
+
+	return phy;
+}
+
 /**
  * of_phy_get() - lookup and obtain a reference to a phy using a device_node.
  * @np: device_node for which to get the phy
  * @con_id: name of the phy from device's point of view
  *
- * Returns the phy driver, after getting a refcount to it; or
+ * Returns: the phy driver, after getting a refcount to it; or
  * -ENODEV if there is no such phy. The caller is responsible for
  * calling of_phy_put() to release that count.
  */
 struct phy *of_phy_get(struct device_node *np, const char *con_id)
 {
-	struct phy *phy = NULL;
 	int index = 0;
 
 	if (con_id)
 		index = of_property_match_string(np, "phy-names", con_id);
 
-	phy = _of_phy_get(np, index);
-	if (IS_ERR(phy))
-		return phy;
-
-	if (!try_module_get(phy->ops->owner))
-		return ERR_PTR(-EPROBE_DEFER);
-
-	get_device(&phy->dev);
-
-	return phy;
+	return of_phy_get_by_index(np, index);
 }
 EXPORT_SYMBOL_GPL(of_phy_get);
 
@@ -957,7 +973,7 @@ EXPORT_SYMBOL_GPL(devm_of_phy_optional_get);
  * @np: node containing the phy
  * @index: index of the phy
  *
- * Gets the phy using _of_phy_get(), then gets a refcount to it,
+ * Gets the phy using of_phy_get_by_index(), then gets a refcount to it,
  * and associates a device with it using devres. On driver detach,
  * release function is invoked on the devres data,
  * then, devres data is freed.
@@ -972,19 +988,12 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 	if (!ptr)
 		return ERR_PTR(-ENOMEM);
 
-	phy = _of_phy_get(np, index);
+	phy = of_phy_get_by_index(np, index);
 	if (IS_ERR(phy)) {
 		devres_free(ptr);
 		return phy;
 	}
 
-	if (!try_module_get(phy->ops->owner)) {
-		devres_free(ptr);
-		return ERR_PTR(-EPROBE_DEFER);
-	}
-
-	get_device(&phy->dev);
-
 	*ptr = phy;
 	devres_add(dev, ptr);
 
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
