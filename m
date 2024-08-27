Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87EC0C5320E
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 06:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5NqCi6us0rHTKmmLPhXVDp98htXl9yThGzySmTp0KU=; b=jKZmJLdrPWaZIY
	6AZXiTmjde7DHk1z0uPppXtEB+UtZHvijjRpsJ0O6FXtH/jk1oSY9dBfIhFNy+Ynz4n/zP3sdCx69
	udK9FszwQ+mpJBDn0xPEtPi9hV1zZOAFGqr2TLeIRMAnfEE8a1V4qzVm0gtPpUxV0ZnYvJ9bqpEjV
	9Sbp0bi7qPUJqXXKyW+Vq/XD5WwNXJQfcZ8+WGMlF6A2nhmDZKKhpNSPnuYnc0brRx01BS7vpMJpi
	2g9RIdPnHPlXqlaC4vGfIBpFvUsg/sl6gWibZgHuMsD5Cc/taNloiOXxpMoc4v/hozkfI6iXGPujq
	hPF6gZGDR+O0zQuzCmCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sipp6-0000000A2d3-0ZQk;
	Tue, 27 Aug 2024 06:37:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sipp3-0000000A2bP-0mZr
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 06:36:58 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47QJGfat007436;
	Tue, 27 Aug 2024 06:36:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=zbkPwV9dVUu
	hngPOgG5UYOl1QL7fgQAKlOAw5lMh/XU=; b=KgYsVR+UqbY3rSqIx6bjAjObRDc
	sfeVUyiyt5F516m6QVaaOsa8N36iLk+tCBUksEjov81DrJI5srJMKiLN2hHUTmH0
	f9rF44TC3UPcdV/npQOoBbFIm+8QWIYIMJ7wIinzMviB/H6435T9+UHGG/xtq8it
	Zce9El4WM9snUA6w8Sr1vNoQ15L4x/gZxaT1Iae9DemtLC3HLBBKInkmhmBGiPMV
	O45SiMNaGTdYRdLNRbDrR+yYzPW5qIDQGFkQ23NWQHiwtH/5ql2JI4/dT7R5SBuf
	fYt+ot4otvoWlYsLcDIsAGf5iMzC/MHvq8hb+0bgaIQDFUIHWnUbyDrhx7w==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 417976wxdu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 06:36:49 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA01.qualcomm.com [127.0.0.1])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 47R60LdW027894;
	Tue, 27 Aug 2024 06:36:48 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA01.qualcomm.com (PPS) with ESMTPS id 418uqwxr4s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 06:36:48 +0000
Received: from NALASPPMTA01.qualcomm.com (NALASPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 47R6ZIUV003937;
	Tue, 27 Aug 2024 06:36:48 GMT
Received: from hu-devc-lv-u22-c.qualcomm.com (hu-qianyu-lv.qualcomm.com [10.81.25.114])
	by NALASPPMTA01.qualcomm.com (PPS) with ESMTPS id 47R6alXr006290
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 06:36:48 +0000
Received: by hu-devc-lv-u22-c.qualcomm.com (Postfix, from userid 4098150)
	id D7D2F64E; Mon, 26 Aug 2024 23:36:47 -0700 (PDT)
From: Qiang Yu <quic_qianyu@quicinc.com>
To: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
        quic_devipriy@quicinc.com
Cc: dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
        neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>
Subject: [PATCH 2/8] phy: qcom-qmp: pcs: Add v6.30 register offsets
Date: Mon, 26 Aug 2024 23:36:25 -0700
Message-Id: <20240827063631.3932971-3-quic_qianyu@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: emBf63CM5WmMYWpxM0N_op1orrOzgVPL
X-Proofpoint-GUID: emBf63CM5WmMYWpxM0N_op1orrOzgVPL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-27_04,2024-08-26_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=889 malwarescore=0 clxscore=1015 impostorscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 mlxscore=0 suspectscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2408270048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_233657_365733_0A067C79 
X-CRM114-Status: GOOD (  10.51  )
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

x1e80100 SoC uses QMP phy with version v6.30 for PCIe Gen4 x8. Add the new
PCS offsets in a dedicated header file.

Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h
new file mode 100644
index 000000000000..9aa6d3622c24
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2024 Qualcomm Innovation Center. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V6_30_H_
+#define QCOM_PHY_QMP_PCS_V6_30_H_
+
+/* Only for QMP V6_30 PHY - PCIe PCS registers */
+#define	QPHY_V6_30_PCS_LOCK_DETECT_CONFIG2		0x0cc
+#define	QPHY_V6_30_PCS_G3S2_PRE_GAIN			0x17c
+#define	QPHY_V6_30_PCS_RX_SIGDET_LVL			0x194
+#define	QPHY_V6_30_PCS_ALIGN_DETECT_CONFIG7		0x1dc
+#define	QPHY_V6_30_PCS_TX_RX_CONFIG			0x1e0
+#define	QPHY_V6_30_PCS_TX_RX_CONFIG2			0x1e4
+#define	QPHY_V6_30_PCS_EQ_CONFIG4			0x1fc
+#define	QPHY_V6_30_PCS_EQ_CONFIG5			0x200
+
+#endif
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
