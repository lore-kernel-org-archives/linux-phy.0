Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C105CA5FB1
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 08:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AoukmC0WlF+2w8yvDw0Be936ujSoSeKdID4h+BKNBSo=; b=X95IzKagEWMhlt
	DKBZ8FFA3YuhbeFL+nnYQqD0GfX8e7QJrVGFn058hSV4yD9c5+7NTVmx/F1BNFjicR63gEUpamb0g
	b4STAJ2Du1bLaiP7rMoTA8lRwewDJ8XPWUGnZZ/tE1nt+YJ5tTYTe7qvoGVHwnwU9MeiZrmEJlxda
	2W2KfKyFD+j5rCShcCee2+dTuSOLb1MArj+PQZGxC34OqFg40uZ2dMlCP6uP5bo5ZVlzJ8aYCkah/
	d3kcKePVIhadYF3BmZzP7wGYgWtXUhdbqpGJ/9gCv6hShWwZ9psxKayQlnxmgll7WbhdtsG/HzIM6
	I6CPkOse4ockPiXlw7hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTa8-00000002sQr-0tKT;
	Tue, 29 Sep 2026 08:53:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTa6-00000002sP7-43yP
	for linux-phy@bombadil.infradead.org;
	Tue, 29 Sep 2026 08:52:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=RVt+Q6vf6BkSb3Obq200XC2a8MA/3pBxsRhoBaJSQWk=; b=Anide4+hsRJHBJgS1xwVbL/SK6
	x41G96qjaT/5zhlzPoSzS4SwxEHTH4Sx98gfOfFP4HT4eS+8i3ANLMFSrfdcLPXY1zOUzaIOeQHwZ
	4q4jlG4/a4E9fBpsIaC7uaoJbVLZJQd5iRbi4w2tofn+spdQkcd742CIvxiG5x8tXHLTiPxJvKJLr
	MMW6fkRIcziK/HBW/iezpTHgOBIwyf3PtRGqUN/knw4Lz/REdY4k1CRaqRiULrz+cOkaIIewKUdon
	gmvZAtn8iIuNowRoy1rcJi2/B5bIuA0/P1+Bokm5RDOXdJY7i8yISoRqbMzOykvl0nJENWL3XjfFo
	gJcjhQkg==;
Received: from mail-pj2-x0d.google.com ([2607:f8b0:4864:39::d])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBTa4-00000002NpK-04zC
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 08:52:57 +0000
Received: by mail-pj2-x0d.google.com with SMTP id 98e67ed59e1d1-3a0aa9d356eso3087611a91.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 01:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790671974; x=1791276774; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RVt+Q6vf6BkSb3Obq200XC2a8MA/3pBxsRhoBaJSQWk=;
        b=hHjt/j+RvCKPgTWLDNsqn6HjTVcGw80yWMicqklqZZExwft6Jeo1C4Na8KhqW6bpoD
         7AqZkxjdMEvKnJlKK1CRpbkNcsQs8eVZLJv0CvHfRqn4GABOA3C+Ii8Ertwhn8cAC3bf
         /ZiBP+fK/zqt4AT5D11E7Kj7PqhB5x0YiEJb5iFYXb5FKTdAdjpSY0vYLi1IO8lB2K4H
         xrq6oaboD6xvTIyQNuIUPhdper5MxJr1n+FAwlEbXFrJcRgRUZzTyTW6y1942pvIVPnT
         3Le14AWjPNDCHiIew0eXaUOKVOW4nNsi2d9I30KC/tQ0FMCsdI/+n6nf8l/edeZBUuTd
         thdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790671974; x=1791276774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=RVt+Q6vf6BkSb3Obq200XC2a8MA/3pBxsRhoBaJSQWk=;
        b=F6LGVnjgAv/sRAvqlDbA7IFsR8xObgWD/nCFDgoz+NhUm6UJSyPmNMgR9Xo2N+RwKh
         NwioO73YmJXfyFXk6fqlZJfcDqlokltU932RufaSsZuIM0GQNgE24RKJU4zbZgMkCFnt
         N7kr6k10Rnf40EHxwTtTXgmWXzk58m6UwghFOr2qSDHna3U4VigTuf56sPNDQrgqhalJ
         pfnCN3/EqHZxdDSfZL9cHLB+8Sh1vm0KzGc6e2MllSc/SCMsZQA4ZRxCSIzQaox433DS
         YV6Ut1mHhDeAjLqpUimFLfk4naZlNzJXQH9wN19ZNdICsIewswcrYeGxCP6vEnaqGf7Q
         P3Fw==
X-Forwarded-Encrypted: i=1; AKwUvBy/sGHkcrY3BCMgDAL6zHK4ckrcXmVU+Yz0pbfJC9umwvaC6syW6Vgaqxi1K4nLp/k+Yvs0CIIGx1E=@lists.infradead.org
X-Gm-Message-State: AFq9FYLUOX2md4Qza2sY9yYdFugBvPFEbppW0GCu01zcZfJkTdkIHf92
	aCQV3fk2/jggvC+3WtnNrYGh7eA+mkgrfpUnpIaXvbKRwcAYimkGAsUL
X-Gm-Gg: AYBFou0Kf+S9VIlG2cIyVJCicMZG/10GiWj+OXz/mPoGU+UsbWrrzwfpm20hFon86dX
	z/6YqXO2DjIMuvBdzEVIxrvtaDSstcsBIexZGxZleL9GIeWyxdmkiIe8JLk+Dl4pgCj4O/uWYYo
	i4oe/ZjQyJWP2aR2BsKXScEBz5iySoRUOwNjgTi2ev9N93NBQ+EAUE98J3BVbW/N8pIciJRYwTq
	+l+TuG4I3Z0TxAADJ8SL6rCvqE0GeMiiRk1tsuhW9LTVezR3lDn58P4QQ5VXwDBdqvRHSToG5Xo
	YBtrMW+GxoW/mXGFzM7PgKVcmG6bZtboP73OYvsjZ7R5n9c1kZ/8ywsK50mvG4W95qkOzWAdieA
	QyKKfkLwnIb7mYsBFoS4+IdhluIGMeh63hZJA3edjNQiXSyC2uhYtByz3gjXCMesmhhzl3Ke4Wz
	oSApELxajNVOnEE+v/mONikt0lzC92EUBxAjQJTJVd/wkj3rhcClmPuB0hUor1PK3Lm9YUaxl2P
	KNI78c=
X-Received: by 2002:a17:90b:574d:b0:3a0:2900:f584 with SMTP id 98e67ed59e1d1-3a099230a7fmr14603405a91.46.1790671973686;
        Tue, 29 Sep 2026 01:52:53 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a4926b3f9fsm2394655a91.0.2026.09.29.01.52.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2026 01:52:53 -0700 (PDT)
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
Subject: [PATCH v4 3/5] phy: core: Add phy bulk data helper functions
Date: Tue, 29 Sep 2026 16:52:33 +0800
Message-ID: <20260929085235.469515-4-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260929085235.469515-1-inochiama@gmail.com>
References: <20260929085235.469515-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_095256_247281_F968D7E0 
X-CRM114-Status: GOOD (  25.29  )
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

Add several helper functions that allow drivers to get several phy
consumers in one operation. If any of the phy cannot be acquired then
any phys that were got will be put before returning to the caller.

This can relieve the driver owners' life who needs to handle many phys,
as well as each phy error reporting.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 drivers/phy/phy-core.c  | 253 ++++++++++++++++++++++++++++++++++++++++
 include/linux/phy/phy.h |  55 +++++++++
 2 files changed, 308 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 8fbaea003b90..5b76c006575b 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -1004,6 +1004,259 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 }
 EXPORT_SYMBOL_GPL(devm_of_phy_get_by_index);
 
+/**
+ * of_phy_get_count() - Get the number of phys of a device node
+ * @np: device_node for which to get the phy
+ *
+ * Return: the phy count if successful, %0 if no phy handle is found,
+ * negative error value if error occurs.
+ */
+static int of_phy_get_count(const struct device_node *np)
+{
+	int count;
+
+	count = of_count_phandle_with_args(np, "phys", "#phy-cells");
+
+	if (count == -ENOENT)
+		return 0;
+
+	return count;
+}
+
+/**
+ * phy_bulk_put() - release a set of PHYs
+ * @dev: device that acquired the PHYs
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data with PHYs set
+ *
+ * Releases the PHY references in reverse order and clears the PHY pointer in
+ * each entry. The caller owns the phys array and is responsible for freeing it
+ * if necessary.
+ */
+static void phy_bulk_put(struct device *dev, unsigned int num_phys,
+			 struct phy_bulk_data *phys)
+{
+	while (num_phys--) {
+		if (!IS_ERR_OR_NULL(phys[num_phys].phy))
+			phy_put(dev, phys[num_phys].phy);
+		phys[num_phys].phy = NULL;
+	}
+}
+
+/**
+ * of_phy_bulk_put() - release a set of PHYs
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data with PHYs set
+ *
+ * Releases the PHY references in reverse order and clears the PHY pointer in
+ * each entry. The caller owns the phys array and is responsible for freeing it
+ * if necessary.
+ */
+static void of_phy_bulk_put(unsigned int num_phys, struct phy_bulk_data *phys)
+{
+	while (num_phys--) {
+		of_phy_put(phys[num_phys].phy);
+		phys[num_phys].phy = NULL;
+	}
+}
+
+static int of_phy_bulk_get_by_index(struct device_node *np,
+				    unsigned int num_phys,
+				    struct phy_bulk_data *phys)
+{
+	unsigned int i;
+	int ret;
+
+	for (i = 0; i < num_phys; i++) {
+		phys[i].id = NULL;
+		phys[i].phy = NULL;
+	}
+
+	for (i = 0; i < num_phys; i++) {
+		of_property_read_string_index(np, "phy-names", i, &phys[i].id);
+
+		phys[i].phy = of_phy_get_by_index(np, i);
+
+		ret = PTR_ERR_OR_ZERO(phys[i].phy);
+		if (ret) {
+			phys[i].phy = NULL;
+			goto err;
+		}
+	}
+
+	return 0;
+
+err:
+	of_phy_bulk_put(i, phys);
+
+	return ret;
+}
+
+/**
+ * of_phy_bulk_get_all() - obtain all PHYs from a device node
+ * @np: device node containing the PHY references
+ * @phys: pointer to store the allocated array of struct phy_bulk_data
+ *
+ * Gets every PHY referenced by the phys property in index order. PHY names are
+ * read from phy-names when present.
+ *
+ * Return: the number of PHYs on success, %0 if no PHYs are found, or a
+ * negative error code otherwise
+ */
+static int of_phy_bulk_get_all(struct device_node *np,
+			       struct phy_bulk_data **phys)
+{
+	struct phy_bulk_data *phy_bulk;
+	int num_phys;
+	int ret;
+
+	num_phys = of_phy_get_count(np);
+	if (num_phys <= 0)
+		return num_phys;
+
+	phy_bulk = kmalloc_objs(*phy_bulk, num_phys);
+	if (!phy_bulk)
+		return -ENOMEM;
+
+	ret = of_phy_bulk_get_by_index(np, num_phys, phy_bulk);
+	if (ret) {
+		kfree(phy_bulk);
+		return ret;
+	}
+
+	*phys = phy_bulk;
+
+	return num_phys;
+}
+
+/**
+ * phy_bulk_put_all() - release and free PHYs
+ * @dev: device that acquired the PHYs
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data to release and free
+ */
+static void phy_bulk_put_all(struct device *dev, unsigned int num_phys,
+			     struct phy_bulk_data *phys)
+{
+	if (IS_ERR_OR_NULL(phys))
+		return;
+
+	phy_bulk_put(dev, num_phys, phys);
+	kfree(phys);
+}
+
+/**
+ * phy_bulk_init() - initialize multiple PHYs
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data to initialize
+ *
+ * Initializes the PHYs in array order. If an initialization fails, all PHYs
+ * initialized by this call are exited in reverse order.
+ *
+ * Return: %0 if successful, a negative error code otherwise
+ */
+int phy_bulk_init(unsigned int num_phys, struct phy_bulk_data *phys)
+{
+	unsigned int i;
+	int ret;
+
+	for (i = 0; i < num_phys; i++) {
+		ret = phy_init(phys[i].phy);
+		if (ret)
+			goto err;
+	}
+
+	return 0;
+
+err:
+	while (i--)
+		phy_exit(phys[i].phy);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(phy_bulk_init);
+
+/**
+ * phy_bulk_exit() - exit multiple PHYs
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data to exit
+ *
+ * Exits the PHYs in reverse array order. All PHYs are processed even if an
+ * error occurs.
+ *
+ * Return: %0 if successful, the first negative error code otherwise
+ */
+int phy_bulk_exit(unsigned int num_phys, struct phy_bulk_data *phys)
+{
+	int ret = 0;
+	int err;
+
+	while (num_phys--) {
+		err = phy_exit(phys[num_phys].phy);
+		if (err && !ret)
+			ret = err;
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(phy_bulk_exit);
+
+/**
+ * phy_bulk_power_on() - power on multiple PHYs
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data to power on
+ *
+ * Powers on the PHYs in array order. If a power-on operation fails, all PHYs
+ * powered on by this call are powered off in reverse order.
+ *
+ * Return: %0 if successful, a negative error code otherwise
+ */
+int phy_bulk_power_on(unsigned int num_phys, struct phy_bulk_data *phys)
+{
+	unsigned int i;
+	int ret;
+
+	for (i = 0; i < num_phys; i++) {
+		ret = phy_power_on(phys[i].phy);
+		if (ret)
+			goto err;
+	}
+
+	return 0;
+
+err:
+	while (i--)
+		phy_power_off(phys[i].phy);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(phy_bulk_power_on);
+
+/**
+ * phy_bulk_power_off() - power off multiple PHYs
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data to power off
+ *
+ * Powers off the PHYs in reverse array order. All PHYs are processed even if
+ * an error occurs.
+ *
+ * Return: %0 if successful, the first negative error code otherwise
+ */
+int phy_bulk_power_off(unsigned int num_phys, struct phy_bulk_data *phys)
+{
+	int ret = 0;
+	int err;
+
+	while (num_phys--) {
+		err = phy_power_off(phys[num_phys].phy);
+		if (err && !ret)
+			ret = err;
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(phy_bulk_power_off);
+
 /**
  * phy_create() - create a new phy
  * @dev: device that is creating the new phy
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index ea47975e288a..77d9d74682b7 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -81,6 +81,18 @@ union phy_configure_opts {
 	struct phy_configure_opts_hdmi		hdmi;
 };
 
+/**
+ * struct phy_bulk_data - Data used for bulk phy operations.
+ *
+ * @id: phy consumer ID
+ */
+struct phy_bulk_data {
+	const char	*id;
+
+	/* private: Internal use */
+	struct phy	*phy;
+};
+
 /**
  * struct phy_ops - set of function pointers for performing phy operations
  * @init: operation to be performed for initializing phy
@@ -309,6 +321,12 @@ void devm_of_phy_provider_unregister(struct device *dev,
 	struct phy_provider *phy_provider);
 int phy_create_lookup(struct phy *phy, const char *con_id, const char *dev_id);
 void phy_remove_lookup(struct phy *phy, const char *con_id, const char *dev_id);
+
+int phy_bulk_init(unsigned int num_phys, struct phy_bulk_data *phys);
+int phy_bulk_exit(unsigned int num_phys, struct phy_bulk_data *phys);
+int phy_bulk_power_on(unsigned int num_phys, struct phy_bulk_data *phys);
+int phy_bulk_power_off(unsigned int num_phys, struct phy_bulk_data *phys);
+
 #else
 static inline int phy_pm_runtime_get(struct phy *phy)
 {
@@ -493,6 +511,43 @@ static inline struct phy *devm_of_phy_get_by_index(struct device *dev,
 	return ERR_PTR(-ENOSYS);
 }
 
+static inline int phy_bulk_check_disabled(unsigned int num_phys,
+					  struct phy_bulk_data *phys)
+{
+	if (!phys)
+		return 0;
+
+	for (unsigned int i = 0; i < num_phys; i++)
+		if (phys[i].phy)
+			return -EOPNOTSUPP;
+
+	return 0;
+}
+
+static inline int phy_bulk_init(unsigned int num_phys,
+				struct phy_bulk_data *phys)
+{
+	return phy_bulk_check_disabled(num_phys, phys);
+}
+
+static inline int phy_bulk_exit(unsigned int num_phys,
+				struct phy_bulk_data *phys)
+{
+	return phy_bulk_check_disabled(num_phys, phys);
+}
+
+static inline int phy_bulk_power_on(unsigned int num_phys,
+				    struct phy_bulk_data *phys)
+{
+	return phy_bulk_check_disabled(num_phys, phys);
+}
+
+static inline int phy_bulk_power_off(unsigned int num_phys,
+				     struct phy_bulk_data *phys)
+{
+	return phy_bulk_check_disabled(num_phys, phys);
+}
+
 static inline void of_phy_put(struct phy *phy)
 {
 }
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
