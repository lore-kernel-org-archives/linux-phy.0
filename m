Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35DC9F94CCA
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 06:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mlbX+0IxzXIvOuLt9ya1vUs3bHCfQ1/KgEZ1IZ5Gixw=; b=KVCp97nZoyG63D
	lAJ4q12v4slxC7+ngYC9qcmseBp81XT6lLhcSYwrJrcizbN+zfB/2ZpwXTY5h36K4+N5ASjarihpK
	Nibf8VmPK/qASPzs43npizjyQj0J7yTQ/EWUz4QLElpPVlpmSpbKd0dyHwX7KXXGZdauCqrR1Sw5h
	dHsdaPJPzfO8Wn7cLWh5zgwHZcutNrCNpnkVxnAl3ItG4eou0iQk2pAZocvlSXMWM3tF7Qe3U/RtE
	GT01A+zwCUxQpV25VI4+IVyB/WsQWIxJeMZlfbkaeCnK4AMglo9LbDUhl4tz3Mgnc77k0sup/wE9g
	Fd0AZyyv4MToKR/emzQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFQfI-00000009doG-34CO;
	Wed, 22 Apr 2026 06:02:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFQfE-00000009dms-0uao
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 06:02:23 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63M503302000621
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 06:02:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QFsNyAPQYJKzJfr5Ys2tu91JQOWqhh8cnTV/8Y7H4qs=; b=Lm2LrJV5sqR28LbT
	sAdcnAuAPN1TnYodA2rrM2FdEIxiZfqKbGAke/Y08uLv3oUbW7jfWRzC3acoQRF2
	Iq7FH5yDZKID7nhmX2MQwiJZWj6GRc/ImNhHIyy/+oS/f7AVRtC32KMUj+l9ErjV
	4BPUZ7MPznhYiwBwLvMJ5y1hqkyCOAPozZOYZLX1e3MnF0TqrsX0t7vYq4z2zAwF
	sdQF6TfaJXh0iwXvzpmiGPZ6MMP+RGi0OM6oDh6cvfG3LQicVgAWgLyfCosBIH8M
	VMyYqq2VeFKT1vRKEykOhcZishHLVTRLcbYAzNyBHrUGKYepGr9d6zQVS9EpRVa/
	rPVEdA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dpenf9wv7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 06:02:19 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8dd61e9d1faso1306098285a.2
        for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 23:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776837739; x=1777442539; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QFsNyAPQYJKzJfr5Ys2tu91JQOWqhh8cnTV/8Y7H4qs=;
        b=YjLJ7zrB8LowAY3Nt5cL8XkFdJ2K+LbGq1sDX53pl/uq2oxl3ni2RMwMKP9/Iap1dB
         ruC9TknHVwroSl1zXBmQ1UZRL8WiF9MqPV3dJwKq3wMRo+u+epN3EDDWQUehCKVlsfTr
         jkiRC+8Jp8d+oIsk/e9UY2vper0HRjw/x0oCo6ehwk1iM/TravI4sz3PTpxsPNQytgI7
         bKRJlnyIRXqvXIzb2x4R6yr5PCHleOvfMyckRMYhNT91cnR1/FfsuisgSwO6L7GEtOvI
         VNaoYK3iqk6O77y0NPxgl5FDIIhOBOmjGUkVvApnSxWk6I5zJeNdKDKffWAFhNxl6eh/
         /Apw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776837739; x=1777442539;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QFsNyAPQYJKzJfr5Ys2tu91JQOWqhh8cnTV/8Y7H4qs=;
        b=Yxte5UUnwdeu9swc5jyIuHBgzxyJSyLdCbvWW++Hn6FEgJWwNZBCg3E5J1LBJ7D5w7
         BXCjHtVyAyo5Lol23xtkoqnpQx3Yc0/IronTMd9Ma56DCkxf/Ih0jdFDR5AjFRuQYyva
         /1bsG1uaLj3XnmuLCvx5JcIWdRBisKh9uHVcEF7Frgs88ocL+hR9+lxfocfvVHzTbInd
         P8FeLkl6RQrYWVbXpXLaY7uT+GGwAkbp5LRbmUBwppVEtUogzMzokBARt8Emxeu2LpND
         eZiYjoTJ8I6c5ExfknB+adV9zOw6yKBresh9NE9zUf491uRijYwDtPoc5CMUMWKABe/f
         y59Q==
X-Forwarded-Encrypted: i=1; AFNElJ+uvxZVegphAxoIncLTZ6xBbBTtBp8TcHksgPBn/VPcL2Kzstb+xkayt92b4DmZtcfr2HNW2q7hEHk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxGCf/15xGsQHskMCWUkW5dQUu7semdJ6LcoerlebS6cYRXducc
	pU8LqYK94yHJTxuwPSWbNQBtQ3tRt1khmegWT7TGoLhGscFT+KeWYRKf7V+sau7KdJGyhMUj36z
	AdvWOs4eiD9G2zo6POjU9nh3DJJK4Ni7pYPQ+o+RPRU9QQXIaYkqaYB57J6GwQZOtSiHa
X-Gm-Gg: AeBDieuLo+bjGZ+IyWot98M4Eni0aztJSW8W5aIXmrJ2Z7sCwWrjffXm/l3gkJon5yG
	ZnN7kfK1T2arkUwLQX9bDifCJsAXfjmUR1+I/tx8XTS06FC6jCWZisKAXEvwLLetFmydjaVO7GI
	rMSOiy4IZW0jGOoBCOXpK/TFiwIQCFE0Eij/DeQ696N7fgQuYCr+EOR1ppAYPccSrZFMCwKl6Ie
	6wPvXDXnOWxMUjQ8AEPECFggEsWTMXX6Ix2PlYztgOsILrzDLpiPsRJR9INUCIZeTOrLaIdYuhc
	tt/pJkKiUdVG3ms5QvpMTvOdaR7O6kApnc5emjFwhXl7zMaIC38D2ZMd0k1RYHjmb5LAMSQX2kJ
	i+6PEV+AlloTakLWMW+4qaKXJb9pqDuDuHoQdumAm9IFRWE05/OZEw6V8VflkhnAW+XKBSX9XvO
	B5MBSRBrApbFKBYmzrsg==
X-Received: by 2002:a05:620a:e98:b0:8eb:49b5:bdb1 with SMTP id af79cd13be357-8eb49b5bfb0mr1206077385a.18.1776837738564;
        Tue, 21 Apr 2026 23:02:18 -0700 (PDT)
X-Received: by 2002:a05:620a:e98:b0:8eb:49b5:bdb1 with SMTP id af79cd13be357-8eb49b5bfb0mr1206074185a.18.1776837738070;
        Tue, 21 Apr 2026 23:02:18 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ef12122800sm237379985a.18.2026.04.21.23.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 23:02:17 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Wed, 22 Apr 2026 14:01:52 +0800
Subject: [PATCH v4 2/5] phy: qcom: edp: Add eDP/DP mode switch support
MIME-Version: 1.0
Message-Id: <20260422-edp_phy-v4-2-c38bef2d027b@oss.qualcomm.com>
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
In-Reply-To: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>, stable@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776837726; l=5695;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=koMmfDgY6enq9c552pstA8QV5P3AcIvAKR/xucXdwSU=;
 b=4njF7bVd40+2M5r00zYKejJksd05Hb3dd9BkdXPx3lh83ZcOzqWPg2uzhEvYFLbap3kTFhUIe
 +gVt4TP5w3lDrqStpudtWi3+eSo02lv3JHRZZOIuLlmSfSBthRoobz2
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-ORIG-GUID: M1bCsKsL4F2ULwWnS07ef-31Ur0h4VSu
X-Authority-Analysis: v=2.4 cv=fozsol4f c=1 sm=1 tr=0 ts=69e8646b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=se8qGc9sdx2UsIF7nuMA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDA1NiBTYWx0ZWRfX87xfyWV+51u/
 HRESwsZ5rLMirN4mEWdka0FnVC2yR4WRQxk+JJEHeP2JUFiaKTV8LpZIRlT7sr6Ksi8/WpO71jL
 ek9j10sBNIeSF6zf7ztIfv2VCu3iPBKAfIqnv5WqWUu/9pKiYiD+Uw2hgmJ+ZaqPW6eQ83OZe0a
 13JiKQsTkJ+q6jBZff0bERQYQajhlAoEua+kND2nLoEWuptfyLEEFK/ry7frRc75Hfa4Bpb9+BR
 5V1a4V1NC1iTSGv9ENFGs3x2wjN7+8JwPS2I4bFCVPnow9ycYwWXxR6QkChrsRdtgmblx4Z5iXF
 9jFgXFuM4IjrGtTyNu7PKJm61lZtDI5Gx7sVk7r9MyP+UZs+80ScbORI8Z5Ss4W22S46nCafrw6
 HnsxLcr9pMnCQrupRIBCHj/tPychUxzUx9NQprQUUAjKW+wSD6S7s4qMshZMSHk/YF8bnZJOUKG
 oXOsNo/VlPJL+ckh2ZA==
X-Proofpoint-GUID: M1bCsKsL4F2ULwWnS07ef-31Ur0h4VSu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 impostorscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604220056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_230220_269192_F150F053 
X-CRM114-Status: GOOD (  19.75  )
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

The eDP PHY supports both eDP/DP modes, each requires a different table.
The current driver doesn't support both modes and use either the eDP or
DP table when enable the platform. Add a separate set of tables for eDP
and DP modes, and select the appropriate table based on the current mode.

Glymur's DP mode table differs from the other platforms, add a dedicated
table for it.

Since both modes are supported, so also fixes the table mismatch for
X1E80100(eDP) and SA8775P(DP).

Cc: stable@vger.kernel.org
Fixes: 3f12bf16213c ("phy: qcom: edp: Add support for eDP PHY on SA8775P")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 46 +++++++++++++++++++++++++++----------
 1 file changed, 34 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 2af3fd63832f..3266026cfe37 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -87,7 +87,8 @@ struct qcom_edp_phy_cfg {
 	bool is_edp;
 	const u8 *aux_cfg;
 	const u8 *vco_div_cfg;
-	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *dp_swing_pre_emph_cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *edp_swing_pre_emph_cfg;
 	const struct phy_ver_ops *ver_ops;
 };
 
@@ -150,6 +151,20 @@ static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg = {
 	.pre_emphasis_hbr3_hbr2 = &dp_pre_emp_hbr2_hbr3,
 };
 
+static const u8 dp_pre_emp_hbr_rbr_v8[4][4] = {
+	{ 0x00, 0x0e, 0x15, 0x1a },
+	{ 0x00, 0x0e, 0x15, 0xff },
+	{ 0x00, 0x0e, 0xff, 0xff },
+	{ 0x00, 0xff, 0xff, 0xff }
+};
+
+static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg_v8 = {
+	.swing_hbr_rbr = &dp_swing_hbr_rbr,
+	.swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
+	.pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr_v8,
+	.pre_emphasis_hbr3_hbr2 = &dp_pre_emp_hbr2_hbr3,
+};
+
 static const u8 edp_swing_hbr_rbr[4][4] = {
 	{ 0x07, 0x0f, 0x16, 0x1f },
 	{ 0x0d, 0x16, 0x1e, 0xff },
@@ -246,7 +261,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 	 * when more information becomes available about why this is
 	 * even needed.
 	 */
-	if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
+	if (edp->cfg->dp_swing_pre_emph_cfg && !edp->is_edp)
 		aux_cfg[8] = 0xb7;
 
 	writel(0xfc, edp->edp + DP_PHY_MODE);
@@ -270,7 +285,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 
 static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
 {
-	const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->cfg->swing_pre_emph_cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *cfg;
 	unsigned int v_level = 0;
 	unsigned int p_level = 0;
 	u8 ldo_config;
@@ -278,12 +293,14 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	u8 emph;
 	int i;
 
+	if (edp->is_edp)
+		cfg = edp->cfg->edp_swing_pre_emph_cfg;
+	else
+		cfg = edp->cfg->dp_swing_pre_emph_cfg;
+
 	if (!cfg)
 		return 0;
 
-	if (edp->is_edp)
-		cfg = &edp_phy_swing_pre_emph_cfg;
-
 	for (i = 0; i < dp_opts->lanes; i++) {
 		v_level = max(v_level, dp_opts->voltage[i]);
 		p_level = max(p_level, dp_opts->pre[i]);
@@ -543,7 +560,8 @@ static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
 	.is_edp = false,
 	.aux_cfg = edp_phy_aux_cfg_v5,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
-	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
@@ -556,7 +574,8 @@ static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
 static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
-	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
@@ -564,7 +583,8 @@ static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
 	.is_edp = true,
 	.aux_cfg = edp_phy_aux_cfg_v4,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
-	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
@@ -745,7 +765,8 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
-	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v6,
 };
 
@@ -924,7 +945,8 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
 static struct qcom_edp_phy_cfg glymur_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v8,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v8,
-	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
+	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg_v8,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v8,
 };
 
@@ -942,7 +964,7 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	if (ret)
 		return ret;
 
-	if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
+	if (edp->cfg->edp_swing_pre_emph_cfg && !edp->is_edp)
 		ldo_config = 0x1;
 
 	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
