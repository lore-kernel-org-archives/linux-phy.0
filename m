Return-Path: <SRS0=BRk1=PN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBEC6C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 14:31:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8894560F0F
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 14:31:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8894560F0F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4+NeYYq+5dGy3Emja0WCKQElBVyHr5hEAG98LcvkeAI=; b=a2YB+j6UqCLHXI
	avCs8Ge9HgBNyIcUKYYJVLjBKSdHN/DgFz2+naqAmQCAD7JW+kVm4kJYIsMmNwv+yBvP0+9pxeOZh
	lk3GBmR9zTRnBIdf3uFS760bvIOyPyTrY8z2S8/v2kBjStKa7b64nwFv4fb+8AqzHUlWikFurMEGK
	Suz+Gz4uOVsJjwWtHgBeZqqlG55fie6r5jaZ6ij6WwzNpiDpbSQSRQ2G1tz38D5fyGOpNoFl7gOv3
	McExSRDmIKImzJHggZ+ufq7FFxt3+kf2uxikkvuU04sY6XNtrSvwYQRt1FMSFLFWvc0H30FEi5MN0
	iFVofdgaxOeiChzJ2/Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mf10b-00GhYY-06; Mon, 25 Oct 2021 14:31:29 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mf10X-00GhXi-RZ; Mon, 25 Oct 2021 14:31:27 +0000
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19PC00Pe012721; 
 Mon, 25 Oct 2021 16:31:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=selector1;
 bh=heLJ4yGEfIp904h0KY7xGdKsvRSbeHaJmHrvhlHM+aQ=;
 b=Umesn97DGsSZUS9e3DX+7OyT6OCTEM9aUpyy1PMkI6rYdGWvtbW+5ZKwKfFArdF7tBMY
 cBNe7zV4RtYWoUovQY7mUWtZHcZ5ycwUL+60IYqf3QVnit692kNYDwb+MyzCWo46j17Y
 s7kL6qjCNrq+cY0EdI7DLn0Ium5sm4xwst0FC1EAhceoQRQBhdP9yzGx42hgZb4lLaUD
 Mbx3hizUirY+Vbt707qdG9gfe55FG82PrrO/BNjWtwuj8KX3hP86IspgiivOcep0xiej
 JuqmeCcGrBblSqo8swezWRui7X3bU8LZaDdsP9GS2UTLvyoHl6o7rgGRAKOljQOXLl9Y 5w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3bwqpsjjg8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 25 Oct 2021 16:31:21 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F1305100034;
 Mon, 25 Oct 2021 16:31:20 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E58DF233C77;
 Mon, 25 Oct 2021 16:31:20 +0200 (CEST)
Received: from localhost (10.75.127.47) by SFHDAG2NODE2.st.com (10.75.127.5)
 with Microsoft SMTP Server (TLS) id 15.0.1497.18; Mon, 25 Oct 2021 16:31:20
 +0200
From: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
To: <vkoul@kernel.org>, <kishon@ti.com>
CC: <amelie.delaunay@foss.st.com>, <alexandre.torgue@foss.st.com>,
 <linux-phy@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] phy: stm32: adopt dev_err_probe for regulators
Date: Mon, 25 Oct 2021 16:31:05 +0200
Message-ID: <1635172265-26219-1-git-send-email-fabrice.gasnier@foss.st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-25_05,2021-10-25_02,2020-04-07_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211025_073126_225333_363F820D 
X-CRM114-Status: GOOD (  15.33  )
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

Change stm32-usbphyc driver to use dev_err_probe(), to benefit of
devices_deferred debugfs in case of probe deferral.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
---
 drivers/phy/st/phy-stm32-usbphyc.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
index 7df6a63..115be0e 100644
--- a/drivers/phy/st/phy-stm32-usbphyc.c
+++ b/drivers/phy/st/phy-stm32-usbphyc.c
@@ -672,17 +672,15 @@ static int stm32_usbphyc_probe(struct platform_device *pdev)
 
 	usbphyc->vdda1v1 = devm_regulator_get(dev, "vdda1v1");
 	if (IS_ERR(usbphyc->vdda1v1)) {
-		ret = PTR_ERR(usbphyc->vdda1v1);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to get vdda1v1 supply: %d\n", ret);
+		ret = dev_err_probe(dev, PTR_ERR(usbphyc->vdda1v1),
+				    "failed to get vdda1v1 supply\n");
 		goto clk_disable;
 	}
 
 	usbphyc->vdda1v8 = devm_regulator_get(dev, "vdda1v8");
 	if (IS_ERR(usbphyc->vdda1v8)) {
-		ret = PTR_ERR(usbphyc->vdda1v8);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to get vdda1v8 supply: %d\n", ret);
+		ret = dev_err_probe(dev, PTR_ERR(usbphyc->vdda1v8),
+				    "failed to get vdda1v8 supply\n");
 		goto clk_disable;
 	}
 
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
