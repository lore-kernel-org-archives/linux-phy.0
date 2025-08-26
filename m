Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46E82CA0FE7
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 06:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9vt/n+CiWpRXS/j2JvsXMdC8TnjczFKpMUMv2ocNYvY=; b=Jc8INBIsbjecXl
	8uM9jbiewPEM3ruBOrvzemKO0D7blfT7q2JjRuRlH/uSbnQPZiG08LaQLB/ouZx85yAAd/PiEU9Gk
	KukUZOnr31BU389upZiTa/TCxDMt1uJ5V59pxCIxvl3XjIGlLtRYcl+5UAcSPMpvM6ppHgP/DHxXI
	aX268yfwtX20Sgvl3VtI4aY4nUnPZQasXXNW3ZCe6SA8kytm1E1slBIpdEao7uVyv5UKLCY4pnPDj
	0vtKNASK5//JzlrjRXqnGGQ0dHhhLS9yWfdxuO7izEwYXhOlN5K0RqrZ0aCu1UU4yiMJhRkB0Iw2H
	+hpd0+566Lm3bLP83nyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqmm6-0000000AdgW-403j;
	Tue, 26 Aug 2025 06:03:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqmm1-0000000AddT-2gjc
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 06:03:16 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q4dNH3032260
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 06:03:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sg6t04yvwJowULjFjnx5seEWqKEX3qeXoRM5EgMAPfM=; b=RfX1684YHo0HUMXY
	3av/bca5vg96oBKkIwkB5qmb2BdU28UrjVccqUJ/aqaBPKbKM7T2+TyoVQwq6A2S
	8f9l9fBSD4OQtYg9tAGyqZjp2AHlZ2oM85gzWPLTov2CCdkPDg/rQ5LA7rNZrtdU
	YuVcoz3HeumKuwRwGBA4xq5C/3hUdCdj6LmpUQxDVIilnIOyqho4vk75FYRw1MtP
	lS1WD6CzHJohmLqXi8ESLLP+pXRXNkaowHzARkjeziSzRbHNPsuQFFYlg/pKz5u1
	Ca4K37Mu9oR1Sust9aeOc23B2mfEFCrD3Y2MXMnZW5GlVZKKEzBkMZ+4D+grK+aF
	TuQ1rw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q6thyned-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 06:03:13 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-244581c62faso64923815ad.2
        for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 23:03:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756188192; x=1756792992;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sg6t04yvwJowULjFjnx5seEWqKEX3qeXoRM5EgMAPfM=;
        b=lR5Nl6rxyk9P6CG8IbikHeMAmUMgVgNMRcVbuNpy8aq68wx81GtTxnA1ImPYQ3O4AP
         OJ78kPclF5bTyWVmuI9XfVSKNO0BeuX+3f+5ut6rzUlLoTM54bB0iJPqGKzfWsKzSo48
         xGO/3PqbPJEHd5fg3RFXZtZ2YIbJMlzdYgsYCoA0ScaMsD3x7ILSQLC3uVTB9hzuBVbf
         2hoXkKyZxgCOxYJytaGx4lUAIn9jURaFoAhOZqApixBc7MVLKyoG28XNUEtAwt5jF7vh
         XRhv1knRWAXxC3ux5ci5h1L0Qn+h7O2/IgSyfSFYb4lveE4WEWGiTBJUaUpkeMV5G7we
         fTmw==
X-Forwarded-Encrypted: i=1; AJvYcCUqtXWypOiZPcoaHEBESqwxWvIw69LW44X5gfn3bBWPn3l7qiucU+bPqTGz9Zzx+DKxPYV3EVkusrA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/Ix3GA0My/H8IodmI+TsFh3Tfv5J//2HI9GBsi79R3HpQFlCD
	sO+W70Lz1z2DPr+ZqC02X8MqJv8Alb444030U55VCABJpIyLgbOppfauJ4plOQsOC3NINwmDgp3
	PTpRkNY9uUbGh/yb+kX4NPJxbsCgd0L+6J5MM8N4HrCgfZzqTXgUwTtsfv87AohdJ0jxt
X-Gm-Gg: ASbGncuR+MjXdZprZ4tq/7hc3ZZFG0QJuvWk4n+om/gX6Z3LX5/Cr65nAn2TSzmlkTh
	RVj18O/Z4GsS9eIuC7wBmmQC2l0lY5sAEzjHTkv8iXyDtx7otDT6AfrSffqAuKlU/pAIKRZm55h
	bMJJGss9IP2eT0E7aDOHJTcIhQzWh4tIuwQX0024S2F81g//mrp0bFwk0yzRnYdE+B6IsaQ9BwF
	1j9UIPIdIp+NVPTOBhjyx6EI+pZNaj8YHayuOgky2C20rxlnJxDv56O6sfk+4wjcipIflwKWuJQ
	c2y8aAuWT4H+ra8rnUas6b3SyAzlOCgjg7u0/c1R0UM7XZdUXS7hu3NRltTfCSLgf9Mc7bii1dT
	vVLvV13rVDdF07AI=
X-Received: by 2002:a17:903:38d0:b0:246:2e9:daaa with SMTP id d9443c01a7336-2462edd744bmr208899205ad.2.1756188192433;
        Mon, 25 Aug 2025 23:03:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHiaCTpX91QHxe9LUTEkm6kd/z7vYyzcxIas2Vh9StaKSasNwJP5+pW6S4fOangHLfokQ0h1Q==
X-Received: by 2002:a17:903:38d0:b0:246:2e9:daaa with SMTP id d9443c01a7336-2462edd744bmr208898715ad.2.1756188191950;
        Mon, 25 Aug 2025 23:03:11 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24668864431sm84989705ad.93.2025.08.25.23.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 23:03:11 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 23:01:50 -0700
Subject: [PATCH v3 4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
MIME-Version: 1.0
Message-Id: <20250825-glymur_pcie5-v3-4-5c1d1730c16f@oss.qualcomm.com>
References: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
In-Reply-To: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756188184; l=2792;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=Nr0WsLxc/VUi4y8+iOUuwvKAT/kAkH+eKp93ndoPpzE=;
 b=IUeQDJcS0dNEhoUydBJ/BH9E2XHxLFHiVZroalqVWq/AMBSiil/8rq7ghXuNk5bZdyRNohUj3
 zH7iwApD2x4CZ+dNfxgFd4NhxSVSBGlfMIl9G/oSS4izoGfAJBLsfiT
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDA0MyBTYWx0ZWRfX+3Bn0L+vxCXq
 7geRvNrTKVTpGBG97szH2JNp5k6E/xp//umF6nT7z6BsMwsZLr3KKg2cgennTksncsDMU2IamLU
 55EaP5vfH5OkXiVLqoTBdBOZThH+FZNtowVLsiTaxZF4vXVi/fPXIpxBtNWU9F9IcZs6pRUqOKx
 gDJDSGM5D9H3iuwqAd0P6D9OoF0jzd1ypipjnrX+rLekVeWUbSzoDYT8f8rBnohUFuS2fyDLonW
 lf1MN0BkffNas8DgzqMQXW4jc4oX7VIA4NErX3hL/Gkqwh6WGdTvCuZGzwVk1qY7aY8Zbc7UW74
 4xng3diV2bDMNZEhxz0TGpcWUMNeJU691IaLcK3LBxRZP9pYYuPstlDobbcQZmeSbrsiMNeYTcy
 4BuLtGxq
X-Proofpoint-ORIG-GUID: RwuQ1jmO9alGRCvhNJwQXy0evaZvgTlD
X-Proofpoint-GUID: RwuQ1jmO9alGRCvhNJwQXy0evaZvgTlD
X-Authority-Analysis: v=2.4 cv=W544VQWk c=1 sm=1 tr=0 ts=68ad4e21 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KvwrgBbZ-pJFRlqJlL4A:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 suspectscore=0 phishscore=0
 bulkscore=0 impostorscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_230313_948160_B1A66902 
X-CRM114-Status: GOOD (  14.84  )
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

Add support for Gen5 x4 PCIe QMP PHY found on Glymur platform.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 95830dcfdec9b1f68fd55d1cc3c102985cfafcc1..011687e6191e7a496b56cd85a149b10f7f00a749 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -93,6 +93,12 @@ static const unsigned int pciephy_v6_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int pciephy_v8_50_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_START_CTRL]		= QPHY_V8_50_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V8_50_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V8_50_PCS_POWER_DOWN_CONTROL,
+};
+
 static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
@@ -2963,6 +2969,7 @@ struct qmp_pcie_offsets {
 	u16 rx2;
 	u16 txz;
 	u16 rxz;
+	u16 txrxz;
 	u16 ln_shrd;
 };
 
@@ -3229,6 +3236,12 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
 	.ln_shrd	= 0x8000,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
+	.serdes     = 0x8000,
+	.pcs        = 0x9000,
+	.txrxz      = 0xd000,
+};
+
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.lanes			= 1,
 
@@ -4258,6 +4271,22 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
 	.phy_status             = PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
+	.lanes = 4,
+
+	.offsets        = &qmp_pcie_offsets_v8_50,
+
+	.reset_list     = sdm845_pciephy_reset_l,
+	.num_resets     = ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list      = qmp_phy_vreg_l,
+	.num_vregs      = ARRAY_SIZE(qmp_phy_vreg_l),
+
+	.regs           = pciephy_v8_50_regs_layout,
+
+	.pwrdn_ctrl     = SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status     = PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5004,6 +5033,9 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 
 static const struct of_device_id qmp_pcie_of_match_table[] = {
 	{
+		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
+		.data = &glymur_qmp_gen5x4_pciephy_cfg,
+	}, {
 		.compatible = "qcom,ipq6018-qmp-pcie-phy",
 		.data = &ipq6018_pciephy_cfg,
 	}, {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
