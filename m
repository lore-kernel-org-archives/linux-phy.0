Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC910C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Jul 2022 13:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+4XrfBSkzGcc8jLcvfzkB7ObA5+WjG2D22CooD/bVlQ=; b=x62WLFng0FYKhW
	LW+UkBpRtjHMr94yHP/3ZujTa+CXtgMMDpygavakwOgiH4x3o7aqFMTyKkqmHkQZiADkTUsfILNDH
	SujpDNM5NguGOQRey1mH8JZt/6rkpqDAzMQVdP9Wx32B4N+XgBXxgAoh8HpicGm61lqbNbw8ltd5o
	M3j1G4DWGNhL6ObV4MHLsdF4+nig1Aa5bvhQKM49W5jf5QEoaFCzoNd/v8bBZMgSXjAC7LgbKqTp3
	G7UE3xlG9UQXLMm0cznZVCSJcd+TA5Vs9un1irmXLB1vldxIOM0PHAiPB5+Ip7z0x8lnqTthxhi5b
	E3o+nVrnapZNRM46eoKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBcbF-0041Bv-EX; Wed, 13 Jul 2022 13:40:21 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBcbC-00419Z-3L; Wed, 13 Jul 2022 13:40:19 +0000
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 26DAkwjr027681;
	Wed, 13 Jul 2022 15:40:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=selector1;
 bh=JRyv1cb2Gr7w/X2gySSfzHJgcDNDC1uKvi9JD4ouJro=;
 b=uxo6Dn2D4OrxCBt13hKgXlMQssGX75dS+VpBAutkoEczXuGj/bt63GIA/gj1WjROUAEn
 KPuo60hCkMaqwJXcg9N+q3YidK0/RJp1ACrKT4Z1cwaTPrMAzBhsLNzLLbp3z2fu6Vof
 kyZfE8nfW2DlIMGupt5Oxn0gWBH503RDNQfTqSXRB6RdeHGqLWvcr4QsIoBO0Pcxw23m
 ljbj8BTiExwk08Ex5TEKD8L1QHDPRRX9QBJMOw8i44Qkbe7DtW+r/WICfQWiVNsuxEmm
 1h45HJTihG7GcuGCwInsz/newACWSP9dn8ICqV09XAF3DrIK2tXkU6cBKRA6NI4lYVHb DA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3h93cwhtbc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Jul 2022 15:40:10 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 757C210002A;
	Wed, 13 Jul 2022 15:40:07 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E9273222C90;
	Wed, 13 Jul 2022 15:40:07 +0200 (CEST)
Received: from localhost (10.75.127.47) by SHFDAG1NODE2.st.com (10.75.129.70)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2308.20; Wed, 13 Jul
 2022 15:40:07 +0200
From: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
To: <vkoul@kernel.org>, <kishon@ti.com>
CC: <amelie.delaunay@foss.st.com>, <alexandre.torgue@foss.st.com>,
        <linux-phy@lists.infradead.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] phy: stm32: fix error return in stm32_usbphyc_phy_init
Date: Wed, 13 Jul 2022 15:39:53 +0200
Message-ID: <20220713133953.595134-1-fabrice.gasnier@foss.st.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-07-13_03,2022-07-13_02,2022-06-22_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_064018_454157_E92F24AC 
X-CRM114-Status: GOOD (  15.52  )
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

Error code is overridden, in case the PLL doesn't lock. So, the USB
initialization can continue. This leads to a platform freeze.
This can be avoided by returning proper error code to avoid USB probe
freezing the platform. It also displays proper errors in log.

Fixes: 5b1af71280ab ("phy: stm32: rework PLL Lock detection")
Signed-off-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
---
 drivers/phy/st/phy-stm32-usbphyc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
index 007a23c78d562..a98c911cc37ae 100644
--- a/drivers/phy/st/phy-stm32-usbphyc.c
+++ b/drivers/phy/st/phy-stm32-usbphyc.c
@@ -358,7 +358,9 @@ static int stm32_usbphyc_phy_init(struct phy *phy)
 	return 0;
 
 pll_disable:
-	return stm32_usbphyc_pll_disable(usbphyc);
+	stm32_usbphyc_pll_disable(usbphyc);
+
+	return ret;
 }
 
 static int stm32_usbphyc_phy_exit(struct phy *phy)
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
