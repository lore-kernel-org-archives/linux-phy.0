Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CCF4CA5FA5
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 08:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=agK70/vRTya0Itl29zu6EPtJBS6PLPq8qvd/6/sdnKM=; b=sznOX8NgZyKJ6z
	2Sic1sI2M2229yq3RLeyFGkHpfWaZcBgMvK8PPa3c0LONFvoCrWZ2ScmtSlUmoKJP1SYNnnot6U0u
	v/r7vQMfxDtQUFm6LJddgsYhDIVilpc17cv0iuaG5pXNp062993yzjVMjakSPEhJbV18zPDxqJ3tb
	7zkKVgsl36CtjaQmpKSAP+puqIfgpQx0qny3T9XEQFdZtBiEuJAsctQkjuUP/ft8n8jW8xpc23kQy
	6JS0UaIOwvxJCWkSfkDGwHcUAFjRF6JroJQ31UG4aWXtT4pYKkfBpxu94QFgxAD0GecxzwwScwOwq
	0e9EfCKAcJ0SSm8tS3vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTa6-00000002sOl-0Ejc;
	Tue, 29 Sep 2026 08:52:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTa4-00000002sND-3iFF
	for linux-phy@bombadil.infradead.org;
	Tue, 29 Sep 2026 08:52:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=OPE7PSkJ4NrPw8zuJEf70/v8WMud7mVFynWgRXYCG4A=; b=VilM10Xu9kVyMeHqjGiFGoNKT1
	euEy+BErkLKM58O5ik6NPC7n7r7Q/kHht4c4hcdaxm2NaLNBqfRRApVVIUp1tmUzqbrbSobDmH3YC
	HDWMxZ/ALN19Q1hAprXEsRFM/FbBUcu8nyBywPpzdrqKbKbO8JI6vS9BghY0C9EhPoZH5S/v2xxe7
	BVWohAvP/TkEbm9uF9ckAmQxo49XX8zuONJe8dC9kfqrVy+uQLrLjEFg/ydID+YEJHWUyKb4yE9mL
	roOwE8zXTCWuOTLQMKvqTajYsALljWUes4yCH9HwGZSanT0vj9MS+hcqmInb7nxM2P6o4+/w57et1
	YWouUPYw==;
Received: from mail-pj2-x11.google.com ([2607:f8b0:4864:39::11])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBTa1-00000002NoX-2KEw
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 08:52:55 +0000
Received: by mail-pj2-x11.google.com with SMTP id 98e67ed59e1d1-396cccbba91so1820550a91.1
        for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 01:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790671971; x=1791276771; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OPE7PSkJ4NrPw8zuJEf70/v8WMud7mVFynWgRXYCG4A=;
        b=Qj1q0LsJ7rQ88AJLhdCVgYRRpRVk9tJDJVj0N5uihzq/+9rQOg91KWNJ08npIrPWP1
         WtPpco+jJxYvS5ctYyN6L7nCarTit4fTM0hyST5duwtGgeTuIvXAnAF2s4WATtbNnlM4
         so//k2E2OEnTgTnGx216x2TYo/BJUZ61LT/+HM+v3a1Rrq0StkOB4wkbamEZ940KkBfR
         vxhSOLTi7V6vYoQSAYIo3S858eSYHKCAnDCpNDFMtf7OtCI4RNBtt13IQuoKcJCZNUsK
         P24eMQ4oWLulttao2Gd54iHEn4Hnoq9d6H0q6l6u3zSO0VTUy8avIYke1hG7yNGMtD5T
         L1yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790671971; x=1791276771;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=OPE7PSkJ4NrPw8zuJEf70/v8WMud7mVFynWgRXYCG4A=;
        b=u8c7L9sCRq4/E8GOO7jNtftCsSsERmbO0LpPuIE3a+esA670Tvw2pZ6p0788pU18Yf
         38/EyRW8FPBdrdV1EaZByrDa0/SAoE06W2uINIcMi9vNLmoD9E+an1FLNRGhvpPiEinx
         p5pKvJUC0Xv/pmQPRcE53RpR91Cn+lA7NKwlEybTJUYHdA+pPYak4MwUfGHqEuVdS51t
         xTCIYruRfBMKknocPNixWTCWtnI3+D6ipkj2vIkQ1gr/wiOVlFVHC1ZxwgYZMrfTLAGo
         Nnkfb0Aik1CBlDXd1XINoWHB2U6xEvSdnMhm1dLyG/F2qt0kqBWJa08Qc5cEeGuEFm70
         1zbg==
X-Forwarded-Encrypted: i=1; AKwUvBwG6ELsY0sCmVQFdhAFOJzRan9joknnTtZSYZoolA4OYqq2wkl87pCdc6Hyv1NPimoKsrTanRsMyEk=@lists.infradead.org
X-Gm-Message-State: AFq9FYKZ7exMHmVqNgNIl8csyyRbQQ35QkAjtCixC/ENMVdEhTYrT0de
	FTfhlUb286QbPgY3sHhLhyG8WFIAornPHhdzBLH1O1Z+ZL1jhvCxquCq
X-Gm-Gg: AYBFou3UqVZoJSB9X4GS16KAxESiWlmiEoTtOVBT1vyz5EGYJFsX62qXNGcgmmaRO+p
	ZHOZFLfjm5DgAsFHsolE3Hf4MnqBnUBDqlmTBezEi4d2qOMutinNbNe2TAlPL2OOwofTSsVGqzn
	W/Jv1UbLmtAEqNNM3cgqDa/WKflNdx2HHGOGCpfX9clZ+79UGrTmTwGjzpfUGakQWLdIipJEzcy
	wY5gs06vjL3j7WUqkY7t4TOLs+LxUNeK07ByD+Z00S10GwOOKD7H5jhFjhViVdfwy1b0YO/tNLh
	I1iTOapQrFZV/Lln9SrBvD3Pqhjwxp630N7A3Xhc+i3+ZfueGcuJX7wNafqPRU3eroTVYCaz3Jh
	3v0Esq/KnLqr+LF3F6s1hFfjATzrrLvnnlJeLR3H0xgviB2PyAZPVyGDusgPEgFJSR4b1o497tM
	KDJtGZX4WId1FOhrUlDEcPiClujcrmbREuJ2UI14hs9v5821lwL4td9UEF4kYb2CFANQZx
X-Received: by 2002:a17:90b:48d0:b0:3a0:f432:2684 with SMTP id 98e67ed59e1d1-3a0f4322bffmr6275906a91.9.1790671971142;
        Tue, 29 Sep 2026 01:52:51 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a498179081sm4289281a91.14.2026.09.29.01.52.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2026 01:52:50 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rhys Tumelty <rhys@tumelty.co.uk>,
	Inochi Amaoto <inochiama@gmail.com>
Cc: linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v4 2/5] phy: core: Add common helper for get phy phandle by index
Date: Tue, 29 Sep 2026 16:52:32 +0800
Message-ID: <20260929085235.469515-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260929085235.469515-1-inochiama@gmail.com>
References: <20260929085235.469515-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_095254_073872_A0ECEE64 
X-CRM114-Status: GOOD (  18.80  )
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

Two phy helpers use index to get phy phandle of a device node,
add a common function for the future reuse.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/phy-core.c | 51 +++++++++++++++++++++++++-----------------
 1 file changed, 30 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 7be649f14797..8fbaea003b90 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -682,33 +682,49 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 	return phy;
 }
 
+/**
+ * of_phy_get_by_index() - lookup and obtain a reference to a phy using a
+ * device_node by index.
+ * @np: device_node for which to get the phy
+ * @index: index of the phy from device's point of view
+ *
+ * Returns: the phy device, after getting a refcount to it; or
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
+ * Returns: the phy device, after getting a refcount to it; or
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
 
@@ -958,7 +974,7 @@ EXPORT_SYMBOL_GPL(devm_of_phy_optional_get);
  * @np: node containing the phy
  * @index: index of the phy
  *
- * Gets the phy using _of_phy_get(), then gets a refcount to it,
+ * Gets the phy using of_phy_get_by_index(), then gets a refcount to it,
  * and associates a device with it using devres. On driver detach,
  * release function is invoked on the devres data,
  * then, devres data is freed.
@@ -973,19 +989,12 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
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
