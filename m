Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65740C43334
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 13:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gQLdPrA8ZxjxfGM8mzgzccYdl6qzzu73zHc0iKmpxAA=; b=n6+989gtBVUc86
	Z+P8w4ZAavaWccEYlOopeZMTNdFRQDnOUGDbQSiJXz7R6mr1u3cxETriXswK8uGRQKwwu10JeQ3s7
	qhf3yJGzr1yMR6dmVuUMf7finEMA/oGjan5jajEHEyjImQ5JGCJCow9GVLmkL2m+hbcF5keAFCkMu
	PgFutEZi2cAfmVBixTPPITSCTG3XEZq0JOFLmiozFZNgvKwcIyO94qbAVKQbhOeUHt5uHfePL72U1
	d9t7jM8ntoJXNnZYN7959z5Djf2rFPUs8wBPIYmHdh5Fh8fRDf+4/ihQI9OtzAZivQG7ihqpJtpBm
	PjlBP3qnmIwgng46DO3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwkZr-003Kvp-NY; Thu, 02 Jun 2022 13:09:27 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwkZp-003Ksy-AG
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 13:09:26 +0000
Received: by mail-pj1-x1033.google.com with SMTP id cx11so4897200pjb.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 06:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=K/kcUz7iGlHGzh5+WMm96tVRqgBGqVmBjrJsf3+xK1w=;
        b=O/Ff5ZsLRl2HcI4aExUbCpE+GcliUTIzcwvVM7kXO9pTFrOQTLBizn50/Mf9pORGgJ
         ewAq5ypsSDVJh0Jlo0KSu9kfSdi+x8bYT+Mozq64lvhjjoSORz9MtszYss5ObJ3JArOf
         K3Yh3zXbJn4r0466KlrdhjdU1PAzRPawDF7uYyd0Bfg5RBXIuDaNOQblQ35r5E3Fg+0C
         jE+iPXqXwRApvQPnAVt1E82R2WbExNaLfeb+qJqXmnIRFetjicyRg8RbKqLE0sh2IRYm
         wt2RheEa82blIOfGQwtFiMl8K59N10gvevjzUDj1e+nyR40qw7IPMGTCxFvfgHibTGus
         4snQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=K/kcUz7iGlHGzh5+WMm96tVRqgBGqVmBjrJsf3+xK1w=;
        b=lZHf0rby7LQtcPnU51T7ncTaE/mS5cr2vs8WMV+Oz8bbwkJnRINmq2WODX0raT8GII
         AcjBiPE867APU7bKoWPDbDyxxxk6mgMxzOEZmiN6Dh7r9eATZTrZ9Y6PvrRO6ulFMLOu
         yXVnsb1Ww6G/AIJloGoa0+x34eplbhvN9irwMYysxll6YglIeFw1Y7FaNbXb1TVdgWfr
         7svWnChqt4V+Dilf/EpHmXjZArHaABq1CZryRMjpmVhYTdDgBiP/YGIRdgEzHRSm0+xl
         CisycMcTu2LEuD6bE7m8ibmEu2Hl4rKjwEk00rWZDZtc3uME2wSQFsU/wrMhta8zbgmQ
         gyxA==
X-Gm-Message-State: AOAM532egp5NGy55UUuMEgexrjVw/oRS/XOM21Ih24XYDp9hD+LQW1yO
	sNL2Exiu2WFzzBNVbF/gZGY=
X-Google-Smtp-Source: ABdhPJzWOPeBb7ZR5wPCa08NQ2QSqxMgQ+VgmGCVXylXS1SERSV4H2spF22sy/9jxcqjLVLYcD3Vmw==
X-Received: by 2002:a17:902:e947:b0:163:91e5:d3c with SMTP id b7-20020a170902e94700b0016391e50d3cmr4755418pll.39.1654175357990;
        Thu, 02 Jun 2022 06:09:17 -0700 (PDT)
Received: from localhost.localdomain ([202.120.234.246])
        by smtp.googlemail.com with ESMTPSA id w2-20020a17090a15c200b001e32a7f876dsm3291062pjd.16.2022.06.02.06.09.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 06:09:17 -0700 (PDT)
From: Miaoqian Lin <linmq006@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Miaoqian Lin <linmq006@gmail.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: ti: j721e-wiz: Fix refcount leak in wiz_get_lane_phy_types
Date: Thu,  2 Jun 2022 17:09:03 +0400
Message-Id: <20220602130906.18095-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_060925_393748_4662BF7D 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
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

of_get_child_by_name() returns a node pointer with refcount
incremented, we should use of_node_put() on it when not need anymore.
Add missing of_node_put() to avoid refcount leak.

Fixes: format:7ae14cf581f2 ("phy: ti: j721e-wiz: Implement DisplayPort mode to the wiz driver")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index da546c35d1d5..c6b53d4f6643 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -1113,6 +1113,7 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
 		ret = of_property_read_u32(subnode, "reg", &reg);
 		if (ret) {
 			of_node_put(subnode);
+			of_node_put(serdes);
 			dev_err(dev,
 				"%s: Reading \"reg\" from \"%s\" failed: %d\n",
 				__func__, subnode->name, ret);
@@ -1127,6 +1128,7 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
 		for (i = reg; i < reg + num_lanes; i++)
 			wiz->lane_phy_type[i] = phy_type;
 	}
+	of_node_put(serdes);
 
 	return 0;
 }
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
