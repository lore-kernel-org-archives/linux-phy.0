Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38318CA1017
	for <linux-phy@archiver.kernel.org>; Sun,  7 Sep 2025 14:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSairroRGutqeRH4j1et+dzgc5DuOLNrI6lcNw5sZMU=; b=wfCAlu5udqZwPB
	1dVwKxYYpIIpyCx5IW7JZ1Qq6ASHsiFhK66ImOsNphXzTc3Z0ehpzXRXvpmgU1YV0Zb2alfANsqmW
	/xMgoC0ZnvGT/DjN0VR0WZj6E0x5lDJYCi1b23gbXVfgjDuTwuDLvTBowGYEEe5pFfBMnza6tOsEN
	hFpQcut/Rw7cx0DxOClqoBOLDyO9R83RjnriV68Gg6qS9NeH1cMA7P+Z8ytxPjt3s4JmSLoACBrNQ
	fwMxuIMABfrfHYd+6N54nVxPIPMEX3SY6jGP0NXv9U4dkAhZvGnVg3WwFJ1jofKl8iHqLhHLZUImG
	X+hy3EJqelXM1YeP3ikg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvGkg-0000000BYuC-3okA;
	Sun, 07 Sep 2025 14:52:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvGke-0000000BYsy-2ruW
	for linux-phy@lists.infradead.org;
	Sun, 07 Sep 2025 14:52:21 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587AeIDI026612
	for <linux-phy@lists.infradead.org>; Sun, 7 Sep 2025 14:52:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZNffsrN8dmCEs7HAgfangQEaiQquRtqWha57sIIZbzU=; b=LV/byqxIELLLV8Wt
	PIucgDdkvSiw+ADNd6dsCnOoVXjpSsd3e7y0+uzzz7P8BHWCiXbS3WHHfTghrreK
	NH8UOqkGVjTWkETnEXWmC1pddlecVzrD1ZHrsFRpZHXNueCAw5jZAIGjWJ+lXero
	98j+98G2+ziy7fExLuVU+WKhovILxBuXmlF1FFf0cDT1iqWRpN+KUYp3SrU7c2S4
	6wO/GETmZkuwBuhUMNgud83yfvCD3H8Ov7nvTtRA4iagVDisIxhzL1z/PJmUWNDP
	hd73S9Fx7XNRLvZztPUhUDfjc9c6I6Q17BcD5Aru4BbjoA/yq4F7y6q6RwKz0aDH
	iP0KoA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4kt4bd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 07 Sep 2025 14:52:20 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b345aff439so103355661cf.0
        for <linux-phy@lists.infradead.org>; Sun, 07 Sep 2025 07:52:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757256739; x=1757861539;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZNffsrN8dmCEs7HAgfangQEaiQquRtqWha57sIIZbzU=;
        b=gSVJtI75KvdVSTetKxecxcnM5Jlv3+mcy1dcm1KlMCmBqOi9U1tZWoOUaLYyj9rbTe
         RZY0J6fXHbgugVNTWjDm0ynhPUj0DakYZ76dbWEMWnkbuBvRBXkVl+8Fwu6Q8E8QbcfE
         2JP7RqJRgzOJQOAsQm8vK95eYh7OgALObLzeDiC0buYj07w11sZhpiqJkhjrWkjuEFLP
         l0B0JqqKHwItylz77OV1gosy+RmljDWIxo4gjd2H072lAayFks1jw0sJ6XX0BAASFBgX
         bcv7ejbJQNL1D2PXE4kbRjnEN6TR8loqpfOE+fY2Gtwb/XtAlkKSkwlBvUCll8JQDzH2
         a6Fg==
X-Forwarded-Encrypted: i=1; AJvYcCXlJ+vygXv9YOLnQ7R+lv4QeNOpY2cDbh2U8CXzp75uUNPTKb5daGtXW4KpwVVrUcElvzDQw0hmOSs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwoSOSRL2FOFdGm+WmRCQygZbWcbA8BnL9oRj1pIix8/Nd0Yw+L
	miKu0XHCadS/g0hjvdQHDnd19Fh3M3v4gjehlgszR8h5Zewiyzjj3yJm0vkBne9Bw2OyCVhgUrn
	nLjAqoZm2HDdsZOZv/8z+zSgXvF0eY4dtwHGX7Og5J9m6rvmIDZJjRAAdHp9wtmw2H8V+
X-Gm-Gg: ASbGncvb9bvzlv2UJWoO3uAGwN2cxHAdfuMqZW+Z2vqli5QuVbS/EtvZ47/Glua1EFj
	I81FFwY3vi89IHyE5u/+OsqmQLpFqDHDZiC/ABhQ+vY2WekiQoXcslazN0GWY48c/7s8Tg3sLgR
	kRfaZ7i6RLJaJ4zAFwbPDUQU+ZiVuG51UpcHxf4p3/9a9unB4/cPODMUUDD7yK4+ZjuLHq3NoPi
	Euz4+sSxLmTCO2iIeaouxL3nXGZzPIzfNOY9fqhmj4mgbjiq2nJ3GHWu5zOAjeYq6aNtegwrdf5
	VbzW4z8c8MflHVPDQ/rRoXco/3S5Ow1M2mTCs/L1EeIz3fcOtjf4ssWMZtisTIg5IYUsaLUHMPT
	64wqhtGS/DuFaFPkSItd85Ae6A5X1ZOGZgDjTH11Ht3hFTtIMubaa
X-Received: by 2002:a05:622a:1823:b0:4b4:9084:d003 with SMTP id d75a77b69052e-4b5f844d4d8mr46652041cf.40.1757256738926;
        Sun, 07 Sep 2025 07:52:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7WElD3JmL2LHfSpTpNmNOEL8oEqj3NvSXEnxSgRINrKywiinX54RHXhg9TR6yFPcmw+sgyQ==
X-Received: by 2002:a05:622a:1823:b0:4b4:9084:d003 with SMTP id d75a77b69052e-4b5f844d4d8mr46651891cf.40.1757256738457;
        Sun, 07 Sep 2025 07:52:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ab939d5sm2936738e87.46.2025.09.07.07.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 07:52:17 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 07 Sep 2025 17:52:10 +0300
Subject: [PATCH 1/4] phy: qcom: qmp-usb-legacy: switch to common helpers
MIME-Version: 1.0
Message-Id: <20250907-qcom-dp-phy-v1-1-46634a6a980b@oss.qualcomm.com>
References: <20250907-qcom-dp-phy-v1-0-46634a6a980b@oss.qualcomm.com>
In-Reply-To: <20250907-qcom-dp-phy-v1-0-46634a6a980b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3537;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=q8/D+ukM0Z8xbt2NzOinEuwjlyUq60k42C13C/W8iPg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBovZwftYjKqkW+00RmQtqC0KhBlt2jfoXYBgS3A
 /rpxiFSJfuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaL2cHwAKCRCLPIo+Aiko
 1dSoB/9jtszJionNXNnZ+AaJemPRe2skJQAhLH9BcZxp34aGVp32MUdJfEUkHw3JSKEe/XlKSwP
 kEW/aO/Qc2lrvpZhgceKuvz2a9jw9jPjsR76Fzr0TmhHo3/XGmSsaqhQ6LBjH2OwE/UBZqzKGnF
 Id89N2qu+GVmJ+6hu8FX3Pw3bD7kkwcbT9M5Y7mkwBlUviVUg1LRYSJCMPWhW5KR/bf+wYXwjqd
 kR5UCSG2UNO7OByDakClnQleBg1nUHk/DrlcUo94soHRd5K6FMMnNL5iP360bgU/qOwfwKqqkep
 u5wKXh0hUpXEHZP9ijpFIcf99GIamcmG7tDToI+cfdaypTNu
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX9HK0K/VnsBjJ
 1/BSKg6ZGlqcg3FDnS12TN/SFm0hOj/WrC0K/EtpDuX5tTP07ShbWC3im4TmHSHsLKHU1xY8UyD
 gdNSW1i3rdw/ZjgYka8ykriO8kZURBUW9fTsMiC2o8jL92VlSVVsyuPfkueS2aphclUoKC2rqIa
 jG1g61GoaCWPHURly/e3255TThySaZzv+O/CAM2KDHd6Z/nrnfDKVV7ahlzw3ZxnP6j6Xg0Aoal
 oWLsjwxFdyRYdRah465huNRqVRIvJuKwCjv6y4fiMktOZ9JJk+NIPwo4fqWdW2vOWnGS48y6Vbw
 OnYpAa5O8nrZZ1tJpWsr1hZLK7sp+uAWmuab3R1e554rkgRgnQYHaOfX4d4DNOsA+MFxD0z1+O6
 jU2HPFml
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68bd9c24 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=AjFrHIIk6tpMehmkB6kA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: cmO9umYdgwZ-cWRJRHMZYLHzIYP3QEPT
X-Proofpoint-ORIG-GUID: cmO9umYdgwZ-cWRJRHMZYLHzIYP3QEPT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-07_05,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250907_075220_730501_9FB87BE0 
X-CRM114-Status: GOOD (  17.94  )
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

Instead of having a copy of the common definitions and functions inside
the usb-legacy PHY driver, use the phy-qcom-qmp-common.h header.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c | 64 ++++----------------------
 1 file changed, 8 insertions(+), 56 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
index 8bf951b0490cfd811635df8940de1b789e21b46c..ddb52c1812dd02e15a840deee934c849405c2a98 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
@@ -20,6 +20,8 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 
+#include "phy-qcom-qmp-common.h"
+
 #include "phy-qcom-qmp.h"
 #include "phy-qcom-qmp-pcs-misc-v3.h"
 #include "phy-qcom-qmp-pcs-usb-v4.h"
@@ -43,30 +45,6 @@
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
-struct qmp_phy_init_tbl {
-	unsigned int offset;
-	unsigned int val;
-	/*
-	 * mask of lanes for which this register is written
-	 * for cases when second lane needs different values
-	 */
-	u8 lane_mask;
-};
-
-#define QMP_PHY_INIT_CFG(o, v)		\
-	{				\
-		.offset = o,		\
-		.val = v,		\
-		.lane_mask = 0xff,	\
-	}
-
-#define QMP_PHY_INIT_CFG_LANE(o, v, l)	\
-	{				\
-		.offset = o,		\
-		.val = v,		\
-		.lane_mask = l,		\
-	}
-
 /* set of registers with offsets different per-PHY */
 enum qphy_reg_layout {
 	/* PCS registers */
@@ -698,32 +676,6 @@ static const struct qmp_phy_cfg sm8350_usb3phy_cfg = {
 	.pcs_usb_offset		= 0x300,
 };
 
-static void qmp_usb_legacy_configure_lane(void __iomem *base,
-					const struct qmp_phy_init_tbl tbl[],
-					int num,
-					u8 lane_mask)
-{
-	int i;
-	const struct qmp_phy_init_tbl *t = tbl;
-
-	if (!t)
-		return;
-
-	for (i = 0; i < num; i++, t++) {
-		if (!(t->lane_mask & lane_mask))
-			continue;
-
-		writel(t->val, base + t->offset);
-	}
-}
-
-static void qmp_usb_legacy_configure(void __iomem *base,
-				   const struct qmp_phy_init_tbl tbl[],
-				   int num)
-{
-	qmp_usb_legacy_configure_lane(base, tbl, num, 0xff);
-}
-
 static int qmp_usb_legacy_serdes_init(struct qmp_usb *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -731,7 +683,7 @@ static int qmp_usb_legacy_serdes_init(struct qmp_usb *qmp)
 	const struct qmp_phy_init_tbl *serdes_tbl = cfg->serdes_tbl;
 	int serdes_tbl_num = cfg->serdes_tbl_num;
 
-	qmp_usb_legacy_configure(serdes, serdes_tbl, serdes_tbl_num);
+	qmp_configure(qmp->dev, serdes, serdes_tbl, serdes_tbl_num);
 
 	return 0;
 }
@@ -840,13 +792,13 @@ static int qmp_usb_legacy_power_on(struct phy *phy)
 	}
 
 	/* Tx, Rx, and PCS configurations */
-	qmp_usb_legacy_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
-	qmp_usb_legacy_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
+	qmp_configure_lane(qmp->dev, tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
+	qmp_configure_lane(qmp->dev, rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
-	qmp_usb_legacy_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
-	qmp_usb_legacy_configure_lane(qmp->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
+	qmp_configure_lane(qmp->dev, qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
+	qmp_configure_lane(qmp->dev, qmp->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
 
-	qmp_usb_legacy_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
+	qmp_configure(qmp->dev, pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
 	usleep_range(10, 20);
 

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
