Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6A8ECAC5AA
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 07:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8UOfmVBI9Mp4JrCYG+35Jot5dFgsVShUPHyo+2Iie3c=; b=q8jj3n/M2BsaYb
	9ToWHHlA/JPnGAMotA5Ma6JLieQL9r3UrUnBs3zBlAHcbiGUmm5O1M3TyAjYplXUlyT0ov09NlmzA
	x2/5kNISUa1jBLZN3Ezo7jaXFsxW6Es3Evtx8HyHDn/Dys2Kr8onYmFiXt8qosw9MAR9dcrWaUrya
	hRAC+qokADvwCt9R5helIaV8P5H4fhD30Zg05ECly6e+rQz29ULXP3YHY+0gghjYHLFyWppG2ee5n
	TUSeYZIJtS8s/0FAF1IJ7uMsnux54yMifBgENZFHlu26PgJCd/zRpV93838WJq1y1bokxuyFKzYxn
	m3Dr00QWGSvs00GHXiHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g2y-00000006Y8c-2JeW;
	Thu, 25 Sep 2025 07:05:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g2v-00000006Y7N-2rRz
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 07:05:42 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P4auFN028515
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:05:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xaxo68cQZZrWEEivhuCOX2owVkj5hniZ5EATwBZwjNk=; b=lqKrZrfmnA1mA49d
	BMGBV4DJ0/vxTosfPR90Pc4E2f5oXHiWVRexHvOUMa/OsMVrAoLIGm7yQnocHpSX
	ccZgtt9i/Uu+1iHLafyo5iUwbbRNSxcadDmTp4Eszsth66cIXI2ARYyIUoTf5J4c
	t4oWuZz6CnM5fEuhtOvh6eNiGyGZ5OYiMwgJYaLItz4/bZUfT/yUq16n1tAwrUkY
	j5G8N+5rGjKWdXoXhwM5mBjmcL2bcZ+BoMGsJio78CJnKMfRU/84v71ENg9Ir7mc
	5dhATCTLyEEfLO56LjnspaO8gzewjGHuJKvNoIX7sjniAYYKsY1xuUEVBTaDvLzf
	0jpHCg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49cxup0btp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:05:41 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3308c669152so189319a91.0
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:05:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758783940; x=1759388740;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xaxo68cQZZrWEEivhuCOX2owVkj5hniZ5EATwBZwjNk=;
        b=Uzggz4m+VBqU6Y27XFF2/S4p+bXb8tSGG3Dg4xFtZ5LHSe88vdJ5whqlygnPdt8bBF
         KjS7p5tsKGpaUB5VIHUPh652r2zG9OG3/VsSCD+zOZD8/Kabjz6UGcD3Es3Xk59xJTsw
         Iw30q9bsC+j5a9Y95X8Blw3ufFHDfiRHUarhSOR+HdT4x2JHYCdLp18143NHTqodhThW
         SykBFIgycddSre4akjUdK/c6MvSPzLQ8ZXJZhKcTEpglh1wvXP3iUzWep6KgFlldQa3q
         tnHpUOU3tfLM5ZkdcLDax7b+zG1I7lF3hXkqjj6mZbVs42v0xsMvTLUWNYtArarzq38X
         NbQg==
X-Forwarded-Encrypted: i=1; AJvYcCXJ+jEwt5OPGg96qjtq3Tuv7S/kK8qThSe7a8jgekKI1PkFgMagWNrcdmzyw9+5d8hUD/rOWC1C0Fs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZyAc0X99uDSH9oA9YWei2lAUViOmUgFznYebuNdxbE5FLcn10
	4vGMZLhIH8QGEJgOxeCqrA3JY9Y6yyrWSayfurpzptIkDxzg+lGgJFvsd/Oggcxg8N0Yy+/ZD/M
	qWnEAQDs7LFrnvYWhEJnWT4h73DIZ/cuCx4bWY/pRBbC55UJUD55SYZhC9hG/N6X7G+Gw
X-Gm-Gg: ASbGncvB3IXJuFVuZYv0dC6IyMJlVdixznSYsRAXPIq1rYuAMbppvjk5jw5OhHuISFG
	1tpYLcfA1prYGvqc5gfQkDllFc6PtLNLK3/XS1Fbq5HQMBXN1vnm+Z5joym8EK1xvmvcyRVkrnR
	yVKmHLQdotpCuQMY9YqaKv52rUPSuB7+Et8Mu5nwzXdhyrkEgAOgJ2J+gejk69Ts/EpxmP2hD+N
	gezH4Z8Xu+LIFRelOirz3FzZYzN0n3c6rMc2Wp659qel0ClARji3e5NREkybyjiAZIeb6fKvSJQ
	/p9jMckrBLtk322bpWB27z0CPlOXrUlyq12mUO31phqYhBkSsFOwVe5KcMG2X6dj8+VSihlm8tk
	zihLKYi1a/IJ32ZF8bo/+/q2F9Z6NsC5Oyslv6uX38DJpflyqDd/Q53Is
X-Received: by 2002:a17:90b:388e:b0:32b:aed4:aa1a with SMTP id 98e67ed59e1d1-3342a2becc5mr1437904a91.4.1758783940318;
        Thu, 25 Sep 2025 00:05:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF08XNZvMgLQSMxyP3a6gJQ7OHs/SMmu2hfWmPLLtMYILn3N1lf7IdRY1VjzAg/lXzvndi+aw==
X-Received: by 2002:a17:90b:388e:b0:32b:aed4:aa1a with SMTP id 98e67ed59e1d1-3342a2becc5mr1437881a91.4.1758783939828;
        Thu, 25 Sep 2025 00:05:39 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3342a2bd584sm914253a91.0.2025.09.25.00.05.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 00:05:39 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:04:49 +0800
Subject: [PATCH v6 03/14] phy: qcom: qmp-usbc: Add DP-related fields for
 USB/DP switchable PHY
MIME-Version: 1.0
Message-Id: <20250925-add-displayport-support-for-qcs615-platform-v6-3-419fe5963819@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758783909; l=3979;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=V+bmwYjKfMRV9O7yUHq5omi3q3vjjg0Qz8GTgu2JE4Q=;
 b=Ae0l6papN9LzPWR+g9eFxMd4ZlEhIaSGUpmSLY4qxCCVUqXRcR6QD7bRTeW43zrHkOlMzP+Ve
 p5rKCT8LoSsCIdXV1/sNtFb7PSqek1AuWbZErM1yQ8AxonY2RoJ96Vg
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=B4a50PtM c=1 sm=1 tr=0 ts=68d4e9c5 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=jm3WsR2aq1IkTfYpOVcA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDA0MiBTYWx0ZWRfX8KWMvAKjJ3zr
 Qcdq7k/8lZlOQGDPvbMLBFAhwULChkeZxXXunhGmJdLZFQ/IOXe6+wBs+1hKbS7OZE7kJwA29Lu
 PEQFO5GTIgcLYYB/w+2FKKbKlFURA1zqMjNzpg8yPXQzytHqwATbxoK73RVn0Ow6jhL2VMbz1Qo
 NUs731hUSW+3dxR21E5i/5NLWuQjo3fQ+Y+POrnezWXoawn5MN9Ohtgb91Eki6Cy+EcFOi2HKNh
 vjy77G9ju7FK+M+8yerrtpp1jZMLMVHyCq6EBFo+e8QYeIcUO6FSgSPeks9Gqahs/2s9rZNlsuO
 o69D5E666RH9tPHUSrTLGlNZjwMTF/ylelXeojRnCfj53DW5LrabaH+eZUbX/qNDq7y4aoHa6wh
 c4NN/UEg
X-Proofpoint-GUID: eOqUJaN1gzLGx01Cvtf-FmN-evYLdueE
X-Proofpoint-ORIG-GUID: eOqUJaN1gzLGx01Cvtf-FmN-evYLdueE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 phishscore=0 clxscore=1015 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509250042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_000541_734088_5D95D7AE 
X-CRM114-Status: GOOD (  16.96  )
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

Extend qmp_usbc_offsets and qmp_phy_cfg with DP-specific fields,
including register offsets, init tables, and callback hooks. Also
update qmp_usbc struct to track DP-related resources and state.
This enables support for USB/DP switchable Type-C PHYs that operate
in either mode.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 54 +++++++++++++++++++++++++++-----
 1 file changed, 46 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 62920dd2aed39bbfddd54ba2682e3d45d65a09c8..de28c3464a40ea97740e16fe78cba4b927911d92 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -293,13 +293,18 @@ struct qmp_usbc_offsets {
 	/* for PHYs with >= 2 lanes */
 	u16 tx2;
 	u16 rx2;
+
+	u16 dp_serdes;
+	u16 dp_txa;
+	u16 dp_txb;
+	u16 dp_dp_phy;
 };
 
-/* struct qmp_phy_cfg - per-PHY initialization config */
+struct qmp_usbc;
 struct qmp_phy_cfg {
 	const struct qmp_usbc_offsets *offsets;
 
-	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
+	/* Init sequence for USB PHY blocks - serdes, tx, rx, pcs */
 	const struct qmp_phy_init_tbl *serdes_tbl;
 	int serdes_tbl_num;
 	const struct qmp_phy_init_tbl *tx_tbl;
@@ -309,6 +314,27 @@ struct qmp_phy_cfg {
 	const struct qmp_phy_init_tbl *pcs_tbl;
 	int pcs_tbl_num;
 
+	/* Init sequence for DP PHY blocks - serdes, tx, rbr, hbr, hbr2 */
+	const struct qmp_phy_init_tbl *dp_serdes_tbl;
+	int dp_serdes_tbl_num;
+	const struct qmp_phy_init_tbl *dp_tx_tbl;
+	int dp_tx_tbl_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_rbr;
+	int serdes_tbl_rbr_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_hbr;
+	int serdes_tbl_hbr_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_hbr2;
+	int serdes_tbl_hbr2_num;
+
+	const u8 (*swing_tbl)[4][4];
+	const u8 (*pre_emphasis_tbl)[4][4];
+
+	/* DP PHY callbacks */
+	void (*dp_aux_init)(struct qmp_usbc *qmp);
+	void (*configure_dp_tx)(struct qmp_usbc *qmp);
+	int (*configure_dp_phy)(struct qmp_usbc *qmp);
+	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
+
 	/* regulators to be requested */
 	const char * const *vreg_list;
 	int num_vregs;
@@ -329,24 +355,36 @@ struct qmp_usbc {
 	void __iomem *rx;
 	void __iomem *tx2;
 	void __iomem *rx2;
-
-	struct regmap *tcsr_map;
-	u32 vls_clamp_reg;
+	void __iomem *dp_dp_phy;
+	void __iomem *dp_tx;
+	void __iomem *dp_tx2;
+	void __iomem *dp_serdes;
 
 	struct clk *pipe_clk;
+	struct clk_fixed_rate pipe_clk_fixed;
+
+	struct clk_hw dp_link_hw;
+	struct clk_hw dp_pixel_hw;
 	struct clk_bulk_data *clks;
 	int num_clks;
 	int num_resets;
 	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
+	struct regmap *tcsr_map;
+	u32 vls_clamp_reg;
+	u32 dp_phy_mode_reg;
+
 	struct mutex phy_mutex;
 
 	struct phy *usb_phy;
 	enum phy_mode mode;
 	unsigned int usb_init_count;
 
-	struct clk_fixed_rate pipe_clk_fixed;
+	struct phy *dp_phy;
+	unsigned int dp_aux_cfg;
+	struct phy_configure_opts_dp dp_opts;
+	unsigned int dp_init_count;
 
 	struct typec_switch_dev *sw;
 	enum typec_orientation orientation;
@@ -689,7 +727,7 @@ static int __maybe_unused qmp_usbc_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->usb_init_count) {
+	if (!qmp->usb_init_count && !qmp->dp_init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -709,7 +747,7 @@ static int __maybe_unused qmp_usbc_runtime_resume(struct device *dev)
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->usb_init_count) {
+	if (!qmp->usb_init_count && !qmp->dp_init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
