Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6C23CA101F
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 06:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxhVlP2McKVUVXr0OvFefR+1Ko9jR9ZBqLJP0FtjPpc=; b=T373X7os62tWbj
	lYuxHTDJqoMkwI08zRsGXCbGtTt8QK8iCyQR2C39GYb6S+p2T4vjTLh/8T79kmIUi643j9TeWWU1M
	w+xqq5Uh5y3VONnambJ5DCUQoB24AXBmB4f3Eghasln9H8mLFD0LMTO+gkZy25uBVEmPQxBoQT9Kk
	z4DZW3FDy5uFWwUr74RoaFQRwfpcOv2DpeyEwXdr3HYoiBh7eh/hL7pq8TySd0rnJ2Y8W3ElZDEjv
	ySuT17PK/pSgOKWlgelOURVXkLCVSrRLswdcl0JTbOikKNDrAO6m9izX27zpIpBJh70koU0y7PKga
	Veh+FyG/TiqL7TPC8V3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3S5-00000009Wpy-2gq5;
	Thu, 04 Sep 2025 06:28:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3NS-00000009V6S-2VC8
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 06:23:23 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5841YIfU019989
	for <linux-phy@lists.infradead.org>; Thu, 4 Sep 2025 06:23:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FH2W+hNthlwsjcU6LhQutSm9G0ruDj/xBkaCmXCbKhQ=; b=UvCwlHKrrv74UuvK
	sc7yG6NP9KiKG4SjoeMT+PPHbKwK0bs7K8T/gyogI1836D12a40VHNkNJl/yOK9o
	MMUUVlyvfmvgET0J5FLPc9nHOhrvjYPPy/UeKHgcdpjPgzRmQwqCulW5Di+Isf4H
	GTXgUWgwGLrIxAMgoniYxUoxijVhK2w5xo1+bhvZamlYO90EXA1vRRY+rx7f60qG
	XjF1qHxFsBiOvGiBPwSnQ4EzuIt4ffniyo5UhReJcTClwbhpf/GaK1DwHdomobOo
	2KBFpZCp/We9ktiw6ASZFhzagSRyLX8BzpZaxio04JxH0XGoB/ModrenhA0JRO2J
	CwE8Rw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk968jr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 06:23:22 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3234811cab3so739092a91.3
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 23:23:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756967001; x=1757571801;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FH2W+hNthlwsjcU6LhQutSm9G0ruDj/xBkaCmXCbKhQ=;
        b=ApF2Gj6B6D0+0i87/nchZFEy73zGwrQVfVdhItOPEt64Hz0/sHjeHfF4kL9W5KFPa6
         +SBzrFMJ02wrnbotmIocvdJztSo+NTXq8g+PqD9Ac8nGifrHMr3FoCnEMPav/O26MdWD
         VchN/kh3BJjn8h0lO8NWxHBxDSWFsUjah/Ah3D7Ubyg85uD7KNoMTYcn/t1L56/gEQAI
         4pvyno11HV8gvbspYiEUHzuWJ0g+kBBh37f6ENeXxJuo/g95L4yYFtA4GCGAOZMk3CEI
         G6sZamq4HSW90LjRIWa3tVosUkS4CIvWZv7Z3hyVgT8Fmbgu45/1ByYxXkEirLoRyzcB
         Engw==
X-Forwarded-Encrypted: i=1; AJvYcCX/8dHQO0tz2ZJz5pKPMBvA8L04yWamJqrPYzW8K+Scn2P2QVTpDYIPQPtAS9Sv5DAruEc0T8kkIn4=@lists.infradead.org
X-Gm-Message-State: AOJu0YypjLHJWGaCO+6EyowSEb/LYvvXShuQhhEJunKc0XnAk3mHlqFI
	ebTJCIgx+bv1vV+wknlbTw0eE0LMRAN263vg0V60ePL4AmJLdQH35MyKwrqyMbDkcd6gS1ufGs5
	Kjq35BQ8njA9H0SB5/ATzS3An6ZTpz7Cg+KZXV8aUiy5GNP+yCEEZ79BHwUTh6AbgvhbI
X-Gm-Gg: ASbGncudeuXpY7hI6Ik7Jh/9nvjDU8nQ8FgcpthVHS7fZepq+WkY1ifVuIdxLZOmt2V
	WhL+O+Tj+BjoKUvRJFoWxpq/180o4l7Rh8QTdYXeM5sqfJpfyqEK6IeCmFo4Eh2CVOe09WtbNtf
	PJKZvBMzGJcsPKitdIyX/xZwGMoCw6rFe4mQCyWkEAm/yQBrXpKAT8iTz5ZwZ6gyfapdO9i2CdZ
	UxKgFiT6giyJj53f02hWh0ze8HlEmIT6RFXIdaYpUmw466AYhgL+I3E8ZhmXVC+lDzTjaKq55we
	1Bct9MO0VXcOMofTbK6OStxsElkd5DA/5nYXK3aGK5lFb+cffW8ctFxzYUzlGj8NoND0KIlyCTP
	XiZhj2szqzdE2up8=
X-Received: by 2002:a17:90b:5190:b0:31e:d4e3:4002 with SMTP id 98e67ed59e1d1-32815411d3emr21146310a91.2.1756967001298;
        Wed, 03 Sep 2025 23:23:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwUeM+ClagutolDofBUjVohRmTJoK3OIjZuYPW7td4JSGTMamC9aTtqyQQ14+pL8kEkZeDvg==
X-Received: by 2002:a17:90b:5190:b0:31e:d4e3:4002 with SMTP id 98e67ed59e1d1-32815411d3emr21146296a91.2.1756967000826;
        Wed, 03 Sep 2025 23:23:20 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7723427c127sm17120911b3a.62.2025.09.03.23.23.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 23:23:20 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 23:22:05 -0700
Subject: [PATCH v4 4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
MIME-Version: 1.0
Message-Id: <20250903-glymur_pcie5-v4-4-c187c2d9d3bd@oss.qualcomm.com>
References: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
In-Reply-To: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756966993; l=2876;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=Ruwm7lGDShLRO8c1+C0WfHCrP5dAWvWnDGg5quqL960=;
 b=2lXngGqEWRqYeQyiji0BInBdRc6hNVgLNCDjYXB1c6Be4DQSZfE/62DPSDg+OUwWE15axu8Ac
 p5ibZeXiY5ZBhJz4vFvXf8AymX4ADH/zZZ2wdDz3AJKl9bPmMenfHF+
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-GUID: Hw_mo_tlYJ_xZjR6JDLlbS3thKcCPkRE
X-Proofpoint-ORIG-GUID: Hw_mo_tlYJ_xZjR6JDLlbS3thKcCPkRE
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b9305a cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=KvwrgBbZ-pJFRlqJlL4A:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX/wNGQDM4Exez
 uoOSykH6siRKm2mleBesBa5C2/KUc4G9rr13ZphXp7nbQQWDGebYZhdMlfbm3Ekkd8vzPa2A82w
 SYzN00IR0aS1cil2b1n3YVRrzliMBMPsghCROrUf8gG0wIEbxhd4y/f9QcHjBrv58F5jQOgVaMj
 3T4utzpszx0O5iLD39WSIZVfs/o1nUHz36zyrYt6vrN06e5N0xm5WtbdEG5EOp4CWyM8DnWbp3i
 Km8gRntz2j09Dfte77TPfGaZd6DoTONRIoxgdARO1/b9Q+jZlOvllzqhNUDRYxxrAZaEbPDT1zZ
 KWAJBiPWGizSV92Fwytj0kzfEld1UoaSe1259Lz+fZpuvnysKHqOjzRJZX0usFxUu6Z8fxBqHGA
 hD+YEbsm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_232322_643937_327EE192 
X-CRM114-Status: GOOD (  15.05  )
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
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Acked-by: Manivannan Sadhasivam <mani@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 8fdc146ef73221392371c00afb21d673dbf46d49..dc741fa8900a3a89c88fa51aea13fb912347915b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -100,6 +100,12 @@ static const unsigned int pciephy_v7_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V7_PCS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int pciephy_v8_50_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_START_CTRL]		= QPHY_V8_50_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V8_50_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V8_50_PCS_POWER_DOWN_CONTROL,
+};
+
 static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
@@ -3072,6 +3078,7 @@ struct qmp_pcie_offsets {
 	u16 rx2;
 	u16 txz;
 	u16 rxz;
+	u16 txrxz;
 	u16 ln_shrd;
 };
 
@@ -3348,6 +3355,12 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
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
 
@@ -4404,6 +4417,22 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
 	.phy_status             = PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
+	.lanes = 4,
+
+	.offsets		= &qmp_pcie_offsets_v8_50,
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+
+	.regs			= pciephy_v8_50_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5150,6 +5179,9 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 
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
