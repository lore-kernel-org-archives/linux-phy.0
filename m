Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBD38C2D0CD
	for <linux-phy@archiver.kernel.org>; Thu, 15 May 2025 16:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrDVVfLS/2F+l8nUNKIBkPoNOHzZghxpD289BVug24Q=; b=kQcfmXMWvKsHgE
	jCyaZPlpRHfItGQvFJGWyvC9yWGQJI31T4nmUl5yBx4lCfqqK1d8oLZANVLapXkyddv2DLpZUgVlf
	B/9XqVlEqxENpSuD948CTIXV3KmnVqYAq69SRez3A9w3t6uya5T2q40/6Sd8oK/kKU+aVeBt/9nlp
	8EOwrHxHoeyvru61zO8ghe4qRnl7zgcgyGlojVp/SJiHuIJPbRz/KA3/YTgUQs8DTe0p322Nm6iKk
	vSESnHkFc9PMwuMqkEsHb6IVbrNbnlNeiw69I5ZUK+wG8b5IZxpRr26LJ4TjC6VzXNbFuNEHhcOh+
	dCnz3+HydVNmH7jhk2Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFbR2-00000001G09-26zQ;
	Thu, 15 May 2025 16:27:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFbQy-00000001Fwr-3KOb
	for linux-phy@lists.infradead.org;
	Thu, 15 May 2025 16:27:50 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFDbs001798;
	Thu, 15 May 2025 16:27:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=VJpcCn1rE5W
	iQUeg9CDQjENbWflZtRtKfrJbOt1OZG8=; b=aKJ0DV6w00Xn87RJaKfTIksDnXI
	DHeUGxrCTYuBBqnxBK45fdtIDLNatBjnC7Y2cv6KGpFkn9tu7jYHSHmmH5sjyme1
	uRkrK02gxrKWLLI44bapeOM/JyrTGWGUByHGMYEgi1wPS+RkP0zQMA3khesnSZDP
	tuHie3+mRncIUZisXFhReGTopP0fVgC5WnBzaTEYy1D3msRQLuyhq4QT51cTlGak
	xSiNZJqd58OwWnUZ2tJ6K410vsFmKpITiNQ+QM4TzHHjT2ijWA91EmzFSoAC4RUE
	bN+SIv+U7leHhENYzCrNr96iCQ3NoKCipvd6ZOQXMXO5vzx7DLV1ZrVj4BQ==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcrerq4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 May 2025 16:27:32 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54FGRTEP023599;
	Thu, 15 May 2025 16:27:29 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 46hyvmvnp1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Thu, 15 May 2025 16:27:29 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54FGRRGQ023551;
	Thu, 15 May 2025 16:27:29 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 54FGRTDp023592;
	Thu, 15 May 2025 16:27:29 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 770705015B0; Thu, 15 May 2025 21:57:28 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V5 04/11] phy: qcom-qmp-ufs: Refactor UFS PHY reset
Date: Thu, 15 May 2025 21:57:15 +0530
Message-ID: <20250515162722.6933-5-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: hSJWVOr0_vQJaen84Zbss4veKPkfn1J2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE2MyBTYWx0ZWRfX2Hygg0S36M6c
 cp68fDUWuMfyb8GfRHranvY5W+kVCNEWelumh/YQCgBeFaM1fHSbtXpj+AQAuTn+rWJjsRo0M8O
 BJzAzEaevTaLg7ZOmP4IhOwDFHxJ9MHgOOM6CxPIf8mLMr81BbN8jzgVgBUBP+KF4zgZQmAArhk
 99bvliJCSsX4GdMVZDMounv8zuJl3VdLIaX1k4zEQ1mxl5ITQ2zIL+vmYrf61U2/W69UIen+GY4
 pAnNlah8aJK+/KGzKMwVB07gcvmKOcjLuxlrPLMBxkG4vWgxQg17rFVp7ckNQ6n2PYA9EOzee1r
 wkPlUF8ovLpywGBi87Gi6jTZUEyOFnXXjoQN5b9rMzf0EejflVnz4sKHUwJMY8JAuk5rgyhr6tU
 Y5NkDsQk4haWYZWTFNgNwIBKGhQ5v8tSCjfi9aOSFaYBHW3j9q6knu8PQoB9e7IwaMPDvLgc
X-Authority-Analysis: v=2.4 cv=K7UiHzWI c=1 sm=1 tr=0 ts=682615f5 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=SnDgZOM3ual17WrlNmIA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: hSJWVOr0_vQJaen84Zbss4veKPkfn1J2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_07,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 malwarescore=0
 phishscore=0 mlxlogscore=999 clxscore=1015 bulkscore=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505150163
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_092748_958792_10CD64CE 
X-CRM114-Status: GOOD (  12.72  )
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

Refactor the UFS PHY reset handling to parse the reset logic only once
during initialization, instead of every resume.

As part of this change, move the UFS PHY reset parsing logic from
qmp_phy_power_on to the new qmp_ufs_phy_init function.

Co-developed-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 59 +++++++++++++------------
 1 file changed, 31 insertions(+), 28 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index ade8e9c4b9ae..33d238cf49aa 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1800,38 +1800,11 @@ static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
 static int qmp_ufs_power_on(struct phy *phy)
 {
 	struct qmp_ufs *qmp = phy_get_drvdata(phy);
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	int ret;
 	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
 
-	if (cfg->no_pcs_sw_reset) {
-		/*
-		 * Get UFS reset, which is delayed until now to avoid a
-		 * circular dependency where UFS needs its PHY, but the PHY
-		 * needs this UFS reset.
-		 */
-		if (!qmp->ufs_reset) {
-			qmp->ufs_reset =
-				devm_reset_control_get_exclusive(qmp->dev,
-								 "ufsphy");
-
-			if (IS_ERR(qmp->ufs_reset)) {
-				ret = PTR_ERR(qmp->ufs_reset);
-				dev_err(qmp->dev,
-					"failed to get UFS reset: %d\n",
-					ret);
-
-				qmp->ufs_reset = NULL;
-				return ret;
-			}
-		}
-	}
-
 	ret = qmp_ufs_com_init(qmp);
-	if (ret)
-		return ret;
-
-	return 0;
+	return ret;
 }
 
 static int qmp_ufs_phy_calibrate(struct phy *phy)
@@ -1925,7 +1898,37 @@ static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	return 0;
 }
 
+static int qmp_ufs_phy_init(struct phy *phy)
+{
+	struct qmp_ufs *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	int ret;
+
+	if (!cfg->no_pcs_sw_reset)
+		return 0;
+
+	/*
+	 * Get UFS reset, which is delayed until now to avoid a
+	 * circular dependency where UFS needs its PHY, but the PHY
+	 * needs this UFS reset.
+	 */
+	if (!qmp->ufs_reset) {
+		qmp->ufs_reset =
+			devm_reset_control_get_exclusive(qmp->dev, "ufsphy");
+
+		if (IS_ERR(qmp->ufs_reset)) {
+			ret = PTR_ERR(qmp->ufs_reset);
+			dev_err(qmp->dev, "failed to get PHY reset: %d\n", ret);
+			qmp->ufs_reset = NULL;
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
 static const struct phy_ops qcom_qmp_ufs_phy_ops = {
+	.init		= qmp_ufs_phy_init,
 	.power_on	= qmp_ufs_power_on,
 	.power_off	= qmp_ufs_disable,
 	.calibrate	= qmp_ufs_phy_calibrate,
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
