Return-Path: <SRS0=GU22=JK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DE95C433B4
	for <linux-phy@archiver.kernel.org>; Tue, 13 Apr 2021 14:32:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C052613AB
	for <linux-phy@archiver.kernel.org>; Tue, 13 Apr 2021 14:32:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9C052613AB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BIGTLditrrM2SrnbF6SDlU0FoQ5ZS/Rp+jnYLdhzmRw=; b=DWePzZqBHyidp0+b2Q0n1iPcJ
	BRzv2H0tqsTsDqy8b4Sg1CMrabGoR+nidvBwYFYM94/52pstVp/ZqugGuS+BASV6JNyUTlTiGZ+RI
	FWZCt0F+SjGBkrvOIHmO0fhK7o4nCm68j5Mf8FwLTLrXteDUinmy6r6glqkumRIOmCF/riWUp06us
	hNp5szkGexHSM5OQB8MnhX/NY+Yz4+ITF0qWisxppbHzQAP7RYujVW5YMrmWhfwmjimP1mSyilktJ
	4O6+7tlM9845x4RqPNUSay+yaav3UxXQqWlL4JOWArPffp5Ethp+utxjoSsoRXKSbA1EWmumjxcMe
	9Lal6DOvg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWK5h-009WBI-TE; Tue, 13 Apr 2021 14:32:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWK5f-009WAQ-Sz; Tue, 13 Apr 2021 14:32:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=pjdn0iPLZsVnMrs5LhG4TkO0pVvE9Vj+yQMAhrHcFD4=; b=l3yLlTFKMiZoaCjkTfJ8FX1GCt
 Sd8YvBwxleyf0eTrR4upkBjtzudwWU4+ZjonO0BgMXnF36p7Nel/LHVI+vmOuomV7V9La+xpAXz3d
 OPXQdPdiKHg4CeURVwhA+eFicoAub/Pn8ss2veCHd6/FZJxOgUBHb8RBiAGdWAKP5fWyuHjYcbb+k
 3LnnjWiIPzNTdmMoZGFhN48uTbsxNxUeLIi3jlT162kWyaYQW7JccVzzo7DVV5mzG5FM3BklqziA0
 Es2+VWpL/y3yC0TwxEOB6Rq9QzohOABO04s6UWAVA6NvzOuGXP8m1SrENGToGqwO+vKlR90QdBVcO
 R2SFrZ1A==;
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWK5c-0076bu-BZ; Tue, 13 Apr 2021 14:32:30 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 13DENfbF013334; Tue, 13 Apr 2021 16:32:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=selector1;
 bh=pjdn0iPLZsVnMrs5LhG4TkO0pVvE9Vj+yQMAhrHcFD4=;
 b=D8o3fopuhzzacBsQEBYvQTpOZjtYCfs7A40Lsqg9qTYRetxwbeP/tRK0uiwTIZAGiq2o
 mQG1SsVSv8VtLnkzeKPgCENWi3Og7b7XYsROd9NE9KMszI2bnrT9p9XnvUJgphP85hIv
 3Yi0QnniZOhG8ctweBUAdvSP0xb3u4ObVFxEhT4ltCMrFIWtARaQewhdMyR2gJDRB9/6
 jYXzjZ/qUzzRbHycYtQg/mRm2bTl8nkRaldDmv++l2UxpukU3wGWDhVaqj92EWba2M/9
 TQq1o9qmJjRtFBbeGUm1CXXgChJI7nBaV8/5oN3BlVuXnUF2o/nWR4Jj/g8K+cSG/s92 ow== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 37vu4e5b92-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 13 Apr 2021 16:32:17 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 32EE5100038;
 Tue, 13 Apr 2021 16:32:17 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node3.st.com [10.75.127.6])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 23D87246F3E;
 Tue, 13 Apr 2021 16:32:17 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG2NODE3.st.com (10.75.127.6)
 with Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 13 Apr 2021 16:32:16
 +0200
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Amelie Delaunay
 <amelie.delaunay@foss.st.com>
Subject: [PATCH v2 2/2] phy: stm32: manage optional vbus regulator on
 phy_power_on/off
Date: Tue, 13 Apr 2021 16:31:41 +0200
Message-ID: <20210413143141.12919-3-amelie.delaunay@foss.st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210413143141.12919-1-amelie.delaunay@foss.st.com>
References: <20210413143141.12919-1-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG2NODE3.st.com
 (10.75.127.6)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.761
 definitions=2021-04-13_08:2021-04-13,
 2021-04-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_073228_696599_998BBF51 
X-CRM114-Status: GOOD (  18.04  )
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
No changes in v2.
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
