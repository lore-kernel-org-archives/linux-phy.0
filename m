Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DF89CAC597
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWhb4ksGhQK9IvUXY6A83iv9RWjK7K7hT+6DtPHf+PA=; b=FMyo2AwZ0HQ8Uw
	uSDhpJewDtgtimCGcYb1fHOPv8RHkmwN+M8xHEHE5Abzmn/tXjDu2k6jdZU0GHmm3GfPITV0lOs+y
	PSBSuZAG6StwPSKTwmVuQdLbUf57u9DrwsyYimDaxg+vFQTV+zSc4Y6ipTXLxT5SsSpT7xVdnElUx
	KBuRvBZsFUtCxuNOt/ynZ/+oLqixAwjYw6BObKquZLCj4iuJBosDuKiYvdCxUQEUs14Nv1bhmszgQ
	Q8KkskStJTZ3lBqmYqKBRdwYlLZW8Z+2ZyD3no0pOAqFjepVg/biRXnlkgoEjK4I2kSexUUk9AfDv
	ObYFdnDoaVddg+ETCmjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoA9-00000004eCI-0C00;
	Sat, 20 Sep 2025 03:21:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoA6-00000004eA0-1Bpq
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 03:21:23 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FYmS011327
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=8wTywRAWZXw
	EsR6jea+R90ywj5SpxQrORQMaOZpD3JU=; b=OQx1WTkjaW0Uwjd7nXBAwQPcMEA
	k0odHwB2Yl2ObTl6FDnhwzuX36qmkdeh6FIj07PxSGSrRxVmEdLtGHxJLOzV+0ar
	dqpB9jzTv56v4W2kTzV5sIJZVQSDW1kNgHhILTf+8nK96xamzUgRy8DRXAgnxJq4
	Z2MSt8oM4tXnzR8ULTHxQS43pminL7niK85YfJgS4LL8i9RXVpBetIsk6+xzZ3Pr
	ie+Yuf66kZest8DI9r5vrvfdwCgeI465WBftuyOAlE7omxEXtfyd1vucZUV7QBis
	joPuec6lt82bxIk1oyPP4y11YJW2tVTK/os94tSXvV5ga5BP1rtiKG4kLKw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxy4f99-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:21 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b54abd7e048so1833752a12.2
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 20:21:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338481; x=1758943281;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8wTywRAWZXwEsR6jea+R90ywj5SpxQrORQMaOZpD3JU=;
        b=Avd87S/2fWCK46e7a0rj2ozCMJxHKvBJV57/dIff7/iLNflkBlE2svrJC7ZRriLGw/
         h/388sCoAJyG2TA1iBgFmB5kGs2YlU0MxJhqIdoYf3x5yzwbenglAM1J4Oom6r+/Yzsx
         QxcliIlBnB3hwq+3MGZYdNU6wFu53hc7OJe+jo28EGCOwZGzBKnRS9JqZnsoxZn7YbNa
         /bTHJgWNwBi7loGUK0tT2t2dThMjTKc5tULFmYifWze9Kj6PBgBnlFGT2XM/BQAaGUNz
         lKMcniOp+iO7WCNaIZ9ZKtiuIMvJx8PMERJHqwi/Edp0htE6f8Fp94XUckLOvRkXD3yq
         0uiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBtnz0iHMI7QI6/oeMzLDiSmo30yWZem6bYjWpcaQTBjOINwMYUIe8JTuekjtTjKahn/juQtsyf5M=@lists.infradead.org
X-Gm-Message-State: AOJu0YxL7yPNlaMJSRYjOzULlwoBXJVl2yj2Lb2o/73X5TouDGSuYM6k
	tJNDymzvDjVldZfrHoEgiQkCRYp0SGM9EVcSZDbaHpvoDQRedMYaBsaZc0+PtiBtWGg3lB/i3j4
	3VXLoRM8HlJQ+7lt+oZWPAPER7IzwaMlmauPYkKCBN2xv7uZiUQi6wlVTbHnxOgNEYK+n
X-Gm-Gg: ASbGnctMigZnK1Qnlqsbyd7GLeTOGwzykpbRp7oPIahcaRipXWWnyCS+Xyc3zYrOSma
	6NLmPDhmsm2SlWV5h3/ZVtam+GaLSiMW0Rx1KyfaozqRGwV2c3nysYF9ylo5YH+9DACkkUiaONd
	Ps/jZyyIQ/GVCznM7SuCnDjtjCWy+5wk196QEVaCkl6h4JMykr/ABIRPv/jd6asoeSBf5DSMLH5
	eXRL7Cq3YiTX6I7yEZ+0rC08/M8SSMFSk5gauoLhnGG6wTTeGEhIoXeC1EmpNnK0iQxzXu1jLxk
	HEowp2dPXzddvjglWocitSeWBkWwEcFm+SZF3amQWWoG0NKA9xPvhWRKbfE3Rikr+d8tMs59rKJ
	RR9cNnYXBRrOhvzKu
X-Received: by 2002:a05:6a20:2450:b0:262:da1c:3c07 with SMTP id adf61e73a8af0-2925ca2505fmr8575275637.20.1758338480906;
        Fri, 19 Sep 2025 20:21:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTeTsjrwy1w14Gd3TIgIl2EfonPS5FLCrgXg1NffT2ZQwM0KDDeXlRThzHDQ9xy1TTBYJTRQ==
X-Received: by 2002:a05:6a20:2450:b0:262:da1c:3c07 with SMTP id adf61e73a8af0-2925ca2505fmr8575242637.20.1758338480474;
        Fri, 19 Sep 2025 20:21:20 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:19 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Elson Roy Serrao <quic_eserrao@quicinc.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 5/9] phy: qualcomm: Update the QMP clamp register for V6
Date: Fri, 19 Sep 2025 20:21:04 -0700
Message-Id: <20250920032108.242643-6-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX6ZgT15QzNJ3l
 by0zrCWT59z5KDMwZdu76MGD881cSribAolbODahtrbjgtt53MOxh4jnNf9cCWAMvXQ3QzXdxxl
 tlhx8iWnhZ3jTnmxIOwzf20FWONK2Sb3ETKS0eOkHmJP+V1/3H3ijW5NNDGnDG/frxNiHHP9KS4
 dO6zyIzkYCpXI31Dx7hNURx/TSz2m2PXPgVaVd70B2ElYxa+QPUcw0mdICfstWmtuQtMm6s3bfy
 MnXy+0q4ruMpN5KmWn0pzYpPPpm7MOfYNK/wt/8qfRVnYCXkq4FjKmRZmvDE2KPB8Vu7B0TJ2ve
 YfLhm1MrmHEC5VodayeBTY0ea3tOMNrNzkrhE0lLlb5oQwpsdv4cO/DsxeptHZWb0Dc8TSgiPYp
 ZHTW1oC4
X-Proofpoint-ORIG-GUID: 5qdJ-n59kTBO-QHD4xpvi45YRRaCD1WX
X-Authority-Analysis: v=2.4 cv=KJZaDEFo c=1 sm=1 tr=0 ts=68ce1db1 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=6zIwrvuT6hO6z1e-hKYA:9
 a=3WC7DwWrALyhR5TkjVHa:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 5qdJ-n59kTBO-QHD4xpvi45YRRaCD1WX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 adultscore=0 impostorscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_202122_331335_CADE02E4 
X-CRM114-Status: GOOD (  21.97  )
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

From: Elson Roy Serrao <quic_eserrao@quicinc.com>

QMP combo phy V6 and above use the clamp register from the PCS always on
(AON) address space.  Update the driver accordingly.

Signed-off-by: Elson Roy Serrao <quic_eserrao@quicinc.com>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 38 ++++++++++++++++---
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h    | 12 ++++++
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h   | 12 ++++++
 3 files changed, 57 insertions(+), 5 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index f07d097b129f..2a059d925679 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -28,7 +28,10 @@
 #include "phy-qcom-qmp-common.h"
 
 #include "phy-qcom-qmp.h"
+#include "phy-qcom-qmp-pcs-aon-v6.h"
 #include "phy-qcom-qmp-pcs-misc-v3.h"
+#include "phy-qcom-qmp-pcs-misc-v4.h"
+#include "phy-qcom-qmp-pcs-misc-v5.h"
 #include "phy-qcom-qmp-pcs-usb-v4.h"
 #include "phy-qcom-qmp-pcs-usb-v5.h"
 #include "phy-qcom-qmp-pcs-usb-v6.h"
@@ -71,6 +74,7 @@ enum qphy_reg_layout {
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
 	QPHY_PCS_POWER_DOWN_CONTROL,
+	QPHY_PCS_CLAMP_ENABLE,
 
 	QPHY_COM_RESETSM_CNTRL,
 	QPHY_COM_C_READY_STATUS,
@@ -98,6 +102,8 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V3_PCS_LFPS_RXTERM_IRQ_CLEAR,
 
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V3_PCS_MISC_CLAMP_ENABLE,
+
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V3_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V3_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V3_COM_CMN_STATUS,
@@ -123,6 +129,8 @@ static const unsigned int qmp_v45_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V4_PCS_MISC_CLAMP_ENABLE,
+
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V4_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V4_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V4_COM_CMN_STATUS,
@@ -148,6 +156,8 @@ static const unsigned int qmp_v5_5nm_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V5_PCS_MISC_CLAMP_ENABLE,
+
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V5_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V5_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V5_COM_CMN_STATUS,
@@ -173,6 +183,8 @@ static const unsigned int qmp_v6_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V6_PCS_AON_CLAMP_ENABLE,
+
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V6_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V6_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V6_COM_CMN_STATUS,
@@ -198,6 +210,8 @@ static const unsigned int qmp_v6_n4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V6_PCS_AON_CLAMP_ENABLE,
+
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V6_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V6_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V6_COM_CMN_STATUS,
@@ -1748,6 +1762,7 @@ struct qmp_combo_offsets {
 	u16 usb3_serdes;
 	u16 usb3_pcs_misc;
 	u16 usb3_pcs;
+	u16 usb3_pcs_aon;
 	u16 usb3_pcs_usb;
 	u16 dp_serdes;
 	u16 dp_txa;
@@ -1829,6 +1844,7 @@ struct qmp_combo {
 	void __iomem *tx2;
 	void __iomem *rx2;
 	void __iomem *pcs_misc;
+	void __iomem *pcs_aon;
 	void __iomem *pcs_usb;
 
 	void __iomem *dp_serdes;
@@ -1949,6 +1965,7 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v8 = {
 	.usb3_serdes	= 0x1000,
 	.usb3_pcs_misc	= 0x1c00,
 	.usb3_pcs	= 0x1e00,
+	.usb3_pcs_aon	= 0x2000,
 	.usb3_pcs_usb	= 0x2100,
 	.dp_serdes	= 0x3000,
 	.dp_txa		= 0x3400,
@@ -3309,6 +3326,7 @@ static void qmp_combo_enable_autonomous_mode(struct qmp_combo *qmp)
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs_usb = qmp->pcs_usb ?: qmp->pcs;
 	void __iomem *pcs_misc = qmp->pcs_misc;
+	void __iomem *pcs_aon = qmp->pcs_aon;
 	u32 intr_mask;
 
 	if (qmp->mode == PHY_MODE_USB_HOST_SS ||
@@ -3328,9 +3346,14 @@ static void qmp_combo_enable_autonomous_mode(struct qmp_combo *qmp)
 	/* Enable required PHY autonomous mode interrupts */
 	qphy_setbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL], intr_mask);
 
-	/* Enable i/o clamp_n for autonomous mode */
-	if (pcs_misc)
-		qphy_clrbits(pcs_misc, QPHY_V3_PCS_MISC_CLAMP_ENABLE, CLAMP_EN);
+	/*
+	 * Enable i/o clamp_n for autonomous mode
+	 * V6 and later versions use pcs aon clamp register
+	 */
+	if (pcs_aon)
+		qphy_clrbits(pcs_aon, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
+	else if (pcs_misc)
+		qphy_clrbits(pcs_misc, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
 }
 
 static void qmp_combo_disable_autonomous_mode(struct qmp_combo *qmp)
@@ -3338,10 +3361,13 @@ static void qmp_combo_disable_autonomous_mode(struct qmp_combo *qmp)
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs_usb = qmp->pcs_usb ?: qmp->pcs;
 	void __iomem *pcs_misc = qmp->pcs_misc;
+	void __iomem *pcs_aon = qmp->pcs_aon;
 
 	/* Disable i/o clamp_n on resume for normal mode */
-	if (pcs_misc)
-		qphy_setbits(pcs_misc, QPHY_V3_PCS_MISC_CLAMP_ENABLE, CLAMP_EN);
+	if (pcs_aon)
+		qphy_setbits(pcs_aon, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
+	else if (pcs_misc)
+		qphy_setbits(pcs_misc, cfg->regs[QPHY_PCS_CLAMP_ENABLE], CLAMP_EN);
 
 	qphy_clrbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
 		     ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL | ALFPS_DTCT_EN);
@@ -3934,6 +3960,8 @@ static int qmp_combo_parse_dt(struct qmp_combo *qmp)
 	qmp->serdes = base + offs->usb3_serdes;
 	qmp->pcs_misc = base + offs->usb3_pcs_misc;
 	qmp->pcs = base + offs->usb3_pcs;
+	if (offs->usb3_pcs_aon)
+		qmp->pcs_aon = base + offs->usb3_pcs_aon;
 	qmp->pcs_usb = base + offs->usb3_pcs_usb;
 
 	qmp->dp_serdes = base + offs->dp_serdes;
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
new file mode 100644
index 000000000000..52db31a7cf22
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2025, Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_AON_V6_H_
+#define QCOM_PHY_QMP_PCS_AON_V6_H_
+
+/* Only for QMP V6 PHY - PCS_AON registers */
+#define QPHY_V6_PCS_AON_CLAMP_ENABLE			0x00
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h
new file mode 100644
index 000000000000..77d04c6a1644
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_MISC_V5_H_
+#define QCOM_PHY_QMP_PCS_MISC_V5_H_
+
+/* Only for QMP V5 PHY - PCS_MISC registers */
+#define QPHY_V5_PCS_MISC_CLAMP_ENABLE			0x0c
+
+#endif

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
