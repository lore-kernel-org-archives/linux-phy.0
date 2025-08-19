Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DEA1CA0EFB
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 11:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JS/Z09aBSmhXX6fU42KSRh8H4XKWvgKMd3QxpS1HksQ=; b=eQpjQfYrx5/8hB
	PKcX6QaOVNJyZ+f2HrsuBcz8+dioiwl7gkn0HALek7C+5FqxgoIN4+8Y0xF426zRsLb4l7B7FK/q3
	EbK/mC9qftG9t0xPpW9Qd6NY1P/lFqXHrt4rmc2MZmUm/MyhnPsWiMYZOHnab8xrFqqoyuPhJJXow
	9Qdo6dssYkTk5aJU/rHrJe+nhlIFvpyD4MgqOMBCBDwNikbaAHpQn5rBWzsnEbXzHk79aCrC8YNsn
	kO7l7ktYIGJoktFDHXjjfBwTTsZRvEnpn3zET4np/tRRADhZMkZgnbW22Ys07qqDaqvcsR1MWjmBD
	vQn0OvaC4oozedz7syQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoKdV-0000000AIvq-16EF;
	Tue, 19 Aug 2025 11:36:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoJ1Q-0000000A2Bt-3j7w
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 09:52:54 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90Z5x018032
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 09:52:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZXdUtQNXJ2hesfvhNvI/OWy7YCjNNYfGl5bsLwFo4PQ=; b=WxLe+u3YzcryvC+U
	6hBambZ+jwevUrQjnFGvbMsmUWo5fF82NysSjIDSRMKtM+4i2ZEGvuLG2g/LNkRE
	V8im4WQf0tG7EBStZmOLzapDhH+C8xqSMOGvdai2EUVZN+pCjKLatlPm8BoE/kwf
	bZ5AaMn3s8qSGuvgivOjk866wHVjGv01Wo77tAWdBpx2rt2LFSGxPT8n8IMBc23l
	7Z5M2Jd62WJ8JR/9MqV/NBgQh/lwK7pDBHuOjX/UGUCopZTmREpIkPL8I3JuTveA
	I8nTPLVdi/aFVvbBYxf0l/oiTNK/2ic/2EGF1WPNAAQlo6SRgvE3aoCgf7XRkH4B
	/hxeiQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jhah00ke-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 09:52:51 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-76e2eb2b837so4200018b3a.3
        for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 02:52:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755597171; x=1756201971;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZXdUtQNXJ2hesfvhNvI/OWy7YCjNNYfGl5bsLwFo4PQ=;
        b=b82W3W6dOn0kgHuKbcgdTIzMapNMmRyFc0BwZZlSbS5oj3HzOxbwjqsHhQ6e3MWRof
         wXNfxg5YdnAoWMAX0Bc/N8d5npdItcJ9lUTUVsSY5EUjr375HytxJi9/M8Oq/A9kt2dK
         uL134lNk/yH4mU65t/ZzLwnuqFkCcZ+rAYAM8cjrvm6Wc0SnJU3F/XP55e1ERQttXPuO
         3wWir7mT7LA1iK3BdIyPAdpKmIksUi5jJYUcCzNnxFYwbZED8wVyJDfg6+Wk4/AXeAVT
         r1zA0Yjy73Ad0SQydLwAlXgl2c2hGI1H4+vKgyTlP+QFwPYhpf4PchUVbDSgT6cDLpEI
         rRIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpHLLOKnBnWWu5yHowIYfYYDNH8CesmxXS4wGj1lop8h5WCImoLTSU1D0Sm0mV3BEXDcxEUWU5lHs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWJOsjp3HbRr6LrPzh2Wn6vpdjXN9Nwki7kXbcI32syO1uLLKb
	/CUym5hLF5/d1qT523yOw4Peoe13cTGE8QxcPE1HWpEZ5yvr8W6ky0uIvDn5P0YYeAA/277kKzi
	i+pSpAgKTg+7jqo6pu79hJt0w1pXi/AWzJ1RY03Kuxxsi1KpenFVAQDXaS71cAVRbIVr0
X-Gm-Gg: ASbGnctHGjt9p8ycYeuF5/ZaKbcBGWhmLqmYKCYNp6H/jqdEuJ8lvdP+eyIbtzJTnvt
	/NU9g1YSu+jTxpOlnt5iT9P4QQSS/H6t0gtoGVcbkeW1LxYqQ645HeCnhvkeAo2zxbvHM267NeZ
	yN55/MU0SzWfuCpWb2fL5PWuGiEIFPbca7oRH1MwzjATsH96icnpuYiqGgGUjcBXH/X5WSugejM
	zwkU/XAn2tDehrcHtMJ2k2OYuxiplTR1Aqfxf9H2Q13dNOlCOjifx1inXpJklKk6skbL46AAF/X
	x06kMF0W6wL8NJNLL6hB+FccKyFGE+WnABcBI+uOckoPqS1Qc/F4JMU+1C+n51isr6v3l2xDk5R
	U05n8gCijDo1scmo=
X-Received: by 2002:a05:6a00:1893:b0:748:e9e4:d970 with SMTP id d2e1a72fcca58-76e80e746a8mr2218634b3a.1.1755597170745;
        Tue, 19 Aug 2025 02:52:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHf4aRpNKR1aJRW4hTTUipwhih4soPt+VU7Faus3psEcWXtA92FJ5i400YWIWNJxAKyarm4MA==
X-Received: by 2002:a05:6a00:1893:b0:748:e9e4:d970 with SMTP id d2e1a72fcca58-76e80e746a8mr2218594b3a.1.1755597170275;
        Tue, 19 Aug 2025 02:52:50 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d4f7cf7sm1998291b3a.69.2025.08.19.02.52.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 02:52:49 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 02:52:08 -0700
Subject: [PATCH 4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
MIME-Version: 1.0
Message-Id: <20250819-glymur_pcie5-v1-4-2ea09f83cbb0@oss.qualcomm.com>
References: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
In-Reply-To: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755597163; l=2597;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=IjDSUOkDbzgxEeCC7x7bThrq8X7KAnHKc7YQ1oYlFq8=;
 b=+Yimf78LSPEQGi1dy/kn7GxcxX38qdkUzPgyA+eTTvwfToKLPMpvQ4zApWicSQZq7xwZZVLFx
 M1Nj5OfoxLyAau0VpucdXkSVo4mO9wu4SzVDBKYbvItORaLJRe29M/u
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Authority-Analysis: v=2.4 cv=D9xHKuRj c=1 sm=1 tr=0 ts=68a44974 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KvwrgBbZ-pJFRlqJlL4A:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: THhAj6O9IkEt_QhMlmWdis75y1PhjQZQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyNCBTYWx0ZWRfX/0izvsRg/FJd
 O2i40SloIT0zpH5atzxZztUitKwpsrBBC4TJuAC74pEen6IJnmR6/NT6zpDb0Xdt3EIRB0+2szF
 vNdB+I25kGe0nqGJ1pRKD2+NKAF4jZW+1UKG6fpS7Is9fKyEZxMu8Mj/xY5S8naGEk7bSvxgxa8
 KQcXgJFORNtQ+JuW4TqVyykd2oRcaL7M4Qaq0OE4anzZncjV6Uf1mek26sVEhTh3E23IOW2EnzL
 ScE8+Phca+2fhtVKvLj+exyyNQ1Ls/GaCgqTRJA+mI4G5sG+inL6IzIoTxDhDCtOwXEFWBYsKQs
 SWxrYsKco5VNHZsWK8LhvwRfMWsvw1fE7q/9xDTVAQeGEzxzqTzrycXbU2P7tvxcyX0qsz2TpD+
 CGi1Lgwi
X-Proofpoint-GUID: THhAj6O9IkEt_QhMlmWdis75y1PhjQZQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_025253_050325_1EC541B3 
X-CRM114-Status: GOOD (  12.83  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 95830dcfdec9b1f68fd55d1cc3c102985cfafcc1..e422cf6932d261074ed3419ed8806e9ed212c26c 100644
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
@@ -3229,6 +3235,10 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
 	.ln_shrd	= 0x8000,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
+	.pcs        = 0x9000,
+};
+
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.lanes			= 1,
 
@@ -4258,6 +4268,22 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
 	.phy_status             = PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
+	.lanes = 4,
+
+	.offsets        = &qmp_pcie_offsets_v8_50,
+
+	.reset_list     = sdm845_pciephy_reset_l,
+	.num_resets     = ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list      = sm8550_qmp_phy_vreg_l,
+	.num_vregs      = ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
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
@@ -5114,6 +5140,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy",
 		.data = &qmp_v6_gen4x4_pciephy_cfg,
+	}, {
+		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
+		.data = &glymur_qmp_gen5x4_pciephy_cfg,
 	},
 	{ },
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
