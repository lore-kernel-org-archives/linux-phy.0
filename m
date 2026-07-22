Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8815FC4452D
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 05:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jCN9Tm6GZVz/KWv/vrGHoy+Ut6MX8ayytpG23AzXpgY=; b=v5wamiZ9hu2eqN
	g2nrtJAWH5IOsWTxSJP7IOchZi3qaXlMxtI8OckXQoLARMaWhSC07H2GbBNZKqxMVNhl6eba79hAy
	bBFG6Inv6WpaMv9c0uioR/I0mU+F5HJu3SLwMtsEkdyR5CKj2VmFd1uXXRfYRpiMshV95uO6TIs0O
	tTVzU7PGF18H+jHO/oya6eHZt9Lebuis3IgcL366/+Fb8Y6RDPfUZAW1buLUNTE5rLVMJki5od9Tt
	zZi83+q9x2jkXlMsWHniSSZdRZpUyn0825S7s4pMwjNdxnl/4xy/6QTEqeQa9kCHBCRXTx5iNU+me
	tUIWRDEyLpG4V2Ai3JyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmPdO-0000000Avsf-2QX8;
	Wed, 22 Jul 2026 05:36:46 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmPdM-0000000AvsI-0TLU
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 05:36:45 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-47de0093c42so7006998f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 22:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784698602; x=1785303402; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=JUYQkb6kcmG18ceKspm+XxEQfizEv7MsjrgrMep9zgE=;
        b=nhhlOarYFQff6UhrT5SlTr5C5Mesl5Q66ffBS5/6+d3QeINO80MLdDiuUtTaowHC2l
         hEsPNLvCXBTODBsKyayTvIITLQH9fPYWtsfcDv1h+L/+aNufD81dMDm0Rypmu6YIhSg0
         c3Dl1lAHfuR24jNxmQlT8n65pJ7/HsRroctQxMBGYHTJxImVTT7N7x4AeRfQTqxK+4Oa
         8PoGe6M/zUlAZUCtMakD86TTraRa4GB1OiUiVK+vRPfVVTzveL0XJEtkTkF6/8LLfLPQ
         FZLrUFu6dXkeuST+SDBVrhEJlTEA+Hfov7WbYve+T7/HAd6E3IUgiNUuu/YEThIUKlsd
         e7Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784698602; x=1785303402;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JUYQkb6kcmG18ceKspm+XxEQfizEv7MsjrgrMep9zgE=;
        b=nH5iNtxveCl6iUeU8HnMkA15yhbk1P0zE6mct3x5ykp5XZUvNlLhbiVRwC6fxK0ZAT
         tiw6rxEWIUm5VjXVcIV69tWItIdEP4rgq0AQalKowat5gOZg/yqHSj9ipk72SJFT0ccI
         rRcbwLOQf0x+r+8EC2c9MCmT6TMWW6hl56FzxQk6JcEBVAWyAX/wznAXfvTpWrmmRSeT
         gReqMupZM8iiHVvLnBpvWfna0Et6YvNN0vHrSjInYpWrGGa3S44S7Qanj+jc98XSN25b
         TP9XOZy5eOvynEUFb09/0piyAQDSJyegzX6D2lNlorOHXZaO659onxNB4qoIoICT0oa7
         iNug==
X-Gm-Message-State: AOJu0YyZncvQRAM6IzT+O5cfFC9RdAC3GHhIT5ZubisAbF2cagRajN06
	cKQMWCpo9i5PZFMvmp3bLQHcREs0VtnOl8DYm2NQC7qvhlL0WD7GJHNn
X-Gm-Gg: AR+sD13Po/xnv3mp0CFlU16YA+DtJlU4jscA2lfPSpyjuazOGB6SA5UlFLK+Decl2Xi
	9TpVPTdW53sDn0SJH5cFWtIfQVIRisTb9b7JGlT2xPSQ+Yh2r9KVMUgPSEYpPiDNNLV/LUmsnhn
	QKqS87Djy9lk8EFm8LdclBMKlLWT57Rl+QepWk44IoeDp7kOWMzzowUKesVc11RFGXLM5QZuunE
	C6hcjDhcEhRZlg4fnuE0c4XWEdNJsvV1sa0BVM8OAdQmFYYsDRRFCXNCi6PaP8ZkDdFKlTH4Fzj
	WUy+nl/O/ACzgJwDMWAnHzVUc/FzKtRUvWyPoURQNlvCUM/kDT1Bf5qw+hZbtYlq1B4YYsm3Pd1
	pi1kJmzHSKQlXD0dZfjAjU3rPBDr/i14UXRVuk+cFKTl2/wSpKCtBU7QuiPXQJqKqd8r/0sY+p2
	7mMTN8poBRAHcWup7K7mzuPgI=
X-Received: by 2002:adf:e18e:0:b0:47e:12d9:1c79 with SMTP id ffacd0b85a97d-47f622ffc75mr25483573f8f.27.1784698601513;
        Tue, 21 Jul 2026 22:36:41 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f85c532d4sm2477933f8f.22.2026.07.21.22.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 22:36:41 -0700 (PDT)
From: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Subject: [PATCH] phy: omap-usb2: add explicit PHY comparator API
Date: Wed, 22 Jul 2026 08:36:18 +0300
Message-Id: <20260722053618.602702-1-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_223644_177667_74EAFB01 
X-CRM114-Status: GOOD (  12.15  )
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

The existing omap_usb2_set_comparator() API locates the OMAP USB2 PHY
instance by calling usb_get_phy(USB_PHY_TYPE_USB2), assuming there is a
single USB2 PHY registered in the system.

This assumption no longer holds on systems with multiple USB2 PHY
providers. In such cases, the global lookup may return a different USB2
PHY instance, causing the OMAP driver to perform an invalid container_of()
conversion when accessing its private data.

Introduce omap_usb2_set_phy_comparator(), allowing callers to explicitly
specify the OMAP USB2 PHY instance to associate with a phy_companion.
The new helper validates that the supplied USB PHY is an OMAP USB2 PHY
before accessing its private data.

The existing omap_usb2_set_comparator() API is kept unchanged for
existing users.


Signed-off-by: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
---
 drivers/phy/ti/phy-omap-usb2.c | 32 ++++++++++++++++++++++++++++++++
 include/linux/phy/omap_usb.h   |  7 +++++++
 2 files changed, 39 insertions(+)

diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
index 1eb252604441..ac31b693fce7 100644
--- a/drivers/phy/ti/phy-omap-usb2.c
+++ b/drivers/phy/ti/phy-omap-usb2.c
@@ -70,6 +70,8 @@ struct omap_usb {
 
 #define	phy_to_omapusb(x)	container_of((x), struct omap_usb, phy)
 
+static int omap_usb_set_host(struct usb_otg *otg, struct usb_bus *host);
+
 struct usb_phy_data {
 	const char *label;
 	u8 flags;
@@ -113,6 +115,36 @@ int omap_usb2_set_comparator(struct phy_companion *comparator)
 }
 EXPORT_SYMBOL_GPL(omap_usb2_set_comparator);
 
+/**
+ * omap_usb2_set_phy_comparator() - associate a comparator with an OMAP USB2 PHY
+ *
+ * @omap_phy: OMAP USB2 PHY instance
+ * @comparator: companion PHY providing comparator operations
+ *
+ * The phy companion driver should call this API with the companion PHY
+ * implementation containing the callbacks required by @omap_phy.
+ *
+ * For use by phy companion drivers.
+ */
+int omap_usb2_set_phy_comparator(struct usb_phy *omap_phy,
+				 struct phy_companion *comparator)
+{
+	struct omap_usb	*phy;
+
+	if (!omap_phy)
+		return -EINVAL;
+
+	if (WARN_ON(!omap_phy->otg ||
+		    omap_phy->otg->set_host != omap_usb_set_host))
+		return -EINVAL;
+
+	phy = phy_to_omapusb(omap_phy);
+	phy->comparator = comparator;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(omap_usb2_set_phy_comparator);
+
 static int omap_usb_set_vbus(struct usb_otg *otg, bool enabled)
 {
 	struct omap_usb *phy = phy_to_omapusb(otg->usb_phy);
diff --git a/include/linux/phy/omap_usb.h b/include/linux/phy/omap_usb.h
index e23b52df93ec..96f9792c6ce6 100644
--- a/include/linux/phy/omap_usb.h
+++ b/include/linux/phy/omap_usb.h
@@ -15,11 +15,18 @@
 
 #if defined(CONFIG_OMAP_USB2) || defined(CONFIG_OMAP_USB2_MODULE)
 extern int omap_usb2_set_comparator(struct phy_companion *comparator);
+extern int omap_usb2_set_phy_comparator(struct usb_phy *omap_phy,
+					struct phy_companion *comparator);
 #else
 static inline int omap_usb2_set_comparator(struct phy_companion *comparator)
 {
 	return -ENODEV;
 }
+static inline int omap_usb2_set_phy_comparator(struct usb_phy *omap_phy,
+					       struct phy_companion *comparator)
+{
+	return -ENODEV;
+}
 #endif
 
 #endif /* __DRIVERS_OMAP_USB_H */
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
