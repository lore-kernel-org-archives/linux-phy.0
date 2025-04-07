Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE634C36010
	for <linux-phy@archiver.kernel.org>; Mon,  7 Apr 2025 12:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xNvyk8k07bC80OaA3KC8YvtZy5pPPkZgm9GRXo58des=; b=0QJ1Ye2TIAk7iv
	N6ATzDCnnuUz8WK+P55pijm5NwWSITZoMmhsC/d034TPStW0pzsDqjJmBgs26hz+nv1NOJb2AL5UX
	x6K+err+/JOskwVxv7m6HKGTJRWqULxPkW2whoxrqwVED9hUjhUXd4mbB1qvdY1j/H2VXWCHF9LHc
	kxpeeGOq9PXT/QNZ5WSGluA6Wm/YVXjruVD3NwSinHup0im9yzPywB2D1sJc/R8pY8LMyVFrG64iy
	4R1riiV/gEumiTvqxapFeoiOT/JtDrCpH3XxhRZeEVky6kXnJLBaRFGEHyzWZntLQTc06jxu80Fl8
	JIp2FhcnwHfSU2ObyVQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1lhp-00000000HC2-1c2u;
	Mon, 07 Apr 2025 12:36:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1lJ0-00000000BOF-3Ti6
	for linux-phy@lists.infradead.org;
	Mon, 07 Apr 2025 12:10:25 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5378dl82010401;
	Mon, 7 Apr 2025 12:10:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=eMHC3qBre7Cx3jMNFbAkbNrtN1K26u4iegL
	mKKlUW60=; b=X6+ar7cNmlMGcWceLcm+/x8R2NR4+ikmFmXvRCdbKAK0pOr7uqb
	VnYQwoF4iisvYKKF35Sez6/XO5Rw10mNuErBf85iQSndRsAN00jrpg6Ci7yvo0So
	sMZvaR88mcAjDC9ZtbK/ixmkneAa+9MsIk+oRcxn9ZXyJsQbBW/t2pKgF0N9MEfh
	04iArnqvXa7cK7Da+9XQ/JYbho5uVOQLBQ4FoSPI9gEr07galqh8l5ZCxTH90IwG
	JnGTdJvT/THiYGEkQbnnbbPJx0maMAzW/zpisgPVcDFBM5XFj7brZQGCQ5shHd2V
	nEV6LmTpmSMcg+R+GQBMybalWAXNZ8ik74Q==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd2m6df-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 07 Apr 2025 12:10:15 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 537CABuD014304;
	Mon, 7 Apr 2025 12:10:11 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 45ufe8q6af-1;
	Mon, 07 Apr 2025 12:10:11 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 537CAACu014289;
	Mon, 7 Apr 2025 12:10:11 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 537CAAKu014288;
	Mon, 07 Apr 2025 12:10:10 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id D2A08501586; Mon,  7 Apr 2025 17:40:09 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        quic_mapa@quicinc.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V1] phy: qcom-qmp-ufs: check for mode type for phy setting
Date: Mon,  7 Apr 2025 17:40:08 +0530
Message-ID: <20250407121008.22230-1-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: ILZgk981LSd1yt3Y9SLTcd37QuMFKu0V
X-Proofpoint-GUID: ILZgk981LSd1yt3Y9SLTcd37QuMFKu0V
X-Authority-Analysis: v=2.4 cv=NaLm13D4 c=1 sm=1 tr=0 ts=67f3c0a7 cx=c_pps a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=udVkWoAwuaFyegVQXPwA:9 a=TjNXssC_j7lpFel5tvFf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-07_03,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=999 clxscore=1015 phishscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504070086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_051022_879987_409AD28F 
X-CRM114-Status: GOOD (  10.39  )
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

Generally all target supports Rate B but for very few like SM8550,
two sets of UFS PHY settings are provided, one set is to support
HS-G5 Rate A and another set is to support HS-G4 and lower
gears with Rate B.

Commit b02cc9a17679("phy: qcom-qmp-ufs: Add PHY Configuration support
for sm8750") apply Rate B setting for SM8550 gear 5 without checking
for mode value (Rate A or Rate B) from Controller driver which caused
issue as SM8550 support rate A for Gear 5.

Fix this by adding mode check before applying Rat B phy setting.

Fixes: b02cc9a17679 ("phy: qcom-qmp-ufs: Add PHY Configuration support for sm8750")
Reported-by: Neil Armstrong <neil.armstrong@linaro.org>
Closes: https://lore.kernel.org/all/430ed11c-0490-45be-897b-27cad9682371@quicinc.com/
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-QRD
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 45b3b792696e..b33e2e2b5014 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1754,7 +1754,8 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
 		qmp_ufs_init_all(qmp, &cfg->tbls_hs_overlay[i]);
 	}

-	qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
+	if (qmp->mode == PHY_MODE_UFS_HS_B)
+		qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
 }

 static int qmp_ufs_com_init(struct qmp_ufs *qmp)
--
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
