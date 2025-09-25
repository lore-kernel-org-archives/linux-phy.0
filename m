Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8541ACAC5AA
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 07:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rN4G5wfGN390n+YSZlNoL2wuGDi3cUO5ewrt1ABHZO8=; b=EEA2spdt84n8AE
	VyvjEW4WQgfYiKTp03xTfe9iaGirbuzdYlL+vxIll/EuT2oPDvQOwAlCa4NvRfefgL1GRAHqelh0H
	GXISctspUicbbNfQgDwHzckY9VhJsJ3xbnO2TVT+09UHMaBA/9W4EXG9+BS31RO7lpUMzK2J7N3mK
	IRk8Wgs4xp3a9o9uLjkQej2B+5bYnyR9yK7PVryiB18EBum3btIUYfsXYTESt0SsiOadRUronPd0K
	RP2OEy85A2fDJooqLxltvoyQx8aI7qiJWuBGNRMfcOlgybeUqpanyMS0qfDfgIlQQCKRvHWAzYGcj
	nAtRDCg/Boan06RQiJAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g3r-00000006YXm-1EgN;
	Thu, 25 Sep 2025 07:06:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g3p-00000006YWr-1BI5
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 07:06:38 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1KVoP025099
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:06:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MQywDDAcWYT+0RdvqyfNhFfl3UTIYdzSA7Mm529kFnI=; b=UunmeKzBTA9Z0nDU
	r8ax4nQcrXC5dQ9QmEX+mk3kKuZisdQWK8EqLal7BQ3AygZ22eugc7zwkdMjVUIp
	/BSBtz2WZFRt6M21lPQy6HU2vOimJMIui+lv0CyW7wI19HzIiGzmqHn2VjB5eqjp
	qOvRG9EsdQH4c+k/JBdUDMSlRjG0/xyXiRyGfFqGxkjYnHXL4mKu3v+0yg56lXpV
	5a26glHX7FauC9ljjYrh7TXZJU+c4hJePuAuMlX5ETFo5ix9cgzMk0kdHSHKrb7i
	neuh1EvP3BzGTaYl2pd4FtFmPH0JUBzaMGW4317vNbYD5aGKmwJjvJFxTdQWZYxT
	3I398g==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyeyf4q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:06:36 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32eb3736080so159838a91.3
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:06:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758783996; x=1759388796;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MQywDDAcWYT+0RdvqyfNhFfl3UTIYdzSA7Mm529kFnI=;
        b=B1rAogeu4s53nIk8ZUWgbwSazFOWa7s/T2b8VZIcgoaTUx8i5i3RROSmPjBoZktGRK
         WCdW6DXMYcwaW7dkuzZvU7vce+wWsLs6Y3TQcY1jxXXJX0wQFWn9eZ5Phx7t0eFP3GJS
         YgDVs+GhkLEnQiJIAJ4tpuUZ8/w38bhWIK+F4PnLuWYuXyXsNtpZyUtJozfax1aj54av
         0HSZTv+fA/uEpdRHjJspCU5MZrqelBLk/sCBFbTUYpZEKIpvhP+cuAiCM5AxPTphwpkA
         Qm1p8OwDA/KjP0SmQl/D9QBGMa8hdZC33N3kU/oqkccHY4iXx31bK3D5yTercSJhiU+K
         9MJQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6MDYcBwOpOdvyQGJbolkYPJXBRWSETA2GiQ7fp2S3BPAaXRwoo4bA36OFObhv99Bg+FDx7nachtY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyxY36wYPT52JZE5c35YSzEb4rfQx6SEBtfCKgl1kLZ2zzFTbrs
	FJVlANDJG4k8GpBNpr8L0LQ1TCsEHw44e+nUiJsdYai2WAyElKrIJEhmZooBpfM5biEzTfkAmNa
	rWsvtAC8SZ+qYBs+GFhzNBdUWAb0KujFvFXFdM9Kgi/18qVCR+DVL7A7gHdQnt0/UN5bM
X-Gm-Gg: ASbGncsXTyD+t+Ap5CP/0DDz7lc0je/8F3fbqXHygkxe/xbKTjxd2qTysPJ9ql7n/Qv
	ZglrcPr+4mY/mIZe14P5O3tG93VDcPoTWdd9y4hWFsWXbdT02T373kT0cxJOb4m5krAhhE1nnme
	zeFdXw/6DIGiVoq78SNa/P4f7i0lKbGiEMTf9Kf2cFqoZpwmzS+ZaSDKXkBPdN74Gt3moVxW75O
	pawCZx5NYKiFb2+UmNpmb35OsgGGGQ2ObJYB2X9/BNB2jkUT0VHMCNIdFAzujxDqHAU6VAqfHMU
	/ajLB7oONIuJGGIei6OYAgLayHJgqH0YaY8YF709uc587VDA9LyIggTpf7rUAKat/z974qYCfSP
	w3by5fwNL4DuqP1xuet9LEIB36V+1+S9910Nwcb9luI5GhTG9Soh4gkHT
X-Received: by 2002:a17:90b:3b81:b0:32b:dfd7:e42c with SMTP id 98e67ed59e1d1-3342a2c67a0mr1337887a91.5.1758783995752;
        Thu, 25 Sep 2025 00:06:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFosRyM+6GEnuScK4jDXS++HjDM2WVQ0viagXKb/PMykPD/+ULtO+8PwQyGqvyyIvI7w9WFMQ==
X-Received: by 2002:a17:90b:3b81:b0:32b:dfd7:e42c with SMTP id 98e67ed59e1d1-3342a2c67a0mr1337850a91.5.1758783995039;
        Thu, 25 Sep 2025 00:06:35 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3342a2bd584sm914253a91.0.2025.09.25.00.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 00:06:34 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:04:57 +0800
Subject: [PATCH v6 11/14] phy: qcom: qmp: Add DP v2 PHY register
 definitions
MIME-Version: 1.0
Message-Id: <20250925-add-displayport-support-for-qcs615-platform-v6-11-419fe5963819@oss.qualcomm.com>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758783911; l=10561;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=wRcG6hvTUjOLE7118EUHmvDQXHvLMsHays/1bOGOLyY=;
 b=VJvdXOCocIzleU/aHl3LvHmehbFiSTll553k4328AFSkBzZF7cRrlS3XN1v11qGZO6RYHWLMH
 5cjmylgPSHdDM+9MWzA8oeQQFGYprOlAgtbpx+GSqhncGOfOXST3cX2
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-GUID: 50BkLI7hhrKCsxybilhAH_k6QvlTnHTm
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d4e9fc cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=7JoLr56Aoq0vruZkpkIA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX+tTR9ekHqACl
 nIZy4eqBMxFzN7yFZdAmWKF+Z0yVMwjmk5J/zht6aeNhYpFnacGpo9+IvD+eQBbfrp5UPlOAnSN
 KMp3DDTE0mhAIG6T82sCeXoNCIVGM3CGwH1UxfZEmJlBWqn5X+nKY8qHuREd7kyNkAbpdi7r5P2
 TApoZAeFI+AcCy+LnGPwSMMJSyrWWlc3xXLfpsl2whJqJXjVdwQzuEIhwUoq/L95Ra9AD7ioQFE
 AFjxk973KOjANj/sVh4GPpu57kTfMW+QvC2h/bFJQZokq6JK4qHR/+lkkrDlGIoDTapxrL+8vct
 2xlmt1wLg/HiDEZjAkWojwUuXOuiz9N085wOO5mq63+d50Lav24mK9QpUF8FgoKq2IU/1YB0TXm
 0447xc0C
X-Proofpoint-ORIG-GUID: 50BkLI7hhrKCsxybilhAH_k6QvlTnHTm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_000637_337522_5D687E91 
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

Add dedicated headers for DP v2 PHY, including QSERDES COM and TX/RX
register definitions.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v2.h      |  21 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v2.h | 106 +++++++++++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h    |  68 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |   3 +
 4 files changed, 198 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v2.h
new file mode 100644
index 0000000000000000000000000000000000000000..8b9572d3cdebb70a0f3811f129a40aa78e184638
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v2.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_DP_PHY_V2_H_
+#define QCOM_PHY_QMP_DP_PHY_V2_H_
+
+// /* Only for QMP V2 PHY - DP PHY registers */
+#define QSERDES_V2_DP_PHY_AUX_INTERRUPT_MASK		0x048
+#define QSERDES_V2_DP_PHY_AUX_INTERRUPT_CLEAR		0x04c
+#define QSERDES_V2_DP_PHY_AUX_BIST_CFG			0x050
+
+#define QSERDES_V2_DP_PHY_VCO_DIV			0x068
+#define QSERDES_V2_DP_PHY_TX0_TX1_LANE_CTL		0x06c
+#define QSERDES_V2_DP_PHY_TX2_TX3_LANE_CTL		0x088
+
+#define QSERDES_V2_DP_PHY_SPARE0			0x0ac
+#define QSERDES_V2_DP_PHY_STATUS			0x0c0
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v2.h
new file mode 100644
index 0000000000000000000000000000000000000000..3ea1884f35dd50a0bde9b213f193ac8ac6b77612
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v2.h
@@ -0,0 +1,106 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_COM_V2_H_
+#define QCOM_PHY_QMP_QSERDES_COM_V2_H_
+
+/* Only for QMP V2 PHY - QSERDES COM registers */
+#define QSERDES_V2_COM_ATB_SEL1				0x000
+#define QSERDES_V2_COM_ATB_SEL2				0x004
+#define QSERDES_V2_COM_FREQ_UPDATE			0x008
+#define QSERDES_V2_COM_BG_TIMER				0x00c
+#define QSERDES_V2_COM_SSC_EN_CENTER			0x010
+#define QSERDES_V2_COM_SSC_ADJ_PER1			0x014
+#define QSERDES_V2_COM_SSC_ADJ_PER2			0x018
+#define QSERDES_V2_COM_SSC_PER1				0x01c
+#define QSERDES_V2_COM_SSC_PER2				0x020
+#define QSERDES_V2_COM_SSC_STEP_SIZE1			0x024
+#define QSERDES_V2_COM_SSC_STEP_SIZE2			0x028
+#define QSERDES_V2_COM_POST_DIV				0x02c
+#define QSERDES_V2_COM_POST_DIV_MUX			0x030
+#define QSERDES_V2_COM_BIAS_EN_CLKBUFLR_EN		0x034
+#define QSERDES_V2_COM_CLK_ENABLE1			0x038
+#define QSERDES_V2_COM_SYS_CLK_CTRL			0x03c
+#define QSERDES_V2_COM_SYSCLK_BUF_ENABLE		0x040
+#define QSERDES_V2_COM_PLL_EN				0x044
+#define QSERDES_V2_COM_PLL_IVCO				0x048
+#define QSERDES_V2_COM_LOCK_CMP1_MODE0			0x04c
+#define QSERDES_V2_COM_LOCK_CMP2_MODE0			0x050
+#define QSERDES_V2_COM_LOCK_CMP3_MODE0			0x054
+#define QSERDES_V2_COM_LOCK_CMP1_MODE1			0x058
+#define QSERDES_V2_COM_LOCK_CMP2_MODE1			0x05c
+#define QSERDES_V2_COM_LOCK_CMP3_MODE1			0x060
+#define QSERDES_V2_COM_EP_CLOCK_DETECT_CTR		0x068
+#define QSERDES_V2_COM_SYSCLK_DET_COMP_STATUS		0x06c
+#define QSERDES_V2_COM_CLK_EP_DIV			0x074
+#define QSERDES_V2_COM_CP_CTRL_MODE0			0x078
+#define QSERDES_V2_COM_CP_CTRL_MODE1			0x07c
+#define QSERDES_V2_COM_PLL_RCTRL_MODE0			0x084
+#define QSERDES_V2_COM_PLL_RCTRL_MODE1			0x088
+#define QSERDES_V2_COM_PLL_CCTRL_MODE0			0x090
+#define QSERDES_V2_COM_PLL_CCTRL_MODE1			0x094
+#define QSERDES_V2_COM_PLL_CNTRL			0x09c
+#define QSERDES_V2_COM_BIAS_EN_CTRL_BY_PSM		0x0a8
+#define QSERDES_V2_COM_SYSCLK_EN_SEL			0x0ac
+#define QSERDES_V2_COM_CML_SYSCLK_SEL			0x0b0
+#define QSERDES_V2_COM_RESETSM_CNTRL			0x0b4
+#define QSERDES_V2_COM_RESETSM_CNTRL2			0x0b8
+#define QSERDES_V2_COM_LOCK_CMP_EN			0x0c8
+#define QSERDES_V2_COM_LOCK_CMP_CFG			0x0cc
+#define QSERDES_V2_COM_DEC_START_MODE0			0x0d0
+#define QSERDES_V2_COM_DEC_START_MODE1			0x0d4
+#define QSERDES_V2_COM_VCOCAL_DEADMAN_CTRL		0x0d8
+#define QSERDES_V2_COM_DIV_FRAC_START1_MODE0		0x0dc
+#define QSERDES_V2_COM_DIV_FRAC_START2_MODE0		0x0e0
+#define QSERDES_V2_COM_DIV_FRAC_START3_MODE0		0x0e4
+#define QSERDES_V2_COM_DIV_FRAC_START1_MODE1		0x0e8
+#define QSERDES_V2_COM_DIV_FRAC_START2_MODE1		0x0ec
+#define QSERDES_V2_COM_DIV_FRAC_START3_MODE1		0x0f0
+#define QSERDES_V2_COM_VCO_TUNE_MINVAL1			0x0f4
+#define QSERDES_V2_COM_VCO_TUNE_MINVAL2			0x0f8
+#define QSERDES_V2_COM_INTEGLOOP_INITVAL		0x100
+#define QSERDES_V2_COM_INTEGLOOP_EN			0x104
+#define QSERDES_V2_COM_INTEGLOOP_GAIN0_MODE0		0x108
+#define QSERDES_V2_COM_INTEGLOOP_GAIN1_MODE0		0x10c
+#define QSERDES_V2_COM_INTEGLOOP_GAIN0_MODE1		0x110
+#define QSERDES_V2_COM_INTEGLOOP_GAIN1_MODE1		0x114
+#define QSERDES_V2_COM_VCO_TUNE_MAXVAL1			0x118
+#define QSERDES_V2_COM_VCO_TUNE_MAXVAL2			0x11c
+#define QSERDES_V2_COM_VCO_TUNE_CTRL			0x124
+#define QSERDES_V2_COM_VCO_TUNE_MAP			0x128
+#define QSERDES_V2_COM_VCO_TUNE1_MODE0			0x12c
+#define QSERDES_V2_COM_VCO_TUNE2_MODE0			0x130
+#define QSERDES_V2_COM_VCO_TUNE1_MODE1			0x134
+#define QSERDES_V2_COM_VCO_TUNE2_MODE1			0x138
+#define QSERDES_V2_COM_VCO_TUNE_INITVAL1		0x13c
+#define QSERDES_V2_COM_VCO_TUNE_INITVAL2		0x140
+#define QSERDES_V2_COM_VCO_TUNE_TIMER1			0x144
+#define QSERDES_V2_COM_VCO_TUNE_TIMER2			0x148
+#define QSERDES_V2_COM_CMN_STATUS			0x15c
+#define QSERDES_V2_COM_RESET_SM_STATUS			0x160
+#define QSERDES_V2_COM_RESTRIM_CODE_STATUS		0x164
+#define QSERDES_V2_COM_PLLCAL_CODE1_STATUS		0x168
+#define QSERDES_V2_COM_PLLCAL_CODE2_STATUS		0x16c
+#define QSERDES_V2_COM_CLK_SELECT			0x174
+#define QSERDES_V2_COM_HSCLK_SEL			0x178
+#define QSERDES_V2_COM_INTEGLOOP_BINCODE_STATUS		0x17c
+#define QSERDES_V2_COM_PLL_ANALOG			0x180
+#define QSERDES_V2_COM_CORECLK_DIV			0x184
+#define QSERDES_V2_COM_SW_RESET				0x188
+#define QSERDES_V2_COM_CORE_CLK_EN			0x18c
+#define QSERDES_V2_COM_C_READY_STATUS			0x190
+#define QSERDES_V2_COM_CMN_CONFIG			0x194
+#define QSERDES_V2_COM_CMN_RATE_OVERRIDE		0x198
+#define QSERDES_V2_COM_SVS_MODE_CLK_SEL			0x19c
+#define QSERDES_V2_COM_DEBUG_BUS0			0x1a0
+#define QSERDES_V2_COM_DEBUG_BUS1			0x1a4
+#define QSERDES_V2_COM_DEBUG_BUS2			0x1a8
+#define QSERDES_V2_COM_DEBUG_BUS3			0x1ac
+#define QSERDES_V2_COM_DEBUG_BUS_SEL			0x1b0
+#define QSERDES_V2_COM_CMN_MISC1			0x1b4
+#define QSERDES_V2_COM_CMN_MISC2			0x1b8
+#define QSERDES_V2_COM_CORECLK_DIV_MODE1		0x1bc
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h
new file mode 100644
index 0000000000000000000000000000000000000000..34919720b7bc457ae9549e7c53864be01a27a9b3
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h
@@ -0,0 +1,68 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_V2_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_V2_H_
+
+/* Only for QMP V2 PHY - TX registers */
+#define QSERDES_V2_TX_BIST_MODE_LANENO			0x000
+#define QSERDES_V2_TX_CLKBUF_ENABLE			0x008
+#define QSERDES_V2_TX_TX_EMP_POST1_LVL			0x00c
+#define QSERDES_V2_TX_TX_DRV_LVL			0x01c
+#define QSERDES_V2_TX_RESET_TSYNC_EN			0x024
+#define QSERDES_V2_TX_PRE_STALL_LDO_BOOST_EN		0x028
+#define QSERDES_V2_TX_TX_BAND				0x02c
+#define QSERDES_V2_TX_SLEW_CNTL				0x030
+#define QSERDES_V2_TX_INTERFACE_SELECT			0x034
+#define QSERDES_V2_TX_RES_CODE_LANE_TX			0x03c
+#define QSERDES_V2_TX_RES_CODE_LANE_RX			0x040
+#define QSERDES_V2_TX_RES_CODE_LANE_OFFSET_TX		0x044
+#define QSERDES_V2_TX_RES_CODE_LANE_OFFSET_RX		0x048
+#define QSERDES_V2_TX_DEBUG_BUS_SEL			0x058
+#define QSERDES_V2_TX_TRANSCEIVER_BIAS_EN		0x05c
+#define QSERDES_V2_TX_HIGHZ_DRVR_EN			0x060
+#define QSERDES_V2_TX_TX_POL_INV			0x064
+#define QSERDES_V2_TX_PARRATE_REC_DETECT_IDLE_EN	0x068
+#define QSERDES_V2_TX_LANE_MODE_1			0x08c
+#define QSERDES_V2_TX_LANE_MODE_2			0x090
+#define QSERDES_V2_TX_LANE_MODE_3			0x094
+#define QSERDES_V2_TX_RCV_DETECT_LVL_2			0x0a4
+#define QSERDES_V2_TX_TRAN_DRVR_EMP_EN			0x0c0
+#define QSERDES_V2_TX_TX_INTERFACE_MODE			0x0c4
+#define QSERDES_V2_TX_VMODE_CTRL1			0x0f0
+
+/* Only for QMP V2 PHY - RX registers */
+#define QSERDES_V2_RX_UCDR_FO_GAIN			0x008
+#define QSERDES_V2_RX_UCDR_SO_GAIN_HALF			0x00c
+#define QSERDES_V2_RX_UCDR_SO_GAIN			0x014
+#define QSERDES_V2_RX_UCDR_SVS_SO_GAIN_HALF		0x024
+#define QSERDES_V2_RX_UCDR_SVS_SO_GAIN_QUARTER		0x028
+#define QSERDES_V2_RX_UCDR_SVS_SO_GAIN			0x02c
+#define QSERDES_V2_RX_UCDR_FASTLOCK_FO_GAIN		0x030
+#define QSERDES_V2_RX_UCDR_SO_SATURATION_AND_ENABLE	0x034
+#define QSERDES_V2_RX_UCDR_FASTLOCK_COUNT_LOW		0x03c
+#define QSERDES_V2_RX_UCDR_FASTLOCK_COUNT_HIGH		0x040
+#define QSERDES_V2_RX_UCDR_PI_CONTROLS			0x044
+#define QSERDES_V2_RX_RX_TERM_BW			0x07c
+#define QSERDES_V2_RX_VGA_CAL_CNTRL1			0x0bc
+#define QSERDES_V2_RX_VGA_CAL_CNTRL2			0x0c0
+#define QSERDES_V2_RX_RX_EQ_GAIN2_LSB			0x0c8
+#define QSERDES_V2_RX_RX_EQ_GAIN2_MSB			0x0cc
+#define QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL1		0x0d0
+#define QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL2		0x0d4
+#define QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL3		0x0d8
+#define QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL4		0x0dc
+#define QSERDES_V2_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1	0x0f8
+#define QSERDES_V2_RX_RX_OFFSET_ADAPTOR_CNTRL2		0x0fc
+#define QSERDES_V2_RX_SIGDET_ENABLES			0x100
+#define QSERDES_V2_RX_SIGDET_CNTRL			0x104
+#define QSERDES_V2_RX_SIGDET_LVL			0x108
+#define QSERDES_V2_RX_SIGDET_DEGLITCH_CNTRL		0x10c
+#define QSERDES_V2_RX_RX_BAND				0x110
+#define QSERDES_V2_RX_RX_INTERFACE_MODE			0x11c
+#define QSERDES_V2_RX_RX_MODE_00			0x164
+#define QSERDES_V2_RX_RX_MODE_01			0x168
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index f58c82b2dd23e1bda616d67ab7993794b997063b..1a9e4cc5aa11d6e18d97ce93d0e44c9a5afa3fbf 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -9,6 +9,9 @@
 #include "phy-qcom-qmp-qserdes-com.h"
 #include "phy-qcom-qmp-qserdes-txrx.h"
 
+#include "phy-qcom-qmp-qserdes-com-v2.h"
+#include "phy-qcom-qmp-qserdes-txrx-v2.h"
+
 #include "phy-qcom-qmp-qserdes-com-v3.h"
 #include "phy-qcom-qmp-qserdes-txrx-v3.h"
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
