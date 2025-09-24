Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67B2BCAC5AE
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 23:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85JrSyTxUObT7nZVtXtQWxfdSEAKeF2stp1DIUa5tJs=; b=uiPclcvSFpBD1i
	dI5L4ZXA+vIF0wdTF4VOc8s30Q0/D0B4jkJ0df0GpnQbAqyhjvt8c5F6hVAinUR5kuhTs3wJKrAJ/
	9pQg4+ayC8l2XHvF3rRoavRM6IK1kASETaD6Y1FL/rTXQ6gCZ/z890DmpA8H0nADB3GE6qrLRLx0B
	tmXt+ItPHYGPC6hDALPF8u+FNFYftywqL21iD/ctqswMPPh5H+44PUT4JbKFHpzIk5FAXu3uwM5hX
	jIKP71zUY75aB/iNLGtoYiVoAAaOgc9KkhcKyXfxlBzwjjVZ85rH8Zi3g3OqW5mJ/5JP6xP0LEfnY
	X0EmoZQpy1t0JZbfHUEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1YzR-00000004iiT-0oUi;
	Wed, 24 Sep 2025 23:33:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1YzO-00000004ie2-37fF
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 23:33:35 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCDYQC016704
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:33:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qhcimOQHuD8kIFWkh2WWhhM9YX/AXQpI+K71EDVeX9g=; b=p7nxy1ISKuepTvW3
	DJ+uIh1sx0K4jX2RV/3QyapC7dE9NCcHoN1IFlL3ZI/1TJcnII7TUv9PCiEEkYQi
	rmMHZ/S4f0E3I55vAjzhwbzfSRAz+eGEylGDFZWcLjFJSv9e0CA20di2eVPj1TBh
	cZ2v0eOaE2E6avqqH3Ra4mOZaXDes0CwCCaJ+ewPcSE+S2YTC9nGmN+uDjrSaKWn
	xMIEDA2G4oh39C94m8wgIJjYG0fAuYAjrMjuVC17dgwbs/YVsIkVrYBNmNaNm676
	c1Su5vz4eV9TWoAjqylQGpnJ7EjiDRZbHr7dpbUu82DzrQ9K6x8TNIR+8NbFUAFb
	lqzwJA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nyhv16-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:33:34 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b554fdd710bso193698a12.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 16:33:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756813; x=1759361613;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qhcimOQHuD8kIFWkh2WWhhM9YX/AXQpI+K71EDVeX9g=;
        b=UXIal5fD2ShzN1noQRkIMFTlqcAvkzIgXNM5w1KLNriivmA9KsdMo4rm66rX57DOuQ
         270gcgNJPJelgzGt8UqgoOwM9HhFndVPO5dwoaZj1u9dyu1iUcSuLbnLHq32LcZOdAPH
         +ebRNkgJrZLWKxcY2kQapSg+PfNFrpOvKXo2ZqN2LlKxc3F5DwECB8ipPS/3QE3Zcn4Y
         ihCaqqgvypAMCWJnzKfWa3WLsZEx4fIxgd/Z5O6p96hph5wACGkmRQMT6AKVvICcSVFh
         1p2/8VdLP3U3HWdnBJzs5eiHwGoYmpwMWLKP1P2yORUjwjDDT8XVfuhZQQoAa1xxhkYa
         hyPw==
X-Forwarded-Encrypted: i=1; AJvYcCW8V+37niA7hzaLwLvlF1yT0KWpHWcPa621hTWwfsZAD4g8zdEv1AHq95IgkUJRCvSR8SvBNmkhQu8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2jM46Q019OInU4yzxie/echwOLWfuV34anTwTxFqL+/nnCt7h
	6NJyWWri0rvSAF9KOx+fWYo/4NWZN2wrAp4gJ2LhIbVD9GU0PfS1uiNUVP+lb8OUe/802n22DIO
	ZMAUjJr1iJZKFEX6mLZF+o4CkikOhp9pVP7UEQX/JIgcA3WO34677JFBth3Nb3u5rKRso
X-Gm-Gg: ASbGnctCCuJBiHnoW3l2+wbm8BcEyLw60xD19co/WBvLu5MrJcbwwPyiKc98HVauPk9
	OfdquutQDXlXlNgee9NTSpxUlX0j+XquqgNLgdvOl0NTG4ncAdOt+0nc5ZsaQ66oXdpBogziSVj
	bsTtZOmZyNicYVC+wcTyQG7JudDH9ooTgJ3LunT8Q/DXIJC0o4ArEYuvaKZi5JHNGDxuDzbJFOW
	+2El1NajrB314U9r6uoLEfVf3YZdd/oV5+7S/WCsnj49MN8emSNbjshzwMMnPiIux74EXVR1Qxf
	tsyPH9clPhInrp9EUI3qtZPNdgVnJjVvuRrbq2gE8GglYkO2pvUCft2Le4SEv6C9JJsat61xSLf
	JLLm+Q1aTqyYpFR0=
X-Received: by 2002:a05:6300:2109:b0:2d5:e559:d253 with SMTP id adf61e73a8af0-2e7d4e0367amr1345072637.59.1758756813241;
        Wed, 24 Sep 2025 16:33:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTaFOllMpj4fw2eJABkfYRpw5w4VVJ7HTo1PORVnJvskiRZ2O8kOvPXH56kaHQbNzXNd5Bpw==
X-Received: by 2002:a05:6300:2109:b0:2d5:e559:d253 with SMTP id adf61e73a8af0-2e7d4e0367amr1345040637.59.1758756812774;
        Wed, 24 Sep 2025 16:33:32 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53ca107sm392911a12.13.2025.09.24.16.33.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:33:32 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:33:22 -0700
Subject: [PATCH 6/6] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for
 Kaanapali
MIME-Version: 1.0
Message-Id: <20250924-knp-pcie-v1-6-5fb59e398b83@oss.qualcomm.com>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
In-Reply-To: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756801; l=12173;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=JtWRK7pZirLBY+PbGVrlwuCOP21VJQdVe8VZrERpVBk=;
 b=Szk7yi9/uOw6e4mv9aE4dTdyMgPNMNXcl84ut3bCuBUyorXbx+76+LJj3ptNi1r7aIlB+DGok
 FbCIEcHQkVRAvSgG1dMy/R6qDmZrpMC/Pj49CQDSy7vquKPLbHaoShK
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d47fce cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=dC9hr_MePEz1Ep9DW4kA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: rikrtK2h3xv0u1VWWj6INflKwVxVr-0T
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX5Vvw3ulQi7hK
 DkGR9hoJCt4f+TlMqUQuh83vsG0mJtmazzSsqbVzpKH6G0mZHVtQlYD7Z/NYJ1Q3lSCKhfkXC4l
 ee2NxuxFp1cHlM31qiqwkS6jGDgham2VwjAjaG9aHv3S1Qxv/d+eDmQ3qIDuJAv6hD+4QLX6awc
 /emJYYQReJO0cFfNj3Heyz1Q1D0HS0cnBsciRrTjD0FkGMHEvIuBRekoeSR8H3karHpbmwPH4Ya
 LpqH48aGPSazg81NrpuxsK2+RObIpusNEOK+7EvOjbHQqQGSOit7Jcyxi2LHBnBU1ozoeyWa7NH
 lflsYyqhO166WKU+cwe0dH+PQSBuOhDdWpwmLvQAX7yY6cKnpcaitghakK4e3HsTM9Dgck+02XG
 U+ZQvdjR
X-Proofpoint-ORIG-GUID: rikrtK2h3xv0u1VWWj6INflKwVxVr-0T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_163334_809904_2A115FB4 
X-CRM114-Status: GOOD (  12.56  )
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

From: Qiang Yu <qiang.yu@oss.qualcomm.com>

Add QMP PCIe PHY support for the Kaanapali platform.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 194 +++++++++++++++++++++++++++++++
 1 file changed, 194 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 62b1c845b627..b4dcf1c94459 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -37,6 +37,9 @@
 #include "phy-qcom-qmp-pcs-pcie-v6_30.h"
 #include "phy-qcom-qmp-pcs-v6_30.h"
 #include "phy-qcom-qmp-pcie-qhp.h"
+#include "phy-qcom-qmp-qserdes-com-v8.h"
+#include "phy-qcom-qmp-pcs-pcie-v8.h"
+#include "phy-qcom-qmp-qserdes-txrx-pcie-v8.h"
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
@@ -100,6 +103,13 @@ static const unsigned int pciephy_v7_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V7_PCS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int pciephy_v8_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]                 = QPHY_V8_PCS_SW_RESET,
+	[QPHY_START_CTRL]               = QPHY_V8_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]               = QPHY_V8_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V8_PCS_POWER_DOWN_CONTROL,
+};
+
 static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
@@ -3061,6 +3071,149 @@ static const struct qmp_phy_init_tbl sar2130p_qmp_gen3x2_pcie_ep_pcs_misc_tbl[]
 	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG4, 0x07),
 };
 
+static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE1_MODE1, 0x93),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE2_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CP_CTRL_MODE1, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP1_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP2_MODE1, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DEC_START_MODE1, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START2_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START3_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_HSCLK_SEL_1, 0x01),
+
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0, 0xf8),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CP_CTRL_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CORECLK_DIV_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP1_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP2_MODE0, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DEC_START_MODE0, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START1_MODE0, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START2_MODE0, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START3_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_PER1, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_PER2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CLK_ENABLE1, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SYS_CLK_CTRL, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SYSCLK_EN_SEL, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP_EN, 0x46),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP_CFG, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_TUNE_MAP, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CLK_SELECT, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CORE_CLK_EN, 0xa0),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CMN_MISC_1, 0x88),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CMN_MODE, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_DC_LEVEL_CTRL, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_SPARE_FOR_ECO, 0x02),
+};
+
+static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_RES_CODE_LANE_OFFSET_TX, 0x1b),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_RES_CODE_LANE_OFFSET_RX, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_LANE_MODE_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_LANE_MODE_2, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_LANE_MODE_3, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_TRAN_DRVR_EMP_EN, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_TX_BAND0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_TX_BAND1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_SEL_10B_8B, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_SEL_20B_10B, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_PARRATE_REC_DETECT_IDLE_EN, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_TX_ADAPT_POST_THRESH1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_TX_ADAPT_POST_THRESH2, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_EQ_RCF_CTRL_RATE3, 0x53),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_EQ_RCF_CTRL_RATE4, 0x54),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_PHPRE_CTRL, 0x20),
+};
+
+static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_FO_GAIN_RATE4, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_SO_GAIN_RATE3, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_SO_GAIN_RATE4, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_PI_CONTROLS, 0x15),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_VGA_CAL_CNTRL1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_VGA_CAL_MAN_VAL, 0x89),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_EQU_ADAPTOR_CNTRL4, 0x2d),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_SIGDET_LVL, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RXCLK_DIV2_CTRL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_BAND_CTRL0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_TERM_BW_CTRL0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_TERM_BW_CTRL1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_SVS_MODE_CTRL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_PI_CTRL1, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_PI_CTRL2, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_SB2_THRESH2_RATE3, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_SB2_GAIN1_RATE3, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_SB2_GAIN2_RATE3, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B0, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B1, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B2, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B7, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B0, 0xe4),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B1, 0x63),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B2, 0xd8),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B3, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B4, 0x67),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B0, 0xa4),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B1, 0xa4),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B2, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B3, 0x9f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B4, 0x48),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B5, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_Q_PI_INTRINSIC_BIAS_RATE32, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_Q_PI_INTRINSIC_BIAS_RATE4, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_EOM_MAX_ERR_LIMIT_LSB, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_EOM_MAX_ERR_LIMIT_MSB, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_AUXDATA_BIN_RATE23, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_AUXDATA_BIN_RATE4, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_VTHRESH_CAL_MAN_VAL_RATE3, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_VTHRESH_CAL_MAN_VAL_RATE4, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_GM_CAL, 0x0d),
+};
+
+static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G12S1_TXDEEMPH_M6DB, 0x17),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G3S2_PRE_GAIN, 0x2e),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_RX_SIGDET_LVL, 0xcc),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_ELECIDLE_DLY_SEL, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG1, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG2, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_EQ_CONFIG4, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_EQ_CONFIG5, 0x22),
+};
+
+static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_TX_RX_CONFIG, 0xc0),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG2, 0x1d),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_ENDPOINT_REFCLK_DRIVE, 0xc1),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_OSC_DTCT_ACTIONS, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_EQ_CONFIG1, 0x16),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G3_RXEQEVAL_TIME, 0x27),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G4_RXEQEVAL_TIME, 0x27),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G4_EQ_CONFIG5, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G4_PRE_GAIN, 0x2e),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG1, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG3, 0x28),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG5, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G3_FOM_EQ_CONFIG5, 0xf2),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G4_FOM_EQ_CONFIG5, 0xf2),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG6, 0x1f),
+};
+
 struct qmp_pcie_offsets {
 	u16 serdes;
 	u16 pcs;
@@ -3356,6 +3509,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
 	.ln_shrd	= 0x8000,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_0 = {
+	.serdes		= 0x1000,
+	.pcs		= 0x1400,
+	.pcs_misc	= 0x1800,
+	.tx		= 0x0000,
+	.rx		= 0x0200,
+	.tx2		= 0x0800,
+	.rx2		= 0x0a00,
+};
+
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.lanes			= 1,
 
@@ -4412,6 +4575,34 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
 	.phy_status             = PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg qmp_v8_gen3x2_pciephy_cfg = {
+	.lanes = 2,
+
+	.offsets		= &qmp_pcie_offsets_v8_0,
+
+	.tbls = {
+		.serdes			= kaanapali_qmp_gen3x2_pcie_serdes_tbl,
+		.serdes_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_serdes_tbl),
+		.tx			= kaanapali_qmp_gen3x2_pcie_tx_tbl,
+		.tx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_tx_tbl),
+		.rx			= kaanapali_qmp_gen3x2_pcie_rx_tbl,
+		.rx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_rx_tbl),
+		.pcs			= kaanapali_qmp_gen3x2_pcie_pcs_tbl,
+		.pcs_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_tbl),
+		.pcs_misc		= kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl),
+	},
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v8_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5276,6 +5467,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy",
 		.data = &qmp_v6_gen4x4_pciephy_cfg,
+	}, {
+		.compatible = "qcom,kaanapali-qmp-gen3x2-pcie-phy",
+		.data = &qmp_v8_gen3x2_pciephy_cfg,
 	},
 	{ },
 };

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
