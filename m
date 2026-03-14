Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 659A7107BCF8
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 05:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=watBGjor2SrRRYYLO5pBG/Db4HlnaTpKC8ZZw9DAOLw=; b=THVmwXL7KEr5Qr
	V6mG2D4kFTMb8PfHDEHBLiUvYs8tqulRY1hZVFa7HlZgoRi2Abjq/3kQ7Hlh8R/pHULz7wSc26n9a
	SpB/I5SCHDaeuoQmBZxvZpt3xjuHPokfvFRu8H+nXGbgDZnVFVlLwVKyTDb/D6en3/Zdh3d1cCE7M
	hbJFJLUSBoGFJWoM4T6SOQu2Was/w3jLxiYBPT/T+jEIcKdRBgL7MV6Evx4Qe1QxYKYxKrv8IlkEk
	lB1azF+2vmTPZ9gXKWlw8pvLiJAYWqVwJhQFRW9VoyzECwIkc+uzYi2Bq8pPYACF2znOCnFublIOX
	VSLckf2NwBykAafFYhQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HL3-00000001WI8-0KMa;
	Sat, 14 Mar 2026 05:15:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HKl-00000001Vzi-0spn
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 05:14:49 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E4djbp4128364
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:14:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=a0e61A+lFYo
	HDi+m9I3WYxkbeSxlXIa7ThAt/Db262A=; b=Kpx4Z1nYFjqcKwS0TrN13XtxJ1e
	HQmerNXKeNy9Sci606IT8OO5W529SdKWD9wSTQ/Jq0HyArYzAURFXmavvoGpKsB+
	vxvwfuU+ZC5n6nu0TF2rF4q3tiy6ETWjuXMZr4kEJM8La1wbdyGv4k4cPcBeEb1G
	6YVskiBPFk1EBnc31/H9r5A3anOVcRuSJST0O3oP+VG9eTGxqOaxyvf3IQwYpi5V
	OOfvE6qEkMsd/UteZG0DdXG01M4CcWV2vKJ47mxUJK0iRbxNcUoH1mPM3C/wNAVQ
	QfUxd/oHaxzbtZCiXYLWfBqmAcAnSuap1nvuXphgLg5Kgew1j4Zam8ohSfw==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw0udg1tn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:14:42 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-128d0a51897so18543387c88.0
        for <linux-phy@lists.infradead.org>; Fri, 13 Mar 2026 22:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773465282; x=1774070082; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a0e61A+lFYoHDi+m9I3WYxkbeSxlXIa7ThAt/Db262A=;
        b=B5AsjoqCx6a51R6SwEoE2k4mgFufYlj5k8vk6Wdv7JninXeH+g4hlA2gRNgbOXi+yT
         iROwsT4BjB/6MIHlrUyDBd1tZV8wWnZmVo2E7lKg/tpzD5pH9jIqa0ZqKwWawk7Ho2q7
         lq9BEyd2j1HaamzGEP+Gn+8t0gwn6HcYSo5I82iBaet2DCsqGjpDodC/vbY+r46s7IM2
         MVEvsuDxHA6qeoXRxqm56IciXHK0pfcvcNWs8lBbjg0jRFCANeRXo7uvW5yGHs2HiXv4
         QogYNsy5mY1rxpXMXK+FEzN/oWSpRclTwbCsiE+LWEkybbj/Hzkt8UcHEi+RCjeIxeWY
         0G6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773465282; x=1774070082;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a0e61A+lFYoHDi+m9I3WYxkbeSxlXIa7ThAt/Db262A=;
        b=eQDqI0FFIjmT4yVdiqgoUw023WDeXdIJZkYB+UrnhBj65bw/3T4z+y5+OP5Z6Fy4Ug
         BJJgepr6xvKk1owBqJuz90uc3cuZf+aLv3xwMsBlgPGbtwbhGiUMk8yc9NVI0K1akzPn
         +IC9VVzlD7YwlBFLXLVstMR2Rp+sU/dVrGGtryR24d1vymYQ7oH/HvAwHqAAxvOfcdwl
         6MzAZDvLgvQnadc0wypuwwLq5fJ6PC7iho4NSIah+I0X3N0X2ORpBQBHbkwTWJJRGSHh
         JfRaMl1fGCg2uDHPmvFHFDON9IqXYb1d/UoOco7R7JwvzMC7iGMvWqzgv4z/ZbbVOfWt
         R0Tw==
X-Forwarded-Encrypted: i=1; AJvYcCVBlkPLisO3S+p/JKzco+UcXlDHf9PIX1RyOlbTJuWK/NJQzzYVELiaCoiAUUv2LXKrp/cr6HJQx4I=@lists.infradead.org
X-Gm-Message-State: AOJu0YyBw695Q0qNJQP5H03aqvCxi2ncRS+6Vh37BdGtMdWNbq9lo45o
	FvktbwbbRERoChsgOvJGj4DC4WrxLr0rJcnsMMCvPYuEQQQ0jXomrzFKQovHoyInNiVs8IBgZFF
	3p/soylOY/6w9O6ENi4oCpgnOpj6i/PJhIrtcC+nJLYNk86pDefeTRlUEhP0QQFLEsTSuPrhmYH
	mK
X-Gm-Gg: ATEYQzwqJ3cj6kZqzhpmOSDTo1YlX0AXOMVHAlodKBo9sCpEQYsl7C2pv7miKnI0c5X
	OJF4k4emH0b8HEMZjjOieY2lfT8TgJFVGnrYUIv1WLMlDVvS0+7G0+kcMUDKSN8a0uloEX4ZDtX
	3Axd1UzZVjkDDKQodrrD27RfEMRcVfKJGS+iKKIm0MBrPHa3V0M2HaAo7MsveGCa/99mQvyiUEY
	JlqCGyeRIQToAsuDk1TnaB5mWCo/N58bUHs13RrTCWvsMCUfFmBIHbPEusjrbF8Z0YrUN+z9Y9/
	vMMqQufctCpmx9ugMomtfZrCB5ROAXt5LUqW789G5r509ceaTgzjoM/DIADXiOHsVy0dZnZZTET
	SSSWYF3BK7ZOMvTf4hOlD8TKBn4c8Q5pvZeJWE7o3Euicij1UbxOV1TseGkCBc2otUkJxLr8FNw
	Q8eKfKhg==
X-Received: by 2002:a05:7022:e21:b0:128:d4be:7428 with SMTP id a92af1059eb24-128f3d9197emr2798373c88.19.1773465281337;
        Fri, 13 Mar 2026 22:14:41 -0700 (PDT)
X-Received: by 2002:a05:7022:e21:b0:128:d4be:7428 with SMTP id a92af1059eb24-128f3d9197emr2798354c88.19.1773465280675;
        Fri, 13 Mar 2026 22:14:40 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c098cbd4dasm1784045eec.0.2026.03.13.22.14.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 22:14:40 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH 6/6] phy: qcom-qmp: Make QSERDES TXRX v2 registers explicit
Date: Sat, 14 Mar 2026 13:13:25 +0800
Message-ID: <20260314051325.198137-7-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
References: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=BJ2+bVQG c=1 sm=1 tr=0 ts=69b4eec2 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=HmBPgOZM63ur2ZWdtjIA:9 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-GUID: xSAkYZJ7MBRXqvC2kHSSKIbNt6JVaQe-
X-Proofpoint-ORIG-GUID: xSAkYZJ7MBRXqvC2kHSSKIbNt6JVaQe-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDAzOCBTYWx0ZWRfXzNK1BAF0f2qq
 b2B7xRJc0LNT8mM/if40P5za1YRTQhd+WQ8g26xYxdFVyw/ZJy4zm4IL5DCy6fcMqVYC2AgT2AD
 c/sCByzbTcIDdl0MyYgEvVOO8yh21g9Do5LfT60FTTv4RIlxzmOkU9Q1ldWY4lcJHwCvPHwn5DB
 pyRpgtyoFp0dQ79es1aKl2HvJSxcKCyuikCglSxKXUbiwv+BnuC+pqCEG0WsB5efE/OqIcb9x02
 qRCyA/lOWQdf3M1WJvhbN4uJe67zorYrynPtfr4lZRB6/PgAi0dPiz1iO+f+SrD/cn8LxJwPMqU
 ckC84rH1/jVlJ/1qAl6Idd8iocQO2cs/z6C/PRDHxClMORmjG1GipHCoX1VyXdp6Yx+7sXCkKrn
 2ugD4XEhgDGbaGAJG360Hh71Ca7idKfPNtGiFxbn3SHAO7yL1NBJpRDeDCYWf+t3LKpX+QfL+1v
 sKr11VJp9r3o/ZlAouw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_01,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 lowpriorityscore=0 adultscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603140038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_221443_608981_41133FEC 
X-CRM114-Status: GOOD (  15.51  )
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

Rename QSERDES TXRX v2 registers and the header to make version
explicit.

Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  |  24 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  50 ++---
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h   | 205 ++++++++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h  | 205 ------------------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  60 ++---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  74 +++----
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   3 +-
 7 files changed, 310 insertions(+), 311 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h
 delete mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 24b5d66e9ecf..37e96493b722 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -105,21 +105,21 @@ static const struct qmp_phy_init_tbl msm8996_pcie_serdes_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl msm8996_pcie_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
-	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_LANE_MODE, 0x06),
 };
 
 static const struct qmp_phy_init_tbl msm8996_pcie_rx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_ENABLES, 0x1c),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4, 0xdb),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_BAND, 0x18),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN_HALF, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x4b),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x14),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_LVL, 0x19),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL2, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL3, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL4, 0xdb),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_BAND, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_SO_GAIN, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_SO_GAIN_HALF, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x4b),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_DEGLITCH_CNTRL, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_LVL, 0x19),
 };
 
 static const struct qmp_phy_init_tbl msm8996_pcie_pcs_tbl[] = {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index aa2f8da93a02..75afbd15aaf4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -352,22 +352,22 @@ static const struct qmp_phy_init_tbl ipq8074_pcie_serdes_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl ipq8074_pcie_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
-	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x6),
-	QMP_PHY_INIT_CFG(QSERDES_TX_RES_CODE_LANE_OFFSET, 0x2),
-	QMP_PHY_INIT_CFG(QSERDES_TX_RCV_DETECT_LVL_2, 0x12),
-	QMP_PHY_INIT_CFG(QSERDES_TX_TX_EMP_POST1_LVL, 0x36),
-	QMP_PHY_INIT_CFG(QSERDES_TX_SLEW_CNTL, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_LANE_MODE, 0x6),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_RES_CODE_LANE_OFFSET, 0x2),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_TX_EMP_POST1_LVL, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_SLEW_CNTL, 0x0a),
 };
 
 static const struct qmp_phy_init_tbl ipq8074_pcie_rx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_ENABLES, 0x1c),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x14),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x1),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x0),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4, 0xdb),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x4b),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN, 0x4),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_DEGLITCH_CNTRL, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL2, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL3, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL4, 0xdb),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x4b),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_SO_GAIN, 0x4),
 };
 
 static const struct qmp_phy_init_tbl ipq8074_pcie_pcs_tbl[] = {
@@ -796,21 +796,21 @@ static const struct qmp_phy_init_tbl qcs615_pcie_serdes_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl qcs615_pcie_rx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_ENABLES, 0x1c),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x14),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x1),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x0),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4, 0xdb),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x4b),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN, 0x4),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN_HALF, 0x4),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_DEGLITCH_CNTRL, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL2, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL3, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL4, 0xdb),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x4b),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_SO_GAIN, 0x4),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_SO_GAIN_HALF, 0x4),
 };
 
 static const struct qmp_phy_init_tbl qcs615_pcie_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
-	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x6),
-	QMP_PHY_INIT_CFG(QSERDES_TX_RES_CODE_LANE_OFFSET, 0x2),
-	QMP_PHY_INIT_CFG(QSERDES_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_LANE_MODE, 0x6),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_RES_CODE_LANE_OFFSET, 0x2),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_RCV_DETECT_LVL_2, 0x12),
 };
 
 static const struct qmp_phy_init_tbl qcs615_pcie_pcs_tbl[] = {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h
new file mode 100644
index 000000000000..9ae0cf95e317
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h
@@ -0,0 +1,205 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_V2_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_V2_H_
+
+/* Only for QMP V2 PHY - TX registers */
+#define QSERDES_V2_TX_BIST_MODE_LANENO				0x000
+#define QSERDES_V2_TX_BIST_INVERT				0x004
+#define QSERDES_V2_TX_CLKBUF_ENABLE				0x008
+#define QSERDES_V2_TX_CMN_CONTROL_ONE				0x00c
+#define QSERDES_V2_TX_CMN_CONTROL_TWO				0x010
+#define QSERDES_V2_TX_CMN_CONTROL_THREE				0x014
+#define QSERDES_V2_TX_TX_EMP_POST1_LVL				0x018
+#define QSERDES_V2_TX_TX_POST2_EMPH				0x01c
+#define QSERDES_V2_TX_TX_BOOST_LVL_UP_DN			0x020
+#define QSERDES_V2_TX_HP_PD_ENABLES				0x024
+#define QSERDES_V2_TX_TX_IDLE_LVL_LARGE_AMP			0x028
+#define QSERDES_V2_TX_TX_DRV_LVL				0x02c
+#define QSERDES_V2_TX_TX_DRV_LVL_OFFSET				0x030
+#define QSERDES_V2_TX_RESET_TSYNC_EN				0x034
+#define QSERDES_V2_TX_PRE_STALL_LDO_BOOST_EN			0x038
+#define QSERDES_V2_TX_TX_BAND					0x03c
+#define QSERDES_V2_TX_SLEW_CNTL					0x040
+#define QSERDES_V2_TX_INTERFACE_SELECT				0x044
+#define QSERDES_V2_TX_LPB_EN					0x048
+#define QSERDES_V2_TX_RES_CODE_LANE_TX				0x04c
+#define QSERDES_V2_TX_RES_CODE_LANE_RX				0x050
+#define QSERDES_V2_TX_RES_CODE_LANE_OFFSET			0x054
+#define QSERDES_V2_TX_PERL_LENGTH1				0x058
+#define QSERDES_V2_TX_PERL_LENGTH2				0x05c
+#define QSERDES_V2_TX_SERDES_BYP_EN_OUT				0x060
+#define QSERDES_V2_TX_DEBUG_BUS_SEL				0x064
+#define QSERDES_V2_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN		0x068
+#define QSERDES_V2_TX_TX_POL_INV				0x06c
+#define QSERDES_V2_TX_PARRATE_REC_DETECT_IDLE_EN		0x070
+#define QSERDES_V2_TX_BIST_PATTERN1				0x074
+#define QSERDES_V2_TX_BIST_PATTERN2				0x078
+#define QSERDES_V2_TX_BIST_PATTERN3				0x07c
+#define QSERDES_V2_TX_BIST_PATTERN4				0x080
+#define QSERDES_V2_TX_BIST_PATTERN5				0x084
+#define QSERDES_V2_TX_BIST_PATTERN6				0x088
+#define QSERDES_V2_TX_BIST_PATTERN7				0x08c
+#define QSERDES_V2_TX_BIST_PATTERN8				0x090
+#define QSERDES_V2_TX_LANE_MODE					0x094
+#define QSERDES_V2_TX_IDAC_CAL_LANE_MODE			0x098
+#define QSERDES_V2_TX_IDAC_CAL_LANE_MODE_CONFIGURATION		0x09c
+#define QSERDES_V2_TX_ATB_SEL1					0x0a0
+#define QSERDES_V2_TX_ATB_SEL2					0x0a4
+#define QSERDES_V2_TX_RCV_DETECT_LVL				0x0a8
+#define QSERDES_V2_TX_RCV_DETECT_LVL_2				0x0ac
+#define QSERDES_V2_TX_PRBS_SEED1				0x0b0
+#define QSERDES_V2_TX_PRBS_SEED2				0x0b4
+#define QSERDES_V2_TX_PRBS_SEED3				0x0b8
+#define QSERDES_V2_TX_PRBS_SEED4				0x0bc
+#define QSERDES_V2_TX_RESET_GEN					0x0c0
+#define QSERDES_V2_TX_RESET_GEN_MUXES				0x0c4
+#define QSERDES_V2_TX_TRAN_DRVR_EMP_EN				0x0c8
+#define QSERDES_V2_TX_TX_INTERFACE_MODE				0x0cc
+#define QSERDES_V2_TX_PWM_CTRL					0x0d0
+#define QSERDES_V2_TX_PWM_ENCODED_OR_DATA			0x0d4
+#define QSERDES_V2_TX_PWM_GEAR_1_DIVIDER_BAND2			0x0d8
+#define QSERDES_V2_TX_PWM_GEAR_2_DIVIDER_BAND2			0x0dc
+#define QSERDES_V2_TX_PWM_GEAR_3_DIVIDER_BAND2			0x0e0
+#define QSERDES_V2_TX_PWM_GEAR_4_DIVIDER_BAND2			0x0e4
+#define QSERDES_V2_TX_PWM_GEAR_1_DIVIDER_BAND0_1		0x0e8
+#define QSERDES_V2_TX_PWM_GEAR_2_DIVIDER_BAND0_1		0x0ec
+#define QSERDES_V2_TX_PWM_GEAR_3_DIVIDER_BAND0_1		0x0f0
+#define QSERDES_V2_TX_PWM_GEAR_4_DIVIDER_BAND0_1		0x0f4
+#define QSERDES_V2_TX_VMODE_CTRL1				0x0f8
+#define QSERDES_V2_TX_VMODE_CTRL2				0x0fc
+#define QSERDES_V2_TX_TX_ALOG_INTF_OBSV_CNTL			0x100
+#define QSERDES_V2_TX_BIST_STATUS				0x104
+#define QSERDES_V2_TX_BIST_ERROR_COUNT1				0x108
+#define QSERDES_V2_TX_BIST_ERROR_COUNT2				0x10c
+#define QSERDES_V2_TX_TX_ALOG_INTF_OBSV				0x110
+
+/* Only for QMP V2 PHY - RX registers */
+#define QSERDES_V2_RX_UCDR_FO_GAIN_HALF				0x000
+#define QSERDES_V2_RX_UCDR_FO_GAIN_QUARTER			0x004
+#define QSERDES_V2_RX_UCDR_FO_GAIN_EIGHTH			0x008
+#define QSERDES_V2_RX_UCDR_FO_GAIN				0x00c
+#define QSERDES_V2_RX_UCDR_SO_GAIN_HALF				0x010
+#define QSERDES_V2_RX_UCDR_SO_GAIN_QUARTER			0x014
+#define QSERDES_V2_RX_UCDR_SO_GAIN_EIGHTH			0x018
+#define QSERDES_V2_RX_UCDR_SO_GAIN				0x01c
+#define QSERDES_V2_RX_UCDR_SVS_FO_GAIN_HALF			0x020
+#define QSERDES_V2_RX_UCDR_SVS_FO_GAIN_QUARTER			0x024
+#define QSERDES_V2_RX_UCDR_SVS_FO_GAIN_EIGHTH			0x028
+#define QSERDES_V2_RX_UCDR_SVS_FO_GAIN				0x02c
+#define QSERDES_V2_RX_UCDR_SVS_SO_GAIN_HALF			0x030
+#define QSERDES_V2_RX_UCDR_SVS_SO_GAIN_QUARTER			0x034
+#define QSERDES_V2_RX_UCDR_SVS_SO_GAIN_EIGHTH			0x038
+#define QSERDES_V2_RX_UCDR_SVS_SO_GAIN				0x03c
+#define QSERDES_V2_RX_UCDR_FASTLOCK_FO_GAIN			0x040
+#define QSERDES_V2_RX_UCDR_FD_GAIN				0x044
+#define QSERDES_V2_RX_UCDR_SO_SATURATION_AND_ENABLE		0x048
+#define QSERDES_V2_RX_UCDR_FO_TO_SO_DELAY			0x04c
+#define QSERDES_V2_RX_UCDR_FASTLOCK_COUNT_LOW			0x050
+#define QSERDES_V2_RX_UCDR_FASTLOCK_COUNT_HIGH			0x054
+#define QSERDES_V2_RX_UCDR_MODULATE				0x058
+#define QSERDES_V2_RX_UCDR_PI_CONTROLS				0x05c
+#define QSERDES_V2_RX_RBIST_CONTROL				0x060
+#define QSERDES_V2_RX_AUX_CONTROL				0x064
+#define QSERDES_V2_RX_AUX_DATA_TCOARSE				0x068
+#define QSERDES_V2_RX_AUX_DATA_TFINE_LSB			0x06c
+#define QSERDES_V2_RX_AUX_DATA_TFINE_MSB			0x070
+#define QSERDES_V2_RX_RCLK_AUXDATA_SEL				0x074
+#define QSERDES_V2_RX_AC_JTAG_ENABLE				0x078
+#define QSERDES_V2_RX_AC_JTAG_INITP				0x07c
+#define QSERDES_V2_RX_AC_JTAG_INITN				0x080
+#define QSERDES_V2_RX_AC_JTAG_LVL				0x084
+#define QSERDES_V2_RX_AC_JTAG_MODE				0x088
+#define QSERDES_V2_RX_AC_JTAG_RESET				0x08c
+#define QSERDES_V2_RX_RX_TERM_BW				0x090
+#define QSERDES_V2_RX_RX_RCVR_IQ_EN				0x094
+#define QSERDES_V2_RX_RX_IDAC_I_DC_OFFSETS			0x098
+#define QSERDES_V2_RX_RX_IDAC_IBAR_DC_OFFSETS			0x09c
+#define QSERDES_V2_RX_RX_IDAC_Q_DC_OFFSETS			0x0a0
+#define QSERDES_V2_RX_RX_IDAC_QBAR_DC_OFFSETS			0x0a4
+#define QSERDES_V2_RX_RX_IDAC_A_DC_OFFSETS			0x0a8
+#define QSERDES_V2_RX_RX_IDAC_ABAR_DC_OFFSETS			0x0ac
+#define QSERDES_V2_RX_RX_IDAC_EN				0x0b0
+#define QSERDES_V2_RX_RX_IDAC_ENABLES				0x0b4
+#define QSERDES_V2_RX_RX_IDAC_SIGN				0x0b8
+#define QSERDES_V2_RX_RX_HIGHZ_HIGHRATE				0x0bc
+#define QSERDES_V2_RX_RX_TERM_AC_BYPASS_DC_COUPLE_OFFSET	0x0c0
+#define QSERDES_V2_RX_RX_EQ_GAIN1_LSB				0x0c4
+#define QSERDES_V2_RX_RX_EQ_GAIN1_MSB				0x0c8
+#define QSERDES_V2_RX_RX_EQ_GAIN2_LSB				0x0cc
+#define QSERDES_V2_RX_RX_EQ_GAIN2_MSB				0x0d0
+#define QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL1			0x0d4
+#define QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL2			0x0d8
+#define QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL3			0x0dc
+#define QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL4			0x0e0
+#define QSERDES_V2_RX_RX_IDAC_CAL_CONFIGURATION			0x0e4
+#define QSERDES_V2_RX_RX_IDAC_TSETTLE_LOW			0x0e8
+#define QSERDES_V2_RX_RX_IDAC_TSETTLE_HIGH			0x0ec
+#define QSERDES_V2_RX_RX_IDAC_ENDSAMP_LOW			0x0f0
+#define QSERDES_V2_RX_RX_IDAC_ENDSAMP_HIGH			0x0f4
+#define QSERDES_V2_RX_RX_IDAC_MIDPOINT_LOW			0x0f8
+#define QSERDES_V2_RX_RX_IDAC_MIDPOINT_HIGH			0x0fc
+#define QSERDES_V2_RX_RX_EQ_OFFSET_LSB				0x100
+#define QSERDES_V2_RX_RX_EQ_OFFSET_MSB				0x104
+#define QSERDES_V2_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1		0x108
+#define QSERDES_V2_RX_RX_OFFSET_ADAPTOR_CNTRL2			0x10c
+#define QSERDES_V2_RX_SIGDET_ENABLES				0x110
+#define QSERDES_V2_RX_SIGDET_CNTRL				0x114
+#define QSERDES_V2_RX_SIGDET_LVL				0x118
+#define QSERDES_V2_RX_SIGDET_DEGLITCH_CNTRL			0x11c
+#define QSERDES_V2_RX_RX_BAND					0x120
+#define QSERDES_V2_RX_CDR_FREEZE_UP_DN				0x124
+#define QSERDES_V2_RX_CDR_RESET_OVERRIDE			0x128
+#define QSERDES_V2_RX_RX_INTERFACE_MODE				0x12c
+#define QSERDES_V2_RX_JITTER_GEN_MODE				0x130
+#define QSERDES_V2_RX_BUJ_AMP					0x134
+#define QSERDES_V2_RX_SJ_AMP1					0x138
+#define QSERDES_V2_RX_SJ_AMP2					0x13c
+#define QSERDES_V2_RX_SJ_PER1					0x140
+#define QSERDES_V2_RX_SJ_PER2					0x144
+#define QSERDES_V2_RX_BUJ_STEP_FREQ1				0x148
+#define QSERDES_V2_RX_BUJ_STEP_FREQ2				0x14c
+#define QSERDES_V2_RX_PPM_OFFSET1				0x150
+#define QSERDES_V2_RX_PPM_OFFSET2				0x154
+#define QSERDES_V2_RX_SIGN_PPM_PERIOD1				0x158
+#define QSERDES_V2_RX_SIGN_PPM_PERIOD2				0x15c
+#define QSERDES_V2_RX_SSC_CTRL					0x160
+#define QSERDES_V2_RX_SSC_COUNT1				0x164
+#define QSERDES_V2_RX_SSC_COUNT2				0x168
+#define QSERDES_V2_RX_RX_ALOG_INTF_OBSV_CNTL			0x16c
+#define QSERDES_V2_RX_RX_PWM_ENABLE_AND_DATA			0x170
+#define QSERDES_V2_RX_RX_PWM_GEAR1_TIMEOUT_COUNT		0x174
+#define QSERDES_V2_RX_RX_PWM_GEAR2_TIMEOUT_COUNT		0x178
+#define QSERDES_V2_RX_RX_PWM_GEAR3_TIMEOUT_COUNT		0x17c
+#define QSERDES_V2_RX_RX_PWM_GEAR4_TIMEOUT_COUNT		0x180
+#define QSERDES_V2_RX_PI_CTRL1					0x184
+#define QSERDES_V2_RX_PI_CTRL2					0x188
+#define QSERDES_V2_RX_PI_QUAD					0x18c
+#define QSERDES_V2_RX_IDATA1					0x190
+#define QSERDES_V2_RX_IDATA2					0x194
+#define QSERDES_V2_RX_AUX_DATA1					0x198
+#define QSERDES_V2_RX_AUX_DATA2					0x19c
+#define QSERDES_V2_RX_AC_JTAG_OUTP				0x1a0
+#define QSERDES_V2_RX_AC_JTAG_OUTN				0x1a4
+#define QSERDES_V2_RX_RX_SIGDET					0x1a8
+#define QSERDES_V2_RX_RX_VDCOFF					0x1ac
+#define QSERDES_V2_RX_IDAC_CAL_ON				0x1b0
+#define QSERDES_V2_RX_IDAC_STATUS_I				0x1b4
+#define QSERDES_V2_RX_IDAC_STATUS_IBAR				0x1b8
+#define QSERDES_V2_RX_IDAC_STATUS_Q				0x1bc
+#define QSERDES_V2_RX_IDAC_STATUS_QBAR				0x1c0
+#define QSERDES_V2_RX_IDAC_STATUS_A				0x1c4
+#define QSERDES_V2_RX_IDAC_STATUS_ABAR				0x1c8
+#define QSERDES_V2_RX_CALST_STATUS_I				0x1cc
+#define QSERDES_V2_RX_CALST_STATUS_Q				0x1d0
+#define QSERDES_V2_RX_CALST_STATUS_A				0x1d4
+#define QSERDES_V2_RX_RX_ALOG_INTF_OBSV				0x1d8
+#define QSERDES_V2_RX_READ_EQCODE				0x1dc
+#define QSERDES_V2_RX_READ_OFFSETCODE				0x1e0
+#define QSERDES_V2_RX_IA_ERROR_COUNTER_LOW			0x1e4
+#define QSERDES_V2_RX_IA_ERROR_COUNTER_HIGH			0x1e8
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h
deleted file mode 100644
index d20694513eb4..000000000000
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h
+++ /dev/null
@@ -1,205 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Copyright (c) 2017, The Linux Foundation. All rights reserved.
- */
-
-#ifndef QCOM_PHY_QMP_QSERDES_TXRX_H_
-#define QCOM_PHY_QMP_QSERDES_TXRX_H_
-
-/* Only for QMP V2 PHY - TX registers */
-#define QSERDES_TX_BIST_MODE_LANENO			0x000
-#define QSERDES_TX_BIST_INVERT				0x004
-#define QSERDES_TX_CLKBUF_ENABLE			0x008
-#define QSERDES_TX_CMN_CONTROL_ONE			0x00c
-#define QSERDES_TX_CMN_CONTROL_TWO			0x010
-#define QSERDES_TX_CMN_CONTROL_THREE			0x014
-#define QSERDES_TX_TX_EMP_POST1_LVL			0x018
-#define QSERDES_TX_TX_POST2_EMPH			0x01c
-#define QSERDES_TX_TX_BOOST_LVL_UP_DN			0x020
-#define QSERDES_TX_HP_PD_ENABLES			0x024
-#define QSERDES_TX_TX_IDLE_LVL_LARGE_AMP		0x028
-#define QSERDES_TX_TX_DRV_LVL				0x02c
-#define QSERDES_TX_TX_DRV_LVL_OFFSET			0x030
-#define QSERDES_TX_RESET_TSYNC_EN			0x034
-#define QSERDES_TX_PRE_STALL_LDO_BOOST_EN		0x038
-#define QSERDES_TX_TX_BAND				0x03c
-#define QSERDES_TX_SLEW_CNTL				0x040
-#define QSERDES_TX_INTERFACE_SELECT			0x044
-#define QSERDES_TX_LPB_EN				0x048
-#define QSERDES_TX_RES_CODE_LANE_TX			0x04c
-#define QSERDES_TX_RES_CODE_LANE_RX			0x050
-#define QSERDES_TX_RES_CODE_LANE_OFFSET			0x054
-#define QSERDES_TX_PERL_LENGTH1				0x058
-#define QSERDES_TX_PERL_LENGTH2				0x05c
-#define QSERDES_TX_SERDES_BYP_EN_OUT			0x060
-#define QSERDES_TX_DEBUG_BUS_SEL			0x064
-#define QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN	0x068
-#define QSERDES_TX_TX_POL_INV				0x06c
-#define QSERDES_TX_PARRATE_REC_DETECT_IDLE_EN		0x070
-#define QSERDES_TX_BIST_PATTERN1			0x074
-#define QSERDES_TX_BIST_PATTERN2			0x078
-#define QSERDES_TX_BIST_PATTERN3			0x07c
-#define QSERDES_TX_BIST_PATTERN4			0x080
-#define QSERDES_TX_BIST_PATTERN5			0x084
-#define QSERDES_TX_BIST_PATTERN6			0x088
-#define QSERDES_TX_BIST_PATTERN7			0x08c
-#define QSERDES_TX_BIST_PATTERN8			0x090
-#define QSERDES_TX_LANE_MODE				0x094
-#define QSERDES_TX_IDAC_CAL_LANE_MODE			0x098
-#define QSERDES_TX_IDAC_CAL_LANE_MODE_CONFIGURATION	0x09c
-#define QSERDES_TX_ATB_SEL1				0x0a0
-#define QSERDES_TX_ATB_SEL2				0x0a4
-#define QSERDES_TX_RCV_DETECT_LVL			0x0a8
-#define QSERDES_TX_RCV_DETECT_LVL_2			0x0ac
-#define QSERDES_TX_PRBS_SEED1				0x0b0
-#define QSERDES_TX_PRBS_SEED2				0x0b4
-#define QSERDES_TX_PRBS_SEED3				0x0b8
-#define QSERDES_TX_PRBS_SEED4				0x0bc
-#define QSERDES_TX_RESET_GEN				0x0c0
-#define QSERDES_TX_RESET_GEN_MUXES			0x0c4
-#define QSERDES_TX_TRAN_DRVR_EMP_EN			0x0c8
-#define QSERDES_TX_TX_INTERFACE_MODE			0x0cc
-#define QSERDES_TX_PWM_CTRL				0x0d0
-#define QSERDES_TX_PWM_ENCODED_OR_DATA			0x0d4
-#define QSERDES_TX_PWM_GEAR_1_DIVIDER_BAND2		0x0d8
-#define QSERDES_TX_PWM_GEAR_2_DIVIDER_BAND2		0x0dc
-#define QSERDES_TX_PWM_GEAR_3_DIVIDER_BAND2		0x0e0
-#define QSERDES_TX_PWM_GEAR_4_DIVIDER_BAND2		0x0e4
-#define QSERDES_TX_PWM_GEAR_1_DIVIDER_BAND0_1		0x0e8
-#define QSERDES_TX_PWM_GEAR_2_DIVIDER_BAND0_1		0x0ec
-#define QSERDES_TX_PWM_GEAR_3_DIVIDER_BAND0_1		0x0f0
-#define QSERDES_TX_PWM_GEAR_4_DIVIDER_BAND0_1		0x0f4
-#define QSERDES_TX_VMODE_CTRL1				0x0f8
-#define QSERDES_TX_VMODE_CTRL2				0x0fc
-#define QSERDES_TX_TX_ALOG_INTF_OBSV_CNTL		0x100
-#define QSERDES_TX_BIST_STATUS				0x104
-#define QSERDES_TX_BIST_ERROR_COUNT1			0x108
-#define QSERDES_TX_BIST_ERROR_COUNT2			0x10c
-#define QSERDES_TX_TX_ALOG_INTF_OBSV			0x110
-
-/* Only for QMP V2 PHY - RX registers */
-#define QSERDES_RX_UCDR_FO_GAIN_HALF			0x000
-#define QSERDES_RX_UCDR_FO_GAIN_QUARTER			0x004
-#define QSERDES_RX_UCDR_FO_GAIN_EIGHTH			0x008
-#define QSERDES_RX_UCDR_FO_GAIN				0x00c
-#define QSERDES_RX_UCDR_SO_GAIN_HALF			0x010
-#define QSERDES_RX_UCDR_SO_GAIN_QUARTER			0x014
-#define QSERDES_RX_UCDR_SO_GAIN_EIGHTH			0x018
-#define QSERDES_RX_UCDR_SO_GAIN				0x01c
-#define QSERDES_RX_UCDR_SVS_FO_GAIN_HALF		0x020
-#define QSERDES_RX_UCDR_SVS_FO_GAIN_QUARTER		0x024
-#define QSERDES_RX_UCDR_SVS_FO_GAIN_EIGHTH		0x028
-#define QSERDES_RX_UCDR_SVS_FO_GAIN			0x02c
-#define QSERDES_RX_UCDR_SVS_SO_GAIN_HALF		0x030
-#define QSERDES_RX_UCDR_SVS_SO_GAIN_QUARTER		0x034
-#define QSERDES_RX_UCDR_SVS_SO_GAIN_EIGHTH		0x038
-#define QSERDES_RX_UCDR_SVS_SO_GAIN			0x03c
-#define QSERDES_RX_UCDR_FASTLOCK_FO_GAIN		0x040
-#define QSERDES_RX_UCDR_FD_GAIN				0x044
-#define QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE	0x048
-#define QSERDES_RX_UCDR_FO_TO_SO_DELAY			0x04c
-#define QSERDES_RX_UCDR_FASTLOCK_COUNT_LOW		0x050
-#define QSERDES_RX_UCDR_FASTLOCK_COUNT_HIGH		0x054
-#define QSERDES_RX_UCDR_MODULATE			0x058
-#define QSERDES_RX_UCDR_PI_CONTROLS			0x05c
-#define QSERDES_RX_RBIST_CONTROL			0x060
-#define QSERDES_RX_AUX_CONTROL				0x064
-#define QSERDES_RX_AUX_DATA_TCOARSE			0x068
-#define QSERDES_RX_AUX_DATA_TFINE_LSB			0x06c
-#define QSERDES_RX_AUX_DATA_TFINE_MSB			0x070
-#define QSERDES_RX_RCLK_AUXDATA_SEL			0x074
-#define QSERDES_RX_AC_JTAG_ENABLE			0x078
-#define QSERDES_RX_AC_JTAG_INITP			0x07c
-#define QSERDES_RX_AC_JTAG_INITN			0x080
-#define QSERDES_RX_AC_JTAG_LVL				0x084
-#define QSERDES_RX_AC_JTAG_MODE				0x088
-#define QSERDES_RX_AC_JTAG_RESET			0x08c
-#define QSERDES_RX_RX_TERM_BW				0x090
-#define QSERDES_RX_RX_RCVR_IQ_EN			0x094
-#define QSERDES_RX_RX_IDAC_I_DC_OFFSETS			0x098
-#define QSERDES_RX_RX_IDAC_IBAR_DC_OFFSETS		0x09c
-#define QSERDES_RX_RX_IDAC_Q_DC_OFFSETS			0x0a0
-#define QSERDES_RX_RX_IDAC_QBAR_DC_OFFSETS		0x0a4
-#define QSERDES_RX_RX_IDAC_A_DC_OFFSETS			0x0a8
-#define QSERDES_RX_RX_IDAC_ABAR_DC_OFFSETS		0x0ac
-#define QSERDES_RX_RX_IDAC_EN				0x0b0
-#define QSERDES_RX_RX_IDAC_ENABLES			0x0b4
-#define QSERDES_RX_RX_IDAC_SIGN				0x0b8
-#define QSERDES_RX_RX_HIGHZ_HIGHRATE			0x0bc
-#define QSERDES_RX_RX_TERM_AC_BYPASS_DC_COUPLE_OFFSET	0x0c0
-#define QSERDES_RX_RX_EQ_GAIN1_LSB			0x0c4
-#define QSERDES_RX_RX_EQ_GAIN1_MSB			0x0c8
-#define QSERDES_RX_RX_EQ_GAIN2_LSB			0x0cc
-#define QSERDES_RX_RX_EQ_GAIN2_MSB			0x0d0
-#define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL1		0x0d4
-#define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2		0x0d8
-#define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3		0x0dc
-#define QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4		0x0e0
-#define QSERDES_RX_RX_IDAC_CAL_CONFIGURATION		0x0e4
-#define QSERDES_RX_RX_IDAC_TSETTLE_LOW			0x0e8
-#define QSERDES_RX_RX_IDAC_TSETTLE_HIGH			0x0ec
-#define QSERDES_RX_RX_IDAC_ENDSAMP_LOW			0x0f0
-#define QSERDES_RX_RX_IDAC_ENDSAMP_HIGH			0x0f4
-#define QSERDES_RX_RX_IDAC_MIDPOINT_LOW			0x0f8
-#define QSERDES_RX_RX_IDAC_MIDPOINT_HIGH		0x0fc
-#define QSERDES_RX_RX_EQ_OFFSET_LSB			0x100
-#define QSERDES_RX_RX_EQ_OFFSET_MSB			0x104
-#define QSERDES_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1		0x108
-#define QSERDES_RX_RX_OFFSET_ADAPTOR_CNTRL2		0x10c
-#define QSERDES_RX_SIGDET_ENABLES			0x110
-#define QSERDES_RX_SIGDET_CNTRL				0x114
-#define QSERDES_RX_SIGDET_LVL				0x118
-#define QSERDES_RX_SIGDET_DEGLITCH_CNTRL		0x11c
-#define QSERDES_RX_RX_BAND				0x120
-#define QSERDES_RX_CDR_FREEZE_UP_DN			0x124
-#define QSERDES_RX_CDR_RESET_OVERRIDE			0x128
-#define QSERDES_RX_RX_INTERFACE_MODE			0x12c
-#define QSERDES_RX_JITTER_GEN_MODE			0x130
-#define QSERDES_RX_BUJ_AMP				0x134
-#define QSERDES_RX_SJ_AMP1				0x138
-#define QSERDES_RX_SJ_AMP2				0x13c
-#define QSERDES_RX_SJ_PER1				0x140
-#define QSERDES_RX_SJ_PER2				0x144
-#define QSERDES_RX_BUJ_STEP_FREQ1			0x148
-#define QSERDES_RX_BUJ_STEP_FREQ2			0x14c
-#define QSERDES_RX_PPM_OFFSET1				0x150
-#define QSERDES_RX_PPM_OFFSET2				0x154
-#define QSERDES_RX_SIGN_PPM_PERIOD1			0x158
-#define QSERDES_RX_SIGN_PPM_PERIOD2			0x15c
-#define QSERDES_RX_SSC_CTRL				0x160
-#define QSERDES_RX_SSC_COUNT1				0x164
-#define QSERDES_RX_SSC_COUNT2				0x168
-#define QSERDES_RX_RX_ALOG_INTF_OBSV_CNTL		0x16c
-#define QSERDES_RX_RX_PWM_ENABLE_AND_DATA		0x170
-#define QSERDES_RX_RX_PWM_GEAR1_TIMEOUT_COUNT		0x174
-#define QSERDES_RX_RX_PWM_GEAR2_TIMEOUT_COUNT		0x178
-#define QSERDES_RX_RX_PWM_GEAR3_TIMEOUT_COUNT		0x17c
-#define QSERDES_RX_RX_PWM_GEAR4_TIMEOUT_COUNT		0x180
-#define QSERDES_RX_PI_CTRL1				0x184
-#define QSERDES_RX_PI_CTRL2				0x188
-#define QSERDES_RX_PI_QUAD				0x18c
-#define QSERDES_RX_IDATA1				0x190
-#define QSERDES_RX_IDATA2				0x194
-#define QSERDES_RX_AUX_DATA1				0x198
-#define QSERDES_RX_AUX_DATA2				0x19c
-#define QSERDES_RX_AC_JTAG_OUTP				0x1a0
-#define QSERDES_RX_AC_JTAG_OUTN				0x1a4
-#define QSERDES_RX_RX_SIGDET				0x1a8
-#define QSERDES_RX_RX_VDCOFF				0x1ac
-#define QSERDES_RX_IDAC_CAL_ON				0x1b0
-#define QSERDES_RX_IDAC_STATUS_I			0x1b4
-#define QSERDES_RX_IDAC_STATUS_IBAR			0x1b8
-#define QSERDES_RX_IDAC_STATUS_Q			0x1bc
-#define QSERDES_RX_IDAC_STATUS_QBAR			0x1c0
-#define QSERDES_RX_IDAC_STATUS_A			0x1c4
-#define QSERDES_RX_IDAC_STATUS_ABAR			0x1c8
-#define QSERDES_RX_CALST_STATUS_I			0x1cc
-#define QSERDES_RX_CALST_STATUS_Q			0x1d0
-#define QSERDES_RX_CALST_STATUS_A			0x1d4
-#define QSERDES_RX_RX_ALOG_INTF_OBSV			0x1d8
-#define QSERDES_RX_READ_EQCODE				0x1dc
-#define QSERDES_RX_READ_OFFSETCODE			0x1e0
-#define QSERDES_RX_IA_ERROR_COUNTER_LOW			0x1e4
-#define QSERDES_RX_IA_ERROR_COUNTER_HIGH		0x1e8
-
-#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index cb799015c494..a4ec2d37ea91 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -196,22 +196,22 @@ static const struct qmp_phy_init_tbl msm8996_ufsphy_serdes[] = {
 };
 
 static const struct qmp_phy_init_tbl msm8996_ufsphy_tx[] = {
-	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
-	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_LANE_MODE, 0x02),
 };
 
 static const struct qmp_phy_init_tbl msm8996_ufsphy_rx[] = {
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_LVL, 0x24),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_INTERFACE_MODE, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x18),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_FASTLOCK_FO_GAIN, 0x0B),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_TERM_BW, 0x5b),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN1_LSB, 0xff),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN1_MSB, 0x3f),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN2_LSB, 0xff),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN2_MSB, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0E),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_LVL, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_CNTRL, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_INTERFACE_MODE, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_DEGLITCH_CNTRL, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_FASTLOCK_FO_GAIN, 0x0B),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_TERM_BW, 0x5b),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQ_GAIN1_LSB, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQ_GAIN1_MSB, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQ_GAIN2_LSB, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQ_GAIN2_MSB, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0E),
 };
 
 static const struct qmp_phy_init_tbl sc7280_ufsphy_tx[] = {
@@ -377,26 +377,26 @@ static const struct qmp_phy_init_tbl sm6115_ufsphy_hs_b_serdes[] = {
 };
 
 static const struct qmp_phy_init_tbl sm6115_ufsphy_tx[] = {
-	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
-	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_LANE_MODE, 0x06),
 };
 
 static const struct qmp_phy_init_tbl sm6115_ufsphy_rx[] = {
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_LVL, 0x24),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x0F),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_INTERFACE_MODE, 0x40),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x1E),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_FASTLOCK_FO_GAIN, 0x0B),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_TERM_BW, 0x5B),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN1_LSB, 0xFF),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN1_MSB, 0x3F),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN2_LSB, 0xFF),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_GAIN2_MSB, 0x3F),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0D),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SVS_SO_GAIN_HALF, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SVS_SO_GAIN_QUARTER, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SVS_SO_GAIN, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x5B),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_LVL, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_CNTRL, 0x0F),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_INTERFACE_MODE, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_DEGLITCH_CNTRL, 0x1E),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_FASTLOCK_FO_GAIN, 0x0B),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_TERM_BW, 0x5B),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQ_GAIN1_LSB, 0xFF),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQ_GAIN1_MSB, 0x3F),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQ_GAIN2_LSB, 0xFF),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQ_GAIN2_MSB, 0x3F),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0D),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_SVS_SO_GAIN_HALF, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_SVS_SO_GAIN_QUARTER, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_SVS_SO_GAIN, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x5B),
 };
 
 static const struct qmp_phy_init_tbl sm6115_ufsphy_pcs[] = {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index f43650f9a45c..c5507168e135 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -248,7 +248,7 @@ static const struct qmp_phy_init_tbl ipq9574_usb3_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_BIAS_EN_CLKBUFLR_EN, 0x08),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CLK_SELECT, 0x30),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_BG_TRIM, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SVS_MODE_CLK_SEL, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_HSCLK_SEL, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CMN_CONFIG, 0x06),
@@ -281,22 +281,22 @@ static const struct qmp_phy_init_tbl ipq9574_usb3_serdes_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl ipq9574_usb3_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
-	QMP_PHY_INIT_CFG(QSERDES_TX_RCV_DETECT_LVL_2, 0x12),
-	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_LANE_MODE, 0x06),
 };
 
 static const struct qmp_phy_init_tbl ipq9574_usb3_rx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x6c),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4c),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4, 0xb8),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x77),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x16),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_ENABLES, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_SO_GAIN, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL3, 0x6c),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4c),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL4, 0xb8),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x77),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_CNTRL, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_DEGLITCH_CNTRL, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_ENABLES, 0x0c),
 };
 
 static const struct qmp_phy_init_tbl ipq9574_usb3_pcs_tbl[] = {
@@ -330,7 +330,7 @@ static const struct qmp_phy_init_tbl ipq8074_usb3_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_BIAS_EN_CLKBUFLR_EN, 0x08),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CLK_SELECT, 0x30),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_BG_TRIM, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SVS_MODE_CLK_SEL, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_HSCLK_SEL, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CMN_CONFIG, 0x06),
@@ -363,15 +363,15 @@ static const struct qmp_phy_init_tbl ipq8074_usb3_serdes_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl ipq8074_usb3_rx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4c),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4, 0xb8),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x77),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x16),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_ENABLES, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_SO_GAIN, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4c),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL4, 0xb8),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x77),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_CNTRL, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_DEGLITCH_CNTRL, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_ENABLES, 0x0),
 };
 
 static const struct qmp_phy_init_tbl ipq8074_usb3_pcs_tbl[] = {
@@ -438,22 +438,22 @@ static const struct qmp_phy_init_tbl msm8996_usb3_serdes_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl msm8996_usb3_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
-	QMP_PHY_INIT_CFG(QSERDES_TX_RCV_DETECT_LVL_2, 0x12),
-	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V2_TX_LANE_MODE, 0x06),
 };
 
 static const struct qmp_phy_init_tbl msm8996_usb3_rx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4c),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4, 0xbb),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x77),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_LVL, 0x18),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_UCDR_SO_GAIN, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4c),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL4, 0xbb),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x77),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_CNTRL, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_LVL, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V2_RX_SIGDET_DEGLITCH_CNTRL, 0x16),
 };
 
 static const struct qmp_phy_init_tbl msm8996_usb3_pcs_tbl[] = {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 19e91f44e84e..11b7e03b4fab 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -6,9 +6,8 @@
 #ifndef QCOM_PHY_QMP_H_
 #define QCOM_PHY_QMP_H_
 
-#include "phy-qcom-qmp-qserdes-txrx.h"
-
 #include "phy-qcom-qmp-qserdes-com-v2.h"
+#include "phy-qcom-qmp-qserdes-txrx-v2.h"
 
 #include "phy-qcom-qmp-qserdes-com-v3.h"
 #include "phy-qcom-qmp-qserdes-txrx-v3.h"
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
