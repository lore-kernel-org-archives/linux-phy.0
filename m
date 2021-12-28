Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74A63C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 28 Dec 2021 05:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sK3SnK7jreRag0xaRid7ylCSAFD0ahofqz/j8U89fjU=; b=HMhvnpSkKtQ04o
	648LWUf5fmYlJeO/GKzCnHeqBUhLswnkE5DkN9Ks4O8c8wgKHfnJAK1chDCvlIWzG53NvYNZqedgx
	ZCR3YdHK4XjREDu8JYrAIcRWkxvJ5n+bB7uUJCz79C8jIpv/5nejcr8AzmYTIlmq1DN282MBMpZSw
	Wqs7LUK9JtxYDUnAEeLgrmwqE9kOluft1Y3zvWtObowNknF2vUPKFTX5b9/iotvhCfk4k2OFbn32i
	5sM2C/swIQejffh9EvcbggzGEr0yuYI6qikQ3NdoX1cEHy4dO1QclSIrpVusZvmt4c5sGkbkJ1cxw
	BdEShOUXwgGQXwqZ9yaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n24uM-000DBW-Sm; Tue, 28 Dec 2021 05:20:22 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n24uK-000D9j-0j
 for linux-phy@lists.infradead.org; Tue, 28 Dec 2021 05:20:21 +0000
Received: by mail-oi1-x234.google.com with SMTP id m6so28398363oim.2
 for <linux-phy@lists.infradead.org>; Mon, 27 Dec 2021 21:20:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B3stWgwR81eKAKJ3RKJ0P1Br/fRUp2N80q2Nu0F389M=;
 b=PZcs1kJvAVVjSw3EUh7l1rDY0itzHA9onaPisle11HEnrVaazjHTi1CxdWUwagpjQW
 n2CVG3RO+ZGjdz7Fsipsrm8uPVhv9V7ZAKcqyCDGYXY2T5cK3raa59hms1D4S9Y7RdPK
 BZh1ZjvPKsxFFEK+0m8YIPOIOrjOrfPz9PdRR1WsHcC91uzkKQNZnA/Uzp1bM4GZ6oVM
 Www+zB/6YyjaXcEqwElhL/2EtYRL5s0+/JFKEc6KK+/lE6V/CikHS2suOwMqJxXE6laj
 eqzqMZcy/Xkh8QS/QubOoweciY4aTIsJY9Nlmkjk6gEGmhQjAvxJjVdkjFpslkyeejZK
 EqXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B3stWgwR81eKAKJ3RKJ0P1Br/fRUp2N80q2Nu0F389M=;
 b=yzsZlEzUOPyXgkl6Wzz+r7xugKkm+fRlb5WCP9qn7uMkNBhLlANwEaIJ3Xp6d0G7JI
 yrOfuxBDO2J3Xx0O6S2wVYKx0IHaSkqQ5sehNsTM5LIyh9klYPea5dH7DLsKBSpSPwA6
 6RjQA7KjpkxgPSes15Ckj/+hzRniZfCfN22JI+jkCpWq8XWPTm1o+FrDbQQVFOMPFbGO
 AZu8QBYlNBN/pnkVsZdTUOg415J0U52NjdslMkKc4Jxl9c3JpsP/L2tPyhX6LuzYL/wU
 W3qq16D7UMoXlfeo8m6w5fiICz+boGXrN8bl2c9KdiaT5dpko7UcJjgyu4CHrCsRGG57
 Hb5g==
X-Gm-Message-State: AOAM5310en7N8B4hX2CmmbFA0K+/j70phLryMehOyr2MGRcovJ0L6GBA
 y/zsg8xfsJUzqyfAqqKQ07gklQ==
X-Google-Smtp-Source: ABdhPJxSBeV78ThLbYNQ0MD+2nECmaipYI67MZ3x5j68rujaK2cOl0sAvFwLxoMhYWe2DsYxcsKoAA==
X-Received: by 2002:a05:6808:11c5:: with SMTP id
 p5mr15416930oiv.51.1640668818992; 
 Mon, 27 Dec 2021 21:20:18 -0800 (PST)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id j5sm3002277oou.23.2021.12.27.21.20.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Dec 2021 21:20:18 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: [PATCH 3/8] device property: Helper to match multiple connections
Date: Mon, 27 Dec 2021 21:21:11 -0800
Message-Id: <20211228052116.1748443-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211227_212020_092804_7E76874A 
X-CRM114-Status: GOOD (  19.27  )
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

In some cases multiple connections with the same connection id
needs to be resolved from a fwnode graph.

One such example is when separate hardware is used for performing muxing and/or
orientation switching of the SuperSpeed and SBU lines in a USB-C
connector. In this case the connector needs to belong to a graph with
multiple matching remote endpoints, and the TypeC controller needs to be
able to resolve them both.

Add a new API that allows this kind of lookup.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/base/property.c  | 94 ++++++++++++++++++++++++++++++++++++++++
 include/linux/property.h |  5 +++
 2 files changed, 99 insertions(+)

diff --git a/drivers/base/property.c b/drivers/base/property.c
index cbe4fa298413..0aa0296fd991 100644
--- a/drivers/base/property.c
+++ b/drivers/base/property.c
@@ -1180,6 +1180,36 @@ fwnode_graph_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
 	return NULL;
 }
 
+static unsigned int fwnode_graph_devcon_matches(struct fwnode_handle *fwnode,
+						const char *con_id, void *data,
+						devcon_match_fn_t match,
+						void **matches,
+						unsigned int matches_len)
+{
+	struct fwnode_handle *node;
+	struct fwnode_handle *ep;
+	unsigned int count = 0;
+	void *ret;
+
+	fwnode_graph_for_each_endpoint(fwnode, ep) {
+		if (count >= matches_len) {
+			fwnode_handle_put(ep);
+			return count;
+		}
+
+		node = fwnode_graph_get_remote_port_parent(ep);
+		if (!fwnode_device_is_available(node))
+			continue;
+
+		ret = match(node, con_id, data);
+		fwnode_handle_put(node);
+
+		if (ret)
+			matches[count++] = ret;
+	}
+	return count;
+}
+
 static void *
 fwnode_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
 		    void *data, devcon_match_fn_t match)
@@ -1202,6 +1232,35 @@ fwnode_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
 	return NULL;
 }
 
+static unsigned int fwnode_devcon_matches(struct fwnode_handle *fwnode,
+					  const char *con_id, void *data,
+					  devcon_match_fn_t match,
+					  void **matches,
+					  unsigned int matches_len)
+{
+	struct fwnode_handle *node;
+	unsigned int count = 0;
+	void *ret;
+	int i;
+
+	for (i = 0; ; i++) {
+		if (count >= matches_len)
+			return count;
+
+		node = fwnode_find_reference(fwnode, con_id, i);
+		if (IS_ERR(node))
+			break;
+
+		ret = match(node, NULL, data);
+		fwnode_handle_put(node);
+
+		if (ret)
+			matches[count++] = ret;
+	}
+
+	return count;
+}
+
 /**
  * fwnode_connection_find_match - Find connection from a device node
  * @fwnode: Device node with the connection
@@ -1229,3 +1288,38 @@ void *fwnode_connection_find_match(struct fwnode_handle *fwnode,
 	return fwnode_devcon_match(fwnode, con_id, data, match);
 }
 EXPORT_SYMBOL_GPL(fwnode_connection_find_match);
+
+/**
+ * fwnode_connection_find_matches - Find connections from a device node
+ * @fwnode: Device node with the connection
+ * @con_id: Identifier for the connection
+ * @data: Data for the match function
+ * @match: Function to check and convert the connection description
+ * @matches: Array of pointers to fill with matches
+ * @matches_len: Length of @matches
+ *
+ * Find up to @matches_len connections with unique identifier @con_id between
+ * @fwnode and other device nodes. @match will be used to convert the
+ * connection description to data the caller is expecting to be returned
+ * through the @matches array.
+ *
+ * Return: Number of matches resolved, of negative errno.
+ */
+int fwnode_connection_find_matches(struct fwnode_handle *fwnode,
+				   const char *con_id, void *data,
+				   devcon_match_fn_t match,
+				   void **matches, unsigned int matches_len)
+{
+	unsigned int count;
+
+	if (!fwnode || !match || !matches)
+		return -EINVAL;
+
+	count = fwnode_graph_devcon_matches(fwnode, con_id, data, match,
+					    matches, matches_len);
+
+	return count + fwnode_devcon_matches(fwnode, con_id, data, match,
+					     matches + count,
+					     matches_len - count);
+}
+EXPORT_SYMBOL_GPL(fwnode_connection_find_matches);
diff --git a/include/linux/property.h b/include/linux/property.h
index 16f736c698a2..59484ccb260e 100644
--- a/include/linux/property.h
+++ b/include/linux/property.h
@@ -444,6 +444,11 @@ static inline void *device_connection_find_match(struct device *dev,
 	return fwnode_connection_find_match(dev_fwnode(dev), con_id, data, match);
 }
 
+int fwnode_connection_find_matches(struct fwnode_handle *fwnode,
+				   const char *con_id, void *data,
+				   devcon_match_fn_t match,
+				   void **matches, unsigned int matches_len);
+
 /* -------------------------------------------------------------------------- */
 /* Software fwnode support - when HW description is incomplete or missing */
 
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
