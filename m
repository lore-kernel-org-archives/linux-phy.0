Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8547FC28B28
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 14:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STe2K+NL74DXQyhnMuv69feCjnG10s2nD8Bykg+6A7w=; b=BF18fiT7MR7XbU
	l+eb4DPCdPocPvAD2OSloZCyYjd6bpK8uX/cCzRykocezKVhPryZLMHVGWjHP1iqhVduFa+Fg+hbg
	2nLEh/nLEZhwflXrZtbm/ONmofc+hp7+v1KdNP33b+awZkAHUg6IKdmfyY5aFfe6H9EPq7DrV2h7O
	9YF+dWTsby7z00J5kDSI8u9Ibo1lkLUZKvzdh6sSacymNfzn2Nlx5G6LjGYnf4fJJ+oln/hsaz/pt
	UdWz6DVLzH5tVD+cbd7h6X19L9bIvX9CtrpnG7W2UGeZp6d+aJBdCXCQfzZ0wxvbFW006YcOEwyzR
	+TMTQkHqnonss5kkweDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYGV-00000006ExZ-0WIQ;
	Tue, 18 Mar 2025 14:49:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYGS-00000006EvI-0kj1
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 14:49:57 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52I8pleS020489;
	Tue, 18 Mar 2025 14:49:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=6+b4sHY4s4W
	l2U1c4XyyetM9kIiY7WusqPgvPV53sZQ=; b=W1qM5N9BStVBwmY+KJ+gKBhwDFa
	a0mKA4/Jb126g5w8G4J60ylkNyE6agtPN5lTbkx15CRz87cn7buBcL1OhoCfPkWe
	wlvNLGl5z5n6/OWjcZwp2mBu6GCW7o8tcOOGTISOK97JW7ZEi56CYyqUbB2neP7W
	5Czfb48lhWTh4v2WYNvbRessmKrtrUGRFdfc+p+h2Wpl0lqd0be6Tun2dVTlVAaQ
	woTxe5fI6SbgLFN2uPM/ACag7k84jNvQg6VVJsiuPqZM5iGnsBuHfRYJW8cvBfN0
	9yXAJ7ABDadZB4E6QdjLqoyTgCa0vKgW1iPuHmiz2esrkncPDOUYLoVOvrg==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1t4rnp7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 18 Mar 2025 14:49:51 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 52IEnlCR004288;
	Tue, 18 Mar 2025 14:49:47 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 45dkgmfv8e-1;
	Tue, 18 Mar 2025 14:49:47 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 52IEnl7V004275;
	Tue, 18 Mar 2025 14:49:47 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 52IEnlOi004270;
	Tue, 18 Mar 2025 14:49:47 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id C406C501583; Tue, 18 Mar 2025 20:19:46 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V2 1/6] phy: qcom-qmp-ufs: Rename qmp_ufs_enable and qmp_ufs_power_on
Date: Tue, 18 Mar 2025 20:19:39 +0530
Message-ID: <20250318144944.19749-2-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
References: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=VLPdn8PX c=1 sm=1 tr=0 ts=67d9880f cx=c_pps a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=2vqdgNe2dnITDK9_AgkA:9 a=7K3s5E3rCzI1cAiLShGS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: D3X0-hv7rrR5lHaMHdraiMXykgvzUgYd
X-Proofpoint-GUID: D3X0-hv7rrR5lHaMHdraiMXykgvzUgYd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 clxscore=1015 mlxscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=999 impostorscore=0 suspectscore=0 malwarescore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_074956_336554_DBADE2A1 
X-CRM114-Status: GOOD (  11.02  )
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
qmp_ufs_phy_calibrate to better reflect functionality. Also
update function calls and structure assignments accordingly.

Co-developed-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 45b3b792696e..bb836bc0f736 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1837,7 +1837,7 @@ static int qmp_ufs_init(struct phy *phy)
 	return 0;
 }

-static int qmp_ufs_power_on(struct phy *phy)
+static int qmp_ufs_phy_calibrate(struct phy *phy)
 {
 	struct qmp_ufs *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -1898,7 +1898,7 @@ static int qmp_ufs_exit(struct phy *phy)
 	return 0;
 }

-static int qmp_ufs_enable(struct phy *phy)
+static int qmp_ufs_power_on(struct phy *phy)
 {
 	int ret;

@@ -1906,7 +1906,7 @@ static int qmp_ufs_enable(struct phy *phy)
 	if (ret)
 		return ret;

-	ret = qmp_ufs_power_on(phy);
+	ret = qmp_ufs_phy_calibrate(phy);
 	if (ret)
 		qmp_ufs_exit(phy);

@@ -1940,7 +1940,7 @@ static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
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
