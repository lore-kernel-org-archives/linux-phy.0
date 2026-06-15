Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB0D6CD98C5
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 09:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26oZ/Bv7hN6AmVaw+REIJc00VUPeNyCmLIvu3wZ3Nro=; b=nY1mXD9jYl0OZ0
	OkeAM0E4AhHtBvAAtSaGsN6PjemRQGyghoWpVGDN+954S6Y9ABE4RlMC47G+xb8/RgDk7m4RRW/TT
	0ZCFa0YsZCXqeW/R3tV1ewAiF3mDrMC1uGVRaB/w/fQKL76cdgxILzPN7PbQq5+vqUobaRCuS4r8q
	X0ClMtUxzOL5qKLly5TZOEwvlF92AKo7mDSqqS/ZKyXzXTOk/Y01YzuRyR3QdIIZPSTYM88I7Jx2r
	Zcg+iWIPaE4nspt7f3trH//eEyZLHTssuBburYnxsHp4gEn+Hg4k813OI+ioJ5yrzaxnCt39nSnfH
	paClQwU31hdXkVu5f6cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ3Na-0000000DxEO-2Lhq;
	Mon, 15 Jun 2026 09:13:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ3NY-0000000DxDP-15Gj
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 09:13:13 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65F6KUWS3693529
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 09:13:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=GhBkRebi7G5
	yKNU0yo6QqpUxkZX5awKWkx6MgJMhcSo=; b=Vs2H1OglxxbLXqz6s/dHvA7P1qM
	tWamriaOBjWfWgBeM5MGEOONt+wqXqsOdRUVlmLfobSUSoeZ23aWH3CErAnhcMeA
	ZezjApzGLnSnOjWAYmNQVKa8HjwEZ0IMmrjWAiOSwyHNImGxINfEmzsZv7cdRG3x
	KMc9Y/V5tzK7gnU88bHSS4WTtW8Ntr0rIt6Avn0ihYEWk35V629D6DEiSILjPd72
	5XkkKWEQaUYCG6R1hb/MuPdoi4lfgPtcaWhYgYtVgHCLi5tL68fQAzM2MonfXqdU
	M+QrwyPQ5dL/vK9OEvlqJpOCx+FHwJ13rpCTaLcajUWCKm5b0GkU3BqDMqg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eryk6ehja-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 09:13:11 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2c2c98c1be2so23757495ad.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 02:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781514790; x=1782119590; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GhBkRebi7G5yKNU0yo6QqpUxkZX5awKWkx6MgJMhcSo=;
        b=Vv8PlPC+zEDZaY0cjnDKu/2XgxAXuwYbLTraxdnqHHl+jMVtv5h6+DNVAM7BKkWsEO
         f2NlfA4o3V478Olp3Wq38AdXeRzOVrIAJoO1mH+mZor15qAMLYqH4yfU42XtDb+I6xiU
         2CJNmSqjw/PYRtBh7z3GOe0z0mbDY7Ke5Iu9OYTQ85uiP4nEjA1rT8i68fHSuxw1It2e
         GASGs+BcYBlkdt3eKwiWQsJucqrpI95i5Q526aZ0xNFmEyeZVturOCqFIL8Vk80RoeH9
         VB+AxOP/rErpZuSX3L/nqJW5/9g9byN4KU22rJv4aNGnmRqntJYcNBH4m2vpz3gOM1kO
         QU8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781514790; x=1782119590;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GhBkRebi7G5yKNU0yo6QqpUxkZX5awKWkx6MgJMhcSo=;
        b=BBxC+Fw240jg60PdNFbEwYZw8I5J/LXGqFfgWjPT6U1HNcrvFkTpD164qxBXWn7RoY
         9GjkbSE41z6MmXllWaFoJjOTPKztXMbOZts0stTn10R7DAqEWosmwlfARdP2rA180V7w
         b0NSzTTprwy8fscBGyyIGvt2dGLMK06HM0263ozcOoFxSKfHIz/d8rzDPYTCGRDpafn6
         N2ElAsLu5RR+xYVrDS8t6utw/t5Z/HB0r59RSaeH/bnOzNTgCIfwtgQNYrjUnJIscwLP
         R2KsMR80MTvTfs3O4pgbVt8LdYNDkh86C0RAGHlUa8H2TveOxMUZD97F/u0wOe6wCoQV
         pWhw==
X-Forwarded-Encrypted: i=1; AFNElJ/7cGpdJV6i+fkmMu6hMjeOsAH0QpWuWj+Xb4XFkTHiPtpow/g/9PMVFDCbxf53l1GSlkCvVaNizSo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxEOpUxgGoi07zJ9CSerTqOUJdePau/PYw92B1cP/I8IKgQkQ7X
	r8grc9jROrkwCmmot+lGREo8J1TlhF6yvxD8nxFzYP0ORP0JuFM9lZ7JwZkipuBswJnEaqoKXSN
	zdgtqbDcFYZY0NTCxSHV5mwwN5YPnkMWHiDM/J4/DLreFZD2PCOp1Kguh1rw8BHKLv0xf
X-Gm-Gg: Acq92OFnTQhxHbhxZp6QQvwFRaQMe5vMkB6oaAtGW5NxO8tYUH+haqLY0C/pBkKrRxC
	0TA9SsgY4Fxu3ByYB6lx0TsjB+96QplRI37TUFsbodZfBA37tZxGXTZpEf27AQjlI4FlYZDhnFv
	AibQ5a4E36Qho1UuNbaZOpiR/gsHwF+V6LQrvVtD/q8RKaqdL+G9QlRXCC9AAkub2AVyaWyGRLU
	Ro5sPTSpal5SH5JQD3WbpoZj4C+7sT2mzaXzDQQA1OtqUNxaQfBJnq5ed0f43/xAVMdbRYwNqH8
	Zmr8YozkWSRGLd9zP5Kba3sLUmEeyX3xrbe60RtqvqsM2Cwc+QypozwMIfESauZZGkWsY6RZfSS
	CgQSOmOzxiNL51/OpjWjsiD4w0rTzPiM5YIn4GgWAzsxr6HsOU7Kg0A==
X-Received: by 2002:a17:903:247:b0:2c1:a19:8396 with SMTP id d9443c01a7336-2c413dbb942mr151474235ad.31.1781514789975;
        Mon, 15 Jun 2026 02:13:09 -0700 (PDT)
X-Received: by 2002:a17:903:247:b0:2c1:a19:8396 with SMTP id d9443c01a7336-2c413dbb942mr151473625ad.31.1781514789334;
        Mon, 15 Jun 2026 02:13:09 -0700 (PDT)
Received: from hu-pkambar-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c433079999sm91669065ad.66.2026.06.15.02.13.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 02:13:08 -0700 (PDT)
From: palash.kambar@oss.qualcomm.com
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        luca.weiss@fairphone.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Palash Kambar <palash.kambar@oss.qualcomm.com>
Subject: [PATCH v4 2/2] phy: qcom-qmp-ufs: Add UFS PHY support on Hawi
Date: Mon, 15 Jun 2026 14:42:42 +0530
Message-Id: <20260615091242.1617492-3-palash.kambar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260615091242.1617492-1-palash.kambar@oss.qualcomm.com>
References: <20260615091242.1617492-1-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE1MDA5NiBTYWx0ZWRfXxFJMdZtYhMD2
 H8+dU1QfRni3vcnK6G+8FB4Hjj8sdPE9SLGKgDcMDPVlK9mcbedyKyYrWrrS7lrv0dzdVxIqh03
 PLK1bK8ea96mdGBw94SeMUMY5KuxEUs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE1MDA5NiBTYWx0ZWRfX0hAaDmD7l1Pg
 iry7MCVknwWSRAy+DoHngPjIVRt9g3e7VnASdygz0sWPG+a32d8XKBUth97EbE4gc2E7JRkUYsb
 stRnLSuljTMyBGFHnZs3pCypDLY27c+RrJ8fb6F/uOWhxwRtGYjv4Shmt+HRaUzskbh+ZVt2TzJ
 D7E8OzdAGKy4THQtAYie52Rr/uXUZf9/KsVVD6puk1at3YLQFTIO9riG+ZJ6m/i8SQq2njOdJTY
 fDlHxdVLjr1aRWuqB+ZDveYeA5vCy/icPiljPsrorkuaw8AGaLF4mBkzjAKSPzJJAWLeGhi0bV6
 zo+YyF0KI3Kj7/5sy2MX3TptlOl7CdSANuJ93wX9YqAmD0aus8YqEajvEdEpdhpdePv5FrHXEVW
 t7mpX/3lHXqfELYyx5kTvTg7Dih1r8MXqP1o688lneeWF8FDlmDL1xEQ7/8SHuq3VcPV6x+z0V8
 zv3M7gPqcA+cbSLZjZg==
X-Authority-Analysis: v=2.4 cv=NrThtcdJ c=1 sm=1 tr=0 ts=6a2fc227 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=d9MzugbnVWS3ESvbmRYA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: vCsGpcSb9WVkPvWp6X-PrO7i-6jLdS6F
X-Proofpoint-ORIG-GUID: vCsGpcSb9WVkPvWp6X-PrO7i-6jLdS6F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-15_02,2026-06-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606150096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_021312_420633_595B35B4 
X-CRM114-Status: GOOD (  20.40  )
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

From: Palash Kambar <palash.kambar@oss.qualcomm.com>

Add the init sequence tables and config for the UFS QMP phy found in
the Hawi SoC.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h    |  24 +++
 .../qualcomm/phy-qcom-qmp-qserdes-com-v8.h    |  13 +-
 .../phy-qcom-qmp-qserdes-txrx-ufs-v8.h        |  37 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 139 ++++++++++++++++++
 4 files changed, 212 insertions(+), 1 deletion(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v8.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h
new file mode 100644
index 000000000000..e80d3dd6a190
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2026, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_UFS_V7_H_
+#define QCOM_PHY_QMP_PCS_UFS_V7_H_
+
+/* Only for QMP V7 PHY - UFS PCS registers */
+#define QPHY_V7_PCS_UFS_PHY_START			0x000
+#define QPHY_V7_PCS_UFS_POWER_DOWN_CONTROL		0x004
+#define QPHY_V7_PCS_UFS_SW_RESET			0x008
+#define QPHY_V7_PCS_UFS_PCS_CTRL1			0x01C
+#define QPHY_V7_PCS_UFS_PLL_CNTL			0x028
+#define QPHY_V7_PCS_UFS_TX_LARGE_AMP_DRV_LVL		0x02C
+#define QPHY_V7_PCS_UFS_TX_HSGEAR_CAPABILITY		0x060
+#define QPHY_V7_PCS_UFS_RX_HSGEAR_CAPABILITY		0x094
+#define QPHY_V7_PCS_UFS_LINECFG_DISABLE			0x140
+#define QPHY_V7_PCS_UFS_RX_SIGDET_CTRL2			0x150
+#define QPHY_V7_PCS_UFS_READY_STATUS			0x16c
+#define QPHY_V7_PCS_UFS_TX_MID_TERM_CTRL1		0x1b8
+#define QPHY_V7_PCS_UFS_MULTI_LANE_CTRL1		0x1c0
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
index d8ac4c4a2c31..d416113bcb3c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /*
- * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) 2026, The Linux Foundation. All rights reserved.
  */
 
 #ifndef QCOM_PHY_QMP_QSERDES_COM_V8_H_
@@ -71,5 +71,16 @@
 #define QSERDES_V8_COM_ADDITIONAL_MISC			0x1b4
 #define QSERDES_V8_COM_CMN_STATUS			0x2c8
 #define QSERDES_V8_COM_C_READY_STATUS			0x2f0
+#define QSERDES_V8_COM_PLL_IVCO_MODE1				0xf8
+#define QSERDES_V8_COM_CMN_IETRIM				0xfc
+#define QSERDES_V8_COM_CMN_IPTRIM				0x100
+#define QSERDES_V8_COM_VCO_TUNE_CTRL				0x13c
+#define QSERDES_V8_COM_ADAPTIVE_ANALOG_CONFIG			0x268
+#define QSERDES_V8_COM_CP_CTRL_ADAPTIVE_MODE0			0x26c
+#define QSERDES_V8_COM_PLL_RCCTRL_ADAPTIVE_MODE0		0x270
+#define QSERDES_V8_COM_PLL_CCTRL_ADAPTIVE_MODE0			0x274
+#define QSERDES_V8_COM_CP_CTRL_ADAPTIVE_MODE1			0x278
+#define QSERDES_V8_COM_PLL_RCCTRL_ADAPTIVE_MODE1		0x27c
+#define QSERDES_V8_COM_PLL_CCTRL_ADAPTIVE_MODE1			0x280
 
 #endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v8.h
new file mode 100644
index 000000000000..5f923c3e64ec
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v8.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2026, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_UFS_V8_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_UFS_V8_H_
+
+#define QSERDES_UFS_V8_TX_RES_CODE_LANE_OFFSET_TX		(0x34)
+#define QSERDES_UFS_V8_TX_RES_CODE_LANE_OFFSET_RX		(0x38)
+#define QSERDES_UFS_V8_TX_LANE_MODE_1				(0x80)
+#define QSERDES_UFS_V8_RX_UCDR_FO_GAIN_RATE2			(0x1BC)
+#define QSERDES_UFS_V8_RX_UCDR_FO_GAIN_RATE4			(0x1C4)
+#define QSERDES_UFS_V8_RX_UCDR_SO_GAIN_RATE4			(0x1DC)
+#define QSERDES_UFS_V8_RX_EQ_OFFSET_ADAPTOR_CNTRL1		(0x2C8)
+#define QSERDES_UFS_V8_RX_UCDR_PI_CONTROLS			(0x1E4)
+#define QSERDES_UFS_V8_RX_OFFSET_ADAPTOR_CNTRL3			(0x2D0)
+#define QSERDES_UFS_V8_RX_UCDR_FASTLOCK_COUNT_HIGH_RATE4	(0x120)
+#define QSERDES_UFS_V8_RX_UCDR_FASTLOCK_FO_GAIN_RATE4		(0xD4)
+#define QSERDES_UFS_V8_RX_UCDR_FASTLOCK_SO_GAIN_RATE4		(0xEC)
+#define QSERDES_UFS_V8_RX_VGA_CAL_MAN_VAL			(0x288)
+#define QSERDES_UFS_V8_RX_EQU_ADAPTOR_CNTRL4			(0x2B0)
+#define QSERDES_UFS_V8_RX_MODE_RATE_0_1_B4			(0x324)
+#define QSERDES_UFS_V8_RX_MODE_RATE4_SA_B7			(0x3B4)
+#define QSERDES_UFS_V8_RX_MODE_RATE4_SA_B9			(0x3BC)
+#define QSERDES_UFS_V8_RX_MODE_RATE4_SB_B7			(0x3E0)
+#define QSERDES_UFS_V8_RX_MODE_RATE4_SB_B9			(0x3E8)
+#define QSERDES_UFS_V8_RX_MODE_RATE5_SA_B7			(0x40C)
+#define QSERDES_UFS_V8_RX_MODE_RATE5_SA_B9			(0x414)
+#define QSERDES_UFS_V8_RX_MODE_RATE5_SB_B7			(0x438)
+#define QSERDES_UFS_V8_RX_MODE_RATE5_SB_B9			(0x440)
+#define QSERDES_UFS_V8_RX_UCDR_SO_SATURATION			(0xF4)
+#define QSERDES_UFS_V8_RX_TERM_BW_CTRL0				(0x1AC)
+#define QSERDES_UFS_V8_RX_DLL0_FTUNE_CTRL			(0x498)
+#define QSERDES_UFS_V8_RX_SIGDET_CAL_TRIM			(0x4d0)
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 0f4ad24aa405..d4aca22c181e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -29,9 +29,11 @@
 #include "phy-qcom-qmp-pcs-ufs-v4.h"
 #include "phy-qcom-qmp-pcs-ufs-v5.h"
 #include "phy-qcom-qmp-pcs-ufs-v6.h"
+#include "phy-qcom-qmp-pcs-ufs-v7.h"
 
 #include "phy-qcom-qmp-qserdes-txrx-ufs-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-ufs-v7.h"
+#include "phy-qcom-qmp-qserdes-txrx-ufs-v8.h"
 
 /* QPHY_PCS_READY_STATUS bit */
 #define PCS_READY				BIT(0)
@@ -84,6 +86,13 @@ static const unsigned int ufsphy_v6_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int ufsphy_v7_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_START_CTRL]		= QPHY_V7_PCS_UFS_PHY_START,
+	[QPHY_PCS_READY_STATUS]		= QPHY_V7_PCS_UFS_READY_STATUS,
+	[QPHY_SW_RESET]			= QPHY_V7_PCS_UFS_SW_RESET,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V7_PCS_UFS_POWER_DOWN_CONTROL,
+};
+
 static const struct qmp_phy_init_tbl milos_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xd9),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
@@ -1307,6 +1316,11 @@ static const struct regulator_bulk_data sm8750_ufsphy_vreg_l[] = {
 	{ .supply = "vdda-pll", .init_load_uA = 18300 },
 };
 
+static const struct regulator_bulk_data hawi_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 324000 },
+	{ .supply = "vdda-pll", .init_load_uA = 27000 },
+};
+
 static const struct qmp_ufs_offsets qmp_ufs_offsets = {
 	.serdes		= 0,
 	.pcs		= 0xc00,
@@ -1325,6 +1339,15 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v6 = {
 	.rx2		= 0x1a00,
 };
 
+static const struct qmp_ufs_offsets qmp_ufs_offsets_v7 = {
+	.serdes		= 0,
+	.pcs		= 0x0400,
+	.tx		= 0x2000,
+	.rx		= 0x2000,
+	.tx2		= 0x3000,
+	.rx2		= 0x3000,
+};
+
 static const struct qmp_phy_cfg milos_ufsphy_cfg = {
 	.lanes			= 2,
 
@@ -1845,6 +1868,119 @@ static const struct qmp_phy_cfg sm8750_ufsphy_cfg = {
 
 };
 
+static const struct qmp_phy_init_tbl hawi_ufsphy_serdes[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SYSCLK_EN_SEL, 0xd9),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_HSCLK_SEL_1, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP_EN, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP_CFG, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_IVCO, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_IVCO_MODE1, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CMN_IETRIM, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CMN_IPTRIM, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_TUNE_MAP, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_TUNE_CTRL, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_ADAPTIVE_ANALOG_CONFIG, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DEC_START_MODE0, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CP_CTRL_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_RCTRL_MODE0, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_CCTRL_MODE0, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CP_CTRL_ADAPTIVE_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_RCCTRL_ADAPTIVE_MODE0, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_CCTRL_ADAPTIVE_MODE0, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP1_MODE0, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP2_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x92),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x1e),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DEC_START_MODE1, 0x4c),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CP_CTRL_MODE1, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_RCTRL_MODE1, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_CCTRL_MODE1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CP_CTRL_ADAPTIVE_MODE1, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_RCCTRL_ADAPTIVE_MODE1, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_CCTRL_ADAPTIVE_MODE1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP1_MODE1, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP2_MODE1, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xbe),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x23),
+};
+
+static const struct qmp_phy_init_tbl hawi_ufsphy_tx[] = {
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_TX_LANE_MODE_1, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_TX_RES_CODE_LANE_OFFSET_TX, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_TX_RES_CODE_LANE_OFFSET_RX, 0x17),
+};
+
+static const struct qmp_phy_init_tbl hawi_ufsphy_rx[] = {
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_UCDR_FO_GAIN_RATE2, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_UCDR_FO_GAIN_RATE4, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_UCDR_SO_GAIN_RATE4, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_UCDR_PI_CONTROLS, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_OFFSET_ADAPTOR_CNTRL3, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_UCDR_FASTLOCK_COUNT_HIGH_RATE4, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_UCDR_FASTLOCK_FO_GAIN_RATE4, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_UCDR_FASTLOCK_SO_GAIN_RATE4, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_VGA_CAL_MAN_VAL, 0x8e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_EQU_ADAPTOR_CNTRL4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_MODE_RATE_0_1_B4, 0xb8),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_MODE_RATE4_SA_B7, 0x66),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_MODE_RATE4_SA_B9, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_MODE_RATE4_SB_B7, 0x66),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_MODE_RATE4_SB_B9, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_MODE_RATE5_SA_B7, 0x66),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_MODE_RATE5_SA_B9, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_MODE_RATE5_SB_B7, 0x66),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_MODE_RATE5_SB_B9, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_UCDR_SO_SATURATION, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_TERM_BW_CTRL0, 0xfa),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_DLL0_FTUNE_CTRL, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_RX_SIGDET_CAL_TRIM, 0x77),
+};
+
+static const struct qmp_phy_init_tbl hawi_ufsphy_pcs[] = {
+	QMP_PHY_INIT_CFG(QPHY_V7_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
+	QMP_PHY_INIT_CFG(QPHY_V7_PCS_UFS_PCS_CTRL1, 0x42),
+	QMP_PHY_INIT_CFG(QPHY_V7_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_V7_PCS_UFS_RX_SIGDET_CTRL2, 0x68),
+	QMP_PHY_INIT_CFG(QPHY_V7_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
+};
+
+static const struct qmp_phy_init_tbl hawi_ufsphy_g5_pcs[] = {
+	QMP_PHY_INIT_CFG(QPHY_V7_PCS_UFS_PLL_CNTL, 0x3b),
+	QMP_PHY_INIT_CFG(QPHY_V7_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x05),
+	QMP_PHY_INIT_CFG(QPHY_V7_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x05),
+};
+
+static const struct qmp_phy_cfg hawi_ufsphy_cfg = {
+	.lanes			= 2,
+
+	.offsets		= &qmp_ufs_offsets_v7,
+	.max_supported_gear	= UFS_HS_G5,
+
+	.tbls = {
+		.serdes		= hawi_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(hawi_ufsphy_serdes),
+		.tx		= hawi_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(hawi_ufsphy_tx),
+		.rx		= hawi_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(hawi_ufsphy_rx),
+		.pcs		= hawi_ufsphy_pcs,
+		.pcs_num	= ARRAY_SIZE(hawi_ufsphy_pcs),
+	},
+
+	.tbls_hs_overlay[0] = {
+		.pcs		= hawi_ufsphy_g5_pcs,
+		.pcs_num	= ARRAY_SIZE(hawi_ufsphy_g5_pcs),
+		.max_gear	= UFS_HS_G5,
+	},
+
+	.vreg_list		= hawi_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(hawi_ufsphy_vreg_l),
+	.regs			= ufsphy_v7_regs_layout,
+};
+
 static void qmp_ufs_serdes_init(struct qmp_ufs *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	void __iomem *serdes = qmp->serdes;
@@ -2259,6 +2395,9 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 
 static const struct of_device_id qmp_ufs_of_match_table[] = {
 	{
+		.compatible = "qcom,hawi-qmp-ufs-phy",
+		.data = &hawi_ufsphy_cfg,
+	}, {
 		.compatible = "qcom,milos-qmp-ufs-phy",
 		.data = &milos_ufsphy_cfg,
 	}, {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
