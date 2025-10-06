Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94DE6CCD184
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 22:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xy15HVELJZzC8aZEaYNro2W1BlD1RJ4CnU6J8Mk2pI0=; b=rtOtnooR1SfZPf
	4ddSd1cVDKAewUAMiK95sXF23Ek5pjvpb8tf5Yv941t3SWtCY+YDEci1jdMAZYRL+Hg6wo4zWbaIs
	Wzj3SMznb+O3yOSFp4bbDMSuUyysmUHQNSOBpK6ETKC/hI/HCzYXOTuEYqsQY/Sjl6RRyggkvyPHc
	kK3cQ3YIQiQOjvG2xeiB21JkwXq5/RT21ocx5IN3EGw6W69FovfC41z+wdXYCrjZ4Xg9PdLu5DBhe
	d0sCy0vAoL+09YlLlwtUQhwSN6Pg6dQJ0XXT2TfZFKe95jQlbKF3OrAQ8J86Kq/ve+LjMgfXhZHBH
	gDnSMhiC5ljdYxsapU8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tZF-00000000ucH-1XYp;
	Mon, 06 Oct 2025 22:20:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tZD-00000000uZY-1VFN
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 22:20:28 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596EmUAR004323
	for <linux-phy@lists.infradead.org>; Mon, 6 Oct 2025 22:20:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=TmQ/hwHvfjn
	VMR9ZqSBQsA5zywfc7f8XvM0GNdLOBXI=; b=eggJpLvv6pwsDOpkJWGgxRcQYVI
	85QZpjcDAMO0C7zrmxATjX0olJ/FqPqdJGh4axtDzjvmtfKF9s8A9aM1t2kpyrEh
	3VmuKnFGQdxaZ9WabHnYDZNnTA1+vA1b+nfn7wCJb7rudb9B1EupIP0bEcba7j5O
	RYopAMb9IlI5UOY0Hjz/dSeX9csiBhtl93WMn3C1NtPNTkX3ignK7vfZfG+mEURO
	3HnCykiJHBC3JXNCbhBtphjQlPXXyYVduroxMT9VIUUyoBlhlgaluga7sRGqctNC
	d0TIgDxhbXDGVFhqfEbwUzRzjNd4G3I9TqPpuwqTzdceOVPiE+zPcXKr3og==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtwgnd2h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 22:20:26 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-780f9cc532bso5269070b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 15:20:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759789218; x=1760394018;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TmQ/hwHvfjnVMR9ZqSBQsA5zywfc7f8XvM0GNdLOBXI=;
        b=bjO8iNd6kvSNdwWVGKLhVXyOgQWePbNZJPsfpjki2+TF8TwdW07Z9+7RXR1FXYZUNZ
         27mkR809S/w1eiIaFGi8c9XjP05x7h2c4FJLHGwdl7x+kgRAz9Rb03uO3JCKSOUL04Ws
         GKMajoI5L2nTst5SuGgMY+oF/S3Aj+r2G/DfVTZ4Su51yedJg8p30FxmJUUOlO2A+oe4
         MlJ1dfnaL9vnKDaiSTzT61RyYpRVGJbUr9++5DZnJdvIAL54JpbpDsYpZsdvrSew+7uB
         BKexZCp4vVqc3C1iFIiiqc2NwsFg4Od7xQAWGnWTpql0ZGU5C8AaSu6WHUmtQOnAePix
         GZxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWfO4Qj3pmgKY3y0EHEIhB8+90NzzANzhy+tYU53e50rjD3IN7HgMGg94k/WFiYSV58700IQrZUCg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0VczbeYmAsLF/JT8wdP7/nwVlrpkYUv7LTD18QpNpvhfUurA1
	STU5TUoeLNVERsQ5wgM4HkkEBl7DdcoyKxw9jh4MvEFXUkVjexpz9WdmISZ/ZA3Dhmup2eot3dJ
	qIpHn3NE4RL8K5OkVAT3RjiBKt5HcO7C8TidIYc1Z38PXmfRx+t3bj0imIP4WdLGk74LE
X-Gm-Gg: ASbGncsZiRfonY2x7C72cJylU50qFRwHDO/efejdXE0H0lmPfZW28u8/PhJC8qTJS83
	DbJueiE1OapwyvimhHvqqaXSt4VqssJP/GYZ8LefwpJEfOoBAFbNZI3upe1/pWRugkUOXea6f/n
	Uba3wa7XAJKLIRc6+f45kLCoygy3PdbQgHXjVvWlJzVJ+eTeFohZkyzm56tOEw92r5fw26u1k5p
	zuBE2rEBw1V35ina1BQKPv7XCExHfMZfdl8MRiyCu+yFKCgAOsq6shKwa38aUoSrEm1oig5GlLA
	AD3zG4CcnHca8mXlPeoRiz2rmpC5eT4I6gUs8dAyteeBoMWa1iM3cGPTaxqAfqzDZD8iAvH4yQf
	5GfDEsAlaOxOf8BSivBrLMQ==
X-Received: by 2002:a05:6a00:140f:b0:781:1f58:ce6e with SMTP id d2e1a72fcca58-7923084e057mr1275576b3a.4.1759789218351;
        Mon, 06 Oct 2025 15:20:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtrMXhjx/VIsZKVF9qTh19iV9tTaYcPunkcTDGbj+D8xliSS8iee5RxuzZB6Bp89LjDG4FDg==
X-Received: by 2002:a05:6a00:140f:b0:781:1f58:ce6e with SMTP id d2e1a72fcca58-7923084e057mr1275546b3a.4.1759789217822;
        Mon, 06 Oct 2025 15:20:17 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb281bsm13734968b3a.37.2025.10.06.15.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 15:20:17 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v5 08/10] phy: qualcomm: qmp-usb: Add support for Glymur USB UNI PHY
Date: Mon,  6 Oct 2025 15:20:00 -0700
Message-Id: <20251006222002.2182777-9-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxOSBTYWx0ZWRfX/5bOqGf86BF2
 dhHIzFIcAqQ7EXZXBpgQ2chrLlTrtGB4AV6rw7xDdyV4wNxJPrkwVSv+3z4xs2HMoKHhbJa+O/6
 mj1WZtjHY4S2YvWO4uO5IaKERMPEo+/gNUwdWGA3Whi03PFlbBrt6ESHg1dBli47kD57dqNJGQ2
 6vjYIQsT0KVtoUbqJRafw4nfKnmpkHaSDS7hdll+ORvG60438eUHuOD/yd35xxP0e6CqQK2cnX6
 mDtgTnqLRbr8XTFeK6JaJS2yB8ZWwUE9UCc+DQa9V449mBausV0iekVtTAxiRckF+75hGfecGyH
 P8AI8MdnUuvOAWzP8SOYJATOuSfdSCVBcZN6PC+cdBcUmklgiXa9EtlBWyBr/OXuU7wcDZXjOty
 ye8kENTcRfTF1Yt2p+ZEOfhQmN8s1g==
X-Authority-Analysis: v=2.4 cv=B6O0EetM c=1 sm=1 tr=0 ts=68e440aa cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=bxfdmw13fxgBHIVlFAEA:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: OHMpMIr4DdsDdO85SitxE2Qjkbgm-0Rl
X-Proofpoint-ORIG-GUID: OHMpMIr4DdsDdO85SitxE2Qjkbgm-0Rl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_152027_524923_03D93D4F 
X-CRM114-Status: GOOD (  13.45  )
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

Glymur contains a USB multiport controller which supports a QMP UNI PHY.
These ports do not have typeC capability, so it needs to be differentiated
in this manner.  Update the QMP PHY sequence required to bring up the UNI
PHY for Glymur.  The UNI PHY follows mostly the same register field
definitions as previous SoCs.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 163 ++++++++++++++++++++++++
 1 file changed, 163 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index ed646a7e705b..d5e9ba783c5e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -28,6 +28,7 @@
 #include "phy-qcom-qmp-pcs-usb-v5.h"
 #include "phy-qcom-qmp-pcs-usb-v6.h"
 #include "phy-qcom-qmp-pcs-usb-v7.h"
+#include "phy-qcom-qmp-pcs-usb-v8.h"
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
@@ -109,6 +110,139 @@ static const unsigned int qmp_v7_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V7_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 };
 
+static const struct qmp_phy_init_tbl glymur_usb3_uniphy_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE1_MODE1, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE2_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CP_CTRL_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP1_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP2_MODE1, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DEC_START_MODE1, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DEC_START_MSB_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START2_MODE1, 0x75),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START3_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_HSCLK_SEL_1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_TUNE1_MODE1, 0x25),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_TUNE2_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0x5c),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x5c),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CP_CTRL_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP1_MODE0, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP2_MODE0, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DEC_START_MODE0, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DEC_START_MSB_MODE0, 0x00),
+
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START1_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START2_MODE0, 0x75),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START3_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_TUNE1_MODE0, 0x25),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_TUNE2_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_PER1, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_PER2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SYSCLK_BUF_ENABLE, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SYSCLK_EN_SEL, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP_CFG, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_TUNE_MAP, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CORE_CLK_EN, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_1, 0xb6),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_2, 0x4a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_3, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_ADDITIONAL_MISC, 0x0c),
+};
+
+static const struct qmp_phy_init_tbl glymur_usb3_uniphy_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_LOCK_DETECT_CONFIG1, 0xc4),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_LOCK_DETECT_CONFIG2, 0x89),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_LOCK_DETECT_CONFIG3, 0x20),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_LOCK_DETECT_CONFIG6, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_REFGEN_REQ_CONFIG1, 0x21),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_RX_SIGDET_LVL, 0x55),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_CDR_RESET_TIME, 0x0a),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_ALIGN_DETECT_CONFIG1, 0xd4),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_ALIGN_DETECT_CONFIG2, 0x30),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_PCS_TX_RX_CONFIG, 0x0c),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_EQ_CONFIG1, 0x4b),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_EQ_CONFIG5, 0x10),
+};
+
+static const struct qmp_phy_init_tbl glymur_usb3_uniphy_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_RES_CODE_LANE_TX, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_RES_CODE_LANE_RX, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_RES_CODE_LANE_OFFSET_TX, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_RES_CODE_LANE_OFFSET_RX, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_LANE_MODE_1, 0xf5),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_LANE_MODE_3, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_LANE_MODE_4, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_LANE_MODE_5, 0x5f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_PI_QEC_CTRL, 0x21),
+};
+
+static const struct qmp_phy_init_tbl glymur_usb3_uniphy_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_FO_GAIN, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_SO_GAIN, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_FASTLOCK_FO_GAIN, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_FASTLOCK_COUNT_LOW, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_PI_CONTROLS, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_SB2_THRESH1, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_SB2_THRESH2, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_SB2_GAIN1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_SB2_GAIN2, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_AUX_DATA_TCOARSE_TFINE, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_VGA_CAL_CNTRL1, 0x54),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_VGA_CAL_CNTRL2, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_GM_CAL, 0x1b),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_IDAC_TSETTLE_LOW, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_IDAC_TSETTLE_HIGH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x27),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_SIGDET_ENABLES, 0x0c),
+
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_SIGDET_CNTRL, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_SIGDET_DEGLITCH_CNTRL, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_00_LOW, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_00_HIGH, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_00_HIGH2, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_00_HIGH3, 0xdf),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_00_HIGH4, 0xed),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_01_LOW, 0x19),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_01_HIGH, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_01_HIGH2, 0x91),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_01_HIGH3, 0xb7),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_01_HIGH4, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_DFE_EN_TIMER, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_DCC_CTRL1, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_VTH_CODE, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_SIGDET_CAL_CTRL1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_SIGDET_CAL_TRIM, 0x08),
+};
+
+static const struct qmp_phy_init_tbl glymur_usb3_uniphy_pcs_usb_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_RXEQTRAINING_DFE_TIME_S2, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_RXEQTRAINING_WAIT_TIME, 0x75),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_RCVR_DTCT_DLY_U3_L, 0x40),
+};
+
 static const struct qmp_phy_init_tbl ipq9574_usb3_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x1a),
 	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x08),
@@ -1403,6 +1537,14 @@ static const struct qmp_usb_offsets qmp_usb_offsets_v7 = {
 	.rx		= 0x1000,
 };
 
+static const struct qmp_usb_offsets qmp_usb_offsets_v8 = {
+	.serdes		= 0,
+	.pcs		= 0x0400,
+	.pcs_usb	= 0x1200,
+	.tx		= 0x0e00,
+	.rx		= 0x1000,
+};
+
 static const struct qmp_phy_cfg ipq6018_usb3phy_cfg = {
 	.offsets		= &qmp_usb_offsets_v3,
 
@@ -1704,6 +1846,24 @@ static const struct qmp_phy_cfg x1e80100_usb3_uniphy_cfg = {
 	.regs			= qmp_v7_usb3phy_regs_layout,
 };
 
+static const struct qmp_phy_cfg glymur_usb3_uniphy_cfg = {
+	.offsets		= &qmp_usb_offsets_v8,
+
+	.serdes_tbl		= glymur_usb3_uniphy_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(glymur_usb3_uniphy_serdes_tbl),
+	.tx_tbl			= glymur_usb3_uniphy_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(glymur_usb3_uniphy_tx_tbl),
+	.rx_tbl			= glymur_usb3_uniphy_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(glymur_usb3_uniphy_rx_tbl),
+	.pcs_tbl		= glymur_usb3_uniphy_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(glymur_usb3_uniphy_pcs_tbl),
+	.pcs_usb_tbl		= glymur_usb3_uniphy_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(glymur_usb3_uniphy_pcs_usb_tbl),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v7_usb3phy_regs_layout,
+};
+
 static int qmp_usb_serdes_init(struct qmp_usb *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -2302,6 +2462,9 @@ static int qmp_usb_probe(struct platform_device *pdev)
 
 static const struct of_device_id qmp_usb_of_match_table[] = {
 	{
+		.compatible = "qcom,glymur-qmp-usb3-uni-phy",
+		.data = &glymur_usb3_uniphy_cfg,
+	}, {
 		.compatible = "qcom,ipq5424-qmp-usb3-phy",
 		.data = &ipq9574_usb3phy_cfg,
 	}, {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
