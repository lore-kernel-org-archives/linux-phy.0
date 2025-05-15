Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B01EC3DA6D
	for <linux-phy@archiver.kernel.org>; Thu, 15 May 2025 16:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FqKrpySYAgz3oM3F9Sn28zeFakF2OIwrpAsyng7UqBE=; b=IftLQoEapRdXeb
	/IVwqGTBSCRcAYGG/XUI4dx0ZxWMEc6duyvzdsGG/i/s5I67EvnFXJIsE+zJT0UtnCzmDab8Wjm1s
	3a4lQdNzYmRvMKX9yjgCsJIHahUrhVK15++tRmAt/4qxoax1hB2Rt3V2fElPu5bMuY+YJQ+HIjV5W
	NcaPAicekdQmmcWY6kyDyN4sBzDYZzvwajFPRwsbBB3USDAqO8sgaCJaq7FXz4Bx6fTtJXmjvYMO+
	zfJ1reUd+h01CeJO2TbbvgkhVBB6h2QuraH2DbyAAuGRPWxhrGQ7Y86euiLcGhtk9y9zhFXrq4WYE
	T/bR61OTGfKE5E/BX8FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFbR5-00000001G2x-0CnB;
	Thu, 15 May 2025 16:27:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFbR1-00000001FzU-29B2
	for linux-phy@lists.infradead.org;
	Thu, 15 May 2025 16:27:53 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFYG2025719;
	Thu, 15 May 2025 16:27:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ZZpGqg65WnK
	GHFKGlWQ+wUXMZ9IbixvVZzDq9YwdGeQ=; b=BLS5vgng5jbr5OFoVfrzt7wM0TR
	E0CedUFCt1700DuuBSv4H3Y96cfC0GUaMsBe5ec1R8ZNwrgXPvO11ADnp8JazkDW
	ff91K0FIN7swdguUucTuXpwtMUtOiH45MknOfxX+3rnscIMbb0r/gOcNGhN87hsv
	cw3/NWz9mRqQXYamGDN9gN3rqmxA6xtFzj6qwsVpNT5fS8GDhLnmM1e92eUqLep4
	YzeP59BGk1zwM4fj/jw9i0jvyU3e1aRgK7mc7xLKBCA+E5MeCn6kSNkisElcF4Xx
	pno9V0AoMlB2Pz5UuqbMx7Ktz5HM9etid4dvn4t49aIfLye5i6P2Zt0cuSA==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcnxw85-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 May 2025 16:27:34 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54FGRVP5023624;
	Thu, 15 May 2025 16:27:31 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 46hyvmvnpf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Thu, 15 May 2025 16:27:31 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54FGRRGS023551;
	Thu, 15 May 2025 16:27:31 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 54FGRV9Z023613;
	Thu, 15 May 2025 16:27:31 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 793B85015B1; Thu, 15 May 2025 21:57:30 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V5 06/11] phy: qcom-qmp-ufs: Rename qmp_ufs_power_off
Date: Thu, 15 May 2025 21:57:17 +0530
Message-ID: <20250515162722.6933-7-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: DwhoVs59B6YED4IlvbGMxF5D9WWwxckS
X-Authority-Analysis: v=2.4 cv=D8dHKuRj c=1 sm=1 tr=0 ts=682615f7 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=OtgkZb4fJjdbvehu_hcA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE2MyBTYWx0ZWRfX/g4TpB6e+P29
 5y8vh764EXf7UVghV9EFmcVs2q3Mh3lrPA2S1QNnybgr3DFrWKPxFBgOIsrxifdraPLJN+BU9Z/
 KBFKV/ypYXp6LXkfJn/eSZSTT/2+m/WAXvssY7EjnW7BS3pppMDrEi/F2kw+HCDnQckSx3PnwgP
 txx37NuZ+FrfbVUCoino++bwIoSZWMggXYKTEOwjVbSnwO55jti9uSDF4ovYLm2lvtUaWaHpgDt
 vDCFmqzULWdqI0UXrABMTLHys1KoSxQidXk+DQQAU2XdjdNx9rbjuvPr75OzsPan71V0w4PiEuR
 cAjXl0buaUoIuRg6AV4Zs3r4oOI9120IRqattJy1NQk75Ize4zOgvGEQeZfi4RIY/rDp10/wks0
 Mrgbtp6lmKkA4QEZYiTzSUgKy33fHa41gKCVOCv+uowBdGK8IsbGPBbIWd1pRg1pav+fq2ns
X-Proofpoint-GUID: DwhoVs59B6YED4IlvbGMxF5D9WWwxckS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_07,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 spamscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 mlxscore=0 adultscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505150163
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_092752_038752_FB114356 
X-CRM114-Status: UNSURE (   9.56  )
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

Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index d3f9ee490a32..a5974a1fb5bb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1851,28 +1851,11 @@ static int qmp_ufs_power_off(struct phy *phy)
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
@@ -1921,7 +1904,7 @@ static int qmp_ufs_phy_init(struct phy *phy)
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
