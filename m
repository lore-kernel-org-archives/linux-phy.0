Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E5B0C79F80
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 08:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYr5zA//cBjBOkBYo00XBiOItpLsMPLogkApBC2LAgs=; b=EZsFVp26vawDf0
	GEqWc/Ko8MBGQAYwJ1XEaK61lq4je0kq/oawN0Yd+J283ptMiz7KDTscIIssaGUgjrMZhhr/SFM1T
	htb9fC0sGl3VGH96WejeiXvF4Gw0MP4fH65Fze0B7rwmFejc4a5KMGCgWZTtYrEo3kEhtdGus5D+I
	pmp4G1xkZw/yEFHNiVc2xcNCJ8Hz3y3uIfSdIMK3yB05YcCsv970NEmCLAFry94YRsD5OEtNOPiuA
	3NfDxu81RuDZJPgHtAgO6HcxDHsXwRzrsvrs5weWR3aFSV+8HoYutCkTvLfqAH4r4z67jrlY8z2aj
	k8DQwnmbmySUeGCA2CLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2PR0-00000001Oh1-0GXl;
	Fri, 04 Sep 2026 08:38:06 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2PQx-00000001OgD-1xKk
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 08:38:05 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-2d9b60c652aso8776335ad.1
        for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 01:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788511082; x=1789115882; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2uIP2PaSZV7t0ZnwDpHDOn//v4Nee7XCb1/Ur7myjFU=;
        b=A7jBzmHu4swxBQuq6754ldjzz7tXc+X/YNCSjLwprd6VwBoWV2SO8+VkKBoQs1e/zp
         Wepdo13wXGfvzQWerrQqXLI2lKTstQWDv+Iioue+1jAjKliuNj9YyuF/jtj4XKL17ze6
         gb0oPnwJOxVEmXGx2m2bFVS9J3yE8VPtJxHRQoQsbLiO9+JwCW0BPOEUmH0V7hMUN7Ww
         wk+484LqmwcQH5qiI17ehVldVF2p69VAbOtwedlSbwywT9o7HFuiI3ZdLPg77pZ1eoL5
         GxnTrwguCb0zidBl+I3f7v8oRuQIE0iPWxSjfrnC4RnZSqWOug2vaCvhNLInJJmsAT/H
         8e6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788511082; x=1789115882;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=2uIP2PaSZV7t0ZnwDpHDOn//v4Nee7XCb1/Ur7myjFU=;
        b=J/RZet6TcL7w3tSzkXR9d+VhEABqqV6J3PJP5olpT/VF+a1HyJSFP4B1QZzWOJHsxl
         jnIMGF/oMqDA/ACiH4/un4VY+uPuZYviplVmaKWRFCgi6A86sesvrxfJ2CtFZLvsowmp
         5/fVYUttjqV/rVZ15Z5xjmfEGvv0jWd7Y6qA4+g53uivIRAqr0zTxVbelSwx9KJbmoVs
         8SBdQG4t+yUYoadGvgIa/zOuPyLWx1+59hk8nwLD0pdCl566ABzSirQexVDWOrvGsist
         mf+ReYrsLxENeAg7rmQVvP3GAkmh351P56J7KUokDc/FHvGjngX0bc5Gjzk+tJTCdNGv
         Y7ZQ==
X-Forwarded-Encrypted: i=1; AKwUvBxUJ2Y/3FeypZbobUk0cHWPJ8kmR0r11lYhzHbVZ911rmNDM3ERZ4YzkapnJZ53vaflNy6BW17tR7E=@lists.infradead.org
X-Gm-Message-State: AFuF++mjUUanEKVjVH9SuRzRIaNxIOQLjh3ZjyT4hiSeN38W2ZMOx8uJ
	/r51oYEbYZvyiOnBDn5aeSC+HKY7NNsy3QSKQlxFMaixfGH5HNMhgY0Ot8RD27ww
X-Gm-Gg: AYBFou3L1XOgMukOhmif/jNh+qhZkNVkul+B32igOx+1yuhahCw23fvUl6dkhFn176K
	QmYjFr4MW9NIzwyfbDIv8hl+V48APTZR75TKboWK+LOKKv8cIt2h8ZWivqCKQpUyFMe6wVTpiju
	Ee8Xnlu+tezS0OX7xVAKn1DLGRY5F96VQ8JOlchoeUu1OrMLXHrNF1sKnse2fCyLGnTlFxHNBLo
	e+D5b5W/tGr0+csKxvg/r6uABOY2rJZ2PfK6iiEMikWEMe3uTvtyA+liKJnwUqjmjPATWS384d8
	J5flgXotXtndYnM3cS2lReVVeOSeqKHAnO78MDZUvnXdcHyCA8H5zD+eb50eb4Cv2p5Ew1UQvLU
	S4WPO4CEKth/M0SPCLvJxq7HoEylVAPhW7vqMaT6X4JE9bJDpCf0Jbax0yGC98gmTwZfuFZ25zd
	hl6EnFdFJTcdc70Jvm/zRN+JJWQ2KR6PEuyAWUVmlvTOstLW5EjR97xN/lkmw=
X-Received: by 2002:a17:903:46c5:b0:2d9:123c:8c49 with SMTP id d9443c01a7336-2db1975804bmr41593555ad.14.1788511082398;
        Fri, 04 Sep 2026 01:38:02 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2db1495a0b2sm6716595ad.28.2026.09.04.01.38.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 01:38:02 -0700 (PDT)
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
Subject: [PATCH v2 4/4] phy: core: Add managed phy bulk data helper functions
Date: Fri,  4 Sep 2026 16:37:08 +0800
Message-ID: <20260904083709.425893-5-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260904083709.425893-1-inochiama@gmail.com>
References: <20260904083709.425893-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_013803_512476_E46EDD32 
X-CRM114-Status: GOOD (  16.10  )
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

Add device managed variants of the phy bulk helper functions. So
the driver can benefit from automatically managed phy handles.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 drivers/phy/phy-core.c  | 198 ++++++++++++++++++++++++++++++++++++++++
 include/linux/phy/phy.h |  43 +++++++++
 2 files changed, 241 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index f5596b8dfcfc..e28206f8dc89 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -1304,6 +1304,204 @@ void phy_bulk_put_all(struct device *dev, unsigned int num_phys,
 }
 EXPORT_SYMBOL_GPL(phy_bulk_put_all);
 
+struct phy_bulk_devres {
+	struct phy_bulk_data *phys;
+	unsigned int num_phys;
+};
+
+static void devm_phy_bulk_release(struct device *dev, void *res)
+{
+	struct phy_bulk_devres *devres = res;
+
+	phy_bulk_put(dev, devres->num_phys, devres->phys);
+}
+
+static int __devm_phy_bulk_get(struct device *dev, unsigned int num_phys,
+			       struct phy_bulk_data *phys, bool optional)
+{
+	struct phy_bulk_devres *devres;
+	int ret;
+
+	devres = devres_alloc(devm_phy_bulk_release, sizeof(*devres),
+			      GFP_KERNEL);
+	if (!devres)
+		return -ENOMEM;
+
+	ret = __phy_bulk_get(dev, num_phys, phys, optional);
+	if (ret) {
+		devres_free(devres);
+		return ret;
+	}
+
+	devres->phys = phys;
+	devres->num_phys = num_phys;
+	devres_add(dev, devres);
+
+	return 0;
+}
+
+/**
+ * devm_phy_bulk_get() - managed lookup of multiple PHYs
+ * @dev: device that requests the PHYs
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data with PHY names set
+ *
+ * Gets the PHYs using phy_bulk_get() and associates the references with @dev.
+ * The references are automatically released on driver detach.
+ *
+ * Return: %0 if successful, a negative error code otherwise
+ */
+int devm_phy_bulk_get(struct device *dev, unsigned int num_phys,
+		      struct phy_bulk_data *phys)
+{
+	return __devm_phy_bulk_get(dev, num_phys, phys, false);
+}
+EXPORT_SYMBOL_GPL(devm_phy_bulk_get);
+
+/**
+ * devm_phy_bulk_get_optional() - managed lookup of multiple optional PHYs
+ * @dev: device that requests the PHYs
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data with PHY names set
+ *
+ * Gets the PHYs using phy_bulk_get_optional() and associates the references
+ * with @dev. Missing PHYs are stored as NULL. The references are automatically
+ * released on driver detach.
+ *
+ * Return: %0 if successful, a negative error code otherwise
+ */
+int devm_phy_bulk_get_optional(struct device *dev, unsigned int num_phys,
+			       struct phy_bulk_data *phys)
+{
+	return __devm_phy_bulk_get(dev, num_phys, phys, true);
+}
+EXPORT_SYMBOL_GPL(devm_phy_bulk_get_optional);
+
+/**
+ * devm_of_phy_bulk_get() - managed lookup of multiple PHYs from a device node
+ * @dev: device that requests the PHYs
+ * @np: device node containing the PHY references
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data with PHY names set
+ *
+ * Gets the PHYs using of_phy_bulk_get() from the specified device node,
+ * associates the references with @dev, and creates a device link for each PHY.
+ * The references are automatically released on driver detach.
+ *
+ * Return: %0 if successful, a negative error code otherwise
+ */
+int devm_of_phy_bulk_get(struct device *dev, struct device_node *np,
+			 unsigned int num_phys, struct phy_bulk_data *phys)
+{
+	struct phy_bulk_devres *devres;
+	int ret;
+
+	devres = devres_alloc(devm_phy_bulk_release, sizeof(*devres),
+			      GFP_KERNEL);
+	if (!devres)
+		return -ENOMEM;
+
+	ret = of_phy_bulk_get(np, num_phys, phys);
+	if (ret) {
+		devres_free(devres);
+		return ret;
+	}
+
+	for (unsigned int i = 0; i < num_phys; i++)
+		phy_add_device_link(dev, phys[i].phy);
+
+	devres->phys = phys;
+	devres->num_phys = num_phys;
+	devres_add(dev, devres);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(devm_of_phy_bulk_get);
+
+static void devm_phy_bulk_release_all(struct device *dev, void *res)
+{
+	struct phy_bulk_devres *devres = res;
+
+	phy_bulk_put_all(dev, devres->num_phys, devres->phys);
+}
+
+/**
+ * devm_phy_bulk_get_all() - managed lookup of all PHYs requested by a device
+ * @dev: device that requests the PHYs
+ * @phys: pointer to store the allocated array of struct phy_bulk_data
+ *
+ * Gets all PHYs using phy_bulk_get_all() and associates the allocated array and
+ * PHY references with @dev. They are automatically released on driver detach.
+ *
+ * Return: the number of PHYs on success, %0 if no PHYs are found, or a
+ * negative error code otherwise
+ */
+int devm_phy_bulk_get_all(struct device *dev, struct phy_bulk_data **phys)
+{
+	struct phy_bulk_devres *devres;
+	int ret;
+
+	*phys = NULL;
+
+	devres = devres_alloc(devm_phy_bulk_release_all, sizeof(*devres),
+			      GFP_KERNEL);
+	if (!devres)
+		return -ENOMEM;
+
+	ret = phy_bulk_get_all(dev, &devres->phys);
+	if (ret > 0) {
+		*phys = devres->phys;
+		devres->num_phys = ret;
+		devres_add(dev, devres);
+	} else {
+		devres_free(devres);
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(devm_phy_bulk_get_all);
+
+/**
+ * devm_of_phy_bulk_get_all() - managed lookup of all PHYs from a device node
+ * @dev: device that requests the PHYs
+ * @np: device node containing the PHY references
+ * @phys: pointer to store the allocated array of struct phy_bulk_data
+ *
+ * Gets all PHYs from the specified device node, associates the allocated array
+ * and PHY references with @dev, and creates a device link for each PHY. They
+ * are automatically released on driver detach.
+ *
+ * Return: the number of PHYs on success, %0 if no PHYs are found, or a
+ * negative error code otherwise
+ */
+int devm_of_phy_bulk_get_all(struct device *dev, struct device_node *np,
+			     struct phy_bulk_data **phys)
+{
+	struct phy_bulk_devres *devres;
+	int ret;
+
+	*phys = NULL;
+
+	devres = devres_alloc(devm_phy_bulk_release_all, sizeof(*devres),
+			      GFP_KERNEL);
+	if (!devres)
+		return -ENOMEM;
+
+	ret = of_phy_bulk_get_all(np, &devres->phys);
+	if (ret > 0) {
+		for (int i = 0; i < ret; i++)
+			phy_add_device_link(dev, devres->phys[i].phy);
+		*phys = devres->phys;
+		devres->num_phys = ret;
+		devres_add(dev, devres);
+	} else {
+		devres_free(devres);
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(devm_of_phy_bulk_get_all);
+
 /**
  * phy_bulk_init() - initialize multiple PHYs
  * @num_phys: number of entries in the phys array
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 13f9f030122f..2af240f4b257 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -327,8 +327,17 @@ int phy_bulk_get_optional(struct device *dev, unsigned int num_phys,
 			  struct phy_bulk_data *phys);
 int of_phy_bulk_get(struct device_node *np, unsigned int num_phys,
 		    struct phy_bulk_data *phys);
+int devm_phy_bulk_get(struct device *dev, unsigned int num_phys,
+		      struct phy_bulk_data *phys);
+int devm_phy_bulk_get_optional(struct device *dev, unsigned int num_phys,
+			       struct phy_bulk_data *phys);
+int devm_of_phy_bulk_get(struct device *dev, struct device_node *np,
+			 unsigned int num_phys, struct phy_bulk_data *phys);
 int phy_bulk_get_all(struct device *dev, struct phy_bulk_data **phys);
 int of_phy_bulk_get_all(struct device_node *np, struct phy_bulk_data **phys);
+int devm_phy_bulk_get_all(struct device *dev, struct phy_bulk_data **phys);
+int devm_of_phy_bulk_get_all(struct device *dev, struct device_node *np,
+			     struct phy_bulk_data **phys);
 void phy_bulk_put(struct device *dev, unsigned int num_phys,
 		  struct phy_bulk_data *phys);
 void of_phy_bulk_put(unsigned int num_phys, struct phy_bulk_data *phys);
@@ -549,6 +558,27 @@ static inline int of_phy_bulk_get(struct device_node *np, unsigned int num_phys,
 	return -EOPNOTSUPP;
 }
 
+static inline int devm_phy_bulk_get(struct device *dev, unsigned int num_phys,
+				    struct phy_bulk_data *phys)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int devm_phy_bulk_get_optional(struct device *dev,
+					     unsigned int num_phys,
+					     struct phy_bulk_data *phys)
+{
+	return phy_bulk_get_optional(dev, num_phys, phys);
+}
+
+static inline int devm_of_phy_bulk_get(struct device *dev,
+				       struct device_node *np,
+				       unsigned int num_phys,
+				       struct phy_bulk_data *phys)
+{
+	return -EOPNOTSUPP;
+}
+
 static inline int phy_bulk_get_all(struct device *dev,
 				   struct phy_bulk_data **phys)
 {
@@ -567,6 +597,19 @@ static inline int of_phy_bulk_get_all(struct device_node *np,
 	return -EOPNOTSUPP;
 }
 
+static inline int devm_phy_bulk_get_all(struct device *dev,
+					struct phy_bulk_data **phys)
+{
+	return phy_bulk_get_all(dev, phys);
+}
+
+static inline int devm_of_phy_bulk_get_all(struct device *dev,
+					   struct device_node *np,
+					   struct phy_bulk_data **phys)
+{
+	return of_phy_bulk_get_all(np, phys);
+}
+
 static inline void phy_bulk_put(struct device *dev, unsigned int num_phys,
 				struct phy_bulk_data *phys)
 {
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
