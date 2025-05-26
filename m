Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09356C5B54E
	for <linux-phy@archiver.kernel.org>; Mon, 26 May 2025 15:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xi2iIHkT6zQ3dileq4peaP59rlBitRcNxfGP9dKcV9I=; b=Qj41CcAB8wUOzz
	79cbn3Cm3lJ7ahanJgYIOOrlhYrTqhVFagwhc3NFHpQBKnCUXJvGtGyOZgoT+gJ48cdnH3Ej00P+5
	4POGVz7+5AGdAjWBcsRfVVlKjpZcxTdoBmOwW7CuPjCNs+TpMr1i6VPyL9IkiWApMAsuoJYRAdBUa
	xhvACFN4jjBfb0bAllM02GxfcOfXCdodKTf5qnOAOt+rERkVQig6/SX+vS+izidPYQne80Wz3onue
	KTUO4DLQqqQhA3+3AhsCAAJknBI84NONox8e4nPJ7J+brqtMyRvJTFugbKVgAvikN5lyeHRbEYe15
	PAMEnjuDtu8A1J4IkPUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJZuh-000000098y8-3C1v;
	Mon, 26 May 2025 15:38:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJZud-000000098uL-3Ews
	for linux-phy@lists.infradead.org;
	Mon, 26 May 2025 15:38:52 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54QA4thk010268;
	Mon, 26 May 2025 15:38:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=pbOvFQM3gVw
	+aznC2mP9WvbhhaH67mB19u98RlihE+o=; b=hMkXdKBTxAVbiGHgAGcQrNW0Epy
	sGOPbhBaFetY4OYebOlHXdx/48nymYpjzV7r7/HarZ9yTHXC3lbYXkgU2M6ERILy
	igY8uxaXPBxaXjdIgbok0APEbyra0IrRcsXJf/MARptPE2RyrrbU4oVRs4wIbj5C
	ISZuCCdxA2F7rSPvBdFx0P0iNP1beebdJJnAwsIbRyab+kViukzHp8AC5iAAeXdk
	bnAVvXtDeMj9jJt0GjdLhXZ4amjOftpXkGVa0jTOQs6LiomH/18pxnMZb11331Dm
	CMBFQKaZVKTnrBJGbBC9ZXYje4rBEBMNlPt8vli+C+MEGx76jhWdkLGg70A==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u79p4h12-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 May 2025 15:38:33 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54QFcRbj032450;
	Mon, 26 May 2025 15:38:30 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 46u76m73hg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 26 May 2025 15:38:30 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54QFcRQN032457;
	Mon, 26 May 2025 15:38:29 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 54QFcRBY032454;
	Mon, 26 May 2025 15:38:29 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id D1E2E602710; Mon, 26 May 2025 21:08:28 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V6 07/10] phy: qcom-qmp-ufs: Rename qmp_ufs_power_off
Date: Mon, 26 May 2025 21:08:18 +0530
Message-ID: <20250526153821.7918-8-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
References: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ATqyV2wovzSEzuC3HQpVpbVyenehizEC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI2MDEzMiBTYWx0ZWRfX6/2F+c/p7SPm
 dQF8Z9gMLgnrk8rT/wqeq6sxABHLFqamQF0pppYVqFkpg5gCRPmh2ycPy7GQdFitfLVu9dGvzWl
 KDUqL5YYG54pz64SNqRZZ0l9kFPje3ofLxmEyle0PhS7bMgnxpOti5Fcx8EHojpz/ifkHW6A0Jw
 OKU0hhXS4CaP9d+ygVfkrdk+0fUq3CRN1/5BDt3dHTmD5VRswFn3PDcuI2nlQpwrEZD4s4305Vs
 XUpmaP4VYHrTWrE/O3R5vnpSCYfxo0fPqwVQ4fp7VKgXnlm/GAvUYFPCP03hgHIBDFWxfrQdRO/
 GJvVYrqwvlpziVPzWSi1XJKHGA//8oFVH5WSfPGeFFUOnA4p1z2pwyDeOCcZ+1HeJz3hB4ndHac
 1VmWlkBQvDgdwZ/HPiUe5sEt3KErTZbGv2smm20s349hg3XGBMslmu+MOlxN+HILCaH7kVtn
X-Authority-Analysis: v=2.4 cv=HNnDFptv c=1 sm=1 tr=0 ts=68348af9 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=OtgkZb4fJjdbvehu_hcA:9 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: ATqyV2wovzSEzuC3HQpVpbVyenehizEC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-26_08,2025-05-26_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=999 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505260132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_083851_814916_C602BAEC 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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

Rename qmp_ufs_disable to qmp_ufs_power_off to better represent its
functionality. Additionally, inline qmp_ufs_exit into qmp_ufs_power_off
function to preserve the functionality of .power_off.

There is no functional change.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index eda0a59918ea..e0dc5fa43dee 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1849,28 +1849,11 @@ static int qmp_ufs_power_off(struct phy *phy)
 	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			SW_PWRDN);

-	return 0;
-}
-
-static int qmp_ufs_exit(struct phy *phy)
-{
-	struct qmp_ufs *qmp = phy_get_drvdata(phy);
-
 	qmp_ufs_com_exit(qmp);

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
@@ -1919,7 +1902,7 @@ static int qmp_ufs_phy_init(struct phy *phy)
 static const struct phy_ops qcom_qmp_ufs_phy_ops = {
 	.init		= qmp_ufs_phy_init,
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
