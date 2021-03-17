Return-Path: <SRS0=lbOJ=IP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E3C433DB
	for <linux-phy@archiver.kernel.org>; Wed, 17 Mar 2021 16:10:35 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1D4FC64E27
	for <linux-phy@archiver.kernel.org>; Wed, 17 Mar 2021 16:10:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1D4FC64E27
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tart0fpl3f/UC6XDnTZP1LulqeDYmFXRYyXZF/XPvew=; b=AIvKTdpMdi+RfJaUUsfG1bddP
	RM4QdAJgqKPikffQwYxF+vXgA0G6rcLmWPnwlbgNYR7+ZtVUFxTYIy2iR89KpDnW7hgLQyyNfxGBp
	icNn3+PmKnFkiGFkzIv3WHRiCVWpOmZ+8cNdGW+0y8P98y3kIer75Eo2HmR4IRtz8wC2qp9/OA6PW
	3KfG+1XWWwsMjZYk2O9W8tPfp/nBHvslDV8sbm7bu5OOWFYaWiivenXCzcsImzsD7XKzclaGNdutf
	ezAvcXwrcubfXYOJ6qvC6yscKEJ387ozOssjMNjWKpg6DABFnSrow7dh8hFvlYtxJnY85YtCeOsjR
	bj02OM+0w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMYkj-003VQH-HR; Wed, 17 Mar 2021 16:10:33 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMYkQ-003VM5-9V; Wed, 17 Mar 2021 16:10:16 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 12HFlrRv010043; Wed, 17 Mar 2021 17:10:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=selector1;
 bh=xgpzGC4wdyQX7DWrBZkXr6BWb3iEnXnND5XfVReNl8c=;
 b=n7qV4iFaKwMjmk5V+qYigLrv88LW+LziE7pfYzJ5OksDpkA+KSuu7G5mBIHFkSY5qxAG
 UMizZf74A1pN81Pyc+gNMi913ObEWmEgTNe2FgVNeKoQgm9pPY4Jj9yUDowT7A0lWpNg
 KjFk66AyoHbpr37BmwyJbyY0vteXC21OFLR35yC7GXBJE6OBP78VqfaqADawviKrhpAq
 doZPh5wQYL5TABK4opzrPkQuwWGxVmOrEboBHP5aD8Bz/8XHZx08p7md7yT+K555TQe6
 +7vFvlrUMK6d3Vo/X8cJ1im5+XnKWQpeeTYnPP0pJPZxwhG/RERZOIC/6lI+S+5MUIBF AA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 37a8pr67jj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 17 Mar 2021 17:10:08 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 311F910002A;
 Wed, 17 Mar 2021 17:10:08 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2173B23E915;
 Wed, 17 Mar 2021 17:10:08 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG2NODE2.st.com (10.75.127.5)
 with Microsoft SMTP Server (TLS) id 15.0.1497.2; Wed, 17 Mar 2021 17:10:07
 +0100
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Amelie Delaunay
 <amelie.delaunay@foss.st.com>
Subject: [PATCH 2/2] phy: stm32: manage optional vbus regulator on
 phy_power_on/off
Date: Wed, 17 Mar 2021 17:09:54 +0100
Message-ID: <20210317160954.15487-3-amelie.delaunay@foss.st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210317160954.15487-1-amelie.delaunay@foss.st.com>
References: <20210317160954.15487-1-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-03-17_10:2021-03-17,
 2021-03-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_161014_586759_17208FAE 
X-CRM114-Status: GOOD (  17.37  )
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

This patch adds support for optional vbus regulator.
It is managed on phy_power_on/off calls and may be needed for host mode.

Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
---
 drivers/phy/st/phy-stm32-usbphyc.c | 31 ++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
index c184f4e34584..3e491dfb2525 100644
--- a/drivers/phy/st/phy-stm32-usbphyc.c
+++ b/drivers/phy/st/phy-stm32-usbphyc.c
@@ -57,6 +57,7 @@ struct pll_params {
 struct stm32_usbphyc_phy {
 	struct phy *phy;
 	struct stm32_usbphyc *usbphyc;
+	struct regulator *vbus;
 	u32 index;
 	bool active;
 };
@@ -291,9 +292,31 @@ static int stm32_usbphyc_phy_exit(struct phy *phy)
 	return stm32_usbphyc_pll_disable(usbphyc);
 }
 
+static int stm32_usbphyc_phy_power_on(struct phy *phy)
+{
+	struct stm32_usbphyc_phy *usbphyc_phy = phy_get_drvdata(phy);
+
+	if (usbphyc_phy->vbus)
+		return regulator_enable(usbphyc_phy->vbus);
+
+	return 0;
+}
+
+static int stm32_usbphyc_phy_power_off(struct phy *phy)
+{
+	struct stm32_usbphyc_phy *usbphyc_phy = phy_get_drvdata(phy);
+
+	if (usbphyc_phy->vbus)
+		return regulator_disable(usbphyc_phy->vbus);
+
+	return 0;
+}
+
 static const struct phy_ops stm32_usbphyc_phy_ops = {
 	.init = stm32_usbphyc_phy_init,
 	.exit = stm32_usbphyc_phy_exit,
+	.power_on = stm32_usbphyc_phy_power_on,
+	.power_off = stm32_usbphyc_phy_power_off,
 	.owner = THIS_MODULE,
 };
 
@@ -519,6 +542,14 @@ static int stm32_usbphyc_probe(struct platform_device *pdev)
 		usbphyc->phys[port]->index = index;
 		usbphyc->phys[port]->active = false;
 
+		usbphyc->phys[port]->vbus = devm_regulator_get_optional(&phy->dev, "vbus");
+		if (IS_ERR(usbphyc->phys[port]->vbus)) {
+			ret = PTR_ERR(usbphyc->phys[port]->vbus);
+			if (ret == -EPROBE_DEFER)
+				goto put_child;
+			usbphyc->phys[port]->vbus = NULL;
+		}
+
 		port++;
 	}
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
