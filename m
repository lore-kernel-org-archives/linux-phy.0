Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B67D8EE498B
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 10:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=plzeHyB6zpd0BRMZpu+r0/6xHnsArK54N63DdMsDhbE=; b=U9KZ7LyqwBaV1S
	F3Ab7Czed1blc4668fHD9mDLQhBoplsfmnnIZP+JvRotlla0xTlPUN3lnUmKZ2YBIjqimCrlDujA2
	RAcV7PnBgOsnAsAaGf4vUzupdYibTY3UzpymghShVx017h64H2NvKTADGvU/mZhpDf8jUApr8f050
	d8DQra+/JaTmBehRID2uyUIOHvvMJDrxwef8IAJEzfZNl6cUHzq45zKg2hG9RyqxJ0sOJor0A8LkL
	Q0UZPiGYemTBLh+NbPNSjSaFCcEDiWT4v37mk/Yd9kx2R+OOMuveBsAf79pUWfY9udoLKWpyxnKZh
	icPaXIT72IyCrp1ukDdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soKHF-000000091fh-1Z2V;
	Wed, 11 Sep 2024 10:08:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soKH7-000000091cI-37io
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 10:08:41 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48B3kpRY023782;
	Wed, 11 Sep 2024 10:08:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:date:from:in-reply-to:message-id:references:subject:to; s=
	qcppdkim1; bh=zrf+9JuT0OFwekwnmcUao//E5JgKlKaI66mi+3SUVQ4=; b=dO
	FoR3PgaeS5C867k14s2BLpSF2ZRg8JCVtkr8TtOQ6ebp/ng3jOQSlk+1/OC2Nx10
	KwoN5DSljO7ZEqyIStd3YuudMj8KY3F8EA5Q++HNLFE5nydFcRea9FIblEsZptWn
	uttasFaZOvsSauoIKFV+FIeq6Fd5W8tFfewn6NTwt51ygb6SAi7gjZa/y6VnfcwL
	31IeDKERsC5HuAgpRFx+a5eYVxLMXaik6ePe2ZbrOEwboa8L9CTFjj9KNTDxttDT
	17kPTOoB6MsdSLDkw/fXIMckQ0D56PWwCHv8Idzex8FSt8DYIiYj2BAy7/fPac6Q
	j9Tk2oWti5W20xbDvcDA==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41gy6p941d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Sep 2024 10:08:25 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 48BA8LsZ019444;
	Wed, 11 Sep 2024 10:08:21 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 41h168s1sy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 11 Sep 2024 10:08:21 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 48BA8Kt6019409;
	Wed, 11 Sep 2024 10:08:20 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-mukhopad-hyd.qualcomm.com [10.147.244.250])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 48BA8Ks8019402;
	Wed, 11 Sep 2024 10:08:20 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 3978529)
	id 96D625000AF; Wed, 11 Sep 2024 15:38:18 +0530 (+0530)
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
Subject: [PATCH 3/5] phy: qcom: edp: Add support for eDP PHY on SA8775P
Date: Wed, 11 Sep 2024 15:38:11 +0530
Message-Id: <20240911100813.338-4-quic_mukhopad@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240911100813.338-1-quic_mukhopad@quicinc.com>
References: <20240911100813.338-1-quic_mukhopad@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: ETaJKGyh4Eye1kQSYJV9UiBzciYNV8jp
X-Proofpoint-GUID: ETaJKGyh4Eye1kQSYJV9UiBzciYNV8jp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 bulkscore=0 lowpriorityscore=0 mlxlogscore=999 spamscore=0 phishscore=0
 impostorscore=0 suspectscore=0 mlxscore=0 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409110075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_030837_853312_02A34E42 
X-CRM114-Status: GOOD (  12.44  )
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

Add support for eDP PHY v5 found on the Qualcomm SA8775P platform.

Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 47 +++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 0f860a807d1b..34a47cd2919d 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -191,6 +191,45 @@ static u8 edp_phy_aux_cfg_v4[10] = {
 	0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
 };
 
+static const u8 edp_swing_hbr_rbr_v5[4][4] = {
+	{ 0x07, 0x0f, 0x16, 0x1f },
+	{ 0x0d, 0x16, 0x1e, 0xff },
+	{ 0x11, 0x1b, 0xff, 0xff },
+	{ 0x16, 0xff, 0xff, 0xff }
+};
+
+static const u8 edp_pre_emp_hbr_rbr_v5[4][4] = {
+	{ 0x05, 0x11, 0x17, 0x1d },
+	{ 0x05, 0x11, 0x18, 0xff },
+	{ 0x06, 0x11, 0xff, 0xff },
+	{ 0x00, 0xff, 0xff, 0xff }
+};
+
+static const u8 edp_swing_hbr2_hbr3_v5[4][4] = {
+	{ 0x0b, 0x11, 0x17, 0x1c },
+	{ 0x10, 0x19, 0x1f, 0xff },
+	{ 0x19, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+static const u8 edp_pre_emp_hbr2_hbr3_v5[4][4] = {
+	{ 0x0c, 0x15, 0x19, 0x1e },
+	{ 0x0b, 0x15, 0x19, 0xff },
+	{ 0x0e, 0x14, 0xff, 0xff },
+	{ 0x0d, 0xff, 0xff, 0xff }
+};
+
+static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg_v5 = {
+	.swing_hbr_rbr = &edp_swing_hbr_rbr_v5,
+	.swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3_v5,
+	.pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr_v5,
+	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3_v5,
+};
+
+static u8 edp_phy_aux_cfg_v5[10] = {
+	0x00, 0x13, 0xa4, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
+};
+
 static int qcom_edp_phy_init(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
@@ -520,6 +559,13 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
 };
 
+static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
+	.is_edp = false,
+	.aux_cfg = edp_phy_aux_cfg_v5,
+	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
+	.ver_ops = &qcom_edp_phy_ops_v4,
+};
+
 static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
 	.ver_ops = &qcom_edp_phy_ops_v4,
@@ -1114,6 +1160,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id qcom_edp_phy_match_table[] = {
+	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
 	{ .compatible = "qcom,sc7280-edp-phy", .data = &sc7280_dp_phy_cfg, },
 	{ .compatible = "qcom,sc8180x-edp-phy", .data = &sc7280_dp_phy_cfg, },
 	{ .compatible = "qcom,sc8280xp-dp-phy", .data = &sc8280xp_dp_phy_cfg, },
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
