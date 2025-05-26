Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76E92C5B54C
	for <linux-phy@archiver.kernel.org>; Mon, 26 May 2025 15:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzbhvjBP7HXfRLTujoyNMo8tTLpOlBWS8WMOBC3eLkw=; b=pRRts7PzsUdJ1d
	nVoO9Ep9ilZYGZwAstOyUDIC2DhpnCa1BtVAbfxEGXP7M83IESOwqQlKJfWg9QnJv/uX98XkvssRj
	/o2qwBT3nokqlAVldMeAxsA8Usgaeav9H5HvOmsYovU/t3G5M+7gTaHM0rSAvQbYCFPRM96ttbFka
	HwcuAQ6I06XHsT33Sv4GHB8qTglObXNjE0TJ628KrGw+jn6cB779C7QkXi4wn1ftkR1O9sym9AL6N
	wqL/5KJDjNIfu7iDFNVbUqdQ7Lpt5jIDZjDlazhS21VOI3P+TUlhB3NsoRTt+heir0fMbtjYH4x6m
	THGq74fG5p8CsYciblCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJZuh-000000098xM-0q7c;
	Mon, 26 May 2025 15:38:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJZuc-000000098sX-0yG7
	for linux-phy@lists.infradead.org;
	Mon, 26 May 2025 15:38:51 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54QA4eUp014338;
	Mon, 26 May 2025 15:38:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=TeLQV7E0+0X
	xy3c1TDWh6kOf3rPlAJi9Z8DgfopZNDA=; b=o1UCZBFJNUlrWjbO+xFGlBdRo9q
	8Aai0Egac3nc7e0IizmtahYxdih7zFlABgzeMePVvHNTCt9SEy/0y6/c5+BYaqaT
	8atj/W2KQQ33pBALQNDyTzj/6cReb9xRCX0V9cRPcjwFrM8xbHWzanEq2XRRNk5C
	LyzG/0mfTurh1wZwcXRaiMIK/x/avHksPtpbvcT0HbgsGIF1SeMaPMLh4jI6Oli8
	Nfxor+o6XhUVGGfn8azxc2Xj7uJINE5klWXBNNhK9weuBKb3fIz4yqPnER+yU7h/
	FEolkbLGnLRXq+/tuKQusstqD7Xs6460KOa+BhV1NMe8/6HvCavi1lXhzzQ==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6vjmhe7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 May 2025 15:38:32 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54QFcT1O032501;
	Mon, 26 May 2025 15:38:29 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 46u76m73h8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 26 May 2025 15:38:29 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54QFcRQL032457;
	Mon, 26 May 2025 15:38:28 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 54QFcRBW032454;
	Mon, 26 May 2025 15:38:28 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id EE864602733; Mon, 26 May 2025 21:08:27 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V6 06/10] phy: qcom-qmp-ufs: Remove qmp_ufs_com_init()
Date: Mon, 26 May 2025 21:08:17 +0530
Message-ID: <20250526153821.7918-7-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
References: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=UOXdHDfy c=1 sm=1 tr=0 ts=68348af9 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=qNV7bCZu-Ug6FuTvl7kA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: bGQr86-KLrxs1pSns9OhkKCsZlWH8U8N
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI2MDEzMiBTYWx0ZWRfXzwWiFvUEFVzr
 TJGrV9Mepb6WlhQFTQmYAUd6zRRASjVneHYY7AevHfRuMPopchYOVOW9rUjcDsvhG6CBeVaCmCe
 oQkG0ldJpN9AAZ4DXMfijubrf/X3giHTjiKQZ1TKc9bcydYs9ma9lAPRp9+xOUQnw5eX/BOmPNJ
 E33GyhQIipRKWPkthWBVqZxNeJdwyeWZJmShoDYpM7nslkQFM2CNniWqVF35HbIwmtiH1oHgLzZ
 BX1kOCmtyR6ReBBX4vqTjKZ3jC5nJelxbkt6NzAKIhkoJb6LeDAe3pr3jT2OfppsP9Q0B3uVtl+
 Ojt9YpciZe9J6xPiqFIztHKUbZB9xBCFTDyKzsEXkcyqPZ6L0L+Zv5fXbUZxrZAvgBVrfsKnSck
 kqNxa8/SYQXGbBcbY7RDvoO3OQCqQ7+VNt1gT46T3lmO2rnTeIFZTY4jtlkGjbV8WfBtDZuv
X-Proofpoint-GUID: bGQr86-KLrxs1pSns9OhkKCsZlWH8U8N
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
X-CRM114-CacheID: sfid-20250526_083850_292003_8308FDE8 
X-CRM114-Status: GOOD (  11.31  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 41 +++++++++----------------
 1 file changed, 15 insertions(+), 26 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 33d238cf49aa..eda0a59918ea 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1758,9 +1758,23 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
 		qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
 }

-static int qmp_ufs_com_init(struct qmp_ufs *qmp)
+static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
+
+	reset_control_assert(qmp->ufs_reset);
+
+	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
+
+	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
+
+	return 0;
+}
+
+static int qmp_ufs_power_on(struct phy *phy)
+{
+	struct qmp_ufs *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs = qmp->pcs;
 	int ret;

@@ -1775,35 +1789,10 @@ static int qmp_ufs_com_init(struct qmp_ufs *qmp)
 		goto err_disable_regulators;

 	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
-
 	return 0;

 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
-
-	return ret;
-}
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
-static int qmp_ufs_power_on(struct phy *phy)
-{
-	struct qmp_ufs *qmp = phy_get_drvdata(phy);
-	int ret;
-	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
-
-	ret = qmp_ufs_com_init(qmp);
 	return ret;
 }

--
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
