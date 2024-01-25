Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2ABCC47422
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 17:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ry7P1AykrP/RCuN/HDrkDbCWE8KrFQf+1YclqMs3rSE=; b=plqhK4BZlKBVeJ
	ROes4p1IsHg2KafHb0manrbzJF7eEfZDFAwp//rINU6bGA0kGqhThpdnXZryatNICxJtXA4/WKHbW
	LZ0X8UWCwoHErcyRh2HX1q3tzZmNlBkf5w2QRtBMXUICrHxBJj0ZozzmD7j1aa5IOncaZOXrcpa3M
	n2Jj6sYDoR+z8KFHK198j606VRARznvypqmQ5kF0CDxzjP8S2HNpwxCCO4YdvwE0lncDxePfk8K+m
	U7v93+iUfWWKMCoWcJfIbIMtLyMDOvCVwJR98fLDK05+zcJb2AhLc3VEy08+QaxbG9VU76o3mpobw
	5L06268H19HeOzdSXU9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT3ND-000000017Yu-1Bmb;
	Thu, 25 Jan 2024 17:18:43 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT3NA-000000017Uj-0o3G
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 17:18:42 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9362920003;
	Thu, 25 Jan 2024 17:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1706203115;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=M3w/v9oEuYlkPL4C5kh7T1VxbhDjpPY1oFMPL7Ii+tg=;
	b=TLymDIkiKJiBhJzkLiN12QBT7u1FHgvghk103/R4JrrlkXq220kOYkho7k6V6QnW8UYRcI
	GRzm3FPVbO1h46mQwSqJT+qWV6TOc9X8LmaklPnnsrU5GI6OYzGQMfyIJrPMiRfO+nbsFf
	8piTxBJGnoVzusL13EhQofWSNV5HcJOOhIXSU7ZCmKR3mSaMUf89nLvDa/oLQvsgIOh0PD
	56sx5qChrNmwIou6OVgKOaHWjE10xZQE08koPG/Xu+f4GdV1HM5IQzslN3x7LbHyiUIGEk
	aJdLsDyXTdyQnqMpxttPwztAwaQTdmLrxdHnP0obqUoS+x3U4VuXGr/o2aU9zQ==
From: Thomas Richard <thomas.richard@bootlin.com>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	gregory.clement@bootlin.com,
	thomas.petazzoni@bootlin.com,
	theo.lebrun@bootlin.com,
	u-kumar1@ti.com,
	Thomas Richard <thomas.richard@bootlin.com>
Subject: [PATCH] phy: ti: gmii-sel: add resume support
Date: Thu, 25 Jan 2024 18:17:54 +0100
Message-Id: <20240125171754.773909-1-thomas.richard@bootlin.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_091840_393970_F48E13FA 
X-CRM114-Status: GOOD (  12.79  )
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

The resume callback restores the submode of each PHY.

It uses the submode stored in struct phy_gmii_sel_phy_priv (variable
phy_if_mode). The submode was saved by the set_mode PHY operation.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 drivers/phy/ti/phy-gmii-sel.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index 555b323f45da..c62790937313 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -491,11 +491,35 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static int phy_gmii_sel_resume_noirq(struct device *dev)
+{
+	struct phy_gmii_sel_priv *priv = dev_get_drvdata(dev);
+	struct phy_gmii_sel_phy_priv *if_phys = priv->if_phys;
+	int ret, i;
+
+	for (i = 0; i < priv->num_ports; i++) {
+		if (if_phys[i].phy_if_mode) {
+			ret = phy_gmii_sel_mode(if_phys[i].if_phy,
+						PHY_MODE_ETHERNET, if_phys[i].phy_if_mode);
+			if (ret) {
+				dev_err(dev, "port%u: restore mode fail %d\n",
+					if_phys[i].if_phy->id, ret);
+				return ret;
+			}
+		}
+	}
+
+	return 0;
+}
+
+static DEFINE_NOIRQ_DEV_PM_OPS(phy_gmii_sel_pm_ops, NULL, phy_gmii_sel_resume_noirq);
+
 static struct platform_driver phy_gmii_sel_driver = {
 	.probe		= phy_gmii_sel_probe,
 	.driver		= {
 		.name	= "phy-gmii-sel",
 		.of_match_table = phy_gmii_sel_id_table,
+		.pm = pm_sleep_ptr(&phy_gmii_sel_pm_ops),
 	},
 };
 module_platform_driver(phy_gmii_sel_driver);
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
