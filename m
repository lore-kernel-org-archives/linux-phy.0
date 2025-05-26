Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B24CC54FB3
	for <linux-phy@archiver.kernel.org>; Mon, 26 May 2025 15:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyKwGKrZpS0SGXkX/5zwzbXKIyA2co2ZsOC6Z/AHJEQ=; b=vSZBUBHylqi3o0
	/9bwtpi/+vDtLH3GczYzapdvwuJrc17d8B/kxp0opCz/WBZybWk9z70CdQNu7w4FbNaUHK0DhrQPH
	iWoHPgQMUdMC1v5PysTPe40B7UqzSOI1YrU4RdwMv+/MRbILgz63hjpYsVXegKSqGOSjfnL0pPXhC
	snw+zoBHvDhfYmZY90QgObXQ306MJo8tdxUFPDb3wForm1+oPko/t13Rxma0gVKTzRFzhHAwvRAmf
	0HmZ6L8UtZb1D95YEA6bCLzEju2U4uHedmEsLou6E76JMMRJygSgoEHU+xshsRJcJChBSTetB479j
	wxwzhTOydbtk62iBWtZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJZug-000000098w9-0Hjd;
	Mon, 26 May 2025 15:38:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJZua-000000098rK-1ty2
	for linux-phy@lists.infradead.org;
	Mon, 26 May 2025 15:38:50 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54QA4eUo014338;
	Mon, 26 May 2025 15:38:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=MZlZFF2K3GF
	w3SHY7CWUwaHQy68vdBI/QHFw0Hv5yb4=; b=HAbCqE/W+aqMP+fr1TJFw9Gb+8D
	SEUlJ8ZCpPU7DG8hGVuTK34IftIwMyW/i1qerwAZ+8RE0gSzhjyX1GEv8qnqZJMP
	z2lTCT+64wGt/br2IRTo+zuxdkZ28RmNgmQOZDyEcPvfRNg0s+kohOglfgTU8Eya
	GF3NUjErR1eGaMiunudpg81H3sxnpr9Nrzv+17UcoFEjETEVQmnjJuHMEMl3xh5U
	S2MFS4Ojfc+41CqojhzXfTJUphYOUEgA9V0/zEwLgdhv58zTYXyqLoBjK2AlTyMJ
	3oN6RaRylaHrALmDW2C6vmXbdpzxB9xJ2B3hJhnT4FaVlo9kRB8cDKDKYxA==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6vjmhe6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 May 2025 15:38:31 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54QFcRbi032450;
	Mon, 26 May 2025 15:38:28 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 46u76m73gt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 26 May 2025 15:38:28 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54QFcRQJ032457;
	Mon, 26 May 2025 15:38:28 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 54QFcRBU032454;
	Mon, 26 May 2025 15:38:28 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 46A6A602710; Mon, 26 May 2025 21:08:27 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V6 05/10] phy: qcom-qmp-ufs: Refactor UFS PHY reset
Date: Mon, 26 May 2025 21:08:16 +0530
Message-ID: <20250526153821.7918-6-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
References: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=UOXdHDfy c=1 sm=1 tr=0 ts=68348af7 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=SnDgZOM3ual17WrlNmIA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: T31mUgxmN-FcfUZ_lTAWOz-VUE3gj5B-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI2MDEzMiBTYWx0ZWRfX1/TiF+A7oosv
 3F9/GtfAep7nUjzaiQGgwtXCZevZGrtLCKPyxLiir5vmPhcpLl6FRR5Ik5qCf/A0kDPeyJrR8GS
 jXLBdk5aJfSRTjP8unhH5I9EpiiuwnmsE4iMk0LObFv765pQp6Bh4KgZkevptRMieZhyi0WwIkx
 C0gA8KxFIp3h2GJm65R4CrzRhHWSp/Bb+AYhmrgey85tIgLxeu8zL7AP7DF5fwlXC7vtsE1IV7S
 NUYSwSafTuMeSWNO800tuU+NyqCy6YS10swBrl3GFwUfTUIPuDy95j7iJ0/T2/chpzgsoOTbKbl
 sPQPSVfLw7GHbP7YGAx2Rqco4DS3slwlCaGiElVrnagoYemmVW8GiwJMOPAHJ5c2oTXYbfMShoh
 tnI58HlMoUEHIYuCNGKeKJnMTZha7qxu4kzePqPgYFMgWEW8ndemnvXWpXSCKQXzBWiHH2bm
X-Proofpoint-GUID: T31mUgxmN-FcfUZ_lTAWOz-VUE3gj5B-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-26_08,2025-05-26_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 mlxscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 bulkscore=0 malwarescore=0 impostorscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505260132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_083848_495474_05427598 
X-CRM114-Status: GOOD (  13.52  )
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
qmp_phy_power_on to the new qmp_ufs_phy_init function introduced
as part of phy_ops::init callback.

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
