Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36F3FC79F87
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 08:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0HObDPCREZ0TyR/71uI/IYyGPzkVA0ladZFzUudTlx0=; b=cS9oO4UCEUEdqV
	cdXxZH+unnFh+cXOoCaBl4rgSgTE/EyL4U1f3APlEK1RGZwL8r+nf6C34QqTBLT52LSaEzMm/OXiJ
	GD6PNhJ0llgOoSAss+YeH7pfswW424PF3jsxYfgGq/WdzWKJ590QPkxyHF/LS+zRBIG3YMvxvCUyM
	j1DtHjFsrC+/MlC3Y2RIyYwj7zGUgDwBc3Rn7TezW1YMirsB4CO0z53m8arwtd76guNfqa/sH348v
	J5aKXkebZp1TO1qAtE7/i4bOp7Bx6bjm3dsEVFrhBpfLj5f0bbbWEWtvGEtcsqQVYZAfBHFQ0L7fV
	+7jVIJbX2z5sdG0qDsrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2PQv-00000001Ofk-3tmM;
	Fri, 04 Sep 2026 08:38:01 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2PQu-00000001Of6-0PVk
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 08:38:01 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-855d2bfae95so2296027b3a.1
        for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 01:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788511079; x=1789115879; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LXsgluCGsQu3NWRJe11WOavM3i5u5c6VI3qIHHMnTG4=;
        b=n79PHb/E5WHLlKxWLBAARkASohb446eLs7MnA1CaZh8NE1t2oe5SSAAC0vsQhGsVoq
         voQCmIehnk8v+j4pXaNi3GmYyWWhpNvRmXdC2o7x16Rufo69fGSTIt0B/mrC+sIm/Ty8
         9uW801+0wCekjXgWYKEnuwGnoj7fXY1P/02CU1MFdshT0VwqxaSglEvv6zEIBnW48U6H
         aoS1LRTfg6ONOetvxhV65aqg/3Et1AZFL/tWu/Js8XgAjChYE3u0E4YgyYDjl1Fygogk
         /F4XYLjZWD0Lyx8YV1Fg1T/JzzCntNwhI0kFT+6T/s+SWVcgRc0W3L2rlDATzrEaAhWf
         /ZZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788511079; x=1789115879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=LXsgluCGsQu3NWRJe11WOavM3i5u5c6VI3qIHHMnTG4=;
        b=cxobYQVhUCeEl1jrh9c/eK9MT2Y36LSA7Vm2r2q0VqQsKno8sjyG6ccuzkvFp7J/DN
         Bs8WPnAJxA4X6YSbVpdYQwgFLTwvJW5otkNCgJtWpk7jbqGfNdYBjwf+ddGcok3dKpJW
         1G/khqJTGG66qMrZ3KO9ImoAzBvCrKq6zgIQnxU5ZKt9dsUXNu4eEaj7teBfyrhIvTe5
         VNUIBGVimR/HtIdaBi2870AS2ShhcITx5NGMI7ZpirJgTDy6yWrbKRYEvJxYq32jcMQ7
         dcaJAk08ku7Rct/OBCnG+G3y+7fyg1gD7wHhVku7qwKcAzA3hdBwz4IpgFMMck+yasa1
         xPvw==
X-Forwarded-Encrypted: i=1; AKwUvBzjT/xi2d4CzCP/YyCHXXJdfr2n8C1Lw2pwZMmWUVn2NOCEvbqgQzJ9aOKQ3PmZqWgXaXNEH19HaOI=@lists.infradead.org
X-Gm-Message-State: AFuF++lCIWxJQ2FPIVN6ypAmBeaU9h5YaEizBfSXPoTnAiqnGtbPu5Vz
	bBplUnufHsaJTz3cB7VWF9+zcl62cSfYD6wcWJLaa3+tiI5/ki/BZ4ChwnbSz33D
X-Gm-Gg: AYBFou2QY5X8y1z6dgq3yP8TsPfLyVpXGLc3eLmbKTSXvJZdRI+VSBYdJNeIql6j35Z
	VRR8V+1vCuEU5isRdUU1Ud5rOc59wc3x3L5dSmKqy2duI7yKw8Koss6MI2rMTr9g7IPsxwmFegs
	HXd5L2q8co7SzC7iPMauIFfqsLCCRkl6rXE5AjHMhHkszcvdob7cOCQdpR4/5L5/YuO4CrovKbh
	agolBHzl0QZdGmPqfraNFSYPqi25ma9yIiZ8yx43n40f736+lLkqXqxVKXlSub/FK2JauhKEhzz
	k1FqKVxEaf5080utpV2qzvkNUEYzUx8omG96hGBpcxbTOGnN+8R6aHlvuFxiKGuwYo5nZXD/dcv
	wFCxKjI2Rgytt0OYUENMRM1Akp3sv5pGhaUS9ZU0YwzmnB5m9mqAfJUhmFfKTNQ1vkQ7A+r+LGq
	PvB6Ua5sc1GEE1XkWvi7qH0QKrWbXNSyuXpm1IidGdvvzBxAQDFO0f7z0pQCI=
X-Received: by 2002:a05:6a21:e8a:b0:3cc:8716:4702 with SMTP id adf61e73a8af0-3da3be4a2f5mr3598057637.8.1788511079082;
        Fri, 04 Sep 2026 01:37:59 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc45515397asm645664a12.1.2026.09.04.01.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 01:37:58 -0700 (PDT)
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
Subject: [PATCH v2 3/4] phy: core: Add phy bulk data helper functions
Date: Fri,  4 Sep 2026 16:37:07 +0800
Message-ID: <20260904083709.425893-4-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260904083709.425893-1-inochiama@gmail.com>
References: <20260904083709.425893-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_013800_166242_2A4C9E3B 
X-CRM114-Status: GOOD (  22.55  )
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
 drivers/phy/phy-core.c  | 413 ++++++++++++++++++++++++++++++++++++++++
 include/linux/phy/phy.h | 143 ++++++++++++++
 2 files changed, 556 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index a7d7acb5d3c2..f5596b8dfcfc 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -1003,6 +1003,419 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
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
+ * phy_bulk_put() - release a set of PHYs obtained with phy_bulk_get()
+ * @dev: device that acquired the PHYs
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data with PHYs set
+ *
+ * Releases the PHY references in reverse order and clears the PHY pointer in
+ * each entry. The caller owns the phys array and is responsible for freeing it
+ * if necessary.
+ */
+void phy_bulk_put(struct device *dev, unsigned int num_phys,
+		  struct phy_bulk_data *phys)
+{
+	while (num_phys--) {
+		if (!IS_ERR_OR_NULL(phys[num_phys].phy))
+			phy_put(dev, phys[num_phys].phy);
+		phys[num_phys].phy = NULL;
+	}
+}
+EXPORT_SYMBOL_GPL(phy_bulk_put);
+
+/**
+ * of_phy_bulk_put() - release a set of PHYs obtained with of_phy_bulk_get()
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data with PHYs set
+ *
+ * Releases the PHY references in reverse order and clears the PHY pointer in
+ * each entry. The caller owns the phys array and is responsible for freeing it
+ * if necessary.
+ */
+void of_phy_bulk_put(unsigned int num_phys, struct phy_bulk_data *phys)
+{
+	while (num_phys--) {
+		of_phy_put(phys[num_phys].phy);
+		phys[num_phys].phy = NULL;
+	}
+}
+EXPORT_SYMBOL_GPL(of_phy_bulk_put);
+
+static int __phy_bulk_get(struct device *dev, unsigned int num_phys,
+			  struct phy_bulk_data *phys, bool optional)
+{
+	unsigned int i;
+	int ret;
+
+	for (i = 0; i < num_phys; i++)
+		phys[i].phy = NULL;
+
+	for (i = 0; i < num_phys; i++) {
+		phys[i].phy = phy_get(dev, phys[i].id);
+
+		ret = PTR_ERR_OR_ZERO(phys[i].phy);
+		if (ret) {
+			phys[i].phy = NULL;
+
+			if (ret == -ENODEV && optional)
+				continue;
+
+			dev_err_probe(dev, ret, "Failed to get phy: (%s)\n",
+				      phys[i].id);
+			goto err;
+		}
+	}
+
+	return 0;
+
+err:
+	phy_bulk_put(dev, i, phys);
+
+	return ret;
+}
+
+/**
+ * phy_bulk_get() - lookup and obtain references to multiple PHYs
+ * @dev: device that requests the PHYs
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data with PHY names set
+ *
+ * Gets each PHY using phy_get(). This supports both device tree lookups and
+ * non-device-tree lookups registered with phy_create_lookup(). The caller must
+ * call phy_bulk_put() to release the PHY references.
+ *
+ * Return: %0 if successful, a negative error code otherwise
+ */
+int phy_bulk_get(struct device *dev, unsigned int num_phys,
+		 struct phy_bulk_data *phys)
+{
+	return __phy_bulk_get(dev, num_phys, phys, false);
+}
+EXPORT_SYMBOL_GPL(phy_bulk_get);
+
+/**
+ * phy_bulk_get_optional() - obtain references to multiple optional PHYs
+ * @dev: device that requests the PHYs
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data with PHY names set
+ *
+ * Gets each PHY using phy_get(). A PHY that is not present is stored as NULL
+ * instead of causing the operation to fail. The caller must call
+ * phy_bulk_put() to release the PHY references.
+ *
+ * Return: %0 if successful, a negative error code otherwise
+ */
+int phy_bulk_get_optional(struct device *dev, unsigned int num_phys,
+			  struct phy_bulk_data *phys)
+{
+	return __phy_bulk_get(dev, num_phys, phys, true);
+}
+EXPORT_SYMBOL_GPL(phy_bulk_get_optional);
+
+/**
+ * of_phy_bulk_get() - obtain references to multiple PHYs from a device node
+ * @np: device node containing the PHY references
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data with PHY names set
+ *
+ * Gets each PHY using of_phy_get() and the specified device node. The caller
+ * must call of_phy_bulk_put() to release the PHY references.
+ *
+ * Return: %0 if successful, a negative error code otherwise
+ */
+int of_phy_bulk_get(struct device_node *np, unsigned int num_phys,
+		    struct phy_bulk_data *phys)
+{
+	unsigned int i;
+	int ret;
+
+	for (i = 0; i < num_phys; i++)
+		phys[i].phy = NULL;
+
+	for (i = 0; i < num_phys; i++) {
+		phys[i].phy = of_phy_get(np, phys[i].id);
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
+EXPORT_SYMBOL_GPL(of_phy_bulk_get);
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
+ * read from phy-names when present. The caller must call
+ * of_phy_bulk_put_all() to release the PHY references and free the array.
+ *
+ * Return: the number of PHYs on success, %0 if no PHYs are found, or a
+ * negative error code otherwise
+ */
+int of_phy_bulk_get_all(struct device_node *np, struct phy_bulk_data **phys)
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
+EXPORT_SYMBOL_GPL(of_phy_bulk_get_all);
+
+/**
+ * of_phy_bulk_put_all() - release and free PHYs obtained by
+ * of_phy_bulk_get_all()
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data to release and free
+ */
+void of_phy_bulk_put_all(unsigned int num_phys, struct phy_bulk_data *phys)
+{
+	if (IS_ERR_OR_NULL(phys))
+		return;
+
+	of_phy_bulk_put(num_phys, phys);
+	kfree(phys);
+}
+EXPORT_SYMBOL_GPL(of_phy_bulk_put_all);
+
+/**
+ * phy_bulk_get_all() - obtain all PHYs requested by a device
+ * @dev: device that requests the PHYs
+ * @phys: pointer to store the allocated array of struct phy_bulk_data
+ *
+ * Gets every PHY referenced by the device's device tree node and creates a
+ * device link for each PHY. The caller must call phy_bulk_put_all() to release
+ * the PHY references and free the array.
+ *
+ * Return: the number of PHYs on success, %0 if no PHYs are found, or a
+ * negative error code otherwise
+ */
+int phy_bulk_get_all(struct device *dev, struct phy_bulk_data **phys)
+{
+	struct device_node *np = dev_of_node(dev);
+	int ret;
+
+	*phys = NULL;
+
+	if (!np)
+		return 0;
+
+	ret = of_phy_bulk_get_all(np, phys);
+	if (ret > 0)
+		for (int i = 0; i < ret; i++)
+			phy_add_device_link(dev, (*phys)[i].phy);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(phy_bulk_get_all);
+
+/**
+ * phy_bulk_put_all() - release and free PHYs obtained by phy_bulk_get_all()
+ * @dev: device that acquired the PHYs
+ * @num_phys: number of entries in the phys array
+ * @phys: array of struct phy_bulk_data to release and free
+ */
+void phy_bulk_put_all(struct device *dev, unsigned int num_phys,
+		      struct phy_bulk_data *phys)
+{
+	if (IS_ERR_OR_NULL(phys))
+		return;
+
+	phy_bulk_put(dev, num_phys, phys);
+	kfree(phys);
+}
+EXPORT_SYMBOL_GPL(phy_bulk_put_all);
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
index ea47975e288a..13f9f030122f 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -81,6 +81,17 @@ union phy_configure_opts {
 	struct phy_configure_opts_hdmi		hdmi;
 };
 
+/**
+ * struct phy_bulk_data - Data used for bulk phy operations.
+ *
+ * @id: phy consumer ID
+ * @phy: struct phy * to store the associated phy
+ */
+struct phy_bulk_data {
+	const char	*id;
+	struct phy	*phy;
+};
+
 /**
  * struct phy_ops - set of function pointers for performing phy operations
  * @init: operation to be performed for initializing phy
@@ -309,6 +320,26 @@ void devm_of_phy_provider_unregister(struct device *dev,
 	struct phy_provider *phy_provider);
 int phy_create_lookup(struct phy *phy, const char *con_id, const char *dev_id);
 void phy_remove_lookup(struct phy *phy, const char *con_id, const char *dev_id);
+
+int phy_bulk_get(struct device *dev, unsigned int num_phys,
+		 struct phy_bulk_data *phys);
+int phy_bulk_get_optional(struct device *dev, unsigned int num_phys,
+			  struct phy_bulk_data *phys);
+int of_phy_bulk_get(struct device_node *np, unsigned int num_phys,
+		    struct phy_bulk_data *phys);
+int phy_bulk_get_all(struct device *dev, struct phy_bulk_data **phys);
+int of_phy_bulk_get_all(struct device_node *np, struct phy_bulk_data **phys);
+void phy_bulk_put(struct device *dev, unsigned int num_phys,
+		  struct phy_bulk_data *phys);
+void of_phy_bulk_put(unsigned int num_phys, struct phy_bulk_data *phys);
+void phy_bulk_put_all(struct device *dev, unsigned int num_phys,
+		      struct phy_bulk_data *phys);
+void of_phy_bulk_put_all(unsigned int num_phys, struct phy_bulk_data *phys);
+int phy_bulk_init(unsigned int num_phys, struct phy_bulk_data *phys);
+int phy_bulk_exit(unsigned int num_phys, struct phy_bulk_data *phys);
+int phy_bulk_power_on(unsigned int num_phys, struct phy_bulk_data *phys);
+int phy_bulk_power_off(unsigned int num_phys, struct phy_bulk_data *phys);
+
 #else
 static inline int phy_pm_runtime_get(struct phy *phy)
 {
@@ -493,6 +524,118 @@ static inline struct phy *devm_of_phy_get_by_index(struct device *dev,
 	return ERR_PTR(-ENOSYS);
 }
 
+static inline int phy_bulk_get(struct device *dev, unsigned int num_phys,
+			       struct phy_bulk_data *phys)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int phy_bulk_get_optional(struct device *dev,
+					unsigned int num_phys,
+					struct phy_bulk_data *phys)
+{
+	if (!phys)
+		return 0;
+
+	for (unsigned int i = 0; i < num_phys; i++)
+		phys[i].phy = NULL;
+
+	return 0;
+}
+
+static inline int of_phy_bulk_get(struct device_node *np, unsigned int num_phys,
+				  struct phy_bulk_data *phys)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int phy_bulk_get_all(struct device *dev,
+				   struct phy_bulk_data **phys)
+{
+	if (phys)
+		*phys = NULL;
+
+	return -EOPNOTSUPP;
+}
+
+static inline int of_phy_bulk_get_all(struct device_node *np,
+				      struct phy_bulk_data **phys)
+{
+	if (phys)
+		*phys = NULL;
+
+	return -EOPNOTSUPP;
+}
+
+static inline void phy_bulk_put(struct device *dev, unsigned int num_phys,
+				struct phy_bulk_data *phys)
+{
+	if (!phys)
+		return;
+
+	while (num_phys--)
+		phys[num_phys].phy = NULL;
+}
+
+static inline void of_phy_bulk_put(unsigned int num_phys,
+				   struct phy_bulk_data *phys)
+{
+	if (!phys)
+		return;
+
+	while (num_phys--)
+		phys[num_phys].phy = NULL;
+}
+
+static inline void phy_bulk_put_all(struct device *dev, unsigned int num_phys,
+				    struct phy_bulk_data *phys)
+{
+	phy_bulk_put(dev, num_phys, phys);
+}
+
+static inline void of_phy_bulk_put_all(unsigned int num_phys,
+				       struct phy_bulk_data *phys)
+{
+	of_phy_bulk_put(num_phys, phys);
+}
+
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
