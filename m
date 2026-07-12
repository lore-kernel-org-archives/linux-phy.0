Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58E0CC43458
	for <linux-phy@archiver.kernel.org>; Sun, 12 Jul 2026 15:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dt8uxm3sn/fvYRGj3Pe/9AN2iwUGXFzMq32/sQqCbhU=; b=RYh2CjC4LhxNxi
	XHg3V1rABO6prN9EhMAY1Bq5q74BaLhxdi6jOC9aPQHkOxSSbFheB/yJ9OPgIRelkQ3owgCX+KN+N
	1Z4uiSaZar2fkF7k3BqyoTSHp21I4gnL2fOdXriYF19hYDXQUNqF/utx3HCU36+qRUdJJpZftt8Fs
	yQ+ZE/vkeqiyHF1c53uA93YyH3fanAUON+JQbxxGnwUnVvRRqPQFKRLbAx8JoI4aObtm75Vl1qLVR
	5N5xR9/bBAU+6HxFIE4XL+XldsUNjmiHxA5sj2C34/dwkmeuX8tgFW6sak8ev/nLFCGBSC760u6CF
	w62SqsoWWQV7pvQ19pTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiw79-00000007ZVr-0Rlp;
	Sun, 12 Jul 2026 15:29:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiw77-00000007ZVJ-0O1r
	for linux-phy@lists.infradead.org;
	Sun, 12 Jul 2026 15:29:06 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66CFOujO3033245
	for <linux-phy@lists.infradead.org>; Sun, 12 Jul 2026 15:29:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rn7fwHxfFOX/isdk4ukXYQLob0WedKotBlCuMDd7Tzw=; b=A1Pj/XtoFM7XxHP9
	wyM2bF4ZGi5BIEC7PnO/hKbzUNB7jhk34it6ZLZnh8c5ABfIPZ040/liTxz82J9S
	b3cAStN8IImP4IDURDGv2yqvdEItX+9k1FY7acfxuliGVzF8LEqIddZTqFtnecTg
	I/5USWhrG91HSX2QIgEgVHit9phDX0mwiGosn7JOeIYcu6HMpLG+tBzkPF/OaWMP
	1bV6OTLGWt/HSuAAgiRFwnO8ajoH40yL1sXTVZVabFHXSq4VX+R8pcJlBDXvOF/6
	+iEhCMoxSpMRY7+bpw1JArN4EWwmkaJRouLdpne3/k+gSx58PhPIjWV0Z4MDdEVY
	ia52gw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fbeafb04e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 12 Jul 2026 15:29:04 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-388cfc4848dso2928351a91.3
        for <linux-phy@lists.infradead.org>; Sun, 12 Jul 2026 08:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783870144; x=1784474944; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rn7fwHxfFOX/isdk4ukXYQLob0WedKotBlCuMDd7Tzw=;
        b=Sa7saWFvjR4EkzK2+sZ37Il4UBmhnuBzhBWi9mtywNhZRQkXQXcPLd+Qp3l2RrOMYp
         VmRWQOid9cnMzJz6y2/BsfxWmmFxKlFaGsI0V40D5OSFVhXmCO0yib99c6z2z58w+kMQ
         64AoqDaR7l3zS7+s0KwnAAB2FCZBIH1kHMyyyUANU6OtQ+Zt/u54TbyLLqdXx/rf/zpX
         84hp1LHY9H+Kg5SggpmII4IEEV13rJlkADEEVxSGX0dWaEye4Q8ulUXGATN+kNmG1MMQ
         vBfO7pvnWaPn0u7XHXWeAfEoZgxSja35cDjdORvGLKaHMtTPr/I+dT3oO6HqtffGTGsQ
         rHKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783870144; x=1784474944;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rn7fwHxfFOX/isdk4ukXYQLob0WedKotBlCuMDd7Tzw=;
        b=Ge5XBTV3r+II62SxydxY9BFlRZCxZCEcGlhVswtJ4SgVXicKHMYJkzH7VpRatetCUB
         rIAq315KVNTB0EVk/Ym+fiaYq5RSrELEKsT4UzNP1kZsbDzNwDqZA6PXZGEldM/6Pdc5
         QiiTSMuDmRMyz96MKxXM+HhIC03mAoMygfM0BEfJBmXRBZw5YKn5arhPo/PV/cyA3roa
         PFysKwzZjLBxeDWp/6huu27m3jWsngsxnlFP8g8PZTwbiWyGNiXGzXMPq1Ad8QWhV2cB
         C1XrAZVJOoec42hV8I58eEdCuXmmhLXQi5ahX9BeTra769HyxEwqUDiqMCrlltt05ERz
         lGWQ==
X-Forwarded-Encrypted: i=1; AHgh+RokZ29CyFyuu1iIevogDQJhIoaTt+aa13b0GPeL+18ug2CT8Uphha0CmWhiuZTC5JosmQYMpjOJXPc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4e+Amwidsez+lm4lQdHVhkXzvJvU5LeEjNOGzBYBSmTUPq7+r
	wDFHV/4GkqqEk0PNMziGB9xlmFBgqupaAFuKQtl58Ap2tEJW/0LZnEFcj9MgioTeP6i3oL0UcvN
	6eMJpNpUU4YYHKkOv2k+hlOODe1fbwOeDu+xig+2KGRkpvcJOd5SN1AbKzXoR96AjLRkD
X-Gm-Gg: AfdE7cns6r+slfwbWX77G8Vg0JI5rtBANnKXw1TngxuywwY0RRXCXjup7S84umLP/zw
	nCF8OlNHRQkCsALLDOkW+1j+DANoxCMlt8Td+CryF6m69gOyTWtYH8Cm2U6VJK8agELFUsiUaxe
	A9v9K7/aPuBODWJ3l9tYVkl+gJ75TThHrF6qfPkMdo0Ao201yCDpH7s+H04ymfwPs1NYEWVApJH
	jj4HyjoNF+BpupRCUDFlrbN9zzhPK5F+8ayAlmS1Z+OS8WjciToiW+O++TGRLDsSxgG5XqqRt+3
	ji2qKIsIE+sCewXEHnnPG9FHbMzuwx2qTixubUlA6qLKYCVkjQvDwM1bgrl7vF7s69VvAyJeHYu
	uUpBbbHtLDA0g5YnCpbWkfs9bw6FuoAgBkZbUfv8WNHHHLmjN4sRiQ2XFyQDVRKwlWpZflPSoAt
	hbYG5j
X-Received: by 2002:a17:90b:3d48:b0:380:7d9f:81f1 with SMTP id 98e67ed59e1d1-38dc74c49acmr5752046a91.3.1783870143672;
        Sun, 12 Jul 2026 08:29:03 -0700 (PDT)
X-Received: by 2002:a17:90b:3d48:b0:380:7d9f:81f1 with SMTP id 98e67ed59e1d1-38dc74c49acmr5752030a91.3.1783870143229;
        Sun, 12 Jul 2026 08:29:03 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-311935fd091sm41458776eec.24.2026.07.12.08.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 08:29:02 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sun, 12 Jul 2026 20:58:37 +0530
Subject: [PATCH v6 4/4] phy: qcom: qmp-usbc: Add qmp configuration for
 Shikra
MIME-Version: 1.0
Message-Id: <20260712-usb-shikra-phy-v6-v6-4-1b3e51bf1541@oss.qualcomm.com>
References: <20260712-usb-shikra-phy-v6-v6-0-1b3e51bf1541@oss.qualcomm.com>
In-Reply-To: <20260712-usb-shikra-phy-v6-v6-0-1b3e51bf1541@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783870119; l=3641;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=oVC5UqW8EITu6nRZcu5QBdQbzKRKDsRDWUWaypx17T0=;
 b=ozQP1pweyGshCDvd+NcotMZ7kuQNMugzameQ+w6DE040egIGNtWEoFD0v5l+9kJJkxHe02vRj
 +lF10hlDN1nDA/NZtM7rN7iPAArBalmUkgiVo0bCuEx47OXgaedPEDu
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-ORIG-GUID: 1i3ZS88FxP14KfNZVz7PhU5cBs7RR8DH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEyMDE2NSBTYWx0ZWRfXzE5Q7czxzyKl
 Ge5T4ae+L05IEdE3/pki6lEM4Ylyi6p72fBaO0tf4jWex3Cwjk6hp5Yr8LEJ+ZP/OAt7F30RmeJ
 cZ79F2az/ZIwtaMYaS/1t1x0sTETkTr23DbEtm7m44rKF8gb3qZsiGLS2MUCBbQiigY51hmph1d
 FtRnN4F0kHcuB/97edg3aphsgdxy2cG9HGGC5VmPpX0jEJ6GR+i5SUP+SeRXOa4yxW5TucaXJvG
 CMCABM0CZgm4yl7YP262fgahdgv6o76KTYGeR/WhOOVBOgamLP2ooUNZ/6W3HME440RhXiDz53P
 e/RYrkHOBpBn7mxqHPpGr+gG9IUboGhfEiiLy+p1VBDGW5z6N+fb23T355ReGVb+4w2CK2Vhzj2
 87Ub0xHYo+HQtrJeDSp6DS26VE+0pualfIt+Lz0EOPtN2jN8Vg5IYXEDRdY70v5E0flP1AAQbb7
 FINEidpHSfak/fZRikQ==
X-Authority-Analysis: v=2.4 cv=O5MJeh9W c=1 sm=1 tr=0 ts=6a53b2c0 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=BrUXx0GcgBZ9W2fV7PIA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: 1i3ZS88FxP14KfNZVz7PhU5cBs7RR8DH
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEyMDE2NSBTYWx0ZWRfX3DB72e6Bgp9L
 iQX7kc1bouPiObT8JXROreaWONenEcrJ8Ojtf4TGFeplSoJzVXDdMSOZYIHiK8AxCda02zdnXfN
 lRwQx08qhMuuAIenrUHPHy6sDzHGsjI=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-12_05,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607120165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260712_082905_150056_D2DACC6B 
X-CRM114-Status: GOOD (  13.21  )
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
