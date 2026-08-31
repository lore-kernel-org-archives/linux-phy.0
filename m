Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF909C61DE4
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 02:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/SZG2C6UUvM2wp06UbSqNalKLGrZKT7MCJ1Kzju2muY=; b=EBRmrXpt1TkNmE
	NH2JbnKmwdSMMJ2RHeahCIHrnzZEezARxQS3ie/PhGAYWzqqUngGh/z4f3qfnLqv5Hqz6kRaK16wE
	eAW7hw68uJddD8D/fJJUWhYrSPXiF8yVxM5Apg7MCz8+xL8G3DZ76LNMLeBmnhzu1rcYb7ZWnPT7E
	vb/oEynUNGmNcZHHC4qL97JbWhtZR5VekRab3y0qXDLLcM1SmIPMnHz6Or9zz0x+3gy8P+OTt+tJ9
	3s18FdOUonyDGLVkFjDYfur9FvLyw/6iFoSRqq4KVT5voLfMtgJ1iPo+X5oyRsXWAg3+9b9m1fRNx
	9lgzvOsZ70v6FdKhhIIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0sBJ-00000008Nak-1yyM;
	Mon, 31 Aug 2026 02:55:33 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0sBG-00000008NaA-0NlY
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 02:55:31 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-2d942c7cc2fso22225ad.3
        for <linux-phy@lists.infradead.org>; Sun, 30 Aug 2026 19:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788144929; x=1788749729; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EftteNqjZXVGUdSG4QtTghSUU4iaCpJJjwHlvEwtRu0=;
        b=empEkgldI2Jy5AbJEjmpABV2E0CXuHDYk/wv6yR34HXRV+sjedNTQMHM0SPk8NQS2P
         K0y7Mjc6mXrr+09sXKlyxSl12Wm3+aFGSc7jwWd7grGZviF+/Dt19icYkhcxPQTMZvGk
         bT5giVHmPmW7drL4MlH8UpAWzYUxUBeBp5eXShZx97FC7SbvVbJd5UEQTn3bpqwHAfA7
         Dktuc6wqzrZgAo4E+82R6py9mIIjKjiXXkZgB8Qwgz2HcRfkJQSjQoMkgz6amuvrSu/t
         HpYwuW6GohqrNz0wF5Qz9G+aZ/RNEM/fQzQDftpTLiBGTZIWeqDBRdkVUHnkJMrmODAU
         KNGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788144929; x=1788749729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=EftteNqjZXVGUdSG4QtTghSUU4iaCpJJjwHlvEwtRu0=;
        b=fwX8Hfhlj6jzIiwWO6DMmihYxpsrbOIEj3e22CHjz7sUToGi5w6t8AV0Qewd+35TwJ
         GLIFR3Q16d5QGGK2QeAu7pTxUmSdUMfRGCccdqLNkcZpBMdbp+RzB8u1jyB8bK8E5HR/
         hpGMupmk7kiVfug5v2boOUV9lmZx4NdGvZOnMPGcKQEg9z6fbgpzxoXFxCjxTG8ansX1
         fCTrWAxIN+jSqTwsn26OhLSNZVIOcLGjDvGfidtAwKAYfPWHRguHZewPqIk8as/17PWQ
         0QjvHw8Ju8qkwdkHj9joERlWwTPYbVP+6XIMXhqcGnHgwIRzU7AXgukVrajjMVFnmHDS
         oygg==
X-Forwarded-Encrypted: i=1; AKwUvBxMtsBzkpEMzrput/KAJ9I1XGVlS/rY9zbSlCe+RI1Qlt25UDNvZ0b/0IzjHFF8Jq2Cq5SaltctrMc=@lists.infradead.org
X-Gm-Message-State: AFuF++n/SnDZOdx6L7qzXTjB3uxAgcoRUcokkNV/POUQUZiGQvnGsAnZ
	AVaQyceK0opjQu4SQSxVUvdbuU13f3hKgxaKBjgykW4BvDcDbEJkeIt3
X-Gm-Gg: AYBFou3ho+5ujtR8z+yc0euBYJitDhU9yKGafEBJEMIN5uNLKNk4FdeUMXxxUFX5dRl
	glEz0VTFG5UREseyY+qSnQQXnW6bufb4oJ01FrO8hiNDCjXeTxA/5dWef8TKKgpAtKcDJj0Xy59
	uVlUdK2csL3QGCoZnRN7yaK9lFf25+z9bKmczEyukUM5sMW9xXdb+38ShVXwqMLq2eu6NsaKcsY
	NTlM/Wp1kGqsuWc0dlcTmqoXiKCC0uacbfJSXPKS+1la+1EEsiL9MD70Pcg8FRdM3CW3/ccrfHw
	NQF7ftyoreOFuN5nT2M0U2gAKvK9QrLn4xNqYUDl6B4BDzZEzJvEm5iV9zJdB7kV+A7k3eVqXFp
	IZi+nI7S6GNCv348P55vMGTEmdG3ubk32CwQpxEFDSWUIfqGliqgkvAAngGdgQR722lGqMg9dOg
	TjzEg9gO3KJOWwkFpOXOcrybsXh7oGs67+negtr5kocmjmRlWKQlU4sJp+iixGfpMuC/lk/A==
X-Received: by 2002:a17:902:f788:b0:2d7:40d1:e14a with SMTP id d9443c01a7336-2d74ce1cab4mr380071345ad.0.1788144929223;
        Sun, 30 Aug 2026 19:55:29 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d75952b937sm26629055ad.20.2026.08.30.19.55.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Aug 2026 19:55:28 -0700 (PDT)
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
Subject: [PATCH 1/3] phy: core: Add common helper to add phy phandle device link
Date: Mon, 31 Aug 2026 10:55:03 +0800
Message-ID: <20260831025506.95548-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260831025319.94886-1-inochiama@gmail.com>
References: <20260831025319.94886-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260830_195530_186880_61F6F262 
X-CRM114-Status: GOOD (  13.28  )
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
index 21aaf2f76e53..451f8f0644c1 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -606,6 +606,26 @@ int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
 }
 EXPORT_SYMBOL_GPL(phy_validate);
 
+/**
+ * phy_add_device_link() - Link the phy phandle to the device
+ * @dev: the device to link the phy phandle
+ * @phy: the phy phandle to link
+ *
+ * Link the phy phandle to the device by using device link.
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
