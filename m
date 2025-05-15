Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE321C3ABC9
	for <linux-phy@archiver.kernel.org>; Thu, 15 May 2025 16:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7UmHAEVmNor1tuumv3FE2oPMHPcV9Fv0yzD6DRG7po=; b=EkHcLlwjaBluvA
	sGPFRlSkuSbX183oTtuOinZUQlXFy2fZ2tlNHj3UxYhFnwwK0nD2XhthF+m9qGVWLhfgsh6ujE/3n
	Wixp84hFL4GD+2uVUluho50Y24CJSI60X1qKy+SVeL8qEG4KJAJapSCE3IocNaaE6FZIai6MDqbu5
	fayxc56VV65crR0YYZ/2yZiX6IGTwF1yUSEIxTNYkCAoTTO6e20PEMntCOaosRUYv/3LfhRTboM75
	s4kGK2FPxEZGsKYdlrEuWm79PnvMJT0L0a2Wb2D6lIvyhcyq+/g1v09YJyAkQw9sawjw8njquFoak
	wgNXRX2/XAuEFdxjLJiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFbR0-00000001Fxt-1zhf;
	Thu, 15 May 2025 16:27:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFbQx-00000001FwA-3yHE
	for linux-phy@lists.infradead.org;
	Thu, 15 May 2025 16:27:49 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFLTN002029;
	Thu, 15 May 2025 16:27:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=eqw+UqbDQAR
	vMy8qDjzgBj4QqCxUtc/Ge5A9KiAe3Nw=; b=bL2tigql0qw2zY1/5nMco0cfINv
	Gh67VVzXjdEstiPvCYEReKFxY+MtlxdqVMbwHvmhTAY93r74b+LRNAueYGD/MUNb
	YIdlkVLmePLYyP2gz6P7xb2xyIJSbRjHqTUqlmsM491f8TP6+ipsJl2k19EvGFUZ
	SJT4zjrE6C50kBurarLQGa6cBp71aXjrA7rdF2HGLGfE+vLmH260QI50GRt4podW
	daLM5lg2T92vKcfvNVgMtVhej5L+Psm/FvrwTWTQyHUf76TU+M4i0YhoJzY9xH+q
	bGvIcvtsDRh7IwNThK8QQW9tN4y9uSA/L3hhSzcNEhXYWEu0pjzAjnFa2rQ==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcrerq3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 May 2025 16:27:30 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54FGRRcw023562;
	Thu, 15 May 2025 16:27:27 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 46hyvmvnnb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Thu, 15 May 2025 16:27:27 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54FGRRGO023551;
	Thu, 15 May 2025 16:27:27 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 54FGRQ2r023549;
	Thu, 15 May 2025 16:27:27 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 6F1445015B0; Thu, 15 May 2025 21:57:26 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V5 02/11] phy: qcom-qmp-ufs: Rename qmp_ufs_enable and qmp_ufs_power_on
Date: Thu, 15 May 2025 21:57:13 +0530
Message-ID: <20250515162722.6933-3-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: R_cR6di3rKaCRK1bGAXrlZvehQqvvwYJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE2MyBTYWx0ZWRfX8RUSq3alCB9F
 9u/+CB4WPVfNRPkguq82qFEk3EyPM1mViRc5blgTVUFLYTslKg8S64Y1ybMobiGC23+z/wrbUlP
 AHZEPsy6KHlOPAymXC/pA/pehfHTu2YP4BHbUt2aQKbrxRmcMkRVmuRGzTrwH0nVeja/rrcE9za
 NdoSyEWhTi/RAJZV0DcFFZxgUa9uxSKhIO/+jmC8VT4AB+yTE4nDECXt8RgMsMUJmABd4FzyIvC
 /6KTZqcWs4L8n3Y80jQQjlenLFgE5HxbD6L0SGsz9s2p1l5xFcf773eq0H7U4OrFhM63mIFJy7k
 1pjtwYGvKoLBm3tna0bd9ONA0yLrEmx3g3J3vWVs2GuTdfa46cjeOesDwq5fUcIdmkYy3jLN1ei
 wo6ikqNZRATVE/PvhSjOU5yEJwM7Zy/UFcF23o0TlDRpo5f+IyBePGSP+UVF2VyQr6HugiNW
X-Authority-Analysis: v=2.4 cv=K7UiHzWI c=1 sm=1 tr=0 ts=682615f2 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=jENGRIT2ScPjwYuSNhQA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: R_cR6di3rKaCRK1bGAXrlZvehQqvvwYJ
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
X-CRM114-CacheID: sfid-20250515_092748_097703_A165E22E 
X-CRM114-Status: GOOD (  10.76  )
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

Rename qmp_ufs_enable to qmp_ufs_power_on and qmp_ufs_power_on to
qmp_ufs_phy_calibrate to better reflect their functionality. Also
update function calls and structure assignments accordingly.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Co-developed-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index b33e2e2b5014..a67cf0a64f74 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1838,7 +1838,7 @@ static int qmp_ufs_init(struct phy *phy)
 	return 0;
 }
 
-static int qmp_ufs_power_on(struct phy *phy)
+static int qmp_ufs_phy_calibrate(struct phy *phy)
 {
 	struct qmp_ufs *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -1899,7 +1899,7 @@ static int qmp_ufs_exit(struct phy *phy)
 	return 0;
 }
 
-static int qmp_ufs_enable(struct phy *phy)
+static int qmp_ufs_power_on(struct phy *phy)
 {
 	int ret;
 
@@ -1907,7 +1907,7 @@ static int qmp_ufs_enable(struct phy *phy)
 	if (ret)
 		return ret;
 
-	ret = qmp_ufs_power_on(phy);
+	ret = qmp_ufs_phy_calibrate(phy);
 	if (ret)
 		qmp_ufs_exit(phy);
 
@@ -1941,7 +1941,7 @@ static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 }
 
 static const struct phy_ops qcom_qmp_ufs_phy_ops = {
-	.power_on	= qmp_ufs_enable,
+	.power_on	= qmp_ufs_power_on,
 	.power_off	= qmp_ufs_disable,
 	.set_mode	= qmp_ufs_set_mode,
 	.owner		= THIS_MODULE,
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
