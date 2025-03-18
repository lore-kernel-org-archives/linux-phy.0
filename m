Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72136C35FFA
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 14:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llPEtQJO06GltDG8Ak17X8BPFstOpNucFPxzOHsIBFQ=; b=XWFa0BcyzLSC82
	hejBTaDREUr9bNesQ0ao78jOC34VkXK1dO3IuskepcxWdi2fKb+1/QVSWX4z9qpTRize7rTIW0yXX
	zaCkveBNeWG7yhghNcjK0MMnb1tt3xvKIWhmp8Gwuej0ahlx8j7J+tmAj0LweF82nMFd0uj079M/G
	rAFZNYjhvQI8MUEsAnMoeUw0/WhUstpE7nTd9gFxSaj2QtdPAwiwTv41oYJj1yBq3RZWQPer+CqrX
	WLy0G4TNB853ntOTKI8nDCAAHsebjeF9f59H65UC4XYbbsmenTSu1VFt4XX67HGAipKxs7X+VoGBW
	igBxQ7PJmpy0iaqsVZVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYGY-00000006F0K-0ht8;
	Tue, 18 Mar 2025 14:50:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYGU-00000006Ewu-1NqF
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 14:49:59 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52I8w16b004704;
	Tue, 18 Mar 2025 14:49:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=qDhoBmJHQpl
	Gj0Ufg3K3cYfGGWmK1b/c8ljPkz87FRA=; b=b6k3jdJv28Lezmu4ypXVNlgQ+t8
	JIzqiSvCfvMaQJzgwZXk9XEglFanhRZu+gwEHZ7ocHrysi5mgVT4Ql0MMMcM5wCu
	uMmE6zrpWK+9sb3pvY6v2ioP/edFvSHrvtRmL6WgxDD9cak9pbHMTLLitMOG9foC
	BZ4WNJoPZvrRLW8V3lnY2T1v5plGzON/IGYqvNm3541qLCqECVVpNs/DovudBWoi
	GXBNCZCOohDr2KllK2fzR6N7MU/GywTKIq0lzGdpF47q6WsiJmnRPXE6S3cnmt8f
	qR1Be3EuQDnV67HKpsh2TkPWY3PBp5vwBBUM1QyraGxmaiyD0kEeTVjVFgA==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45etmbttdt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 18 Mar 2025 14:49:53 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 52IEnl6T004273;
	Tue, 18 Mar 2025 14:49:49 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 45dkgmfv91-1;
	Tue, 18 Mar 2025 14:49:49 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 52IEnmWR004296;
	Tue, 18 Mar 2025 14:49:49 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 52IEnmLY004293;
	Tue, 18 Mar 2025 14:49:49 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id DBBFC501582; Tue, 18 Mar 2025 20:19:48 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V2 4/6] phy: qcom-qmp-ufs: Refactor qmp_ufs_exit callback.
Date: Tue, 18 Mar 2025 20:19:42 +0530
Message-ID: <20250318144944.19749-5-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
References: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: DgxSMTydO0xIicwKNVSexuwLhnVCg75T
X-Proofpoint-GUID: DgxSMTydO0xIicwKNVSexuwLhnVCg75T
X-Authority-Analysis: v=2.4 cv=aMLwqa9m c=1 sm=1 tr=0 ts=67d98811 cx=c_pps a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=2ghFC8B1GUYIoq9qLGUA:9 a=7K3s5E3rCzI1cAiLShGS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 phishscore=0 mlxscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_074958_488390_9AECB945 
X-CRM114-Status: GOOD (  12.15  )
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

Rename qmp_ufs_disable to qmp_ufs_power_off and refactor
the code to move all the power off sequence to qmp_ufs_power_off.

Co-developed-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 41 ++-----------------------
 1 file changed, 3 insertions(+), 38 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 3a80c2c110d2..675fef106d3b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1757,19 +1757,6 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
 	qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
 }

-static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
-{
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
-
-	reset_control_assert(qmp->ufs_reset);
-
-	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
-
-	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
-
-	return 0;
-}
-
 static int qmp_ufs_power_on(struct phy *phy)
 {
 	struct qmp_ufs *qmp = phy_get_drvdata(phy);
@@ -1839,39 +1826,17 @@ static int qmp_ufs_power_off(struct phy *phy)
 	struct qmp_ufs *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;

-	/* PHY reset */
-	if (!cfg->no_pcs_sw_reset)
-		qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
-
-	/* stop SerDes */
-	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_START_CTRL], SERDES_START);
-
 	/* Put PHY into POWER DOWN state: active low */
 	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			SW_PWRDN);

-	return 0;
-}
-
-static int qmp_ufs_exit(struct phy *phy)
-{
-	struct qmp_ufs *qmp = phy_get_drvdata(phy);
+	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);

-	qmp_ufs_com_exit(qmp);
+	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);

 	return 0;
 }

-static int qmp_ufs_disable(struct phy *phy)
-{
-	int ret;
-
-	ret = qmp_ufs_power_off(phy);
-	if (ret)
-		return ret;
-	return qmp_ufs_exit(phy);
-}
-
 static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 {
 	struct qmp_ufs *qmp = phy_get_drvdata(phy);
@@ -1890,7 +1855,7 @@ static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)

 static const struct phy_ops qcom_qmp_ufs_phy_ops = {
 	.power_on	= qmp_ufs_power_on,
-	.power_off	= qmp_ufs_disable,
+	.power_off	= qmp_ufs_power_off,
 	.calibrate	= qmp_ufs_phy_calibrate,
 	.set_mode	= qmp_ufs_set_mode,
 	.owner		= THIS_MODULE,
--
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
