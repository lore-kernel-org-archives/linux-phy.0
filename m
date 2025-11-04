Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67FCECCFA04
	for <linux-phy@archiver.kernel.org>; Tue,  4 Nov 2025 07:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5btJaSoY4+xSJtzvy3BX+243FMb73MeKjf8pcNwR8w=; b=vcbktcL1EvLndt
	ECOdXmwkIqJXFSuuEQsljupEe0xG6pXc91WrushOAY2AJtKI1rzJKsI/IkSh4AUodx3EfFv/7iLxB
	nAKWEukBkdxYPd0GSocGA1bGrB2TMNUaSZLRJYVvQOJ7CUydjrkqHdPu5RAm9/Oe44igNBDx7GmPd
	9MqCWxHwu7dWqsYmDp7o9rboSfQhpI+7+fVuEcwaRrL2YpjLrpRAWmMWYaHPbhYH1Y1408beKTLx9
	v+HNGYRzzFjrKTuhZvnRggDYmNvZuSc0GZqgRNUE9M9WXYU016QTnVGqwKnkwpc9Uj2wXi/g32oYn
	epMn5baqIk/3THp28Pxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGBu7-0000000BMnw-0f94;
	Tue, 04 Nov 2025 07:56:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGBu3-0000000BMlk-40Rh
	for linux-phy@lists.infradead.org;
	Tue, 04 Nov 2025 07:56:33 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A43782K3659412
	for <linux-phy@lists.infradead.org>; Tue, 4 Nov 2025 07:56:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LnqwEheiYw4eMqGgagIbYYTEmFr59FG4+mnaf+XhjEI=; b=AzVENB5WngnxwkUp
	EkJpuSTz2IorKgHWrq6O748UOXijIZ50wZt2OKZhPkA9/TKkS+05rGll/579BVw1
	Y2flZ51XkJ26CO/692mRcUMHRg/PWs1laXdlRD76/rE9W12P0QvEf0C9C4cTPwVC
	Ai2uJcGEKzoM07ncYb3ZE9ZvMR+ofHsAkr1r99gnreXRNAE0lw/s3M+3xe7H9242
	nKg3yMSgVzI+YQmqD2SWBSo3x4v2qLfRaCPASJsL20pSwZkcUG1gyA82iROBLBMh
	bVGhj4jmTnNfF/wjKwVrpXcBwHMWYBwt742SVR8dWFz0O1vfu84f5u+k+3KeOeN7
	ADkjZA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70gea4ct-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 04 Nov 2025 07:56:31 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-782063922ceso4939670b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 03 Nov 2025 23:56:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762242991; x=1762847791; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LnqwEheiYw4eMqGgagIbYYTEmFr59FG4+mnaf+XhjEI=;
        b=DLsuxOTMTkZ7lTXG0ujD6ReUhezxdFWlX5K/jkmTyuZh0giLAnZAOE6h5J7/ySOqKa
         1AuB3LpF0LRhmySq+9oEaeC7+Oy8Src6Ke2hLdLZlGDlAB/gQ5MPQ6RpUpfcfQRwrxaE
         LIxJKLkm/9stg5+t4u/6VJ2Gh3/2p3s64+Xlmfna94ySIt4FVc9yNOVY6/xeWnkCz9B8
         zmPrm4F7W8wJsgs4XQqRbtull8dHXPRHj74moH0hLJeFvMynuw7lS5Roon1JdvpDCSUB
         d2o9bHhl7cf8M6AaFqnedr8QB3MXEC1ifTUgzv3vVa/5l2jMNtVIDmNddlkR0LL9CEvQ
         uzNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762242991; x=1762847791;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LnqwEheiYw4eMqGgagIbYYTEmFr59FG4+mnaf+XhjEI=;
        b=kjijUo1w5RwHhtlg8tQbnHxwP1r6X1LcJg7gQ2g926uoNs0wtqlaJtPSSSBB6F00Li
         /WuRK5wSqZfntzsjCanvK2UZVCf1W9JQis/EShzTZa6I8Q3pq5bCr8uMVqeWl1MPl/j5
         ojgwA14oMoSQyP0rsIKxI67W53FHg6ERpv+fNM1ODu+w1hwbPUeKVEcrmfgBJGYMNN5E
         HNjLIKUgeTG6gOq9dGsnbJtv/2DLck9eq0oUDEhp8O20sJack7rtYXmDT96oLnEvv4ve
         m1l2wvydcFIDTsI62j4a9sDYmXNJs67ufVCr9V1B+Nj7ViMD95OwQylzUY8ZFZlWWpao
         yc3A==
X-Forwarded-Encrypted: i=1; AJvYcCWIeyTWDHvB8aKARmZDiuqo1+FkBDl7c3wiBjz0TIDUbvH0AY1c0M/8R9dJEyr4JmU/SNfq+loEzRw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwesLKD2zeBLvGAN7SaCLNmZy/hoQnV7pDMzkd94aG1UUnG922l
	zwIB8wOC+pqBBpRvheeObciNAPabrYRnEtOwbhXvsh/QdaAQiq2zyZKgyeeYdnZk9n8f9Mv/mfc
	v711U9hNCAe6gM+Gl6nTTTJXG71I+FpQK+/UF/PvPKnLQYDohnSFXBi/HP5qKwyA/UCqr
X-Gm-Gg: ASbGnctXzIkfJdQKrn+cueiYJfEVdUCyBrWdYGyidtFzhBBIfRsqpXHKQvXk0ic6oL8
	uLZUsKCJR6rXNMUbrhZQv5m6OYhYu8wWqvIDIRAKaDebo+m/vlzdxszaUyzLwzcSwLPIgkooGPE
	PnLU1WHOPR6HVyCEYU4qfuebIEJXRTL0Tzj8/aFTmP2/ZmfY1MUdmZZ70H6K56XiNi5MAlsWFEa
	VBFEfHLnHd5ACPr0QgpDlTwC/yuVQghYHakjxmwS8sbWJG4MRQrf9JJ856XfTShq2h0y9kbRlGG
	Yf4ESdCYo6QsaQ5Wutqo5aSnsO6F7ADT01ekF6rdYd9PsefN0AJwci+EGTqZWh/2i2fme3REJtO
	6Rlk8eSOyW8h466JrspGT7FD/yRGpklIlNfgme8zGzbnD9g==
X-Received: by 2002:a05:6a21:9986:b0:341:b744:8a8 with SMTP id adf61e73a8af0-348cc3d8693mr19912028637.46.1762242990746;
        Mon, 03 Nov 2025 23:56:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGRudDMzRLwmeLEBc53Nk7dLsiNT62spK/lGojAWczSZXtwaaATy2sH3JUzHTKWBolJh5mrnQ==
X-Received: by 2002:a05:6a21:9986:b0:341:b744:8a8 with SMTP id adf61e73a8af0-348cc3d8693mr19912005637.46.1762242990311;
        Mon, 03 Nov 2025 23:56:30 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34159a16652sm3627951a91.20.2025.11.03.23.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 23:56:30 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 03 Nov 2025 23:56:25 -0800
Subject: [PATCH v6 2/3] phy: qcom-qmp: pcs: Add v8.50 register offsets
MIME-Version: 1.0
Message-Id: <20251103-glymur-pcie-upstream-v6-2-18a5e0a538dc@oss.qualcomm.com>
References: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
In-Reply-To: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762242987; l=1673;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=229Z+uA9EBUjxLvNJs5f/sN8K/iZsIa19KeM+KZknsc=;
 b=q8xidLCpIC96Q19jrYcE/OJoc0nCHSImvrMYdK2myUfIqf5LunzD7Q+O6BihZZotNJzcLkZ1T
 S6vf+ayA5+gBzGy6Kvi8NBz98XYuKVdqnD4900rW2JuTZQobQBi/m3v
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: 5faUxwZxQYl9hbEzZjabxCrk1aujMLCE
X-Authority-Analysis: v=2.4 cv=bqBBxUai c=1 sm=1 tr=0 ts=6909b1af cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=MyfKwbsdfMS_-thd9JUA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA2NCBTYWx0ZWRfXw88qvjBzRzOf
 COTyU7ZTxxU/qxTuXcV8jA7uWHzAjYZk2ElNBwM57WlY7h79MFvgKOHrOpP+VYVgMNHsQd2cRhC
 MD/+6AlYNxAmIqm45gKxD4JgjNhklca7LHeXxYpreHRxDyA8p1KdBaW6/oScTMjUO8ZvNyVRldt
 JGLdy4jwy9cUjnoAzN/wrs3cEPTUE2LyK/ksRTXwDEbzzGKjLeQP2h5CQgXRjFf90AzE4qGM4lO
 TaumpeH351f8nzwx3qU1TLVpXCBiB+nlw2hLD6PkeNKzJLDvkk2BYb53OQ93z/jsXwPdkHyTXS3
 aSRpdVYSvX85kwTo90jUZOFVw4qisgdi9IKHapCMgWxafDftNXP2VduNJHH+rUAbXGnxw91lQ4r
 n6H/bImDi3C2+w2RogG69uzfDLbLFQ==
X-Proofpoint-GUID: 5faUxwZxQYl9hbEzZjabxCrk1aujMLCE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0
 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_235632_509968_65D89BF6 
X-CRM114-Status: GOOD (  14.73  )
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

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

The new Glymur SoC bumps up the HW version of QMP phy to v8.50 for PCIE
g5x4. Add the new PCS offsets in a dedicated header file.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h | 13 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  2 ++
 2 files changed, 15 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h
new file mode 100644
index 0000000000000000000000000000000000000000..325c127e8eb7ad842018dce51d09a6ee54ed86ff
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V8_50_H_
+#define QCOM_PHY_QMP_PCS_V8_50_H_
+
+#define QPHY_V8_50_PCS_STATUS1			0x010
+#define QPHY_V8_50_PCS_START_CONTROL			0x05c
+#define QPHY_V8_50_PCS_POWER_DOWN_CONTROL			0x64
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index f58c82b2dd23e1bda616d67ab7993794b997063b..da2a7ad2cdccef1308a2b7aa71a2e5cf8bd7c1d7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -58,6 +58,8 @@
 
 #include "phy-qcom-qmp-pcs-v8.h"
 
+#include "phy-qcom-qmp-pcs-v8_50.h"
+
 /* QPHY_SW_RESET bit */
 #define SW_RESET				BIT(0)
 /* QPHY_POWER_DOWN_CONTROL */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
