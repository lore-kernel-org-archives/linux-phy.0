Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52CEEC369AE
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 11:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5KsoVprCB7lI1hYO0BbJAScoa36uhPbP5+5oNBx2oFw=; b=APrvBP9bwPIT41
	O5OGQ4W2aS7M66bj9GaFl/8FFj5F89sjCidM3qxzg2YElxfhzLhee2CL0NYT3t4i3DSAmbfTym0p+
	iAohsn27EG0f5zOy3dboqGWPzLngtZyE+5rIZPmHcjkxybIsgdgnTSyihw5F0BXgXhHPIYjRSFcnh
	DEYBSr7NiYxDhD6ntsAdNpkUai0qr+IqYynURRvZfjsKqWfGhptvgev1+UDDiz1551j4DOhtBc7/Y
	jr1Ot0dhtIfFCNPB3MQKrE2P4MkL3Qnv/RmS6xVSHe5gW2C/mQVysZIqCtfvS0nE1kbiHhT1ZkgH/
	uq03CWgQpHmtflF2MsYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2psp-0000000AB4X-0Gws;
	Thu, 10 Apr 2025 11:15:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nn2-00000009qza-25yN
	for linux-phy@bombadil.infradead.org;
	Thu, 10 Apr 2025 09:01:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=11LLqK8nk7Vw6U4AVrg4FYpBA6KNGEMvmRrgpaqV25c=; b=kzmy4GBr+q1Mz1dwfUEOVLBVrr
	fe3+EVnBxVyUpsMLqOUaOabRY5XIrM+Jy7UkeNJBn/rZH8GGWZziTc21UO3SpSOiLXHicoX0N75Pr
	6TXSpmorElUlAqKVlBXE2uhKqBDxPxea/mjNzzmZOr6tt6288lc4JA+A4IaLAsXUqHS1xkZSUO6AQ
	DzJuCLWFpvz+3s2AKqFuC0Hw/aQK6V3KT6JyXlLPoM+LN2GegZbM87liOT+35h6VQF5KuwqtA5Cf6
	HMS/OJTKuWOQaLbIcZOqj5vU37sH8iYAimakQlhgTXs0coJppVR9Wn3m5OBS9PyvAIXnJ3qJOSbm9
	5oXdfYuA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u2nmy-00000008mdx-2x1k
	for linux-phy@lists.infradead.org;
	Thu, 10 Apr 2025 09:01:39 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53A75Okw016413;
	Thu, 10 Apr 2025 09:01:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=11LLqK8nk7V
	w6U4AVrg4FYpBA6KNGEMvmRrgpaqV25c=; b=cRi+ke2o7W65IUa1cqShzFHcBZP
	Kz8WgJ2GL67YXuLh1vbkMAJxonEH+Owjt6vhOPKVqZqn7fL9Fru7+ieO/CTMvlso
	PYrCDCQuptwHSifomp3O7kKsK4ocN7mUpGDPUrZ8LDZSl2GNSVZ9Y8mM5mD83JKL
	ALhbC/kp0pPg1o5vHk/wmlIHWivdJvHIU1N1EfW0pUVaPfQKpHTP2ZCNrBzzGgVA
	p7Sh0PPrG194nhS9e8XnFTocCgMx3xeymHqCe4g2PmlTaVWxKjw/KIE734Ce/pqz
	Bzu8T3VOV53cp1pgtWFntDoCq/tcs3596Iq0JT5JlvHFIMXCSIVcAbsXtgA==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twc1p4fy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Apr 2025 09:01:15 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 53A919nv008774;
	Thu, 10 Apr 2025 09:01:11 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 45ue7g3rc4-1;
	Thu, 10 Apr 2025 09:01:11 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 53A91BUU008806;
	Thu, 10 Apr 2025 09:01:11 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 53A91BtI008802;
	Thu, 10 Apr 2025 09:01:11 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id D354750158F; Thu, 10 Apr 2025 14:31:10 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V3 4/9] phy: qcom-qmp-ufs: Refactor UFS PHY reset
Date: Thu, 10 Apr 2025 14:30:57 +0530
Message-ID: <20250410090102.20781-5-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 2x1zcq9Sk4eL3K1EiQ1dX89GVS2LCum-
X-Authority-Analysis: v=2.4 cv=KtdN2XWN c=1 sm=1 tr=0 ts=67f788db cx=c_pps a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=SnDgZOM3ual17WrlNmIA:9 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 2x1zcq9Sk4eL3K1EiQ1dX89GVS2LCum-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-10_01,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_100137_174458_B398D762 
X-CRM114-Status: GOOD (  14.23  )
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
during probe, instead of every resume.

Move the UFS PHY reset parsing logic from qmp_phy_power_on to
qmp_ufs_probe to avoid unnecessary parsing during resume.

Co-developed-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 61 +++++++++++++------------
 1 file changed, 33 insertions(+), 28 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 636dc3dc3ea8..12dad28cc1bd 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1799,38 +1799,11 @@ static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
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
@@ -2088,6 +2061,34 @@ static int qmp_ufs_parse_dt(struct qmp_ufs *qmp)
 	return 0;
 }

+static int qmp_ufs_get_phy_reset(struct qmp_ufs *qmp)
+{
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
+		devm_reset_control_get_exclusive(qmp->dev, "ufsphy");
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
 static int qmp_ufs_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -2114,6 +2115,10 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;

+	ret = qmp_ufs_get_phy_reset(qmp);
+	if (ret)
+		return ret;
+
 	/* Check for legacy binding with child node. */
 	np = of_get_next_available_child(dev->of_node, NULL);
 	if (np) {
--
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
