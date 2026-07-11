Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCE1EC43458
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jul 2026 17:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dt8uxm3sn/fvYRGj3Pe/9AN2iwUGXFzMq32/sQqCbhU=; b=IwEL35w00pBo/t
	KtoBdfj3jaFNaJPEqcfegwklDkJQLVA6R7LQYHYnJx5GHO7vDjB4LPGs4NuCDue/rtH/STiBNtha/
	nSd4ijZczXkvP3TgaVQ1lvq2INYIRyPDF6oMzL5OjbcuF0ZxossRM81fC3vvGWeQAm3RpD7Q0y5nS
	NgA9zHkRBf2mV7kk1vdCY9i6b1euIjz3t0cjCFicZOM5oFEBP2vtZwIetFHGIg/a0YuRmUjwmKFgC
	JJWZBGGibOIAvuwZmNDWpnb0ewGAgTEXNYiYQqwnqBAsNCmfAI86NAtNqj4fixPCVlHkNCd+c74bW
	6mEn5EBH2jwkuq8zTJxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wibDZ-00000006iVK-25sK;
	Sat, 11 Jul 2026 17:10:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wibDW-00000006iUI-10HB
	for linux-phy@lists.infradead.org;
	Sat, 11 Jul 2026 17:10:19 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66BEOHpQ3871481
	for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 17:10:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rn7fwHxfFOX/isdk4ukXYQLob0WedKotBlCuMDd7Tzw=; b=JoCK9hbaiue6C6gU
	2zyf9Eh+cZaf0Tqjc4NzJucvH1HPiyx//5gbS4fCtncnt61Q02GYSX6TsJLRUJf8
	lePsaD+xO/OanthIY/FmV8/fmiN5Svd5cG3qdPMcCjhSujuyxv647v7W68siuWEc
	9zSziLBYcLqtQ8bBW1JdxsiyMeEqvApKZC/eWzShsAgKSpStnPDnS0fAXjQDO9wG
	9+3ZDx4onRChIt0zTpEqxBrD4BN7V34cntWIlIbokqh29OXkitXITw3Z12j9VgPe
	9hDE2e/Lqdu8rsAErWH8eIfuMPgST78LiwhVzfW8A3mxSP+miTBbbZ8K229uvmLP
	04X2mA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fbf0gh6cp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 17:10:17 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-38dc085b0a7so1683792a91.2
        for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 10:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783789817; x=1784394617; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rn7fwHxfFOX/isdk4ukXYQLob0WedKotBlCuMDd7Tzw=;
        b=L8Smb3oNtZwVmQ302uopS01PcAWAkuQBjEKWY9o7l+iakfQlxxw1YoFNZy9ZjS1CkA
         uJAJEdip6KERS7AbcVBtYmuWeGon3b+aiNi4Op0zqHU6/M6qy6IL+Yw4vXoWy0aL6V8r
         xnCOcYa+O6O0Krd0mATar+Wg7dDMdsdD5WemsMPrLvzyiF47T2frSS8i3tQiTempsWFp
         C8IAjg9LHTU1oeV/sg3vbqYD4iI5+T62l9t5UrAYRqlT/2kGre2in9DnvrJo46CwSuRJ
         9hIbzX4BCiKWJwgM/zByKZblWvGai6lE0uRhK3LbdFN5iqS4pcYlYGlfzXqbU/eq8w+V
         VTyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783789817; x=1784394617;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rn7fwHxfFOX/isdk4ukXYQLob0WedKotBlCuMDd7Tzw=;
        b=mQMGUOP7TyPDz5NIi3+Z7ubCxKfjufe1YNCAHuW071fn+mlU8b87QMXiSX9QkveR82
         g8ALP8BoDTRd7k0LxTx5s36m8i8X5LCJzuguO2eWsh8KXZejX4TN1YVwezn5f/oJmZRT
         UarRkhooT1hzrXxwNsgesPkrDYReU/TCCMIiZu2eJ8l+JWjASDsQIKE8yxr2sAugBkr+
         Tvd286JxwQkuiNjvSikc8iMElN2Au/s+6TYNp0H5lYCbktvRlEYTqqD89Adf9GN93zk2
         vs6ue9eP73ZIuc6XYo+mSw8iTxoO9VQotnoLsHOQiBBT8v8dYcWD57Q40xEXULnRjGJm
         wtlw==
X-Forwarded-Encrypted: i=1; AHgh+RrE9IiMkMyuX9s/Ibo6NaBeJIXdosfnmTBY12W9gkDgREety37Et4bfwpnofbn5q0LV1nGqI13g9V8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxwVY4vkdPTpz5r+TAb1sf5ebdDtyVL9yTOAh+Jy8F+1h9dKQ/o
	mdN9p6TSRuzCMIHvS8oy8NkwEHLWalHoGfbE3STgzjm+Elhg75GTZbqKcCtuPiBgWk03c2OOcyU
	Ms+sMWk8ton/f9y46XDWwkMYSOOqbXzKVkxYV9eTCI4/VzfY4ApDMO2QLmUdPQNDZ2oWiv3Bz4n
	RP
X-Gm-Gg: AfdE7ckVrSA9fY3aXz0/j8TisEQROCofAM0nqJAhLg6VQewe0GNEcHND0tklTmXn97a
	+3/0WWkwgEBncWeicZZyIN2qLme605j07Ykwk19998WfgnbQxeTPMfyBDfhT2NdFe5GmPy3kdrF
	b5mTsBAMt97rLJ9+XnunzeGteLH/jsA2MnWmsZnNMSVZDXVNDF3VHQ0q1h5IsZ7GVXTRpuao/Ip
	7gfixwOgMGZnlvjWPjluvLIVKD8+vbZpJtdXLkQg9eOepB1S9TTayNOsy32epBGAoWLSE4FQA53
	RoHJexrNSrHHJWg5mKrZhj/93P4M6Qe3qIGPHLIU8nmC+sU3UsvpsPrm+UZU9Ert2dWawkWibxa
	PmYfVhBLlWUVzCl1ZLh1gI9sSwwqd4wtfWOruF6PML6pVt2uo8oO55RrWfG5ZqC9A0+psUS/Xa/
	zZIhdV
X-Received: by 2002:a17:90b:2692:b0:38d:c834:24cf with SMTP id 98e67ed59e1d1-38dc83427afmr3157830a91.23.1783789816558;
        Sat, 11 Jul 2026 10:10:16 -0700 (PDT)
X-Received: by 2002:a17:90b:2692:b0:38d:c834:24cf with SMTP id 98e67ed59e1d1-38dc83427afmr3157810a91.23.1783789816092;
        Sat, 11 Jul 2026 10:10:16 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-313b9ca880fsm12943635eec.23.2026.07.11.10.10.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jul 2026 10:10:15 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sat, 11 Jul 2026 22:39:53 +0530
Subject: [PATCH v5 4/4] phy: qcom: qmp-usbc: Add qmp configuration for
 Shikra
MIME-Version: 1.0
Message-Id: <20260711-shikra-usbphy-v5-v5-4-229ba3602737@oss.qualcomm.com>
References: <20260711-shikra-usbphy-v5-v5-0-229ba3602737@oss.qualcomm.com>
In-Reply-To: <20260711-shikra-usbphy-v5-v5-0-229ba3602737@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783789793; l=3641;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=oVC5UqW8EITu6nRZcu5QBdQbzKRKDsRDWUWaypx17T0=;
 b=08IJb8l81knSvutBM5fHX6e0vukIowWGwRGgNQ39+7oMRJhSgBbPrWK80T43xqvdUtb5+JTHX
 hU9vbGCIoo2BOBoxt9kPbUBnRA5yTM5PvxhMk4BZAunw+G3i2q1Av4X
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Authority-Analysis: v=2.4 cv=Nq3htcdJ c=1 sm=1 tr=0 ts=6a5278f9 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=BrUXx0GcgBZ9W2fV7PIA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: bGulpSZ4hxLdUp87FogzGDL65i-k8ctr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzExMDE3MyBTYWx0ZWRfX3GE4el1C8vK4
 y9ogkBAvQgs+itlhnDsA8+bVOAL6YO9Fk4YOBLXAPbkaZII4fCxIwtEuBZfG5lPATM7a7ChpCjZ
 epatzIXacjYqySutrJ7up6SuIc1A4Ot4HFWzA1GbwfQAHsLIaWIwFeOvVCDinUoHr7UiBRBT7Cw
 dZ8ua0G24kXIyKweNS/UuEPwEEgmd0VZP8T39pImofQnasaC6doZnjLsAwt06JQz8c7w/TXktvB
 GR4pI5YNohTG7fOjd1GOED76e/4I9vvFhU7cndi9HOd/gQ+yyXYIS+IFSi3KR3GGbjfTmmZJu99
 r8hcypdGqhklvxdaGEFLUiOpJ0OiJbcEmXclrBjfIoMTGR4vogE68doXgtyuWZQxs9G1TyhrgQn
 6DiXR4WMA5o7ZJORbodXCt1tmak/IioysfqU/fw2kudvw892d0RJBt1QrsmaD5Cdd9+NWgZiKQG
 Kjg7l7HtrNIf3mLpikA==
X-Proofpoint-GUID: bGulpSZ4hxLdUp87FogzGDL65i-k8ctr
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzExMDE3MyBTYWx0ZWRfX2xi89siNLy52
 bMVfYnrKtAIi75tgzr/ykpds2h8WU1a/Mk0K43PJj5YvXmlcdWQdC0b6e8rv+15c/dS0/R6udMZ
 gGFqQXT5O4Met1kHW7+LbB79l9Lpxys=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-11_04,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 adultscore=0 suspectscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607110173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260711_101018_288559_25BD8886 
X-CRM114-Status: GOOD (  13.00  )
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

Add init sequence and phy configuration for the Super Speed port on Shikra
SoC. Also since Shikra uses 3 resets, add support for the third reset and
configure Shikra platform data to use 3 resets.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 53 ++++++++++++++++++++++++++++++--
 1 file changed, 50 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index ab3055bb5b0c..fa8492b487d7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -512,10 +512,14 @@ static const char * const usb3phy_reset_l[] = {
 	"phy_phy", "phy",
 };
 
-static const char * const usb3dpphy_reset_l[] = {
+static const char * const qcs615_usb3dpphy_reset_l[] = {
 	"phy_phy", "dp_phy",
 };
 
+static const char * const shikra_usb3dpphy_reset_l[] = {
+	"phy_phy", "dp_phy", "phy",
+};
+
 static const struct regulator_bulk_data qmp_phy_msm8998_vreg_l[] = {
 	{ .supply = "vdda-phy", .init_load_uA = 68600 },
 	{ .supply = "vdda-pll", .init_load_uA = 14200 },
@@ -680,8 +684,48 @@ static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
 	.configure_dp_phy	= qcs615_qmp_configure_dp_phy,
 	.calibrate_dp_phy	= qcs615_qmp_calibrate_dp_phy,
 
-	.reset_list		= usb3dpphy_reset_l,
-	.num_resets		= ARRAY_SIZE(usb3dpphy_reset_l),
+	.reset_list		= qcs615_usb3dpphy_reset_l,
+	.num_resets		= ARRAY_SIZE(qcs615_usb3dpphy_reset_l),
+	.vreg_list		= qmp_phy_qcs615_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
+};
+
+static const struct qmp_phy_cfg shikra_usb3dp_phy_cfg = {
+	.offsets		= &qmp_usbc_usb3dp_offsets_qcs615,
+
+	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
+	.tx_tbl			= qcm2290_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_tx_tbl),
+	.rx_tbl			= qcm2290_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
+	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+
+	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
+
+	.dp_serdes_tbl		= qcs615_dp_serdes_tbl,
+	.dp_serdes_tbl_num	= ARRAY_SIZE(qcs615_dp_serdes_tbl),
+	.dp_tx_tbl		= qcs615_dp_tx_tbl,
+	.dp_tx_tbl_num		= ARRAY_SIZE(qcs615_dp_tx_tbl),
+
+	.serdes_tbl_rbr		= qcs615_dp_serdes_tbl_rbr,
+	.serdes_tbl_rbr_num	= ARRAY_SIZE(qcs615_dp_serdes_tbl_rbr),
+	.serdes_tbl_hbr		= qcs615_dp_serdes_tbl_hbr,
+	.serdes_tbl_hbr_num	= ARRAY_SIZE(qcs615_dp_serdes_tbl_hbr),
+	.serdes_tbl_hbr2	= qcs615_dp_serdes_tbl_hbr2,
+	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qcs615_dp_serdes_tbl_hbr2),
+
+	.swing_tbl		= &qcs615_dp_voltage_swing_hbr2_rbr,
+	.pre_emphasis_tbl	= &qcs615_dp_pre_emphasis_hbr2_rbr,
+
+	.dp_aux_init		= qcs615_qmp_dp_aux_init,
+	.configure_dp_tx	= qcs615_qmp_configure_dp_tx,
+	.configure_dp_phy	= qcs615_qmp_configure_dp_phy,
+	.calibrate_dp_phy	= qcs615_qmp_calibrate_dp_phy,
+
+	.reset_list		= shikra_usb3dpphy_reset_l,
+	.num_resets		= ARRAY_SIZE(shikra_usb3dpphy_reset_l),
 	.vreg_list		= qmp_phy_qcs615_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
 };
@@ -2019,6 +2063,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sdm660-qmp-usb3-phy",
 		.data = &sdm660_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,shikra-qmp-usb3-dp-phy",
+		.data =  &shikra_usb3dp_phy_cfg,
 	}, {
 		.compatible = "qcom,sm6115-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
