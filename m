Return-Path: <SRS0=Q62d=PD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CA41C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 16:14:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5D24261164
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 16:14:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5D24261164
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGmqRGGqIW4tiK/8pJUiVYvSIQbmCWF3LJEPJhVm5ek=; b=L8Mtbuoyyf3Xr+
	f9RWjPfFaNT/Oza/Xh0wLcKrIYAKXt/BKYeBl++FTDv6pVRfEjf4lLHxYPXr47l1w0nxmxts2N+PO
	6MxJDmYcr0CnFxM56mSiq13Ubkyxi+elyrfJRdMO1aF4haa25ry9P8zk2z7q13SLrUsLimXd9WHrV
	j12sC1l3Q98MTRfB0oq0vrwpiKGCTX7WJ/1RlcFLsyFZFn2H6u/fYhRyjYZZc8JEI6bkmqgpyVM+e
	L7koP5sXDdRGradWkz3ZkhRgSRPZZ2UQXRbUbcTZ+QFjJqddLZnLUsTMl9msu7aImv05wRZKE3GU6
	wuZDDqbhokkyIaAA6Mkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbPr9-0081aa-Ob; Fri, 15 Oct 2021 16:14:51 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbPr1-0081Yb-5s; Fri, 15 Oct 2021 16:14:44 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19FDksMV016875; 
 Fri, 15 Oct 2021 18:14:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=selector1;
 bh=AZCLz9Qu7aCsRJuQKx+MRmvklKYmjkNGSFeQSH6HK7E=;
 b=V7QElrLBUwQPTbuoMIapayW59vQ5g7AC+5zqrySEBWPlux5L1NfY26cMoBiP4hiMCMPK
 kkdDgqe1hI3OtQGxnXy2n3xI+ijoLFVcGzAoLnWeWRpH8PlEoCnHRrsigL7Tv/WoUo7L
 IX1bY/0cXvax1Cx2Jtvs946Mz8oXa6ebK3+hTTcDlpMzn5x0NwiM05Kno94FggOQWp05
 9e39diEaOySNaJxby1fFACLenP8w7ue+zrCozl5Ka8IukLXeSGsVs9kuf5Xj9j2SHNk4
 OS6pqiGv/5m6hBVECKYGyLfii5GqrMO3p7d995nI0fRdq0dtKV5r0a/LrAfserY0Tx/1 tQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3bqau2ru9g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Oct 2021 18:14:38 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A7982100034;
 Fri, 15 Oct 2021 18:14:37 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A095B231513;
 Fri, 15 Oct 2021 18:14:37 +0200 (CEST)
Received: from localhost (10.75.127.48) by SFHDAG2NODE2.st.com (10.75.127.5)
 with Microsoft SMTP Server (TLS) id 15.0.1497.18; Fri, 15 Oct 2021 18:14:37
 +0200
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Amelie Delaunay
 <amelie.delaunay@foss.st.com>
Subject: [PATCH v3 1/3] phy: stm32: restore utmi switch on resume
Date: Fri, 15 Oct 2021 18:14:25 +0200
Message-ID: <20211015161427.220784-2-amelie.delaunay@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211015161427.220784-1-amelie.delaunay@foss.st.com>
References: <20211015161427.220784-1-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-15_05,2021-10-14_02,2020-04-07_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_091443_534585_22D6BB86 
X-CRM114-Status: GOOD (  18.14  )
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
