Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F54BCA5FAE
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 08:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DrCHb2Ki+bhfHKZrTrb6pzr5//Waoxzp97ySeIvhNk=; b=3E2G90MfWTrQeN
	vZ+XXm9z9H30AdjF49ceJCKg/JiZQw5ZuQWDqjyS6fl96bMirE2figrMWmavW2TpXghMXhJHYyrMK
	jbsTtTNS6zWmnJCMNk2Xy1pw8NKNEh1vmCjs1pIyVBGZa9db/YwP/W3C3HSNGojB3s6TIWZoAlVVt
	rsKjBASlLxeWcFmN3lF+ScIuMp+m/y5Fe89kmp/kfnWamk4MJeh4meA2FRmj8rHZoAMoCvpmGmNTo
	ITSjwBcsR8A017Z2zzoCJNxZT4oFvioIrqKY3+1/8Yo3qSbXo6DAWnuMvZIhY6nZ4DHdQDS13CPot
	WNH1FfhOhpOP3NDfx3+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTa8-00000002sQh-0UAQ;
	Tue, 29 Sep 2026 08:53:00 +0000
Received: from mail-pj2-x11.google.com ([2607:f8b0:4864:39::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTa5-00000002sNu-2uLH
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 08:52:58 +0000
Received: by mail-pj2-x11.google.com with SMTP id 98e67ed59e1d1-398b3b189e0so2080257a91.2
        for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 01:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790671977; x=1791276777; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=F23PT++YfQdFZCmgLsj0Bh4dPpOhTY0Wr6NJKb8T5Wo=;
        b=FLpaYZlOuqBridKu6QQaOlFCczq4pC0UiTorj/3untIDTuBiEOD/P8/PXXzFtuxjd1
         bPnHIWbNZ2kLJq3qE51E77EIYAKdhGV383ikny4yYwjsv9byrrGOTgdSpM/Vyof9dYQh
         zhkNA/+E2JogFA32XSDVKWlb17AUn/XoaSXEL8/PdjhsJE8d5miERAoLrdpGoA2DH9of
         0aaCDUJZT1JXmVCXGrF/SNw/k0o+F/Z4ZF1GS/DtHx2k9edYzyTy5SP+kyiHDqFKZH60
         Um/CYBDmrc1L9iCUYRKGEe7qbKZSoI98xznDyx8tnjJb8GMIYCmmovJJD6/Fc+RxYG/h
         kh7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790671977; x=1791276777;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=F23PT++YfQdFZCmgLsj0Bh4dPpOhTY0Wr6NJKb8T5Wo=;
        b=B1JHiaAShqZ9/YodiOLfym5cBG6PxcKA+NfseM9aKBU4CfBqPuVQXfjHmrgv10C/2p
         ERCNMGuUeALjRCGr+OTM+pvFb6Re+p1p2hnuHiBbraQpPav6c+VWeE4TWxAq4G4tND/d
         briHBBwU1WLcPNCPDLdZyM9QSpFFKgw3ZhareBoNibX/L4+4P8htFGe/15Wg1bZWdBlk
         fGjHgQ8h3R18Qqk/1LJRSA/aaCkM9PLgL//AqEixss+HbgCzKjeFbIYAbvRchgeFFpQw
         PfYpC61SMtNpzM1mB4au74f3AcUyzqB9n/7z+VrUKqyQPWhU9YX5KvtnDUcC/ijhC50s
         D9QQ==
X-Forwarded-Encrypted: i=1; AKwUvBy+zLwvm/EyAxLiEUBin4ERLwOMdb/j0nC0y7fe222DKDzw/IqiMK88FW8wRXWUNpANJJoPh2omBJw=@lists.infradead.org
X-Gm-Message-State: AFq9FYKfBfxLM5fARaMIFwbtjOfIgwrGuGr+QAJtagnS/+fE1ZPOqH1l
	YDmM0vvUAJB4orMN4plCl5JsssbO/ICB+/JbcBUZxR3ktiJgcMh2P6Qp
X-Gm-Gg: AYBFou3NtBK2t3jmkh14Ax9vd9YwbgkWHpkwBk5BKJu4E8Nw86sicScGrNiuLsL8Mb/
	CCinDKUFY2hRUoBqhNujNWx2Bagle53WV6ClFvd+vvYCGvHa3hf3Hmz3zfQuCIcofTTYvS1qKMF
	qQLh0HFvu/5wp2MlPjlhdoQWZzvkYxcEP/9Mq3c8T6CLFJAuPv6wtq75ec2TLBMSSgPfw/T64pd
	98y1vN5uJ9WPF7mISV/h9+/fmKwGMjucWWERqVUCvd10kRhBQf9pfgvhdS1u4NjGVqVIxvzxbt4
	Ehn1j1BxXmHcXtJE8HAsdDUT7xqoi/WmJ/5z6iMvq1W/C6MokbWo6i9EUR8zzG9s8E9bwBfdv0V
	rIgPNPF2aR9eDOBDdGAfmy9rGx6XRKRVn+QByc15fXXBq3vTWekQUCZ+uB1w5h5jkdgsbIPMQgt
	MpWmzng7/4JrUHLIaY3BsEPz0cxL2TTVHttJBC3scsQx90UBElN1d0VAcsLaYjKw/f2NBF4MkZs
	v80O2U=
X-Received: by 2002:a17:90b:28cc:b0:3a0:d440:7950 with SMTP id 98e67ed59e1d1-3a0d440b3f7mr8706884a91.4.1790671976493;
        Tue, 29 Sep 2026 01:52:56 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a497d9b117sm4379539a91.3.2026.09.29.01.52.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2026 01:52:56 -0700 (PDT)
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
Subject: [PATCH v4 4/5] phy: core: Add managed phy bulk data helper functions
Date: Tue, 29 Sep 2026 16:52:34 +0800
Message-ID: <20260929085235.469515-5-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260929085235.469515-1-inochiama@gmail.com>
References: <20260929085235.469515-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_015257_785476_5F6EE729 
X-CRM114-Status: GOOD (  16.86  )
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
 drivers/phy/phy-core.c  | 73 +++++++++++++++++++++++++++++++++++++++++
 include/linux/phy/phy.h | 19 +++++++++++
 2 files changed, 92 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 5b76c006575b..a588fba33313 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -1145,6 +1145,79 @@ static void phy_bulk_put_all(struct device *dev, unsigned int num_phys,
 	kfree(phys);
 }
 
+struct phy_bulk_devres {
+	struct phy_bulk_data *phys;
+	unsigned int num_phys;
+};
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
+ * The function calls devm_of_phy_bulk_get_all() directly, but sets the
+ * @np parameter to dev_of_node(dev).
+ *
+ * Return: the number of PHYs on success, %0 if no PHYs are found, or a
+ * negative error code otherwise
+ */
+int devm_phy_bulk_get_all(struct device *dev, struct phy_bulk_data **phys)
+{
+	return devm_of_phy_bulk_get_all(dev, dev_of_node(dev), phys);
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
+	if (!np)
+		return 0;
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
index 77d9d74682b7..e60e42eb7e0b 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -322,6 +322,9 @@ void devm_of_phy_provider_unregister(struct device *dev,
 int phy_create_lookup(struct phy *phy, const char *con_id, const char *dev_id);
 void phy_remove_lookup(struct phy *phy, const char *con_id, const char *dev_id);
 
+int devm_phy_bulk_get_all(struct device *dev, struct phy_bulk_data **phys);
+int devm_of_phy_bulk_get_all(struct device *dev, struct device_node *np,
+			     struct phy_bulk_data **phys);
 int phy_bulk_init(unsigned int num_phys, struct phy_bulk_data *phys);
 int phy_bulk_exit(unsigned int num_phys, struct phy_bulk_data *phys);
 int phy_bulk_power_on(unsigned int num_phys, struct phy_bulk_data *phys);
@@ -511,6 +514,22 @@ static inline struct phy *devm_of_phy_get_by_index(struct device *dev,
 	return ERR_PTR(-ENOSYS);
 }
 
+static inline int devm_of_phy_bulk_get_all(struct device *dev,
+					   struct device_node *np,
+					   struct phy_bulk_data **phys)
+{
+	if (phys)
+		*phys = NULL;
+
+	return 0;
+}
+
+static inline int devm_phy_bulk_get_all(struct device *dev,
+					struct phy_bulk_data **phys)
+{
+	return devm_of_phy_bulk_get_all(dev, dev_of_node(dev), phys);
+}
+
 static inline int phy_bulk_check_disabled(unsigned int num_phys,
 					  struct phy_bulk_data *phys)
 {
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
