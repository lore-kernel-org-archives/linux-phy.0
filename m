Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23965C88E59
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gxRrUL4SQ8h+1Zd9JF2i/pxiqZW6AoVMimgjYlkRWmE=; b=rCLdBz1TQDJ4yT
	FUZLY4F/N01IvLVRSOj/ygUqi0+wMtKgQAbkH8D2RKMM1meDgEGHtbvAgfhGQ6/o1rD1JdbWDnQT7
	qdExIxTKOR1WcOHqKAis6P5yieGFEq4YQUVe+nQzmu4Tqxo7RHLrcJNrUerc8T4ZUncSYWYsWxEvo
	OFkdvUb+79KE9BbwM0QrEn1KhInawy+RFbSvAcTDtvVm/6fukmgAlHCbS+US4Bt+QrfrlQy6WWaU6
	AffN4kgD3RbOEjCdyI8DE31CMpFrAOFoB1s4s2qnaGD/O6kRrm1HHgbyqTbr9nz60i2bd1+I6I6R5
	nQSQZNVHyxvJ8eqOMvug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53KO-0000000H55e-3L7w;
	Fri, 11 Sep 2026 15:38:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53KM-0000000H54S-10Zf
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:38:11 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BEmEX13780626
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:38:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	upzPaWlpYkfrSddQ1mDr+WdQI/uJnfLhDS5vPD3iHGc=; b=UKUKSI2FeVhBuaSg
	Z96a8HxOO5o7Oc/dI9rps0wxMrAiwn6q/lcUP30hZ14ieCMOzpOk7Rfw62afLj4h
	KdFSoP15O9lVKcLTq58hVMw8zRRKjaHbrfsAQCGKtsMdbrfEmH4johQn1akNabJn
	HSDkKyvQrTFi75zt5m46MB7qeLYXcOSVVUi73YnOTWzyyStfCqE7yoZkpwwdl6Vm
	B67WLsJsksIfOz47hgqK6+zsLhOT3o2bspipslegJsAT6W5HzXMk4fiFzNDCYBrA
	EiatcG+4NMD0ZtW1U4puNKTEcrLhdff3ZIpKePW2mUX8BH8ebqrc3kVI3/tv6vRm
	wKvKbQ==
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmcgfj7rs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:38:09 +0000 (GMT)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-45e83fd0663so1252318fac.1
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 08:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789141089; x=1789745889; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=upzPaWlpYkfrSddQ1mDr+WdQI/uJnfLhDS5vPD3iHGc=;
        b=TFqPNGYNJZNctZoJAPvUvd9/L7CrV6W9TOhD557JOyWyvSRZKlEl3MZs8UVONbHzAE
         6qwKttcnCtulACCfjTCKJ43M8D7TdLLQXJhXMAP7klcydu48I8Zv/ULff9pWRYGXcn1G
         W8Dioyw+caStr3dS5X7Q42y1s2rrSSOeARdBEIgyb2Sp9QCtEIbKiBt8wVtG+UakkoJx
         YCPQdThLQpRXg85fhLMHxgriB+OAx7aL2S0WJ5hW+Dqe8hMKlwsJJo/75DxYC+V/579d
         2Y0OwWjn6q+3pdte7v+EAz2gST4/GjC91GSg4PLwgdrIzg0kngK/RYMTTtVU8QKaFYP5
         X2AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141089; x=1789745889;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=upzPaWlpYkfrSddQ1mDr+WdQI/uJnfLhDS5vPD3iHGc=;
        b=iIgp444pz8KWBARYjlle5w738r7qzXB0khC+mGiBtMkOPzMiLL/mL7lmeis2DSHlPc
         58ZYHWdJ4klapKLJSP4+JLGq5qGRYZIm1mCF96KEKDjWkKAYJ/Yxhzk0rv+SoRk3iNeP
         Z6vJS4Aurg5F0CyzPIrDYpm6kS9ip1kO2pLrXaUp1yME8ai/6/cFnxtlyptF9+f1Udrr
         9iRo/E0CDmfTTAC2Z05GlZuAwr1247kc0sb1zZWq2ho60cQMxbgKET79vcMA81cvkOBA
         oc2e7TfKOsjWMnyC1VgzQ543zJbjGISYVUIFJG+5YwpCBl5x8gyxn1mLQKHwSX3/OeF3
         LHkg==
X-Forwarded-Encrypted: i=1; AKwUvBwthG6D6LDooUkpKFJysHy52GHm63K6vngDuQUPcK8rPHoBg2hnXAgp91x9kv2/0LapK3+wRIudgYU=@lists.infradead.org
X-Gm-Message-State: AFuF++m4uTCmaJlYeyumuH0oRJ747TDEnAl58tt92+3Rk6I0Q+uilANz
	HW9M9x3lObzXO2sKAvNaS/BMRPtdi72Yh6kBTnHWmzibp6YHDte2hRiLQMXYArujU16xbBF/1by
	vZhcAn+fd+RO/9iGljui1GxAzG63cxZ3TVGjL9H/mKy2UUWe98jNQKWVDp/rIvTvZdP8M
X-Gm-Gg: AYBFou3Cuo574ajjbnSG/tbsGnr7lnaLCrBCR5uuF092rHuIUwPqmWc+GpM1fv9VcWn
	BDpyUdhgfttP+MLtatD+7gCUK0BdLEiwLL8WLxx5EhdcKoKIMyFOu1E5soSVnJ2Vyj1Nz2Je6fU
	lYYptMX6pv+bErlD/GsIJ5ImuBrOrk9cMGRy/Cxy/4MTUigOe97r0HOXnyaYK+HQ+MyqSUnxXhV
	GLzjrpzqsi/3/emDo7ScJp4Nw+L2BfpfchtEe2tZIroZaC+d6evv7ZocWamSp5ugceXDsyU+XEg
	+4h5pzYzDCpZDq5gJ/2zyYuOo7igQO68rdmqLV2Ywv/zc7AcAvuRmmEmWHdAj+XZ0d0EQ4gtZX7
	JjI7I94MTnSVvQM/62jpu5HFJY04=
X-Received: by 2002:a05:6870:e18e:b0:462:f377:8e0e with SMTP id 586e51a60fabf-47de7e627a9mr3865924fac.13.1789141088630;
        Fri, 11 Sep 2026 08:38:08 -0700 (PDT)
X-Received: by 2002:a05:6870:e18e:b0:462:f377:8e0e with SMTP id 586e51a60fabf-47de7e627a9mr3865901fac.13.1789141088231;
        Fri, 11 Sep 2026 08:38:08 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-47df90ff148sm1882160fac.14.2026.09.11.08.37.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:38:07 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 21:06:38 +0530
Subject: [PATCH 07/17] phy: qcom: edp: Add Nord-specific register offsets
MIME-Version: 1.0
Message-Id: <20260911-nord-drv-dt-v1-7-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
In-Reply-To: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789141012; l=2289;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=c2odpdO2vfgQoFUA7tiaM/+kgmxU4W7SmF+t2ifOrto=;
 b=RLHZeOgOT8EhVUQ/NgLwZ4eZ8AhVJ5fw2UNVqvVwvwmfzYZoHde7GpNOePPGDJPTY9xHBIAOK
 qEFA66ELQiKBLzd/dnrBKOZxtVvWpCtdR3pt4Xus9W/Sqs3Ot9anwiK
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX6XqGPKsBwgpe
 kk1BW4nNAmy5YpSmNGsdO/rRQG6J6qgcpC+fKbNHnOJohhhUr4ERBw+5fHHWft/wRJvjWTICk7U
 1t2A/S2mc37OFVZcoxSwxEhuN3S8BLEUsoXFOH5UnjZlRoSoQMciabm6s3ryY+ISZztNMm872zr
 PDhNr2lPXkLRwWwa2AIhZ0uxshcnxmJQg2PqYrKcyUeTqhGtkrNCjVAv3NaU6vuy+2zDQdPToxs
 8u6xMPV+tGNy/8QM1U003+Ab9b4y/hcpGodNIAYqhh/Ik2KS88XYHdGVj+JjB5rSiaIFfiyoBZw
 cvkewsHxnCTRdZk7LFZxGa2CV0AkP9fd6++B/nJDiijSIS1kD9APS3BJthGLzmkRcNQVNDk7yMX
 jiLzV8352weHNtCK17mELkyauu+kVpqbzHCCCnz4HvtYZ+/Q7Y2Uz5esxzSBczVzm4tE2KL+KfV
 380a0/Pbju7euMQeiaw==
X-Proofpoint-GUID: lge3zgEkVrUJjEomcDRYEaAKHnGhycFW
X-Proofpoint-ORIG-GUID: lge3zgEkVrUJjEomcDRYEaAKHnGhycFW
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX7aVH2SmePL81
 m9XqPP0yHLTza6Wl40vr3A7J0FigsBZQ+O8/WL6dHZqDlNBX+KP19dH2KtQBNX0IgYDkgI5RUqx
 NT1fYtr8BOgBfrCL0eOsAh1ANDh4kDY=
X-Authority-Analysis: v=2.4 cv=ULtIjyfy c=1 sm=1 tr=0 ts=6aa42061 cx=c_pps
 a=nSjmGuzVYOmhOUYzIAhsAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=hULVr2eflTS6rL-ZrBcA:9 a=QEXdDO2ut3YA:10
 a=1zu1i0D7hVQfj8NKfPKu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_083810_443819_E59BB110 
X-CRM114-Status: GOOD (  12.25  )
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

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Nord relocates several DP PHY and QSERDES v8 COM registers relative
to existing SoCs.  Add Nord-specific defines for the relocated and
new-only registers in phy-qcom-qmp-qserdes-dp-com-v8.h and
phy-qcom-edp.c so Nord sequences can reference them by name.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c                   | 10 ++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h |  3 +++
 2 files changed, 13 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index a3c893f72908..bf8a17336c7e 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -41,9 +41,19 @@
 
 #define DP_PHY_VCO_DIV                          0x0074
 #define DP_PHY_TX0_TX1_LANE_CTL                 0x007c
+/* Nord uses a different register layout; non-Nord value is 0x00a0 */
 #define DP_PHY_TX2_TX3_LANE_CTL                 0x00a0
+#define DP_PHY_TX2_TX3_LANE_CTL_NORD            0x00c0
 
+/* Nord uses a different register layout; non-Nord value is 0x00e0 */
 #define DP_PHY_STATUS                           0x00e0
+#define DP_PHY_STATUS_NORD                      0x0110
+#define DP_PHY_LDO_CFG                          0x00f0
+
+/* Nord-specific TX lane registers */
+#define DP_PHY_TX_LN0_DRV_LVL_NORD             0x00e4
+#define DP_PHY_TX_LN1_DRV_LVL_NORD             0x00e8
+#define TXn_TX_BAND_NORD                        0x0024
 
 /* LANE_TXn registers */
 #define TXn_CLKBUF_ENABLE                       0x0000
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
index 93edabb830af..008b17222a8d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
@@ -48,5 +48,8 @@
 #define DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1		0x2f4
 #define DP_QSERDES_V8_COM_CMN_STATUS			0x314
 #define DP_QSERDES_V8_COM_C_READY_STATUS		0x33c
+#define DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL_NORD		0x17c
+#define DP_QSERDES_V8_COM_CMN_STATUS_NORD		0x1d0
+#define DP_QSERDES_V8_COM_C_READY_STATUS_NORD		0x1f8
 
 #endif

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
