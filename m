Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94199C369C2
	for <linux-phy@archiver.kernel.org>; Sat,  3 May 2025 16:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+fydifnVUrR7WmHuN0GBGwBXTYBv5s0exep6okN36g=; b=xcTV813raPz5ww
	9WvlilxJhI8R1JzTNP8u0LSXPm+xZuGOemY2lIXh8F/n/NGAAUhpwKcWYkdTdKKCh95UgBWFDv1Jn
	DVmIIjgcEX7VyqI1oomsCl3ApME1rrGCiLNB/TUiXHzQ7+9StKY1GESrDFHCFjj0gH9y+L4Mf1sFm
	z+EdgeTcP3MHZYxCwlByLdZSYM3qxyZTuUBlrfL6C+RaroesYn/ABaHCDThj+omgWchcLShqV2F47
	ZVXEaGkp88W4rPsqgjbFTAfUmGm29DHIyKCizzVuBE5SmdS8mFWQUK37hSlF4n+RT4TvDLAgbqosc
	zNbHNQzhx1zKG7WCv34Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBFfw-00000004A54-0q3I;
	Sat, 03 May 2025 16:25:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBFft-00000004A2H-0Xi4
	for linux-phy@lists.infradead.org;
	Sat, 03 May 2025 16:25:14 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 543FtUFM024678;
	Sat, 3 May 2025 16:24:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=h3MNwfHwSqG
	1QK/mXK08N/kezTizjwlomtUT+CquWV0=; b=ZoehMgxeSK6V5LjkJQL+x7NWpkg
	Dbtndfo+oJoVPsdQ1/t/a+dUtqoJdCUHNOVJjOUWqOFxxC9abIwxmDTIEX3ass24
	q3660IKgilUu09DVls/B0vrD6dyGGN09DqvVjTm6z6sMhgoJHYwfo0ge5V/WhHbj
	chohYuFt323XridAj6/5jBomkk+mim3KP6rjET9a6xjWonaCllMYoIkgZLnwOxG5
	nnXS5ks2glMXz240ygVGWsR4ugxwOPiLRMrhGgame3j840zreV1xdjfhyARqG7Rh
	xsGGCyz7nMQPW5E5ybQ1vS6uFR6/7M6lVROJVHc1REOPTuZ7ReMSEs2hrRQ==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46da3rrwxe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 03 May 2025 16:24:55 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 543GOi4m029770;
	Sat, 3 May 2025 16:24:51 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 46dc7kb1g6-1;
	Sat, 03 May 2025 16:24:51 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 543GOpbm029873;
	Sat, 3 May 2025 16:24:51 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 543GOpQU029872;
	Sat, 03 May 2025 16:24:51 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id DC82A5015A2; Sat,  3 May 2025 21:54:50 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V4 07/11] phy: qcom-qmp-ufs: Remove qmp_ufs_exit() and Inline qmp_ufs_com_exit()
Date: Sat,  3 May 2025 21:54:36 +0530
Message-ID: <20250503162440.2954-8-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: UC1OCos2Ou00ejXFJLwIt_f-_a74fgPY
X-Authority-Analysis: v=2.4 cv=cpWbk04i c=1 sm=1 tr=0 ts=68164357 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=ckjLh8WlKRlJn9_E0bwA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: UC1OCos2Ou00ejXFJLwIt_f-_a74fgPY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAzMDE1MCBTYWx0ZWRfX7vsxm0Mkyz0q
 ImUbIy6n0XxewtesPYy69V2ifZgYGhhi7PoH8BzP8DXskcaMKmgSlbNCqkTrr8wO4mLBw7ADFJb
 Ec3cylpbl8hC4szLn0jCaOXH+RTw/8h71jHC92Szvx1U3KRNcUGaJTye6pwR1wih8XzP/Y+VRYF
 mYQWi4Pa6QWQGcH1a5W3hN0jc3HxSpd1tKihfugJN5pwB0K30+2T2NNb1akh+DvkCThm5FxPNXq
 U7xLvsYUX6nCrO7Sngeur9q3QDPKreQVB1IoeRwjPploX5CIBfBSMPDk85eUJQUDuXuO4PoJ+Ij
 ojUeiwnzZqMn55odufBIUTfXgj4GA7a3Vs9kPazXdv9G3BAOWl81HbZHuo29XmtngUuUm1+r4ik
 1TwJBgvj60MTYdnjpHKTh0uAWkKgkhKvnWRBB46+Hhbqkz6LbyDMtmsETnDsdzmJlkmFOw4q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-03_07,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 spamscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=999
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505030150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250503_092513_179317_3BADACE1 
X-CRM114-Status: GOOD (  10.85  )
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

qmp_ufs_exit() is a wrapper function. It only calls qmp_ufs_com_exit().
Remove it to simplify the ufs phy driver.

Additonally partial Inline(dropping the reset assert) qmp_ufs_com_exit
into qmp_ufs_power_off function to avoid unnecessary function call.

Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 29 +++++--------------------
 1 file changed, 5 insertions(+), 24 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index c501223fc5f9..2df61ec68dc7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1757,20 +1757,6 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
 	qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
 }

-
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
@@ -1835,15 +1821,6 @@ static int qmp_ufs_phy_calibrate(struct phy *phy)
 	return 0;
 }

-static int qmp_ufs_exit(struct phy *phy)
-{
-	struct qmp_ufs *qmp = phy_get_drvdata(phy);
-
-	qmp_ufs_com_exit(qmp);
-
-	return 0;
-}
-
 static int qmp_ufs_power_off(struct phy *phy)
 {
 	struct qmp_ufs *qmp = phy_get_drvdata(phy);
@@ -1860,7 +1837,11 @@ static int qmp_ufs_power_off(struct phy *phy)
 	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			SW_PWRDN);

-	qmp_ufs_exit(phy);
+	/* Turn off all the phy clocks */
+	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
+
+	/* Turn off all the phy rails */
+	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);

 	return 0;
 }
--
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
