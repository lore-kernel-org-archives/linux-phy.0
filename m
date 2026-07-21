Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8B40C44533
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 09:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2eUgvfgHgnXePGuZAHrMLmvEOLF6BrIxtpUvXTnAjdo=; b=vdyVSkSm3Me/P9
	myIFDD6FTmD2aUhhhF/Tp1KOG3tZbrmfJ/5Sf97EMCsagQJaOOFSljsVIsqvlAiwUQ0y38NbwUgW/
	hqxmGkyGXmZy97iyw64IlED/TgEfta70JlsQgjIzz9cj3CkP5iJu5hNYVxEkIQpJya1gq3qifydDc
	kmd++oeKu79zZSHK5wzuP82f97U/wU++qS4+S6n+BTET0TwkToufmyzdeZVdG5hxWYgdMEpQpbTIt
	g+D/At48i2fDQlXWfrY+GJlGqpNEDi1Y9smOcDlHRCg8GOy3xDnIPXwpn3Dvn7l8P4U+X3s0AZsb9
	HzCjNvkZ98AS1IT0eo1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm6u4-000000090JT-1Q7a;
	Tue, 21 Jul 2026 09:36:44 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm6u0-000000090G2-1DSx
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 09:36:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784626598;
	bh=utd5tLs9eRc/+0TgfYH3QKd2/pYehtVh2YyAsapgfp4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZofViD6iQydDme7USYzFs9e/O7nbFqVJ5202nKhP1uoN02lbrobqHqtJGk5Bh5AMh
	 aHqIubTjwZ58PZg4uBarJX9w9yln8JUWiZNHMU72cQBRsg9I9XWkZcwDNXar26ImF6
	 A2YEgmiPrKEM3fKNmPtqACYfV7U6YIERzBC5gMUofhHuuCwbInSKIczugsMSk793RD
	 TeXGRDPJpseDvWgLEbQU1YvtD2I3/24KOo1g2T9cbsFjGaty9Ivkc52djC3J0e8BCy
	 rpyN7qhW4gOUjTtdu8vFUd1aoqUlKA24da+OgbskSn4GZ0f93evU813X0rKS6StWqx
	 j00Z2MHv0zgxA==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9986017E0977;
	Tue, 21 Jul 2026 11:36:37 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: jic23@kernel.org,
	sboyd@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	arnd@arndb.de,
	gregkh@linuxfoundation.org,
	srini@kernel.org,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	sre@kernel.org,
	angelogioacchino.delregno@collabora.com,
	krzk@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com,
	quic_wcheng@quicinc.com,
	melody.olvera@oss.qualcomm.com,
	quic_nsekar@quicinc.com,
	ivo.ivanov.ivanov1@gmail.com,
	abelvesa@kernel.org,
	luca.weiss@fairphone.com,
	konrad.dybcio@oss.qualcomm.com,
	mitltlatltl@gmail.com,
	krishna.kurapati@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v13 06/12] spmi: Add helper to get a parent SPMI device
Date: Tue, 21 Jul 2026 11:36:20 +0200
Message-ID: <20260721093626.96264-7-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260721093626.96264-1-angelogioacchino.delregno@collabora.com>
References: <20260721093626.96264-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_023640_505240_27823DDC 
X-CRM114-Status: GOOD (  14.86  )
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

Drivers that register a SPMI sub-device as a platform_driver are
not guaranteed to have a SPMI device as their parent: add a new
helper `spmi_get_parent_spmi_device()` that takes a struct device
and checks if there's a parent, and if that parent is actually a
SPMI device by checking if its device type matches with SPMI: if
so, returns a pointer to the relative struct spmi_device without
incrementing any refcount.

As a note, in the specific case of using this helper to retrieve
a SPMI subdevice's parent, the spmi_subdevice_alloc_and_add()
function does actually call device_add(), which will already take
care of raising the refcount of the associated parent device.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/spmi/spmi.c  | 23 +++++++++++++++++++++++
 include/linux/spmi.h |  1 +
 2 files changed, 24 insertions(+)

diff --git a/drivers/spmi/spmi.c b/drivers/spmi/spmi.c
index bafb4c3e6c17..ec97f12046f5 100644
--- a/drivers/spmi/spmi.c
+++ b/drivers/spmi/spmi.c
@@ -431,6 +431,29 @@ struct spmi_device *spmi_find_device_by_of_node(struct device_node *np)
 }
 EXPORT_SYMBOL_GPL(spmi_find_device_by_of_node);
 
+/**
+ * spmi_get_parent_spmi_device() - get the parent SPMI device from current dev
+ * @dev:        pointer to a subdevice on SPMI bus
+ *
+ * Checks if the passed device is a child of an SPMI device and returns a
+ * handle to the parent SPMI device without incrementing any refcount.
+ *
+ * Return: Handle to the parent SPMI device or NULL
+ */
+struct spmi_device *spmi_get_parent_spmi_device(struct device *dev)
+{
+	struct device *parent;
+
+	if (dev && dev->parent) {
+		parent = dev->parent;
+
+		if (parent->type == &spmi_dev_type)
+			return to_spmi_device(parent);
+	}
+	return NULL;
+}
+EXPORT_SYMBOL_NS_GPL(spmi_get_parent_spmi_device, "SPMI");
+
 /**
  * spmi_device_alloc() - Allocate a new SPMI device
  * @ctrl:	associated controller
diff --git a/include/linux/spmi.h b/include/linux/spmi.h
index a78a8924b2ac..4daebc980501 100644
--- a/include/linux/spmi.h
+++ b/include/linux/spmi.h
@@ -189,6 +189,7 @@ static inline void spmi_driver_unregister(struct spmi_driver *sdrv)
 struct device_node;
 
 struct spmi_device *spmi_find_device_by_of_node(struct device_node *np);
+struct spmi_device *spmi_get_parent_spmi_device(struct device *dev);
 int spmi_register_read(struct spmi_device *sdev, u8 addr, u8 *buf);
 int spmi_ext_register_read(struct spmi_device *sdev, u8 addr, u8 *buf,
 			   size_t len);
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
