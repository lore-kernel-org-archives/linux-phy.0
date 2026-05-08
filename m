Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D28BCD37B0
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 23:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BVYcfPjokemnWqcxBSJ0D8ivRA89x//d5ntDoQr3f0=; b=djA7I+dLlQBzDM
	ehM7wERsep5eIsc19KO/Dn6pjDGbdUMvWkJ2vO5uRx6IMGV60+c0KUrf2eG9ZdmKPiJ63cI29Tbai
	HpBVHbvBlgweQ7IcTYoxp6Gq0y+Lq6FxhWTsNLe4NEzqchlSmXROqPfIHYefbVbE/zSQWgD+YkGTw
	Q1Y6/kcKhJIMjd0XQVVP1VD/ppPnqA8u+tQO3bWgV449+HsD2zVmYus2ZaDZbXVv+d401C28VnHX1
	3gJpF8RkQBcHLQj7ODl7DaGesBc/x2bDJ9UXmLZxP7lw48VMOQ6cEpBqqO4uA1YyKThdXSj7t1wJt
	yW9hJ/XaaPojbqV8dtrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfK-00000007kxs-2xl9;
	Fri, 08 May 2026 23:31:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfH-00000007kvP-1Hh0
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 23:31:28 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 648G46AR1093516
	for <linux-phy@lists.infradead.org>; Fri, 8 May 2026 23:31:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Qj0nAIAK4LBbELZANLlnfukG9vwKdKBxFr9Mk7W/Rt0=; b=KLt3faeP/lLN18pd
	/YXJDoRxk2OzVCKNu40kf3n4u+J5/K2uf1TXIyqQyUDFnG+MpwcEKkPkOtJ/toS0
	WMTgYYS3XQ/7RcEGB6GXOBbK/ukjHZZChnBUILC2lTIuIGwmENtX4eB2gr0BnbJH
	l7YKFqF8Dh8A2Xg77h+Hnak8l7Uvxg+gXMed4vSdd7I+eOl6NhINhczVJNv6qNkI
	IlflYRbjvUapd7OtnTH7aRol1JorJ/iPQPOANNUgLWIl5pqYrloNNs8/egnuuxGR
	0wvosPohCVKdQyD+0yDEo5AUZNMVFPodt0M/jBcSTJ5zaHp5odmr1ANah/e87FHc
	8YDICA==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e1k1d1av1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 23:31:26 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2f3ec2e8d07so26800eec.1
        for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 16:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778283086; x=1778887886; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qj0nAIAK4LBbELZANLlnfukG9vwKdKBxFr9Mk7W/Rt0=;
        b=jiJyz84znIEmezayhzGG85BNkrUjaa8R87abiyy6aGPmWEe9IBw60JHGO9CA/bzkMp
         O8HFptljUfm7BYw02DbfAvbGew1T+i4KCI3X33GEY1tbEYKrg+NyuPHQp+1LCT5GUQIA
         NcVpcFOtaKcOGdgzzPyq9ykfU/I1K+hJUya7fVzwtKaEOZGd/+2vwvkaIhOmf6y2b8LG
         l95GjMZiteUKd1Awc5dss/USCaLKRxtxSz6cGBIkGCCt1lsg+o9YLX5c6hrOxjfkU/Z8
         2HxX2z5wi4KTHrLCaZB9w40SnHSUnxqT9/ij8AqqCGuxGxPyKbbwi03A1mjsAEhGc566
         LbrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778283086; x=1778887886;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Qj0nAIAK4LBbELZANLlnfukG9vwKdKBxFr9Mk7W/Rt0=;
        b=S4hFboACbXToguQzQiBq4xCCcgSvVZrf9BZSmktD4jB8V9u3FK54wRdqfUoyd+CMD5
         omzU/mwTmKuiQJQBsh6LkxIKODOnumpZGziKDL9QCMQMHNSKwuKfwVv1e9o/kB76hgDQ
         UmW0iXOpt7rSmGDCyLShYMjB9EXNQPf+yvszTj0d4c4qpCpKbfEwVRyAP8Iw8MyAQ/uN
         9K23/+SSPSfyIvfQuRKChwGV3ZAvJgal6OP2x8oSTR6QdHRwS1XkSH7Tsm9W7RoiSMWh
         AjUpVvtTZRb2w2c8m6zBqU09OupdDlLytFjMenaRUHvzbPHg2KXCFx55fuAfFIpecm2O
         0qMA==
X-Forwarded-Encrypted: i=1; AFNElJ+395yk1HY1azja4yPsK40dsdY9PZrd93TkjkPTz9MiwBJ0rAF7WfEn9bkARtgK0R3JZt8Nxxe0z9E=@lists.infradead.org
X-Gm-Message-State: AOJu0YzRRJ0+C7Bg9iwUX1SkSff/VzUFsbyXOhmpUUtpKMjGWcyERulZ
	CB4Byid4nrQXdiPIuRLZeGDo0QAxr9/8bKfGttQqg0RaaJZcUnD0krDdhC+7p8R/ZPjF1nAl69O
	btRuDSZPRY3GrS5T7bkpiHV5SWuxOv71+qwOHy0hp8j0AAGM9zrG0+QQcj5AIVtO9FBUI
X-Gm-Gg: Acq92OGXjjdqnqULcuNBbsn3sdjZ9O/2mZRUU0OqwRxR4PvXlBJcSGShfR9AYXt5gAu
	8O86ZIRWYo1wNg11NZYRgHFIdRJNmWBYvOvD/gV47k/Z/tma1b9RKI19l8qQ1k5vdFu4aGpiF1I
	xNp30ZTkOOMbxpuyQZqFMU5gguQLw6aL2NThZsbMdGHbF4Ecv8VCAJxUelo8nE55obPNVBgOg3g
	CdxiMDiKrpQtcDmSR8q4hfFEBj5ErieNredzNNXuYyNUMbnHY2NM6ToKGyHwNqlOVcJ/zInNrqa
	ZLK9KPaoiYDPsa0NxjNRSMFRrYkzYXDkUm01pFdBmBM3eK9fj2bUOoq50PvcYF+AjXK01F/DflN
	vsaGg7wHv8fjrU9pZtjAEDGumG1urT8MJubRr9Cc0CqI9z10MBcWMtnxG0ng=
X-Received: by 2002:a05:7300:b10b:b0:2d8:97d6:6ac8 with SMTP id 5a478bee46e88-2f85d94b2ccmr2176669eec.21.1778283086099;
        Fri, 08 May 2026 16:31:26 -0700 (PDT)
X-Received: by 2002:a05:7300:b10b:b0:2d8:97d6:6ac8 with SMTP id 5a478bee46e88-2f85d94b2ccmr2176653eec.21.1778283085572;
        Fri, 08 May 2026 16:31:25 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f88885b87dsm5033122eec.21.2026.05.08.16.31.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 16:31:25 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Fri, 08 May 2026 23:31:18 +0000
Subject: [PATCH 03/10] phy: qcom-qmp: qserdes-txrx: Add v10 register
 offsets
MIME-Version: 1.0
Message-Id: <20260508-hawi-phy-pcie-v1-3-237b894353fc@oss.qualcomm.com>
References: <20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com>
In-Reply-To: <20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778283082; l=3118;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=DOGsd2u7iW9cMvj4+PDQls+GBNWh6gWdVwXtre2Q3s8=;
 b=M1NyJKqphIbPzN87ChMeDEtvOTQSa6ZIZzdv/CNOEy7e57CCQ2Lrmmn85iAua2MC3d1PwM7b/
 7b2XupfrAtPBX3Kh1MMkpTDtgeQjcqgXlxpxrNtHsG8d1RKmpC/bVUQ
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDIzMiBTYWx0ZWRfX2KN9z/9eZHez
 z3sffLD32aTA0XXQt19M8cTV9th77uktwaFGnU0qicVavmjWzaHsnnyO6MIxzK8i4BLFvpFnwAT
 sVh3jZSF234j1ENfgp1fSIomYuDsWiykUdM9vDCXpY4P4CCEU3BeLSQ43Qldzcs44MF6Leea+XM
 xiBJHhKrmNd2fHzqR3rRBuAzIARNB+WJBHkocBGbW7UoYSfnCHtSeLVyJbO3MGKmUQYPJqfK5jT
 UVFinSG8zNxY9mLsurjTzUzcccx5yNwJvEW2quBwrBFbJ4/8SnUshTqCJ5DAR7OGkCkQs3RlzZu
 +iRNZ0c20bm5KzjkRcLwAQZIMNSwRpgiYjOMsg5BYA4gjxhJDTQUl9LVhFR3LHkxPAZvo7+tO5e
 Q80YobHUZ7EQMAiRMZXAVjdqBARSJnsEkJW/uZJjgWX6Tw4UqvEiW4By08dzh3NWCJkt+nb954t
 axC0vBwq4NlhzW99zUw==
X-Authority-Analysis: v=2.4 cv=GLU41ONK c=1 sm=1 tr=0 ts=69fe724e cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=A1tEKnX2-cfyyskZ8tQA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-ORIG-GUID: xtNcjTkgC1LwxzaVDwtnzfv1ZjK_xo7-
X-Proofpoint-GUID: xtNcjTkgC1LwxzaVDwtnzfv1ZjK_xo7-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 malwarescore=0 phishscore=0
 clxscore=1011 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605080232
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_163127_396159_76A05F55 
X-CRM114-Status: GOOD (  13.25  )
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

Hawi SoC bumps the HW version of QMP phy to v10 for USB and PCIe. Add
the new qserdes TX RX offsets in a dedicated header file.

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h   | 47 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
 2 files changed, 48 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h
new file mode 100644
index 000000000000..d81ebdde0063
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h
@@ -0,0 +1,47 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_V10_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_V10_H_
+
+#define QSERDES_V10_TX_RES_CODE_LANE_OFFSET_TX			0x03c
+#define QSERDES_V10_TX_RES_CODE_LANE_OFFSET_RX			0x040
+#define QSERDES_V10_TX_LANE_MODE_1				0x084
+#define QSERDES_V10_TX_LANE_MODE_3				0x08c
+#define QSERDES_V10_TX_LANE_MODE_4				0x090
+#define QSERDES_V10_TX_LANE_MODE_5				0x094
+#define QSERDES_V10_TX_PI_QEC_CTRL				0x0e4
+
+#define QSERDES_V10_RX_UCDR_FO_GAIN				0x008
+#define QSERDES_V10_RX_UCDR_SO_GAIN				0x014
+#define QSERDES_V10_RX_UCDR_SB2_THRESH1				0x04c
+#define QSERDES_V10_RX_UCDR_SB2_THRESH2				0x050
+#define QSERDES_V10_RX_TX_ADAPT_PRE_THRESH1			0x0c4
+#define QSERDES_V10_RX_TX_ADAPT_PRE_THRESH2			0x0c8
+#define QSERDES_V10_RX_TX_ADAPT_POST_THRESH			0x0cc
+#define QSERDES_V10_RX_VGA_CAL_CNTRL2				0x0d8
+#define QSERDES_V10_RX_GM_CAL					0x0dc
+#define QSERDES_V10_RX_RX_IDAC_TSETTLE_LOW			0x0f8
+#define QSERDES_V10_RX_SIGDET_ENABLES				0x118
+#define QSERDES_V10_RX_SIGDET_CNTRL				0x11c
+#define QSERDES_V10_RX_RX_MODE_00_LOW				0x15c
+#define QSERDES_V10_RX_RX_MODE_00_HIGH				0x160
+#define QSERDES_V10_RX_RX_MODE_00_HIGH2				0x164
+#define QSERDES_V10_RX_RX_MODE_00_HIGH3				0x168
+#define QSERDES_V10_RX_RX_MODE_00_HIGH4				0x16c
+#define QSERDES_V10_RX_RX_MODE_01_LOW				0x170
+#define QSERDES_V10_RX_RX_MODE_01_HIGH				0x174
+#define QSERDES_V10_RX_RX_MODE_01_HIGH2				0x178
+#define QSERDES_V10_RX_RX_MODE_01_HIGH3				0x17c
+#define QSERDES_V10_RX_RX_MODE_01_HIGH4				0x180
+#define QSERDES_V10_RX_RX_MODE_10_LOW				0x184
+#define QSERDES_V10_RX_RX_MODE_10_HIGH				0x188
+#define QSERDES_V10_RX_RX_MODE_10_HIGH2				0x18c
+#define QSERDES_V10_RX_RX_MODE_10_HIGH3				0x190
+#define QSERDES_V10_RX_RX_MODE_10_HIGH4				0x194
+#define QSERDES_V10_RX_DFE_CTLE_POST_CAL_OFFSET			0x1a4
+#define QSERDES_V10_RX_SIGDET_CAL_TRIM				0x1f8
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 3ac5af7cde6a..76ac72410d31 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -40,6 +40,7 @@
 #include "phy-qcom-qmp-qserdes-lalb-v8.h"
 
 #include "phy-qcom-qmp-qserdes-com-v10.h"
+#include "phy-qcom-qmp-qserdes-txrx-v10.h"
 
 #include "phy-qcom-qmp-qserdes-pll.h"
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
