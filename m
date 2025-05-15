Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0DEFC3DA6D
	for <linux-phy@archiver.kernel.org>; Thu, 15 May 2025 16:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50fMd0JJGCxWiIflByLuijiI0v/QWt7iedyqYZpCb+s=; b=VaT0qVHYNaz0mz
	59g4zonCSQilhesVj8kcdiJtlIBRWEAKg9nSzGQHUCQiHQwLnEsGBmFnOIAaMA2ywAZDp2Gn5y+Qw
	7+KhvS3etUxaYW4INJr0MurEiG1ZQEVlzZFo9zy68aFPYtXUX0+cJuRrtX5vO36kucGFfBdNcJg9J
	bQ5cpHMoTwq0qcvkC0u//45NMbJ7dF50qcFSgyuwlgB1teFkxmGYwAkJliiDMbaPZNNwQCUCozTFc
	55GGabJYT7rjdsNfnn8L/whO87who2GRyOGqDZY4UakSQC4lnjS8HxkEjabXSdPqgwYfDf4WKdI6+
	zMms4QMxy+lj9LH+KYyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFbR0-00000001Fy8-35Gv;
	Thu, 15 May 2025 16:27:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFbQy-00000001FwO-1HwE
	for linux-phy@lists.infradead.org;
	Thu, 15 May 2025 16:27:50 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFWsJ021299;
	Thu, 15 May 2025 16:27:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=4S96Arde24v
	2y2YyGQATzPBNB9dByxhUgfjNuVBDVio=; b=HUY4aGf8ecbQpKiiy3YxH0ZVT+r
	GS5ZtP/6gnASZzPoZxI2XpTmBHK7aQhUCeSvJ5iylIv/SlfhcsLHwpqYIPb5WfaH
	WCIhgJiA1Er/qosdUmlRCAXwFwK8Zb2gDjtNk2fM4Rry8vQNWTbRlxnBe8ggKO3k
	gnM/U98gDmmW5cJijVs+L505sQGQY+WAQ30Txy/6QabLuULEFuLlfNXiFq29MA8S
	HCcxY0Vk0T39/cjRl05NTOV3rhG6Qbr5XEvTXQHaZ9S2lhGc5mqSg7B0A5QNuLUD
	98ov19rW2E0x0C/gQu2ctC/t57+S7t3FQsoDmCZYS8wJAYXGLZ6BDE9aEBg==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbew6rub-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 May 2025 16:27:31 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54FGRRQM023561;
	Thu, 15 May 2025 16:27:28 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 46hyvmvnnp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Thu, 15 May 2025 16:27:28 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54FGRSJ9023569;
	Thu, 15 May 2025 16:27:28 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 54FGRRlQ023567;
	Thu, 15 May 2025 16:27:28 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 5E1565015B0; Thu, 15 May 2025 21:57:27 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V5 03/11] phy: qcom-qmp-ufs: Refactor phy_power_on and phy_calibrate callbacks
Date: Thu, 15 May 2025 21:57:14 +0530
Message-ID: <20250515162722.6933-4-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: _m6yQ0eQXMshcArOy0APZhSXvD0HqsS-
X-Proofpoint-ORIG-GUID: _m6yQ0eQXMshcArOy0APZhSXvD0HqsS-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE2MyBTYWx0ZWRfX75qGyqBJ5Yd3
 1HfN+4w2eSxR1rCtgLLTGSXWtXGda4vklicM2aDvqe1O6PC7+5AURAUT4dDSDbPXZqJ1RFtN3NO
 ssTm82ZufByatHWgyAP3+wnj1l/ZoK35yaM8Drb267Zm0IGblDcL7MWBTI4uj0VWU0Ec10hksdI
 z9rTqJg2yxm5q8q2hmye688flkkQ6oBhI5qxPtT7+0lxrEP7Jc8oX0UjXO0tn8W98F4hZPS+0va
 b7TBUnAf41qC3oK1ccO8fIcBSL7ryJruvwXPKP1OSFtOfSqD0ac3+D9m8WfZBd1yaDCkCEtEFND
 XV2iqlYHtVtkl3OZpDJ6f+okNFA1fxdlxp6F3ngO7+AfAjMT15Bkyt5l4BM6CBD59Ic0X7cbeKp
 P5ARCxzTEa+3m5Aq/0MQr7MA5JT6Hx7wYeC0doZUUHEU5PxJGvN+UAzBN653vCkts5Pm8Uw6
X-Authority-Analysis: v=2.4 cv=LOFmQIW9 c=1 sm=1 tr=0 ts=682615f4 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=ZEhkBkkNTqPGxlI-GDwA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_07,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 malwarescore=0 mlxlogscore=999 impostorscore=0 bulkscore=0
 clxscore=1015 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505150163
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_092748_459873_922A59B0 
X-CRM114-Status: GOOD (  12.33  )
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

Commit 052553af6a31 ("ufs/phy: qcom: Refactor to use phy_init call")
puts enabling regulators & clks, calibrating UFS PHY, starting serdes
and polling PCS ready status into phy_power_on.

In Current code regulators enable, clks enable, calibrating UFS PHY,
start_serdes and polling PCS_ready_status are part of phy_power_on.

UFS PHY registers are retained after power collapse, meaning calibrating
UFS PHY, start_serdes and polling PCS_ready_status can be done only when
hba is powered_on, and not needed every time when phy_power_on is called
during resume. Hence keep the code which enables PHY's regulators & clks
in phy_power_on and move the rest steps into phy_calibrate function.

Refactor the code to retain PHY regulators & clks in phy_power_on and
move out rest of the code to new phy_calibrate function.

Also move reset_control_assert to qmp_ufs_phy_calibrate to align
with Hardware programming guide.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Co-developed-by: Can Guo <quic_cang@quicinc.com>
Signed-off-by: Can Guo <quic_cang@quicinc.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 26 ++++++-------------------
 1 file changed, 6 insertions(+), 20 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index a67cf0a64f74..ade8e9c4b9ae 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1797,7 +1797,7 @@ static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
 	return 0;
 }
 
-static int qmp_ufs_init(struct phy *phy)
+static int qmp_ufs_power_on(struct phy *phy)
 {
 	struct qmp_ufs *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -1825,10 +1825,6 @@ static int qmp_ufs_init(struct phy *phy)
 				return ret;
 			}
 		}
-
-		ret = reset_control_assert(qmp->ufs_reset);
-		if (ret)
-			return ret;
 	}
 
 	ret = qmp_ufs_com_init(qmp);
@@ -1847,6 +1843,10 @@ static int qmp_ufs_phy_calibrate(struct phy *phy)
 	unsigned int val;
 	int ret;
 
+	ret = reset_control_assert(qmp->ufs_reset);
+	if (ret)
+		return ret;
+
 	qmp_ufs_init_registers(qmp, cfg);
 
 	ret = reset_control_deassert(qmp->ufs_reset);
@@ -1899,21 +1899,6 @@ static int qmp_ufs_exit(struct phy *phy)
 	return 0;
 }
 
-static int qmp_ufs_power_on(struct phy *phy)
-{
-	int ret;
-
-	ret = qmp_ufs_init(phy);
-	if (ret)
-		return ret;
-
-	ret = qmp_ufs_phy_calibrate(phy);
-	if (ret)
-		qmp_ufs_exit(phy);
-
-	return ret;
-}
-
 static int qmp_ufs_disable(struct phy *phy)
 {
 	int ret;
@@ -1943,6 +1928,7 @@ static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 static const struct phy_ops qcom_qmp_ufs_phy_ops = {
 	.power_on	= qmp_ufs_power_on,
 	.power_off	= qmp_ufs_disable,
+	.calibrate	= qmp_ufs_phy_calibrate,
 	.set_mode	= qmp_ufs_set_mode,
 	.owner		= THIS_MODULE,
 };
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
