Return-Path: <SRS0=TOd0=OE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C31C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 14 Sep 2021 14:53:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7E805610D1
	for <linux-phy@archiver.kernel.org>; Tue, 14 Sep 2021 14:53:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7E805610D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGmqRGGqIW4tiK/8pJUiVYvSIQbmCWF3LJEPJhVm5ek=; b=T+WO0c9YbcjicL
	Cr5JKSQRLIKfW+Tr3L2LqwpartmVbfmbMaTfVaogDywMYojvHu0wQmRGxqZSuLQjqUx+envsPjvtC
	AZB2Y2XFF2LtOhWlkgVx58shpgU0R8A4Q1pFOPk7364Evti2Ky5b0y2e2BTetvw4R059rLa0C5Va5
	wlM0ENFNUX5+exs1IwM+bIBF1X/ud/enr9ZqnXy8DvZCcuoOOitjhWaKa+Ao4tD5oCKmJ//r/XNj4
	S0Q6UQFgbIX6dIrF4K9ROu3LE6Y22IU/XGLgBASqC3oe6D73LSisMPVq2nMGpgHt2sn+aJlQbWm79
	MvX5McYCCmdzlZsgn7mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQ9oN-0064Jp-11; Tue, 14 Sep 2021 14:53:27 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQ9oJ-0064H1-DA; Tue, 14 Sep 2021 14:53:25 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18EBDmRc000377; 
 Tue, 14 Sep 2021 16:53:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=selector1;
 bh=AZCLz9Qu7aCsRJuQKx+MRmvklKYmjkNGSFeQSH6HK7E=;
 b=7YgEirfsW4gL9xghOgQBQn03x4o91OTOrVMfDrCNwKIcZXZgRybbzUs6/+A4ywV6dgW1
 Uk0RbE5SB+iuebs0Sk7MOkJru6TbQN/mCvVoSIg6B3XpOVSAEHya2v/E2vbXzH6+kD9A
 8kQ+8EElp9l1nmWO4VLPAZSHDLNNG/jf71lCKNQyX4dEjcYIiGhNqVKS5FTKJuXAHaZC
 1oSeBlM+x4Jr1ttNa2oDppvh3SGh1EptNJfSYTSdw/m32QzeW623JLCN6Ur3goNIwUKt
 SstGAUFiXIHaI77zIOvenqHBJgOvAzcPu3jShg23I+X5ZW/WZRcr062TrLMJt8+fFFRr /A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3b2tpah6jm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Sep 2021 16:53:14 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 01EDC100034;
 Tue, 14 Sep 2021 16:53:14 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E4C2121A229;
 Tue, 14 Sep 2021 16:53:13 +0200 (CEST)
Received: from localhost (10.75.127.45) by SFHDAG2NODE2.st.com (10.75.127.5)
 with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 14 Sep 2021 16:53:13
 +0200
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Amelie Delaunay
 <amelie.delaunay@foss.st.com>
Subject: [PATCH 1/3] phy: stm32: restore utmi switch on resume
Date: Tue, 14 Sep 2021 16:52:54 +0200
Message-ID: <20210914145256.243869-2-amelie.delaunay@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210914145256.243869-1-amelie.delaunay@foss.st.com>
References: <20210914145256.243869-1-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-14_06,2021-09-14_01,2020-04-07_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_075323_750939_89CAE600 
X-CRM114-Status: GOOD (  18.30  )
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

UTMI switch value can be lost during suspend/resume, depending on the power
state reached.
This patch adds resume function to usbphyc, to reconfigure utmi switch
after suspend.

Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
---
 drivers/phy/st/phy-stm32-usbphyc.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
index 937a14fa7448..083593aea53a 100644
--- a/drivers/phy/st/phy-stm32-usbphyc.c
+++ b/drivers/phy/st/phy-stm32-usbphyc.c
@@ -598,6 +598,18 @@ static int stm32_usbphyc_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static int __maybe_unused stm32_usbphyc_resume(struct device *dev)
+{
+	struct stm32_usbphyc *usbphyc = dev_get_drvdata(dev);
+
+	if (usbphyc->switch_setup >= 0)
+		stm32_usbphyc_switch_setup(usbphyc, usbphyc->switch_setup);
+
+	return 0;
+}
+
+static SIMPLE_DEV_PM_OPS(stm32_usbphyc_pm_ops, NULL, stm32_usbphyc_resume);
+
 static const struct of_device_id stm32_usbphyc_of_match[] = {
 	{ .compatible = "st,stm32mp1-usbphyc", },
 	{ },
@@ -610,6 +622,7 @@ static struct platform_driver stm32_usbphyc_driver = {
 	.driver = {
 		.of_match_table = stm32_usbphyc_of_match,
 		.name = "stm32-usbphyc",
+		.pm = &stm32_usbphyc_pm_ops,
 	}
 };
 module_platform_driver(stm32_usbphyc_driver);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
