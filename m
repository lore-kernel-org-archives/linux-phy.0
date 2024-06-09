Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45BFCC27C53
	for <linux-phy@archiver.kernel.org>; Sun,  9 Jun 2024 06:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:Message-ID:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=biG6r8kZnn0ftEePCNhImBm96TORrt3f2qGw6WhfxDc=; b=EAJd/NHRSgOlbT
	0hvP9sm3GA9TeIIkS0k2728na9G1b9+606qEFYwVuzsdLR0TVDtUxwBs3I6cFl5QC5QV20Vtcx+ly
	iw/9x1ePMOjJ9KHSqVmGDjOn0SmTv4D557JVz3IL51B0lCipP0sQEgim7lhRFnb+mccUSuEdgcyfp
	RIYZIYaGWh9GGq3c9De1FSmDLRGJEpf6E2owZvZWFrscghdH1IDAFk0roQ3bnLVsFvbS10Gwj1vEW
	BbW8CNijfhgbxhZVxpO/iIFuJvGEYr0+c3yswueqqSkHVI1ntRSJ69Mw0uNytzXflJiwYnZFW9BkP
	nVzM1AZdjqRwTTENXkvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGBre-00000001uih-2pnn;
	Sun, 09 Jun 2024 06:17:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGBrb-00000001uiL-2k6X
	for linux-phy@lists.infradead.org;
	Sun, 09 Jun 2024 06:17:13 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4595u0D9004094;
	Sun, 9 Jun 2024 06:17:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=bW8kQ1TPwFqdhyEwZwxXgH
	v4hINaS1vaK6f7UDDjVkI=; b=REvMC6+8OXwv+cN2u6TeqGQEWSgqfVAP4HCXP8
	B9cxFKR5o/qx6hXP0+vb25q7jF7iXU+ObyoBWTnOtqtuI9iMiWkTF+ORoduPxLj6
	UXpKm9EpkPGIZoURLbY/FTnAH/0XXEvF/MbwnmnoY+4ki6wlDnV8jcln2WsEgbQo
	Gno58Qhs8wmiNs+UBBqw+wG3nKdhXqNpw7pyXpo77QDaGZhxbUDXzIn5h1iJB7Vs
	nHMGInAKj4MPaGF78SIrTi3nB6Nh1VWQiekSrgxwtXdMtXAhnhMJACHyMDgsVc7m
	EPUVhAnq2sq4W9MGkxf+Dif2vV4tPZBG8LcojTEpcYvzQMbA==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ymemghcs5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 09 Jun 2024 06:17:07 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 4596H6kH004243
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 9 Jun 2024 06:17:06 GMT
Received: from [169.254.0.1] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sat, 8 Jun 2024
 23:17:06 -0700
From: Jeff Johnson <quic_jjohnson@quicinc.com>
Date: Sat, 8 Jun 2024 23:17:05 -0700
Subject: [PATCH] phy: broadcom: add missing MODULE_DESCRIPTION() macros
MIME-Version: 1.0
Message-ID: <20240608-md-drivers-phy-broadcom-v1-1-f070f84cc3f0@quicinc.com>
X-B4-Tracking: v=1; b=H4sIAOBIZWYC/x3M3QrCMAyG4VsZOTZQ57+3Ih6kbWoDthuJjsnYv
 Vs9fOD73gWMVdjg2i2gPInJUBu2mw5CpvpglNgMvev37ujOWCJGlYnVcMwf9DpQDENB8nRJh+R
 3IZ6gvUflJPO/fLs3ezJua6oh/3pPqe8ZC9mLFdb1C66z+yeIAAAA
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <kernel-janitors@vger.kernel.org>,
        Jeff Johnson <quic_jjohnson@quicinc.com>
X-Mailer: b4 0.13.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 4rvzFQruU4QguwQNpQtmujsfwcGMBDMw
X-Proofpoint-ORIG-GUID: 4rvzFQruU4QguwQNpQtmujsfwcGMBDMw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-09_03,2024-06-06_02,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=993
 suspectscore=0 adultscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 malwarescore=0 mlxscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2405170001
 definitions=main-2406090047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240608_231711_862736_09553EBC 
X-CRM114-Status: UNSURE (   9.65  )
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

make allmodconfig && make W=1 C=1 reports:
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/phy/broadcom/phy-bcm-ns-usb2.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/phy/broadcom/phy-bcm-ns-usb3.o

Add the missing invocations of the MODULE_DESCRIPTION() macro.

Signed-off-by: Jeff Johnson <quic_jjohnson@quicinc.com>
---
 drivers/phy/broadcom/phy-bcm-ns-usb2.c | 1 +
 drivers/phy/broadcom/phy-bcm-ns-usb3.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/phy/broadcom/phy-bcm-ns-usb2.c b/drivers/phy/broadcom/phy-bcm-ns-usb2.c
index 269564bdf687..5213c75b6da6 100644
--- a/drivers/phy/broadcom/phy-bcm-ns-usb2.c
+++ b/drivers/phy/broadcom/phy-bcm-ns-usb2.c
@@ -162,4 +162,5 @@ static struct platform_driver bcm_ns_usb2_driver = {
 };
 module_platform_driver(bcm_ns_usb2_driver);
 
+MODULE_DESCRIPTION("Broadcom Northstar USB 2.0 PHY Driver");
 MODULE_LICENSE("GPL v2");
diff --git a/drivers/phy/broadcom/phy-bcm-ns-usb3.c b/drivers/phy/broadcom/phy-bcm-ns-usb3.c
index 2c8b1b7dda5b..9f995e156f75 100644
--- a/drivers/phy/broadcom/phy-bcm-ns-usb3.c
+++ b/drivers/phy/broadcom/phy-bcm-ns-usb3.c
@@ -240,5 +240,6 @@ static struct mdio_driver bcm_ns_usb3_mdio_driver = {
 
 mdio_module_driver(bcm_ns_usb3_mdio_driver);
 
+MODULE_DESCRIPTION("Broadcom Northstar USB 3.0 PHY Driver");
 MODULE_LICENSE("GPL v2");
 MODULE_DEVICE_TABLE(of, bcm_ns_usb3_id_table);

---
base-commit: 19ca0d8a433ff37018f9429f7e7739e9f3d3d2b4
change-id: 20240608-md-drivers-phy-broadcom-aba9f5fb3cd7


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
