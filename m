Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7D01C54798
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 18:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f2YHBzRL/PvOZxIt/ToYzQpfSmuboCUpCtxNoVlqNac=; b=0sHLTkOWIYtheK
	dzS0c9fpi+VA9xEPsPUgqH9Kohm+DK+AAqEgqltqR5Qid8SWbgPM1n9TDBsC+mVmBngS93qb+MJ40
	LuIt6IDCJ+8ahcllLnOnB+QhGOtN/SHQuCfA28qdsn0anvEYiulsDT4F+JSqS1B4wNf+ywqFSocuU
	27I/vSz34VhyDFBkB6yjd1Y2RBV3iwgtZgi1H9IIFgYm4clXg2LVARZCrJpc0bMc+KzpjHg8/OcoQ
	cDgvKPYv62NjnOyGdgJa34Xgc7Nf9Tyboh4ibNK7pg/QwS5/JEeJtivHHDOV0co7OFfvarS1Qs46D
	nMs7ZtyTuTtz4UnAHL5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhZNX-0000000EpaR-26MA;
	Tue, 05 Mar 2024 18:19:03 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhZNU-0000000EpZR-0GkP
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 18:19:01 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1d944e8f367so41599535ad.0
        for <linux-phy@lists.infradead.org>; Tue, 05 Mar 2024 10:18:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709662738; x=1710267538;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:dkim-signature:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HI8MIcEEjpVSHq6tmixm5MdGRtSK9TQ269Plf4i1Nbc=;
        b=I+BFSCyr6+4jFRCIXIZHEAGniZgx0xQnrRBvonIndDevgneGi49/tDDCKBQtjRHebl
         RPJYOi1X4Hex/dPmgPL7Tb6mA9xCrAu2wP6qCwlKP0g5r4DPl7jeBkd3sNlZuCf5Ry9Z
         AGv6y1T6zEyucaYXskkYvRk5iP/lgRX7ZDkT86udz9msmg9kz6qZ6A+AJIwEXDJzShQG
         IURFjo0jgwlnopG/kpezTBvGI+Yy52E18rwZVxwOlD19VsA4K4N0U8B2kp+0YK5zVF72
         9kcQVXTedUqmYjjONGIsdOKtYjhGMrNQOaVLQ+6bObZYuHrMcWLCHMRGadJc/zH8gAiP
         NPug==
X-Gm-Message-State: AOJu0YwUmWuW1/Z2jrYhNr26gxxNh7XlFGeT3OLTf2DOzSLXuTQbseLm
	6DFmc9lV1JAO5fTMp3HjEM6RGyyAyl5HyWAeQXwi/442QDiYEwbF
X-Google-Smtp-Source: AGHT+IHWTpTarFj5TMDKd9wHITF96/ovlRR+Xq9KPffH+QHtDH+oRMS1p0CIfMCSAsGTjloFdNYHfQ==
X-Received: by 2002:a17:902:f688:b0:1db:e41f:bc0 with SMTP id l8-20020a170902f68800b001dbe41f0bc0mr3332848plg.30.1709662738049;
        Tue, 05 Mar 2024 10:18:58 -0800 (PST)
Received: from mail.marliere.net ([24.199.118.162])
        by smtp.gmail.com with ESMTPSA id d11-20020a170903208b00b001dcc109a621sm10858683plc.184.2024.03.05.10.18.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Mar 2024 10:18:57 -0800 (PST)
From: "Ricardo B. Marliere" <ricardo@marliere.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marliere.net;
	s=2024; t=1709662736;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=HI8MIcEEjpVSHq6tmixm5MdGRtSK9TQ269Plf4i1Nbc=;
	b=f+aoQw1vwJrWWobBExg1clhjh0AEXqLxrpDT750sMETiFtQ6hMTy5rJ8FeShDis0V8x4LD
	3BjupLESMB40QFADO2NrtMjMxYf52Wqe62ejrL6l8fXlWRn6m/SKdDtRhGITsHFOdEi7ix
	P/RZbqsefGMwcvtedFZuiwGxWT7f59I/OnEua73ISf3HTTeVZTzoZ0n2Gyn1KT+JInWIrC
	+92cnD2HjIiE7ZzaZfdpmDlI9uPudcRP+bdWDkMKIxs0YGKix8f/va0+jvbEoRTGZxR8rV
	Nf7ut25EGKsr9kmEdysLLb9BsrNbStzT1Lg4SiiBnNjRq+jDath1EJseDmJpPA==
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=ricardo@marliere.net smtp.mailfrom=ricardo@marliere.net
Date: Tue, 05 Mar 2024 15:18:51 -0300
Subject: [PATCH] net: phy: core: make phy_class constant
MIME-Version: 1.0
Message-Id: <20240305-class_cleanup-phy-v1-1-106013a644dc@marliere.net>
X-B4-Tracking: v=1; b=H4sIAApi52UC/x3MSwqAMAwA0atI1hZq/SBeRURijRqQWhoUpXh3i
 8u3mIkgFJgEuixCoIuFD5dQ5BnYDd1KiudkMNpUutS1sjuKjHYndKdXfntU07RYVO1k0M6QOh9
 o4ft/9sP7foC0dVhjAAAA
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Ricardo B. Marliere" <ricardo@marliere.net>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2768; i=ricardo@marliere.net;
 h=from:subject:message-id; bh=MtUhEwdZhD08cYNDeoVJ869oD8ivWXm6QaLStsSVeu0=;
 b=owEBbQKS/ZANAwAKAckLinxjhlimAcsmYgBl52IMzuzrSBdu88Sk6J8FL+ZjpyXhYGoTCLRjK
 cbF37OLdCKJAjMEAAEKAB0WIQQDCo6eQk7jwGVXh+HJC4p8Y4ZYpgUCZediDAAKCRDJC4p8Y4ZY
 pvypEACRI3I07T9suJ6lkiDx7vvEBsJOmhwk2c+MTOmUANvxLGIjKEYEirKAH7aB1CxO2YRG54Z
 /NRAugoybDeVCa/SRGp+jwii81xgVNlVFlcpuKzvYBouO72GfZz3irSK5Yjse3Trwdxv6XNnMHE
 Lfd3c1SjZhUdeNBlNQzp8Wi39aemZboJtJ6SR1FwUxGRUG3ZGlj5nmjqqjx9abdE8NFut5BQt+8
 vUQ3ew2mgsemHhYS9UeQH+Ijmhro5Fm2eBpgJvuqXLWWxUEH92A3G5+U8ToDfB9T0s0LQtvgLgb
 zt0s3MwUenJ2YzAqZG2RRKRGhYzup4QP/q6WqvywmW1ysD9C6NOgdhiSrsWR1+V2Q/oSMeKpQI4
 UX7EV8k6rR71tlEiERG3nkrUkx7wucusA6eWZIbySjpIxRr73Wwx7A/OfhMw2y3LKBB6TzRA+d0
 8cNFF5LeJ57yNO/+Cc8P+pSUd+dnAhGnJ2C57adV7HYDbpykiKZs/F2CPyEnR6oghzoKMYo85CF
 LFHy+bBVf7Ju501+0x04K2exgyn5sn3suPl4LiD2mKOvW/f6e+XtVUsgpJ5wJSnKG1u9HeoShm4
 nqM6MRanucU7oxeuFAHA9KARpDvFF+8oQxgUezIT6L6s5FR+zybbb2UpvC9WhHxtOlBTisbBS4/
 v3xVveiSDFN0VXQ==
X-Developer-Key: i=ricardo@marliere.net; a=openpgp;
 fpr=030A8E9E424EE3C0655787E1C90B8A7C638658A6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_101900_148648_EF7CE17F 
X-CRM114-Status: GOOD (  12.97  )
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

Since commit 43a7206b0963 ("driver core: class: make class_register() take
a const *"), the driver core allows for struct class to be in read-only
memory, so move the phy_class structure to be declared at build time
placing it into read-only memory, instead of having to be dynamically
allocated at boot time.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ricardo B. Marliere <ricardo@marliere.net>
---
 drivers/phy/phy-core.c | 26 +++++++++++++++-----------
 1 file changed, 15 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 7f9b4de772ee..5776d44fd32f 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -20,7 +20,12 @@
 #include <linux/pm_runtime.h>
 #include <linux/regulator/consumer.h>
 
-static struct class *phy_class;
+static void phy_release(struct device *dev);
+static const struct class phy_class = {
+	.name = "phy",
+	.dev_release = phy_release,
+};
+
 static struct dentry *phy_debugfs_root;
 static DEFINE_MUTEX(phy_provider_mutex);
 static LIST_HEAD(phy_provider_list);
@@ -706,7 +711,7 @@ struct phy *of_phy_simple_xlate(struct device *dev,
 	struct phy *phy;
 	struct class_dev_iter iter;
 
-	class_dev_iter_init(&iter, phy_class, NULL, NULL);
+	class_dev_iter_init(&iter, &phy_class, NULL, NULL);
 	while ((dev = class_dev_iter_next(&iter))) {
 		phy = to_phy(dev);
 		if (args->np != phy->dev.of_node)
@@ -969,7 +974,7 @@ struct phy *phy_create(struct device *dev, struct device_node *node,
 	device_initialize(&phy->dev);
 	mutex_init(&phy->mutex);
 
-	phy->dev.class = phy_class;
+	phy->dev.class = &phy_class;
 	phy->dev.parent = dev;
 	phy->dev.of_node = node ?: dev->of_node;
 	phy->id = id;
@@ -1238,14 +1243,13 @@ static void phy_release(struct device *dev)
 
 static int __init phy_core_init(void)
 {
-	phy_class = class_create("phy");
-	if (IS_ERR(phy_class)) {
-		pr_err("failed to create phy class --> %ld\n",
-			PTR_ERR(phy_class));
-		return PTR_ERR(phy_class);
-	}
+	int err;
 
-	phy_class->dev_release = phy_release;
+	err = class_register(&phy_class);
+	if (err) {
+		pr_err("failed to register phy class");
+		return err;
+	}
 
 	phy_debugfs_root = debugfs_create_dir("phy", NULL);
 
@@ -1256,6 +1260,6 @@ device_initcall(phy_core_init);
 static void __exit phy_core_exit(void)
 {
 	debugfs_remove_recursive(phy_debugfs_root);
-	class_destroy(phy_class);
+	class_unregister(&phy_class);
 }
 module_exit(phy_core_exit);

---
base-commit: 00ca8a15dafa990d391abc37f2b8256ddf909b35
change-id: 20240305-class_cleanup-phy-668a148b2acd

Best regards,
-- 
Ricardo B. Marliere <ricardo@marliere.net>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
