Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D270ACDB471
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jun 2026 23:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GsF40WBUqZ/7tKiRwTonIKb7IJwIyhx7i10aHLhcniU=; b=D5xbqxcAhTmZSN
	64kiwpwBSpttnZ8tuujbI4VppN2NLa//T6NtNHQVsmHbf2+Mwu1aLMZt5FQ24/MjzEwqnUb3tX4ez
	VG/nGHWwyov52V72O5enMJtEOPwpqfhVbVjAA1A1njqPnXn8ZUsJZcGZzoe14jBNRcp+JM1nI7jVO
	b0Wj926VbXXv44v1ryejMbM3F8e7WeMI3RfqA/WjKYrgwuXSJDnt68OJXd4SBbogLJIyGE1AWWa9+
	N1mOAHAkKxgAVxxqDQq1r1ne+tWMvCzbLKz+QqozPyfRprSLmpdDIgz7cnZAbt44hoE3Bs3IxaHz7
	1BP3q24W8UWWCsL6o7eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbo5X-00000005T0E-1Jgc;
	Mon, 22 Jun 2026 23:29:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbo5U-00000005SzA-1vVK
	for linux-phy@lists.infradead.org;
	Mon, 22 Jun 2026 23:29:57 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65MJb6q52177335
	for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 23:29:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cS/YRntKch/F3MsHjSW5Moxk6fuht0J2zx2Zz1OCPjM=; b=TcC7r8igKfnikfSA
	9SqRMjBpQacNDtHLPgB1nmQu/qtrDauz+ZWeEl4tmWJbE8ymgCJabsNScaHRcn5N
	MoX3uNQQhX5MIdO/enJ2f65OfsKnDRx5PsbzDsPV5ikU/IaNUa8RQsnAMS3UO5P3
	+QjY5yIUFcYl+N/hQEWxjPxKKXiJDxEQWXuu/6cEie1vw36MHF40v5d9WD7isjUp
	9e4N6EhOv9uImpbsY12D0/LJ2xeHR8MmAq4U4LL4t5DRD61tGCQYIVrkwOQqrVL1
	ZTmYzOh4odF+y5agZ4N+n5eKM8qGU8J9pCuODXP7m0XX1qZYVk1uxHc1hhNUNUzS
	81evPQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ey37hanwa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 23:29:54 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-30bcb065bfdso9077223eec.0
        for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 16:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782170994; x=1782775794; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cS/YRntKch/F3MsHjSW5Moxk6fuht0J2zx2Zz1OCPjM=;
        b=MnCdXerTm9F5gY9NraDtPMIJSceepNHPbUgphYB9QkW+nuTBBMk1Kd4Xby9Xjlmm1w
         52L4YDxhOEeNAHJ7T6Uk847urSXCNIQpHs/3NXvT8vbih706Ew+HbVAwzIXkFhRTA0J/
         oWxunW2FYhwimPSrkA23u1rVF+tbWNff6wOtUKs+MMr8VP3yEYjaYPDxLZ1hMUdHxizl
         8+U3g7jMB2egBuah9BCmFzVSelPHgk9fXutHV6Xusb42a4Y6y44djUl0WqZziMpemOe1
         YCwtnvJ5FS5jqYtwr0C7XKzKCE/YVmjnBmzZrYwnJrH5mhmrM/xAOiv53VYSnw45ZFzZ
         kXmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782170994; x=1782775794;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cS/YRntKch/F3MsHjSW5Moxk6fuht0J2zx2Zz1OCPjM=;
        b=rM9nx63Mt7gqcWYv/9bP2jQokX+gGaj3F7fv4Rm3OlOBec9Kb9fAE7tmbBlxCasyXk
         DGvt/gMbSOQgWlisQKD+7lD5B8/dU8GKETd5U5ZPQ4wbSY3FOZnFOYON14TNHn5dsL+k
         58ASp24JVuhvw6W01aRbpvkg2qKM00Qu7XXKa0rgguiwOXS4PJrd+wgUarT0gH+y9KCj
         WbAcqTyEY8EBl6ThctJrER4TJQZu8tGL9797WOC+xt+YEqALMuExy6mUrK58UQW+l9CP
         RCIMDgoPxXdwXiLhyvHlyKuziGtl8zTaDsmkm9me04XtMnwFizh+bTplFHRSLZB177Xr
         6o1Q==
X-Forwarded-Encrypted: i=1; AHgh+RrU1iVJ51ZBQ2GFLeiKOqdMHbLhwP7sALbdY1RyMiLnNHFLou/gendZstpUMWH6CZiD9gndo/7DRuU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0Q8zvrhU3Tyzdlqpem+Ma13TGXc/PDdmn6pBCfNYXHLW5+8gH
	8w+MK6bHssqPCNsJcAstgIDALk2ryvyt/MqJGVHo6NvFK0BYqwU7t/4nAHkivon6UmZxUAKyDUm
	iM7io5elhE/XSYt6VzXN8vqboS4Acmba3oDXuqi7KVduiVI/Ws3XTa71fBY/a/KY1cNb7gaTLG7
	uR
X-Gm-Gg: AfdE7ck6caDEevoOQDlTp180Wt5eoULeMnMZ3o7wl6LBkbJ2bf13BCqwUO3mk28Rcwq
	aI3zADbP23o+ln3M6/cgPqNSEMO2EzWSLIjC3ezSL2YWrbkrXUO2FO8DBCnUjLLsqhVkZp0dIw4
	ua5o83/d8U0RHIG0ltD6y3buMrTyfWT+83dNpmPWNqvPG46ulIQqW4HSxCd+UhqWvx6g4SO+DTE
	1gjrPV3oniP/EQp+7FBECCyvx+nhRRyd+kUt+0Lwwg8c3M/8D5NZVADWo60lcwCLjf25N54/D2g
	C94078wZRJ2wmFsEJxQURqAYTZaXQD4kYGAH7Mvg1JGc048nHq2Bns7PZ9Will0OjiBoraD6Vkw
	+iCiyz8+L694TOyoy9QHCRTgLyFeefv4W4r4N45wQmUB5yWDdNs0=
X-Received: by 2002:a05:7300:a2cd:b0:2ed:e12:3769 with SMTP id 5a478bee46e88-30c58cea75emr427187eec.31.1782170993589;
        Mon, 22 Jun 2026 16:29:53 -0700 (PDT)
X-Received: by 2002:a05:7300:a2cd:b0:2ed:e12:3769 with SMTP id 5a478bee46e88-30c58cea75emr427168eec.31.1782170992993;
        Mon, 22 Jun 2026 16:29:52 -0700 (PDT)
Received: from [169.254.0.2] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c1ba8fb35sm15339727eec.12.2026.06.22.16.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2026 16:29:52 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Date: Mon, 22 Jun 2026 23:29:49 +0000
Subject: [PATCH 1/2] phy: qcom: edp: split power-on sequencing by PHY
 version
MIME-Version: 1.0
Message-Id: <20260622-glymur-edp-phy-v1-1-814b45089ac9@oss.qualcomm.com>
References: <20260622-glymur-edp-phy-v1-0-814b45089ac9@oss.qualcomm.com>
In-Reply-To: <20260622-glymur-edp-phy-v1-0-814b45089ac9@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782170991; l=10732;
 i=bjorn.andersson@oss.qualcomm.com; s=20230915; h=from:subject:message-id;
 bh=n+V8Ij++nB/XurH4DgW2kmsiKtSiS1Yo8She/fAAbsY=;
 b=ODtbI+c0A+PNjqTE74EMgH26dWNeWQmMQuDFvz2h+G9574UYjvelwyd+SJPiQSNqSTtqttLgG
 2MG+cu3AVN1DNwmuQCOIjepNcdXDY+TCUrPNUyjgtRYelYLWXWTsXCi
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=ed25519;
 pk=VkhObtljigy9k0ZUIE1Mvr0Y+E1dgBEH9WoLQnUtbIM=
X-Proofpoint-ORIG-GUID: D-L5UXoqh6yRZ690-uBMkDsOVPRRqkc4
X-Authority-Analysis: v=2.4 cv=ecANubEH c=1 sm=1 tr=0 ts=6a39c572 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=Dq9sv3uMWgnwB1ACyxoA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIyMDIyNSBTYWx0ZWRfX0sy/Bt2pbSkG
 1X4aUixbFjzJuxsE25PxdcYojPJY0VhdRwKYWWGfFJAKozkNlXAEEds+xY2D3YtuNY0SerrghmR
 L0bKt/8GvnMdXVL+W+L2Jg18HeRsVJE=
X-Proofpoint-GUID: D-L5UXoqh6yRZ690-uBMkDsOVPRRqkc4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIyMDIyNSBTYWx0ZWRfX/Dqcg6lfSwvR
 yxcVqS7DQ1boKa4I1v0w9haW9QFl1HM80kpfBZH3uYjIziYuEFYW01NGCgkz1Xs8Z1oV7SQlIKW
 4gWU0GlJV4F4m+5beZWNsYIy3j5LX2WhiiNw0ldE9pz9SupCIwW7ic8rrMWBWdNu2bmTE3SPKI/
 e/gynuc+XKIo63r7XhdlDeGBOk7k18SS/2B4FAkFlboiE8B+r44D8ppb+hniSJC1I5w8RBhuidw
 N2lfE30FGW4mUfMj0PMTJ47dOY6Yr7shqbx3W1KyJtLFGzuioIVMCa9P8vSyi3vxkLS2R4eh20a
 JHO/4Tol0lYHV+YwZ4SiVC+ra9RPLbI/6T8Ve4ASXWuzGb9/zvE6t+gQnLJMSR2BDD0ApDwZkAL
 xZt/gzbOAga+7wRt0kuLkJ2Xm/H2A5JclOTCNOvYeDfuTPgme6CnaRfZmQJTESPVzgWshHsnfIL
 yF97vD1rkk+sGsIHe8w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-22_04,2026-06-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 suspectscore=0 impostorscore=0 adultscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606220225
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260622_162956_633712_89881C42 
X-CRM114-Status: GOOD (  16.98  )
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

The eDP PHY power-on sequence has grown version-specific differences,
but qcom_edp_phy_power_on() still contains the sequence as one shared
flow. This makes it difficult to add newer PHY programming without
interleaving it with the v4/v6 sequence.

Split the power-on sequence into version callbacks for the parts that
differ between PHY revisions:

  - pre-power-on preparation
  - TX programming before PLL enable
  - rate/PCS programming
  - lane programming after PLL enable
  - final status polling

Keep the existing v4/v6 sequence as the v46 implementation, and wire v8
to the same callbacks for now. This keeps the programming unchanged
while making the next patch a v8-only programming update.

Assisted-by: Codex:GPT-5.5
Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 175 +++++++++++++++++++++++++-----------
 1 file changed, 125 insertions(+), 50 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index a3c893f72908..6588419d4860 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -48,13 +48,10 @@
 /* LANE_TXn registers */
 #define TXn_CLKBUF_ENABLE                       0x0000
 #define TXn_TX_EMP_POST1_LVL                    0x0004
-
 #define TXn_TX_DRV_LVL                          0x0014
 #define TXn_TX_DRV_LVL_OFFSET                   0x0018
 #define TXn_RESET_TSYNC_EN                      0x001c
-#define TXn_LDO_CONFIG                          0x0084
 #define TXn_TX_BAND                             0x0028
-
 #define TXn_RES_CODE_LANE_OFFSET_TX0            0x0044
 #define TXn_RES_CODE_LANE_OFFSET_TX1            0x0048
 
@@ -64,6 +61,7 @@
 #define TXn_LANE_MODE_1                         0x0064
 
 #define TXn_TRAN_DRVR_EMP_EN                    0x0078
+#define TXn_LDO_CONFIG                          0x0084
 
 struct qcom_edp_swing_pre_emph_cfg {
 	const u8 (*swing_hbr_rbr)[4][4];
@@ -82,6 +80,12 @@ struct phy_ver_ops {
 	int (*com_configure_pll)(const struct qcom_edp *edp);
 	int (*com_configure_ssc)(const struct qcom_edp *edp);
 	int (*com_ldo_config)(const struct qcom_edp *edp);
+	int (*prepare_power_on)(const struct qcom_edp *edp);
+	int (*configure_tx_pre_pll)(const struct qcom_edp *edp);
+	int (*configure_rate_pcs)(const struct qcom_edp *edp,
+				  unsigned long *pixel_freq);
+	void (*configure_lanes_after_pll)(const struct qcom_edp *edp);
+	int (*finish_power_on)(const struct qcom_edp *edp);
 };
 
 struct qcom_edp_phy_cfg {
@@ -117,6 +121,13 @@ struct qcom_edp {
 	bool is_edp;
 };
 
+static int qcom_edp_prepare_power_on_v46(const struct qcom_edp *edp);
+static int qcom_edp_configure_tx_pre_pll_v46(const struct qcom_edp *edp);
+static int qcom_edp_configure_rate_pcs_v46(const struct qcom_edp *edp,
+					   unsigned long *pixel_freq);
+static void qcom_edp_configure_lanes_after_pll_v46(const struct qcom_edp *edp);
+static int qcom_edp_finish_power_on_v46(const struct qcom_edp *edp);
+
 static const u8 dp_swing_hbr_rbr[4][4] = {
 	{ 0x07, 0x0f, 0x16, 0x1f },
 	{ 0x11, 0x1e, 0x1f, 0xff },
@@ -653,6 +664,11 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v3 = {
 	.com_configure_pll	= qcom_edp_com_configure_pll_v4,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
 	.com_ldo_config		= qcom_edp_ldo_config_v3,
+	.prepare_power_on	= qcom_edp_prepare_power_on_v46,
+	.configure_tx_pre_pll	= qcom_edp_configure_tx_pre_pll_v46,
+	.configure_rate_pcs	= qcom_edp_configure_rate_pcs_v46,
+	.configure_lanes_after_pll = qcom_edp_configure_lanes_after_pll_v46,
+	.finish_power_on	= qcom_edp_finish_power_on_v46,
 };
 
 static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
@@ -663,6 +679,11 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 	.com_configure_pll	= qcom_edp_com_configure_pll_v4,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
 	.com_ldo_config		= qcom_edp_ldo_config_v4,
+	.prepare_power_on	= qcom_edp_prepare_power_on_v46,
+	.configure_tx_pre_pll	= qcom_edp_configure_tx_pre_pll_v46,
+	.configure_rate_pcs	= qcom_edp_configure_rate_pcs_v46,
+	.configure_lanes_after_pll = qcom_edp_configure_lanes_after_pll_v46,
+	.finish_power_on	= qcom_edp_finish_power_on_v46,
 };
 
 static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
@@ -898,6 +919,11 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 	.com_configure_pll	= qcom_edp_com_configure_pll_v6,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v6,
 	.com_ldo_config		= qcom_edp_ldo_config_v6,
+	.prepare_power_on	= qcom_edp_prepare_power_on_v46,
+	.configure_tx_pre_pll	= qcom_edp_configure_tx_pre_pll_v46,
+	.configure_rate_pcs	= qcom_edp_configure_rate_pcs_v46,
+	.configure_lanes_after_pll = qcom_edp_configure_lanes_after_pll_v46,
+	.finish_power_on	= qcom_edp_finish_power_on_v46,
 };
 
 static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
@@ -1079,6 +1105,11 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
 	.com_configure_pll	= qcom_edp_com_configure_pll_v8,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v8,
 	.com_ldo_config		= qcom_edp_ldo_config_v6,
+	.prepare_power_on	= qcom_edp_prepare_power_on_v46,
+	.configure_tx_pre_pll	= qcom_edp_configure_tx_pre_pll_v46,
+	.configure_rate_pcs	= qcom_edp_configure_rate_pcs_v46,
+	.configure_lanes_after_pll = qcom_edp_configure_lanes_after_pll_v46,
+	.finish_power_on	= qcom_edp_finish_power_on_v46,
 };
 
 static struct qcom_edp_phy_cfg glymur_phy_cfg = {
@@ -1089,81 +1120,49 @@ static struct qcom_edp_phy_cfg glymur_phy_cfg = {
 	.ver_ops = &qcom_edp_phy_ops_v8,
 };
 
-static int qcom_edp_phy_power_on(struct phy *phy)
+static int qcom_edp_prepare_power_on_v46(const struct qcom_edp *edp)
 {
-	const struct qcom_edp *edp = phy_get_drvdata(phy);
-	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
-	unsigned long pixel_freq;
-	int ret;
-	u32 val;
-	u8 cfg1;
-
-	ret = edp->cfg->ver_ops->com_power_on(edp);
-	if (ret)
-		return ret;
-
-	ret = edp->cfg->ver_ops->com_ldo_config(edp);
-	if (ret)
-		return ret;
-
-	writel(0x00, edp->tx0 + TXn_LANE_MODE_1);
-	writel(0x00, edp->tx1 + TXn_LANE_MODE_1);
-
-	if (edp->dp_opts.ssc) {
-		ret = qcom_edp_configure_ssc(edp);
-		if (ret)
-			return ret;
-	}
-
-	ret = qcom_edp_configure_pll(edp);
-	if (ret)
-		return ret;
+	return 0;
+}
 
-	/* TX Lane configuration */
+static int qcom_edp_configure_tx_pre_pll_v46(const struct qcom_edp *edp)
+{
 	writel(0x05, edp->edp + DP_PHY_TX0_TX1_LANE_CTL);
 	writel(0x05, edp->edp + DP_PHY_TX2_TX3_LANE_CTL);
 
-	/* TX-0 register configuration */
 	writel(0x03, edp->tx0 + TXn_TRANSCEIVER_BIAS_EN);
 	writel(0x0f, edp->tx0 + TXn_CLKBUF_ENABLE);
 	writel(0x03, edp->tx0 + TXn_RESET_TSYNC_EN);
 	writel(0x01, edp->tx0 + TXn_TRAN_DRVR_EMP_EN);
 	writel(0x04, edp->tx0 + TXn_TX_BAND);
 
-	/* TX-1 register configuration */
 	writel(0x03, edp->tx1 + TXn_TRANSCEIVER_BIAS_EN);
 	writel(0x0f, edp->tx1 + TXn_CLKBUF_ENABLE);
 	writel(0x03, edp->tx1 + TXn_RESET_TSYNC_EN);
 	writel(0x01, edp->tx1 + TXn_TRAN_DRVR_EMP_EN);
 	writel(0x04, edp->tx1 + TXn_TX_BAND);
 
-	ret = qcom_edp_set_vco_div(edp, &pixel_freq);
-	if (ret)
-		return ret;
-
-	writel(0x01, edp->edp + DP_PHY_CFG);
-	writel(0x05, edp->edp + DP_PHY_CFG);
-	writel(0x01, edp->edp + DP_PHY_CFG);
-	writel(0x09, edp->edp + DP_PHY_CFG);
+	return 0;
+}
 
-	ret = edp->cfg->ver_ops->com_resetsm_cntrl(edp);
-	if (ret)
-		return ret;
+static void qcom_edp_configure_lanes_after_pll_v46(const struct qcom_edp *edp)
+{
+	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
+	u8 cfg1;
 
-	writel(0x19, edp->edp + DP_PHY_CFG);
 	writel(0x1f, edp->tx0 + TXn_HIGHZ_DRVR_EN);
 	writel(0x04, edp->tx0 + TXn_HIGHZ_DRVR_EN);
 	writel(0x00, edp->tx0 + TXn_TX_POL_INV);
 	writel(0x1f, edp->tx1 + TXn_HIGHZ_DRVR_EN);
 	writel(0x04, edp->tx1 + TXn_HIGHZ_DRVR_EN);
 	writel(0x00, edp->tx1 + TXn_TX_POL_INV);
+
 	writel(0x10, edp->tx0 + TXn_TX_DRV_LVL_OFFSET);
 	writel(0x10, edp->tx1 + TXn_TX_DRV_LVL_OFFSET);
 	writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX0);
 	writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX1);
 	writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX0);
 	writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX1);
-
 	writel(0x10, edp->tx0 + TXn_TX_EMP_POST1_LVL);
 	writel(0x10, edp->tx1 + TXn_TX_EMP_POST1_LVL);
 	writel(0x1f, edp->tx0 + TXn_TX_DRV_LVL);
@@ -1194,14 +1193,90 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	writel(drvr1_en, edp->tx1 + TXn_HIGHZ_DRVR_EN);
 	writel(bias1_en, edp->tx1 + TXn_TRANSCEIVER_BIAS_EN);
 	writel(cfg1, edp->edp + DP_PHY_CFG_1);
+}
+
+static int qcom_edp_configure_rate_pcs_v46(const struct qcom_edp *edp,
+					   unsigned long *pixel_freq)
+{
+	return qcom_edp_set_vco_div(edp, pixel_freq);
+}
+
+static int qcom_edp_start_pll(const struct qcom_edp *edp)
+{
+	int ret;
+
+	writel(0x01, edp->edp + DP_PHY_CFG);
+	writel(0x05, edp->edp + DP_PHY_CFG);
+	writel(0x01, edp->edp + DP_PHY_CFG);
+	writel(0x09, edp->edp + DP_PHY_CFG);
+
+	ret = edp->cfg->ver_ops->com_resetsm_cntrl(edp);
+	if (ret)
+		return ret;
+
+	writel(0x19, edp->edp + DP_PHY_CFG);
+
+	return 0;
+}
+
+static int qcom_edp_finish_power_on_v46(const struct qcom_edp *edp)
+{
+	u32 val;
 
 	writel(0x18, edp->edp + DP_PHY_CFG);
 	usleep_range(100, 1000);
-
 	writel(0x19, edp->edp + DP_PHY_CFG);
 
-	ret = readl_poll_timeout(edp->edp + DP_PHY_STATUS,
-				 val, val & BIT(1), 500, 10000);
+	return readl_poll_timeout(edp->edp + DP_PHY_STATUS, val, val & BIT(1),
+				  500, 10000);
+}
+
+static int qcom_edp_phy_power_on(struct phy *phy)
+{
+	const struct qcom_edp *edp = phy_get_drvdata(phy);
+	unsigned long pixel_freq;
+	int ret;
+
+	ret = edp->cfg->ver_ops->com_power_on(edp);
+	if (ret)
+		return ret;
+
+	ret = edp->cfg->ver_ops->prepare_power_on(edp);
+	if (ret)
+		return ret;
+
+	ret = edp->cfg->ver_ops->com_ldo_config(edp);
+	if (ret)
+		return ret;
+
+	writel(0x00, edp->tx0 + TXn_LANE_MODE_1);
+	writel(0x00, edp->tx1 + TXn_LANE_MODE_1);
+
+	if (edp->dp_opts.ssc) {
+		ret = qcom_edp_configure_ssc(edp);
+		if (ret)
+			return ret;
+	}
+
+	ret = qcom_edp_configure_pll(edp);
+	if (ret)
+		return ret;
+
+	ret = edp->cfg->ver_ops->configure_tx_pre_pll(edp);
+	if (ret)
+		return ret;
+
+	ret = edp->cfg->ver_ops->configure_rate_pcs(edp, &pixel_freq);
+	if (ret)
+		return ret;
+
+	ret = qcom_edp_start_pll(edp);
+	if (ret)
+		return ret;
+
+	edp->cfg->ver_ops->configure_lanes_after_pll(edp);
+
+	ret = edp->cfg->ver_ops->finish_power_on(edp);
 	if (ret)
 		return ret;
 

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
