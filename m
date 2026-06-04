Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D739DCD6E60
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 01:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BVYcfPjokemnWqcxBSJ0D8ivRA89x//d5ntDoQr3f0=; b=fq2PnpZvXlKty2
	pcspSt3+bWf5PsiZH+MsutZf+2mRD9Q5mikZDmypqzS8swHJd+f0dCfHDEBSoEqc+g3LPXGhsuXRW
	Bgn0sCcO4x+I+3IdHJo3RqIQMVMNM8U0/0jXL7f7KDGL9DjkF701nhqeEl6kDRQgx5DPyTu+W23sn
	ubXe0tqghnRoZu9ocTrZOWtnZ47YTwbggXgyLTDwrUjsdVIWcoCYdKdbuppcFZmMbWhEmWuSqjrDt
	U09erU7RPZPbmmtcne+wtBWs5TizBJwRRnzTfDZOMEdUE9CR7WfW5jOujxJaORQM4I56HKEsamGwI
	K+MLNpURmFPRnrVkaagQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxh-0000000G04g-2WFS;
	Thu, 04 Jun 2026 01:33:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxe-0000000G02d-3srT
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 01:33:32 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653I6YDx1993488
	for <linux-phy@lists.infradead.org>; Thu, 4 Jun 2026 01:33:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Qj0nAIAK4LBbELZANLlnfukG9vwKdKBxFr9Mk7W/Rt0=; b=CB76ZMtNypemFEeF
	qQ3EjQUm6YeKFBw1YhrrlI/dnadaFiXxnSPr6n51k9ZccFcqHzKVaj179IXDfJwV
	H62GkoYo+G76x5S2kXKRrDX75Ouf+G5Yx49o5zXSpk7gY1++quMuWqmbu6gdt+mQ
	YPu9l8VdInPTKVD0DFNLu7nHoKMIBkfAygJX+dPRuBuuBXwnSJgvuuct+hr5nmMp
	mYlmnhwUZH/XdlCvoU31yEpVd7Li5nbxuk+LmWD7FsONDwA4g8fOmMSxYCq3TQ4R
	tD3xERrtD6Z/9buyCV6ijhHlZDGU/YXSBdc0UCPGsC11G0CqVDMwpS9k43E3WaFB
	INI3DA==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejs8psdp9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 01:33:29 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-307625ee07fso546731eec.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 18:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780536809; x=1781141609; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qj0nAIAK4LBbELZANLlnfukG9vwKdKBxFr9Mk7W/Rt0=;
        b=f2ke6MUGXJs0RkJmp44PlR40vXzG8tQ1HDQianqpasiQyfTew/VIoiieCqYzsYROgh
         X0MrJH597MfIwXPYJqCcWdZ9329llA+ZvZj6Snk/0sKiYea0pPAr48VoBjkBmv3i3dEa
         A8SHRBdUhXihXELGKb8v9udGN37Ozk/gH3Whq7FGF2L9TmSCm1GMmBw7hpgFJtvYiQqd
         XrFPkG1qUIhv3nFxHEn1L6ub9WoWNXWU5ztmzB3MQ6O2WZ4v3FYGS/jKOYUaDvPl+22E
         O/29/JGXQmwExlgKH9WVMIGtSOao/2k34h70wyFQwbCBB8+5VQe2WWbqeqrbyqsu/rZR
         GKkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780536809; x=1781141609;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Qj0nAIAK4LBbELZANLlnfukG9vwKdKBxFr9Mk7W/Rt0=;
        b=Y5HiwCj8bZX6OC9NSi0JeMJQ15/OS9uWOA8qhzFYJ8ZfcJk/8YuEugIrFxQ2XhbnPK
         oy0FB1hXYNXsil0Q1nW9MkT/fEZ+zH9jCx6S7HPbj17BpX01XL7R50rhVoKdIv7ZuZ9E
         IVIPFFlEj4HlztRidHJqqzhb3otgGsxFXRsZBMqPP1Tlqa/di8cd2Od2XMIdk3DgdXqR
         SmH1G4MKhjTV7NoyKSQUS88rOTtSTOb+hsbxoOx6GfmYggD1crlkBQP+9OqXObkZH8/H
         1TWeqq+wYOeO8orFae6FHkfqxfnDvMxjvF9ORdTc07u1KW/TL7dtUHtfohUAnumwmGbk
         C5sA==
X-Forwarded-Encrypted: i=1; AFNElJ+YaMwRZdJ2i5tQ+6OJXoh8qDhUG319wrF7MWngcQKi+u4DzwPHh9T2bao9Ksa12EW5CVr5kJFmQGU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzxrOAP1Q09eYVvmsBj3bDxln2ETA45uSCPEoy8/LQGQSwMttGc
	yMv3c7Kp/Uw0J6Qh2YlUZBFzdzdVDqokNzOMZIelHBx2j+pUCJfHoGWMxvbHvJbDzWZCVdKAB6q
	tBw06rDI4CkCyhoVCvF0Uv8dsoePcXt1/p25JYbx7nxEXHYngiOwayjy7AttcyZbNmAJu4nxXYH
	WE
X-Gm-Gg: Acq92OHo7zrutlfPhUHu22hFxbjRR3cSpxCPeN8Gl7X9h7fIvy3ko6+7J4xY6+60tW8
	rhZbOdyonCboQNIqQU8GNSpwIn/t6zQPhxZW9EzLjE/Xq/qL+FDAB7/YKjLcEHfIxZtnvIqRTHP
	to62v4fbN5TECbO0PGgbBBHj1ju2ftQNXPj5hG8YqKvySdKlJ6KKcOz7DHDn1q1aopZB4tE8Bl5
	cjkpYyB5qrEvfhHQEjdbpPWfysuwTfEcDeg5Oh9zz1d3BZcHLN2zTiIEb3lYJ5U6YMS+Nr/gGnW
	C4aAlWShLIcBBQuH3fi6A3fsxIe4yrqocpOJGMO2smGZ57Jm0CwC+L6svDBu38w1OJm+wdnsxJI
	lcksmJw555nvZuT7UPBJPoE+nFfWW18N+9G4Uke5siAr++ZkJmewDH5YmZxIGj4j8qzAldw==
X-Received: by 2002:a05:7022:628e:b0:136:ac69:b0e8 with SMTP id a92af1059eb24-137f6a4bd62mr2547968c88.15.1780536808863;
        Wed, 03 Jun 2026 18:33:28 -0700 (PDT)
X-Received: by 2002:a05:7022:628e:b0:136:ac69:b0e8 with SMTP id a92af1059eb24-137f6a4bd62mr2547943c88.15.1780536808321;
        Wed, 03 Jun 2026 18:33:28 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-137f553ab33sm2870659c88.10.2026.06.03.18.33.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 18:33:27 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Thu, 04 Jun 2026 01:32:57 +0000
Subject: [PATCH v2 03/10] phy: qcom-qmp: qserdes-txrx: Add v10 register
 offsets
MIME-Version: 1.0
Message-Id: <20260604-hawi-phy-pcie-v2-3-be908d3560db@oss.qualcomm.com>
References: <20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com>
In-Reply-To: <20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780536795; l=3118;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=DOGsd2u7iW9cMvj4+PDQls+GBNWh6gWdVwXtre2Q3s8=;
 b=uaYrEDNuJbbZy9J793wtPHNpQiQdsFL+8+7sd3GhytiDOXqkbqwX/4XeGigQgGY/RRggOs+s3
 b/RIKu3k9J7B4erouqkmLTG9JDw+oF9oY9EFe6UbhRWo5yu5oggdIZQ
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-ORIG-GUID: W1G54Be72KIU1hxc2ZLF2OiYQclZlgDa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDAxMiBTYWx0ZWRfX5aR2A0divG+v
 kULm0KzIAhb3Qj6Ewp6jInouKmoXfpb6pO3KI2pg5WUYmptQU/u8UOMuk4yHzcah9oB6HwVlLG1
 sTAr+26zN2+KNDRGG3CXX5IaS4i5c2+KOAra03uA0GCg0d8HAFbJRgu6PNct6OAxBvdZu3QqT1x
 NAiGj5ZCfL/LMwbj0HW1imNU5hhZMxgv7uBgPGNa8uafC2qeF3IJ/HYzJPNaE4lhgx5AhfkweWG
 LujWRHPa27whU5hds7c0HunBDAUheq48cpGwFtZk/7MU4lX2Rt5V5VW6UUlFVLYu5UQP7roq2gQ
 ajnDKuHPaTrdjVLRMC/cfDBTmjNbWjeLec6a0UHOQ9ZC5kn2ZD5XxH4kMOeccClyvQaEQNoYfPE
 j64B9UNPh3LdHViflcN3wLTr6fktuQwax0g9UtnQ3Ne1C5Q+4jo+jh58gsSR3F9wY3hjdWq3+HE
 yidJtOO25MRSCySF6iQ==
X-Authority-Analysis: v=2.4 cv=E779Y6dl c=1 sm=1 tr=0 ts=6a20d5e9 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=A1tEKnX2-cfyyskZ8tQA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-GUID: W1G54Be72KIU1hxc2ZLF2OiYQclZlgDa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_01,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 impostorscore=0 malwarescore=0
 spamscore=0 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606040012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_183331_132318_EC9C9BD4 
X-CRM114-Status: GOOD (  13.58  )
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
