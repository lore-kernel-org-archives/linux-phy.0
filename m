Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD2AEC61DE2
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 02:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STHDAwUwe1lPDJjBSsoBB+glKMKzpaGsdYzGbzZNSAQ=; b=DSZYrxQtObYbZ9
	OHHxmO27HeJOM+LeU78kMOd/BwWY1LyzI4/2qQ3KcMN1eE92FJRZEwLvWWdM8qDDtYNQ2Db9bP0xk
	6NWvJ0ACL9CdzjRysRuLOgLXQgvkUcWdulTBenUB3COfcggXcOwBHF92JqlkoleIH1a8AjdA28OZ1
	hChwlwS2y6LMq1yR8f02O3iQNgOuB55/ly0RlXcS8AR5sKATgnLNJWZ+uowddW3+vXwVdobD/GFBc
	oB7eCPkz4SJ+p5+iG6NKMDSlLX4DMbaLi4foXGQZa37VOo7hv4ANlBZHCIk628hI3CO6YiA+zvPJ+
	LaO/Qtv6nenojr8wiGAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0sBL-00000008NbA-2GQq;
	Mon, 31 Aug 2026 02:55:35 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0sBJ-00000008NaW-1NfH
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 02:55:34 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-cbedd5aece4so3134119a12.0
        for <linux-phy@lists.infradead.org>; Sun, 30 Aug 2026 19:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788144932; x=1788749732; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=46LUM18tPrzkL84ohB1luZ0Ql7DRRpzHdIhMb60LycI=;
        b=cQ1Mvbx/12GZdTzTVeY25NZoGUfKU6RC4ZA3UNvyr1XH5BTvKk7EALwIdeP8mh9DF0
         2w37qk3OTxb6O6SqcKCbQo4qjXzp/BKEeDPYA/L+A9GsMFtdcbdFQofSDIFL1GHVtDD4
         8GyLFxtBvvg9LbNeIbbba1FS7yVKdzIdIr7qzq6HiWmAMt3orpCmWpdSxGtqa8EBoj/d
         HXpasq9mMUHFK0+e8CrwyGz87BZqf5JJng2ktaG2FZW8HIC1OBSjPkbiYr9cm6p+56Z8
         Dpn9pZMbajYOVNlUAvukZMT0S3Sg/6va1ngRSEV8Gl2x+DGROJqI7W2M2jJ3w4VTZL6y
         QxoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788144932; x=1788749732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=46LUM18tPrzkL84ohB1luZ0Ql7DRRpzHdIhMb60LycI=;
        b=QQA6mXV9vhskKcIfowfuDZNX0oySWqiL8MRSFQ6hU3yZDK5ifk7KlZU+z1E6caNDAG
         ooy2pz5tFmRgJKckbWEReYc/qz7zS8ZjCJas4Vb7TNH8vBHhwqJeGOuDinfVa77xZxuD
         8NOeiuQj1cLmPf2mMFYZ11D+FUfC/5QmBN3XfroMgyatl1lCKeEo44xIXqkYOnGOPYm5
         dej9B9wbkvXmyxbUUgAQTSbqrlMH3KYmK8mSnhqBmzg43h0McBZnde/mzO53xioJWZca
         nnGU4XZ2FxciEHjGUnrP1aw031kPvYjJ5KvYwdXhLQ2OT1xFBrUNECrGeIARzxLvk6b5
         xvhw==
X-Forwarded-Encrypted: i=1; AKwUvBys2/GbMU7AufuPadLjXcs+BGzO8Txp+FMcVhcGOnQuc4jKOm7hUft6K442zdFWQZzremEbC5vXQDw=@lists.infradead.org
X-Gm-Message-State: AFuF++kgj4ydoCMrbHkvuQIvnYHKyylq7QFRKl9tFjF8IJRuelJOGLWv
	vmDWHnzlMriQkc+htfbIl7bjOCMCuxZ/u0thXTyijqh6VWoHN7RJDHPX
X-Gm-Gg: AYBFou3VlR35tHe3RuHf2WA5324RWMDIiAoz9uUfFDl72dALmQi8Lv9sibqb9JhTFPM
	ibVlfGXlCmoOj/z/dz8eDW/wSD/AwBieWr4hXVF9+LNABvUsxl27WzuBZnIYoO3dxP/5du+Gaqa
	PY9u4AZHVvR0//Q5UlzVpMCQOb70dB9iIb1Q/lt94jVFhRo9EYK+N1IRGVYBqVtPqAkpStWcY8Y
	5bKSJMrM70ZMJLLp5lHU53yyVqVYYk2VtJO+7hk5zOLUYhqObqDQuBrZSCWjCVmgCY4B0bIjPaa
	U33bkGsDymgn6zQBokBXwNEFafXcNN7aZBBD/wSTedbY4iLR4lrt6C2/IKBEg0nkZyH1Zsf2qoG
	ivCbYUbNRsJeMxDc8wImtF/+ROEFDRjSYTP7JYiQa+RZhmSoPk1tA5ItBKTN87nK8HCYSZzQyEa
	p4GEXd0qxhBapC3ghbq9swyTbcUaIXDLkBswJc/94vAB3c2YbvRs1Z53mrv42+UV4PY0yV9w==
X-Received: by 2002:a17:90b:4fc7:b0:395:8124:ac53 with SMTP id 98e67ed59e1d1-398da618732mr4487959a91.6.1788144932288;
        Sun, 30 Aug 2026 19:55:32 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-396dda7aaaasm13890514a91.6.2026.08.30.19.55.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Aug 2026 19:55:31 -0700 (PDT)
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
Subject: [PATCH 2/3] phy: core: Add common helper for get phy phandle by index
Date: Mon, 31 Aug 2026 10:55:04 +0800
Message-ID: <20260831025506.95548-2-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260831025506.95548-1-inochiama@gmail.com>
References: <20260831025319.94886-1-inochiama@gmail.com>
 <20260831025506.95548-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260830_195533_370088_03197E88 
X-CRM114-Status: GOOD (  15.26  )
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
 drivers/phy/phy-core.c | 47 +++++++++++++++++++++++++-----------------
 1 file changed, 28 insertions(+), 19 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 451f8f0644c1..2259f0dff082 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -681,6 +681,32 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 	return phy;
 }
 
+/**
+ * of_phy_get_by_index() - lookup and obtain a reference to a phy using a
+ * device_node by index.
+ * @np: device_node for which to get the phy
+ * @index: index of the phy from device's point of view
+ *
+ * Returns the phy driver, after getting a refcount to it; or
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
@@ -692,22 +718,12 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
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
