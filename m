Return-Path: <SRS0=iPRR=JM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D728AC43462
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 14:50:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6593561029
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 14:50:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6593561029
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GxoKaOuvu6mJ5K5J9S7rLWY/Kv6DDGcT57Vnu0btQxU=; b=XCfARpl3UMEbipKgKGl+BQLgw
	wjRApRqsCyuukuXEzaGQkx+LF9NuADEvbQKWyS7K5kmhO7R6gdj1pI5F5priiw1eodndcsaAM4Qzu
	zy+HlyzPgmxdaXdablH+GRpb1muPJqEQpVbzulSX43cGjkVK7YNhW+cPPVPdHUmI5sjFBsWGWJ/HH
	1tlEnliSFRF7aDotw99PQzHmBja8Ml8mDts0flUXQyePDsulnIfQSTRc56AQLDhR06TBu75/NCHxY
	oP+IT03vIwjLSmWNTZejgsIXFfWiFSzQuDu6lxyIVe7fgxQCTp2z6UYchFtIhmIvINZTlaE9lpq28
	e+LYo4z0w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lX3Jp-00GVRh-S0; Thu, 15 Apr 2021 14:50:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX3Jl-00GVQS-8N
 for linux-phy@desiato.infradead.org; Thu, 15 Apr 2021 14:50:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=nOtbADv7gq9oWC93nIeG2KyriW+0wEaqeFfExSfoA3U=; b=qBU9pEIyySxFxAwA3eMaoQMU7G
 sTq2g/GfMKbkLO9qFsUx5oREkJSMlYfdvlNha1Lhc4+baONVso/30Sx2IA+c3jfmUktZGUEsqg5qI
 dvFAgVznFe2P1UCQTmS792r8nu6W5Kp//jUpI8D1d/aizClNRU8z5yzMI6Xs5LCa826Tb6cOyrVlB
 nHyp5LC+QSm/hooWYUenVSlFYW65P3sQsAdaWnpA6/aq4gZCSn6aIUjYzw56xQP72nWPLR8qonndj
 ERXxKurtRGaF1P+dr0/5RPXucryxvwxf+MJ97bjCt9nP/DOmus9t4gWLV0/+wxEI6tOjMu4Zv9AYI
 6nlquy3g==;
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX3Ji-008fQg-Lo
 for linux-phy@lists.infradead.org; Thu, 15 Apr 2021 14:50:04 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13FEnxpV001478;
 Thu, 15 Apr 2021 09:49:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1618498199;
 bh=nOtbADv7gq9oWC93nIeG2KyriW+0wEaqeFfExSfoA3U=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=leM+XDQgTsgfCQnRn+Rz9/bYVvqi1V4Pj6yX9eFZSDsQGqz9e4dHPSV+nOQbvOG1g
 WtVzEAYHIvYJ8UUnmwu8btoncZwyM1MT1yY+WRf9aT06jAwU+P+THsu2Va3GK15QQW
 zHwYL7HpgQxuxXLOxyrWxEJVkGSsz1dcIhsSyEsk=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13FEnxtq117710
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 15 Apr 2021 09:49:59 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 15
 Apr 2021 09:49:59 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 15 Apr 2021 09:49:59 -0500
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13FEnlS7037772;
 Thu, 15 Apr 2021 09:49:56 -0500
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-can@vger.kernel.org>, Kishon Vijay
 Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>, Wolfgang
 Grandegger <wg@grandegger.com>, Lokesh Vutla <lokeshvutla@ti.com>, Vignesh
 Raghavendra <vigneshr@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Aswath Govindraju <a-govindraju@ti.com>
Subject: [PATCH v3 2/4] phy: Add API for devm_of_phy_optional_get_by_index
Date: Thu, 15 Apr 2021 20:19:45 +0530
Message-ID: <20210415144947.4725-3-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210415144947.4725-1-a-govindraju@ti.com>
References: <20210415144947.4725-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_075002_814415_5B6B1E92 
X-CRM114-Status: GOOD (  12.35  )
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

Add API for devm_of_phy_optional_get_by_index, to obtain a reference to an
optional phy by index.

Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
---
 drivers/phy/phy-core.c  | 26 ++++++++++++++++++++++++++
 include/linux/phy/phy.h |  2 ++
 2 files changed, 28 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index ccb575b13777..bf06d4e0ede2 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -839,6 +839,32 @@ struct phy *devm_of_phy_get(struct device *dev, struct device_node *np,
 }
 EXPORT_SYMBOL_GPL(devm_of_phy_get);
 
+/**
+ * devm_of_phy_optional_get_by_index() - lookup and obtain a reference to an optional phy by index.
+ * @dev: device that requests this phy
+ * @np: node containing the phy
+ * @index: index of the phy
+ *
+ * Gets the phy using _of_phy_get(), then gets a refcount to it,
+ * and associates a device with it using devres. On driver detach,
+ * release function is invoked on the devres data, then,
+ * devres data is freed. This differs to devm_of_phy_get_by_index() in
+ * that if the phy does not exist, it is not considered an error and
+ * -ENODEV will not be returned. Instead the NULL phy is returned,
+ * which can be passed to all other phy consumer calls.
+ */
+struct phy *devm_of_phy_optional_get_by_index(struct device *dev, struct device_node *np,
+					      int index)
+{
+	struct phy *phy = devm_of_phy_get_by_index(dev, np, index);
+
+	if (PTR_ERR(phy) == -ENODEV)
+		phy = NULL;
+
+	return phy;
+}
+EXPORT_SYMBOL_GPL(devm_of_phy_optional_get_by_index);
+
 /**
  * devm_of_phy_get_by_index() - lookup and obtain a reference to a phy by index.
  * @dev: device that requests this phy
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index f3286f4cd306..c5f32b4fadd6 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -253,6 +253,8 @@ struct phy *devm_of_phy_get(struct device *dev, struct device_node *np,
 			    const char *con_id);
 struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 				     int index);
+struct phy *devm_of_phy_optional_get_by_index(struct device *dev, struct device_node *np,
+					      int index);
 void of_phy_put(struct phy *phy);
 void phy_put(struct device *dev, struct phy *phy);
 void devm_phy_put(struct device *dev, struct phy *phy);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
