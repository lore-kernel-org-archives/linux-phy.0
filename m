Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59B3DC369C2
	for <linux-phy@archiver.kernel.org>; Sat,  3 May 2025 16:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KxznF2dxkvCJzBdORkaQGM30RDXplUvgoutmB61a/NQ=; b=Rrj84CGpvgT1/Z
	cNUegM2dGCzyZsfk8onnhRtsB/jnT3FNZ88fRCO9iOLrX+zYGslTQpS9ZL+5TUigL4Gcw6dQ6NtHl
	mZ3g+KviX4XNVId3wjTVA97v8ZN76C+UtGbPtNA4B+zfs44lIc3ic9fzIjgYAgFnIUz2bShTNBn3d
	1k5DhF21EhWfI2NjvdtrXjhFqSHhSoRDo3ba2U0nYfuWoWZO/3viX54fOhcRoeuMn2Ujdu6M60gWG
	LsPrWGhYxnnxZpVaiXNte2Z28M4Tii2cfEnaOI8PN4I5pQQ5aDlUcULu193DZkkmLGXlAUQS/FlF5
	XOCZQPX2RuaGs5ZleRCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBFfs-00000004A24-3MOm;
	Sat, 03 May 2025 16:25:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBFfp-000000049ze-2u3v
	for linux-phy@lists.infradead.org;
	Sat, 03 May 2025 16:25:11 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5433Zm2C015588;
	Sat, 3 May 2025 16:24:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2Kti/p/PWJw
	4dzf3ygolnQ5GeOuMTWMal28BD6nClQc=; b=ST5RF/L+5D/IIRghsHLcAoOYQ0d
	w5t6jOh4M9QQVa8BooPZmXi4UbV8JLXmMUtAPJGxJkQFl6KzTrDMwkWeX7gf9S7S
	ajgEZZIuu4Pko7+K2Lfe4+n1EVKMcMN98A/egdo8eFgZP1W725VvJ2cup8s6fyP/
	FXXk3TzcgoorCHl/4yzJjyJzAFBmw0ZR2GKNOkh0pAmfZaqkE+SQ1t6X0rgGFflE
	QLDwCduIogy6nfnqQ7DKfXbSX+GA65e3BofnGUFy3RDn+NMKxTJ44cU3fgpiHGdF
	tM2uLuU88ONhxDblXMRFhtfEkDVBVVDRd1nyVnRYYK7f7YGFhRRPQUUFIHg==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dbc58ua1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 03 May 2025 16:24:52 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 543GOjQI029799;
	Sat, 3 May 2025 16:24:49 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 46dc7kb1fv-1;
	Sat, 03 May 2025 16:24:49 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 543GOnFQ029844;
	Sat, 3 May 2025 16:24:49 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 543GOmA6029843;
	Sat, 03 May 2025 16:24:49 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 310D15015A2; Sat,  3 May 2025 21:54:48 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH V4 05/11] phy: qcom-qmp-ufs: Remove qmp_ufs_com_init()
Date: Sat,  3 May 2025 21:54:34 +0530
Message-ID: <20250503162440.2954-6-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: YFVNWhZXLAZ-kwi-KYncsA0O28mNiEAg
X-Authority-Analysis: v=2.4 cv=O7Y5vA9W c=1 sm=1 tr=0 ts=68164354 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=qNV7bCZu-Ug6FuTvl7kA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: YFVNWhZXLAZ-kwi-KYncsA0O28mNiEAg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAzMDE1MCBTYWx0ZWRfXyWyBl4oCGCaW
 IHCXgKV+7/bEznTp/dEOJ1r2MIZySeTzQAxkRrS+isMgxQWl5iTi0tYjHccubNyjbNS7V6wqxha
 oMFX2m3xM3Xxo0xPFvVY9HhOnQLeO/oeVRvUTqeDgdHAMqetvA0vgMRQQqT6lvdmLqnEDVaGlBK
 L0j1jkC+kH/aHXSE5L4MWK/M4cQ7pdQ0gG568kdSHETQyax7mY0owJy3nywWdp2zE1CKboLkU7q
 ZEqGIFJ9lB/K2KS0SRobctuUNG9QpIhr4KJ5vGrdWHWpBMuOsHKMkuD9Px1/KLFimL0U1amQi0K
 56sBsUiiIZUTTpRYGwaKkkVmiwhwqPEBLefRBciVMmbdNDSaJ7okKFU2ShIiKSNhxlCSxsDf9fE
 QTu7q+ziJ/Slez2f3SAsWzY3Q1PKn68QOtN1i9gx+XEijNVZGd0cToFrIYNLDrz25XM0CrWa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-03_07,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505030150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250503_092509_735404_5A02076E 
X-CRM114-Status: GOOD (  12.68  )
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

The qmp_ufs_power_on() function acts as a wrapper, solely invoking
qmp_ufs_com_init(). Additionally, the code within qmp_ufs_com_init()
does not correspond well with its name.

Therefore, to enhance the readability and eliminate unnecessary
function call inline qmp_ufs_com_init() into qmp_ufs_power_on().

There is no change to the functionality.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 44 ++++++++++---------------
 1 file changed, 18 insertions(+), 26 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 43d2d714f28b..94095393148c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1757,31 +1757,6 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
 	qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
 }

-static int qmp_ufs_com_init(struct qmp_ufs *qmp)
-{
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	void __iomem *pcs = qmp->pcs;
-	int ret;
-
-	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
-	if (ret) {
-		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
-		return ret;
-	}
-
-	ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
-	if (ret)
-		goto err_disable_regulators;
-
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
-
-	return 0;
-
-err_disable_regulators:
-	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
-
-	return ret;
-}

 static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
 {
@@ -1799,10 +1774,27 @@ static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
 static int qmp_ufs_power_on(struct phy *phy)
 {
 	struct qmp_ufs *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	void __iomem *pcs = qmp->pcs;
 	int ret;
+
 	dev_vdbg(qmp->dev, "Initializing QMP phy\n");

-	ret = qmp_ufs_com_init(qmp);
+	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
+	if (ret) {
+		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
+		return ret;
+	}
+
+	ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
+	if (ret)
+		goto err_disable_regulators;
+
+	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
+	return 0;
+
+err_disable_regulators:
+	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 	return ret;
 }

--
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
