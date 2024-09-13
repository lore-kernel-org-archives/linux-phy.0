Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8F2EFA3742
	for <linux-phy@archiver.kernel.org>; Fri, 13 Sep 2024 10:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jN2wzPOS+gY5zZIR3LvG3SzNezfQVO7lZhN/atvDkWw=; b=tqBGdupfU1ie09
	7skw8tiW16TZ4Gk5RJ6ugjSPEjHiY1k7Kq6dIxoYB+uExFpIq6yuJJhqg+PTGLPfwdDK1Q5LyX3ae
	vIamLVPqXy5W6cDKYq7CI7CXHHmwbKmzhDgfmiFCRpv9/ltvxnN9xBA0GmtVC9g1MUrlNfGmTLPge
	lXGEL64VirJrGOBi1urHEA6CYkAjTeKCHgIHKxumxEizR8N17rkXR0tpP8CW0oQTI5sFtZ4BmnMtZ
	8Tq50hecxP2zJ9w8fFBdCaHCJVYJXdVyA8YvBj6rRMrimdVa9REH/K1iWBSw8MSo3/lqQbcHuCG9N
	wgL6YFfu/ujfgKqk2hHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp3gy-0000000FdvE-1kVa;
	Fri, 13 Sep 2024 10:38:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp3gv-0000000Fdt0-0mYE
	for linux-phy@lists.infradead.org;
	Fri, 13 Sep 2024 10:38:18 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48D9r2Nj018682;
	Fri, 13 Sep 2024 10:38:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:date:from:in-reply-to:message-id:references:subject:to; s=
	qcppdkim1; bh=MRwoQF8PbLzvkea1DwX2IEwwBiSeu4BazAQQVlvFEQY=; b=ia
	AOnv2rPTl1tivi4bUpqewmXX3YUfhw/XXjNXgaD3SNkgTy/qpOnLwhxRicNbEwpn
	K3TuPPK+NAcK065+pslNXaHSaruxg8f920RqP3LBkc7EJp1nzaykvLfCmc6rOoH/
	1aPZQG8jNOZ2oDu//4aSiifd1Kz5YllShRLmGb7hWx3B+CyvgSxOzU2gTmOoVZQp
	57dWlkdSJVorRVPKSIuiIw29uQhyan+Y3u7OxWmY7UQUUmKkD2+O99hFWNiZSP3g
	pz+V64FnLUIK9OW9WsTaew83h+be6/0mq90+9yPdQOVb9av/bAdG7KpzXdHOJPUy
	1WsuOnZaK0B+l0PJxXkA==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41j6gn4q2g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Sep 2024 10:38:09 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 48DAc3pP032445;
	Fri, 13 Sep 2024 10:38:03 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 41h1698fea-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Fri, 13 Sep 2024 10:38:03 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 48DAc2Ov032412;
	Fri, 13 Sep 2024 10:38:02 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-mukhopad-hyd.qualcomm.com [10.147.244.250])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 48DAc23B032388;
	Fri, 13 Sep 2024 10:38:02 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 3978529)
	id 898A05000AD; Fri, 13 Sep 2024 16:08:01 +0530 (+0530)
From: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, simona@ffwll.ch, dmitry.baryshkov@linaro.org,
        abel.vesa@linaro.org, robdclark@gmail.com, quic_abhinavk@quicinc.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_khsieh@quicinc.com, konrad.dybcio@linaro.org,
        quic_parellan@quicinc.com, quic_bjorande@quicinc.com
Cc: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        quic_riteshk@quicinc.com, quic_vproddut@quicinc.com
Subject: [PATCH v2 2/5] phy: qcom: edp: Introduce aux_cfg array for version specific aux settings
Date: Fri, 13 Sep 2024 16:07:52 +0530
Message-Id: <20240913103755.7290-3-quic_mukhopad@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240913103755.7290-1-quic_mukhopad@quicinc.com>
References: <20240913103755.7290-1-quic_mukhopad@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: HMwBu4zhHxLqMO1-0BhZ-XIQLbQfKwmP
X-Proofpoint-GUID: HMwBu4zhHxLqMO1-0BhZ-XIQLbQfKwmP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 adultscore=0
 clxscore=1015 phishscore=0 mlxlogscore=999 lowpriorityscore=0
 suspectscore=0 mlxscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409130073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_033817_288905_D7D505D3 
X-CRM114-Status: GOOD (  12.54  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

In order to support different HW versions, introduce aux_cfg array
to move v4 specific aux configuration settings.

Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
---
v2: Fixed review comments from Bjorn and Dmitry
	- Made aux_cfg array as const.

---
 drivers/phy/qualcomm/phy-qcom-edp.c | 37 ++++++++++++++++++-----------
 1 file changed, 23 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index da2b32fb5b45..bcd5aced9e06 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -90,6 +90,7 @@ struct phy_ver_ops {
 
 struct qcom_edp_phy_cfg {
 	bool is_edp;
+	const u8 *aux_cfg;
 	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
 	const struct phy_ver_ops *ver_ops;
 };
@@ -186,11 +187,15 @@ static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
 	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
 };
 
+static const u8 edp_phy_aux_cfg_v4[10] = {
+	0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
+};
+
 static int qcom_edp_phy_init(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
+	u8 aux_cfg[10];
 	int ret;
-	u8 cfg8;
 
 	ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
 	if (ret)
@@ -200,6 +205,8 @@ static int qcom_edp_phy_init(struct phy *phy)
 	if (ret)
 		goto out_disable_supplies;
 
+	memcpy(aux_cfg, edp->cfg->aux_cfg, sizeof(aux_cfg));
+
 	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
 	       edp->edp + DP_PHY_PD_CTL);
@@ -222,22 +229,20 @@ static int qcom_edp_phy_init(struct phy *phy)
 	 * even needed.
 	 */
 	if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
-		cfg8 = 0xb7;
-	else
-		cfg8 = 0x37;
+		aux_cfg[8] = 0xb7;
 
 	writel(0xfc, edp->edp + DP_PHY_MODE);
 
-	writel(0x00, edp->edp + DP_PHY_AUX_CFG0);
-	writel(0x13, edp->edp + DP_PHY_AUX_CFG1);
-	writel(0x24, edp->edp + DP_PHY_AUX_CFG2);
-	writel(0x00, edp->edp + DP_PHY_AUX_CFG3);
-	writel(0x0a, edp->edp + DP_PHY_AUX_CFG4);
-	writel(0x26, edp->edp + DP_PHY_AUX_CFG5);
-	writel(0x0a, edp->edp + DP_PHY_AUX_CFG6);
-	writel(0x03, edp->edp + DP_PHY_AUX_CFG7);
-	writel(cfg8, edp->edp + DP_PHY_AUX_CFG8);
-	writel(0x03, edp->edp + DP_PHY_AUX_CFG9);
+	writel(aux_cfg[0], edp->edp + DP_PHY_AUX_CFG0);
+	writel(aux_cfg[1], edp->edp + DP_PHY_AUX_CFG1);
+	writel(aux_cfg[2], edp->edp + DP_PHY_AUX_CFG2);
+	writel(aux_cfg[3], edp->edp + DP_PHY_AUX_CFG3);
+	writel(aux_cfg[4], edp->edp + DP_PHY_AUX_CFG4);
+	writel(aux_cfg[5], edp->edp + DP_PHY_AUX_CFG5);
+	writel(aux_cfg[6], edp->edp + DP_PHY_AUX_CFG6);
+	writel(aux_cfg[7], edp->edp + DP_PHY_AUX_CFG7);
+	writel(aux_cfg[8], edp->edp + DP_PHY_AUX_CFG8);
+	writel(aux_cfg[9], edp->edp + DP_PHY_AUX_CFG9);
 
 	writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
 	       PHY_AUX_SYNC_ERR_MASK | PHY_AUX_ALIGN_ERR_MASK |
@@ -519,16 +524,19 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 };
 
 static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
+	.aux_cfg = edp_phy_aux_cfg_v4,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
 static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
+	.aux_cfg = edp_phy_aux_cfg_v4,
 	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
 static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
 	.is_edp = true,
+	.aux_cfg = edp_phy_aux_cfg_v4,
 	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
@@ -707,6 +715,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 };
 
 static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
+	.aux_cfg = edp_phy_aux_cfg_v4,
 	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v6,
 };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
