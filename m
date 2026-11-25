Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8969606A32A
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 04:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pK5YVHRN;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=JS4RKgsg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=lvVr13+a
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Hvnr/OvQWUEAXOeTlXSF7HojIoO7urGlQ781L4W1dqE=; b=pK5YVHRNgNvYCov7j1mQFksLWJ
	4jMUoDgYtc5dSmDO4ZRMCO7IToNQpVGrIkoqpD9e6M6IurjbWbTb1yNAVz6cxSt4HlP/GLoC6kryu
	oqbj575N8yLXqy+YAbiwV/pQSSm8SUSfrJp8UeDTIsA1wz3yH9Y6YgnhGzXr7723VvOZn/HuKRra5
	YzSDuDgCUzuuU7+DCbvJh+hS6zyJOIykokKHUES4BJFhjsaiIL2cZaL2/0jHk7fJBjf0Eosb2k+aW
	9HVUKy14xtgrNTzeMQ8upjLnmpXi9KVHeloRWSlXPNl3KMl9OBJ+rOj/wUzLilk3Ir33CzR4aDlAH
	0NerXFkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW4lJ-00000008Os0-0Iwg;
	Wed, 25 Nov 2026 04:37:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW4l6-00000008Ol7-2Zk1
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Nov 2026 04:37:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=qTrL4/9jM8t7yAmF2IG8ye/8M/WX8AYVFJWYbaSsj7w=; b=JS4RKgsgXyGjADx+u/TFdUGsAw
	W8Rt5hIpRUMOccA3BrRASNqkZd5FlNx52SfFRyNJal4cwRfcdDLYMs9fwN57TOXPvV0HOu3gjtjDE
	27mmI2OFs8On2GWUVMvijG/Te8DzZO7kS495P4YTQ18K2+wyMxaecsZO/Mp2e2OG5AUOe997ed5/E
	4TMJqioQUqbsrk8j18qak7obXL9YH3D6Dnd9mrEtCZ3VRHlf9BFBXZ0zrPp8J7vVppW5rYzmK6yDw
	q/3eOsqHZO2TdXJjm+cZs8DwK2rE0vezMGg4Kp5DVDP0t+nRYoGmATlgL6wGluzK274dJjlQkmevk
	otH5QH/Q==;
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW4l3-00000004pqi-2YmB
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 04:37:27 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-3b43d30822fso2733433a91.3
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795581443; x=1796186243; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qTrL4/9jM8t7yAmF2IG8ye/8M/WX8AYVFJWYbaSsj7w=;
        b=lvVr13+apaPNo+5yoeLxqA+o+DFTxloZxn/4O/A1E00KA9EHs+dwICGcfYthDwkb6K
         XmDFkUwhP41B3MuGp5Alm+bOyHeR4mWa7V55TKBP7RQZv0CX86X7Z9KodLASlRmO/uFD
         TmlBDrpoP0Tf4624pePj+u4mFK8HiK//dfFxKEa6mq5kY/emoZzyAsTSkK+Oa0i+CBzS
         n/T4hdW7ePsmkdNcuS1I6j9VzOxfxdyHmHrV/f8YJivPc19Iu29527ais5vJ7bJ6Mt44
         wpA26J6wGP6KnXhYeVtQsi/fKzCmpjvC7n26my4B/eR5tWSHlXuBUlg4zK81dKX6rSl4
         HFcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795581443; x=1796186243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=qTrL4/9jM8t7yAmF2IG8ye/8M/WX8AYVFJWYbaSsj7w=;
        b=AvRx+cxqJETy7HmFVUUcRYQBkN3gjwx0Mkr3uXXEqMcmM4C35FRbRIpu43pvrO1ewu
         8M9MynSZcPHMoxhXXKHW7rWmGV2covm40fXTXR+1P/QjT/FSxbLRNR+cKf1asvUK8j+N
         /umL3U3LaathDQJnhOBqGBhDzsBek12eHbOtFjyc+3ITRUS1UZe0mQ+Xtx3hJYlvMFQa
         5miiPsm45ixig4RomjDCrTSeJpvNMxstQi52sAquAUXhPyn15QxXjbYeiGARlpNjlBBw
         UdPyxC374j+RAJn5D7CbdUXP4N78IhLpujYoIUxprNDsDnyTGFcl+eH1PI9bsZ/WclDa
         5+NQ==
X-Forwarded-Encrypted: i=1; AL+hErEIag7+BRNLCUZ56w1vOQp/Yfvr0RlWBEiKC4ah4Ce8H4rfD+RHoQPQJe/lPSz1auRB+l0ekHAyX7E=@lists.infradead.org
X-Gm-Message-State: APuU4Z/VdQ653pbohONoS7Zfk9x+leskYOnvR9UW885kGFoMx+/9scYe
	pLswu+M15iVMrVC08nXTGJh7xq60KsWFVwK51lxsPX2ssndRO74QzaIc
X-Gm-Gg: AZFdTZegk4utaPDyecOIyUA0nA4uDG/RzaB8JrKkIzOaaUyHnD6PlOiHtj93A5TkUeh
	YCR7ghOGSiE7XE09ZHAWKI34jSTYCf04g4Z9MMYPNUQ6UV9oPo0zex6bV+yhe+3uD/Ph3KMyqZ0
	gJmxZXqp7STN6+yicUQmCYIqjKXhwaGX1FbA+u9ZShc9NkoUSdyniY/XZpS1LZrDeGJv9UYmQk+
	euVF8Ltn/FE8oNKfF/4+d4ng2RDaRR6xkNOhqq8t2dIsVfixCuZcyk3KnZWAHDG88JTm/PeqXUn
	blbV0YOH9plXXRhOHElze4sof9BnYfFdPb4HmWmh7JTwtB+KT52DHgKJLNUA7VTJkH3zf/L8FiM
	Gk2W/GZFkOB9LXw1SicWr33ueOD/bYRKzktLimPUr/WSDLyJWHkeHLh5JLhU7wOKeOpuiuEDoZZ
	tpYybYC6IFdG2e7e3E3gL4Nc6VoL9Do0pgXfGkiH3LcwjEOak4crLEOunEZMqjkB7rIZpFWp1o3
	L9Dc1Zs7ixs3nmdolVK2VH2HMJjyD9+v6RAs9sgPiPO9qSGaPlzMMvhDMAwFYbcZYVJkfFuhirM
	x/wQKVobPX/D12l9yClH3xptzxMwtp9zyDKjfK8tjHM3+O8h
X-Received: by 2002:a17:90b:4c0b:b0:3b4:12a9:2e1 with SMTP id 98e67ed59e1d1-3b41c931d36mr16931812a91.33.1795581443120;
        Tue, 24 Nov 2026 20:37:23 -0800 (PST)
Received: from localhost ([2001:19f0:8000:4ce8:5400:7ff:fe0e:e6b2])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b41abb1b66sm26615594a91.1.2026.11.24.20.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 20:37:22 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Aksh Garg <a-garg7@ti.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Inochi Amaoto <inochiama@gmail.com>,
	Rhys Tumelty <rhys@tumelty.co.uk>,
	Manikandan K Pillai <mpillai@cadence.com>,
	"vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>,
	Qiang Yu <qiang.yu@oss.qualcomm.com>,
	Hans Zhang <18255117159@163.com>,
	Yao Zi <me@ziyao.cc>
Cc: linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-ide@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v5 2/8] phy: core: Add common helper for get phy phandle by index
Date: Wed, 25 Nov 2026 12:36:33 +0800
Message-ID: <20261125043639.249525-3-inochiama@gmail.com>
X-Mailer: git-send-email 2.56.1
In-Reply-To: <20261125043639.249525-1-inochiama@gmail.com>
References: <20261125043639.249525-1-inochiama@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_043725_893134_B194C999 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.2 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Two phy helpers use index to get phy phandle of a device node,
add a common function for the future reuse.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/phy-core.c | 57 ++++++++++++++++++++++++------------------
 1 file changed, 33 insertions(+), 24 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index b7550ca37e66..efbd7e139dce 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -697,38 +697,55 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 	return phy;
 }
 
+/**
+ * _of_phy_get_by_index() - lookup and obtain a reference to a phy using a
+ * device_node by index.
+ * @np: device_node for which to get the phy
+ * @index: index of the phy from device's point of view
+ *
+ * Returns: the phy device, after getting a refcount to it; or
+ * -ENODEV if there is no such phy. The caller is responsible for
+ * calling of_phy_put() to release that count.
+ */
+static struct phy *_of_phy_get_by_index(struct device_node *np, int index)
+{
+	struct phy *phy;
+
+	phy = _of_phy_get(np, index);
+	if (IS_ERR(phy))
+		return phy;
+
+	if (!try_module_get(phy->ops->owner)) {
+		phy = ERR_PTR(-EPROBE_DEFER);
+		return phy;
+	}
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
- * Returns: the phy driver, after getting a refcount to it; or
+ * Returns: the phy device, after getting a refcount to it; or
  * -ENODEV if there is no such phy. The caller is responsible for
  * calling of_phy_put() to release that count.
  */
 struct phy *of_phy_get(struct device_node *np, const char *con_id)
 {
-	struct phy *phy = NULL;
+	struct phy *phy;
 	int index = 0;
 
 	if (con_id)
 		index = of_property_match_string(np, "phy-names", con_id);
 
 	mutex_lock(&phy_provider_mutex);
-
-	phy = _of_phy_get(np, index);
-	if (IS_ERR(phy))
-		goto out_unlock;
-
-	if (!try_module_get(phy->ops->owner)) {
-		phy = ERR_PTR(-EPROBE_DEFER);
-		goto out_unlock;
-	}
-
-	get_device(&phy->dev);
-
-out_unlock:
+	phy = _of_phy_get_by_index(np, index);
 	mutex_unlock(&phy_provider_mutex);
+
 	return phy;
 }
 EXPORT_SYMBOL_GPL(of_phy_get);
@@ -1001,20 +1018,12 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 		return ERR_PTR(-ENOMEM);
 
 	mutex_lock(&phy_provider_mutex);
-	phy = _of_phy_get(np, index);
+	phy = _of_phy_get_by_index(np, index);
 	if (IS_ERR(phy)) {
 		devres_free(ptr);
 		goto out_unlock;
 	}
 
-	if (!try_module_get(phy->ops->owner)) {
-		devres_free(ptr);
-		phy = ERR_PTR(-EPROBE_DEFER);
-		goto out_unlock;
-	}
-
-	get_device(&phy->dev);
-
 	*ptr = phy;
 	devres_add(dev, ptr);
 
-- 
2.56.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
