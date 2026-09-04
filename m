Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23878C79F83
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 08:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zt2oRt5TsrVKmwRNRMHRzVlaYvvxaVzGu7GxfM10zD0=; b=CLK7+nApObiT+S
	OnuUTQKBOdpbBzTlS5z2FlZsytV+/Nh3Q9dMvuHpzPzktmYKZHpYYognSQLztUOWVV0tOsCP6mcQt
	LDF5ANMkhNfCE8FsdMBwwEKoicUt39B2n5uukg9oopx3qvEloVNI5deJCKDdENhnUVzaOF8eBtlQ2
	pgFhxbvDL0BaTKddBJMLIZVf89Acrn0f6DZ3qQ9zrW+mk1pB1OEPmpoMv30KDT/R4mSHrY4sPAOgW
	ppbDFcOa/DYMmMPYGidUnKuCiSUssJQZdfD96/+caUmNKtu1OSetpQPfhEDwZN8m02EKaE3flkLJL
	oX6UizQuz6oDzU2YYV4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2PQq-00000001OdR-3Y5g;
	Fri, 04 Sep 2026 08:37:56 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2PQo-00000001Ocq-3BHI
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 08:37:55 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-3964dfb5a69so983506a91.1
        for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 01:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788511074; x=1789115874; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NC2wfz4K/EJAsThMydrdqvm3KNer12H87aZI1BzTpcw=;
        b=QJaSreEkIc5ctQKrNy8LwlOqU3HCB26VjWi6/CIqJb1XFIPYjUo7ILlR7kBd4ZhrPf
         ZHNNqk3eYxIbGuKMOklABgMNEp9iMwKaSxjj2ry8DvAeo+zKneymxkOTn+GCpEXqfTMP
         4S3+65G6qI1nA6eboLSY7wYtlhDg4M8VzgT19KwwCYvn0hxAeDozZScL4Dj/vb9MH6CF
         Ir/6h2VZiSF9B7CV741DfSByDe1NZbA61o/zDNRnyYMqckCimjJGg+a5wq/c4SRzxlZ5
         4X6OAeoLwJsG6lFND2HX/i6jKASH9s2ku4B3R84d+PiLXYdwZSGbCGRlkJ+QN4pzDu5M
         hIZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788511074; x=1789115874;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=NC2wfz4K/EJAsThMydrdqvm3KNer12H87aZI1BzTpcw=;
        b=I4Z4gM7DMo19/WO4nZzLZJbaEcUEA+rkvzDVfXIxhyzoLH5DMbNlRC21wmc/Qb4ykG
         nFOhGqyiLRBjE5j9qBo67FhD/7lYzg2CR6U8GLzBJy8+aanf9uDzC8rYTJxEkrLOxow6
         MlYVKmCzAwxZNtnYVKHcQnsZXjPQA2FuCG7offGREB0wPl4HXUAtxc+dH+KNedIadagh
         YY/SuJvOaK5oedC48YHG+5k52tTxRnHIkL8z/DyGckbZLzhfnI83MFhXEvER6aqLRoP/
         ISMOmHjH2Pc7gcV0F4oQGCYzHr/apTot7OGXQeGFNQmA7sGCStKD1UKtFdDE+kRTEXq1
         1BZA==
X-Forwarded-Encrypted: i=1; AKwUvBxDIBh4mQtlQLmmgVnKb1M0K6G0tJnXEDArPs38IuKB73BqF0AHqthNSL++6qtQRv35+zQlpWmNorc=@lists.infradead.org
X-Gm-Message-State: AFuF++nWwV99c4KdbIwOW9hDbEuCFfuegV2NWLQUvMitSNzcv0bODJ7B
	fgNaObUJWGRafUHvE/pUmDRFGTVvDlAoMInmk69YF+plbHZprIrJxHnz
X-Gm-Gg: AYBFou15T9eXsZzjNzQZDahtjORqdn0LAK0wfHTqsjf16ugJcOjl98pwv27i1fgilrh
	KiIJsgLYdgKf5TbJEqBSuUbFucPeroEydwW84hslWBwriPrp9V9A/m1EMI9XmvX1j8XwqizAz17
	FT69Rm0tlDcZV+QEVEmpPbmDZFkmXmut3WwQmf+Iono3IdTYigtbFvJuyGPAXXhGAl3I2wtLqyN
	1mbMabAYmKVSNhZirYzG4zi982MG2psjU2cuUcsxq1LSlsx3RNKvFtGSd7MVDcnZxtlIf/mQ+9z
	5Dj3jZ7AI6ZfOOGhXkMN8Fozfv/RWk+TmEPFa5BhqOW/v20UhW1PzbLYR2zOINPK9P1mVGIS2Nm
	z5ih/bNMQOGHcFrRKgAhyEOD0VuBJIBv0HfpOeskyoCtn2l3RP8SjdZNfIq68YfXGfU+4BOLquI
	qFVmstogzBv/erUl6t93Qs6XFO12mAnFwTx5x0DxgQiu4CIAUeu3C9XGxMnPI=
X-Received: by 2002:a17:90b:2ecd:b0:396:40e6:f631 with SMTP id 98e67ed59e1d1-39b2609f306mr7704261a91.3.1788511073930;
        Fri, 04 Sep 2026 01:37:53 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b2615039asm3339282a91.15.2026.09.04.01.37.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 01:37:53 -0700 (PDT)
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
Subject: [PATCH v2 1/4] phy: core: Add common helper to add phy phandle device link
Date: Fri,  4 Sep 2026 16:37:05 +0800
Message-ID: <20260904083709.425893-2-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260904083709.425893-1-inochiama@gmail.com>
References: <20260904083709.425893-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_013754_813642_7D5BA96C 
X-CRM114-Status: GOOD (  13.15  )
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

It is very common for adding a device link for phy phandle
for device managed phy helper functions. So add a common
helper for future reuse.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 drivers/phy/phy-core.c | 38 +++++++++++++++++++++++---------------
 1 file changed, 23 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 21aaf2f76e53..ea79913fbb87 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -606,6 +606,26 @@ int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
 }
 EXPORT_SYMBOL_GPL(phy_validate);
 
+/**
+ * phy_add_device_link() - Associate the phy with the device
+ * @dev: the device to link the phy
+ * @phy: the phy to associate
+ *
+ * Associate the phy with the device by using device link.
+ */
+static void phy_add_device_link(struct device *dev, struct phy *phy)
+{
+	struct device_link *link;
+
+	if (!phy)
+		return;
+
+	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);
+	if (!link)
+		dev_dbg(dev, "failed to create device link to %s\n",
+			dev_name(phy->dev.parent));
+}
+
 /**
  * _of_phy_get() - lookup and obtain a reference to a phy by phandle
  * @np: device_node for which to get the phy
@@ -784,7 +804,6 @@ struct phy *phy_get(struct device *dev, const char *string)
 {
 	int index = 0;
 	struct phy *phy;
-	struct device_link *link;
 
 	if (dev->of_node) {
 		if (string)
@@ -808,10 +827,7 @@ struct phy *phy_get(struct device *dev, const char *string)
 
 	get_device(&phy->dev);
 
-	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);
-	if (!link)
-		dev_dbg(dev, "failed to create device link to %s\n",
-			dev_name(phy->dev.parent));
+	phy_add_device_link(dev, phy);
 
 	return phy;
 }
@@ -885,7 +901,6 @@ struct phy *devm_of_phy_get(struct device *dev, struct device_node *np,
 			    const char *con_id)
 {
 	struct phy **ptr, *phy;
-	struct device_link *link;
 
 	ptr = devres_alloc(devm_phy_release, sizeof(*ptr), GFP_KERNEL);
 	if (!ptr)
@@ -900,10 +915,7 @@ struct phy *devm_of_phy_get(struct device *dev, struct device_node *np,
 		return phy;
 	}
 
-	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);
-	if (!link)
-		dev_dbg(dev, "failed to create device link to %s\n",
-			dev_name(phy->dev.parent));
+	phy_add_device_link(dev, phy);
 
 	return phy;
 }
@@ -955,7 +967,6 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 				     int index)
 {
 	struct phy **ptr, *phy;
-	struct device_link *link;
 
 	ptr = devres_alloc(devm_phy_release, sizeof(*ptr), GFP_KERNEL);
 	if (!ptr)
@@ -977,10 +988,7 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 	*ptr = phy;
 	devres_add(dev, ptr);
 
-	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);
-	if (!link)
-		dev_dbg(dev, "failed to create device link to %s\n",
-			dev_name(phy->dev.parent));
+	phy_add_device_link(dev, phy);
 
 	return phy;
 }
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
