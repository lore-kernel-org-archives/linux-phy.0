Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA871C5B552
	for <linux-phy@archiver.kernel.org>; Mon, 26 May 2025 15:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXQafAe4ABhSBTXlekF+u6lbmzzLlCViWkAfD1l01fs=; b=uxks0fmf4GUAJd
	DsefuTn+D4/sD+CWX3oQJ4le5w6kqECRn/DwtHkEodWbu9iAJJCnHg9HsQTK5xbH+TaqYho5vL6uA
	lfftTNGa22INlyOTV3Eusv1Iyqomkrr4GzQ+Okvxcf8A1W2JZESq12fxbwEmHgtsL6JuUnaBXMgni
	8KK1GdFceKJ6GpEtclYK4COOaf008dDbgZ1+U21it+W8juoMAoc2F1wBkopvY9Z2SGK7tk9nv7X4G
	jT+i57ZpBhfJs+bH3e+ig/MRkAv56YutVtgwqNh2iYmpG+0+y9qiJoya/oWORH43g+NzsTTArIxbe
	u/tlP8AKuY/EUrEclwSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJZuh-000000098xp-24KL;
	Mon, 26 May 2025 15:38:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJZud-000000098tc-03wk
	for linux-phy@lists.infradead.org;
	Mon, 26 May 2025 15:38:52 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54Q9VadN023081;
	Mon, 26 May 2025 15:38:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=dDcQOd6MigO
	x6/8Ow3YrFjkr6ByjXSl9Dba1QVvfLRk=; b=YWX/sgIYblPRs3scFAATdTs3uE4
	bLcVe9ZSKLrT9PoiXEq6tc4qG2bhF9Ln4uu72doH/5lZA+ul5/lPF8XnilHR0Qru
	VhfC+HsnhqtaYFBAgo1yJq2M85XAH57Emal2UIF7kowmzLc3RX2cD8fRFW2DWfsn
	qRnLQoKjjsCjlUhacJwT0u4z0o+9HgJRR1y6KImFlFRrEaPNSubqlf5t7x9TN1MD
	+Wl/1xq6toJryp6JBGvlcY1QrK2VGSBAR5BwUZj2w4ulGXWcSHtp88sOsCxb0S+s
	8Q2fv3uhq1Ernd+3ThxYo2IaU8P+q8cz63Ixv3XpcO2yNyboHS7kqpvvvuw==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6vjmhe9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 May 2025 15:38:34 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54QFcVVo032533;
	Mon, 26 May 2025 15:38:31 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 46u76m73hs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 26 May 2025 15:38:31 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54QFcRQR032457;
	Mon, 26 May 2025 15:38:31 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 54QFcRBc032454;
	Mon, 26 May 2025 15:38:30 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 44FB8602710; Mon, 26 May 2025 21:08:30 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V6 09/10] phy: qcom-qmp-ufs: refactor qmp_ufs_power_off
Date: Mon, 26 May 2025 21:08:20 +0530
Message-ID: <20250526153821.7918-10-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
References: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=UOXdHDfy c=1 sm=1 tr=0 ts=68348afb cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=0NjA6WJkZe3NLfXfqlsA:9 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: -jArGu2ShKP0CEG0wrepOuO9BuxI6azG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI2MDEzMiBTYWx0ZWRfX0BzBtPp/yAHh
 C5Ci/0zAEWuFIKWOhVXkfee7d1WVRHOV/FHGISqXCo8CxXL4VBjqieo8eS+i3bl6WGuM2ZeueuG
 MwB82i4uHeVKujllRq6rC7Ui+CNVXSaWmljZsJxuCK40yExT7Om4Gw0+3KKVgb98ZoxgtQlwJSB
 UlJ0IrhneE4UpDJz9eotRfAfxQU+jbuwSg8rE5KirVbWIJfHRP10DjBFKfktlmEJzZwL3BNq/uG
 pwLNtCmnJAoDlPUs6G7OboNV6NUrlMzxHXujPeZ11L5eXWd7Ra5xMhaA6tbdgbsdQd18AyOTuNU
 jJr7tmT2RCFEigXg10Ozrvo5stuum4NbcmHX7er1Ngm/SQ5aO2PIoTTQMqgfhgx6qTTJUz3UZZ9
 gwhOwNYe0tDtTjMUxNZGYg3C5JdSRBrflEwpu6vkr2EujDkdpMhL1dwLgYUdmlBD2mlCwvf8
X-Proofpoint-GUID: -jArGu2ShKP0CEG0wrepOuO9BuxI6azG
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
X-CRM114-CacheID: sfid-20250526_083851_062902_75D0F5BC 
X-CRM114-Status: UNSURE (   9.45  )
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

In qmp_ufs_power_off, the PHY is already powered down by asserting
QPHY_PCS_POWER_DOWN_CONTROL. Therefore, additional phy_reset and
stopping SerDes are unnecessary. Also this approach does not
align with the phy HW programming guide.

Thus, refactor qmp_ufs_power_off to remove the phy_reset and stop
SerDes calls to simplify the code and ensure alignment with the PHY
HW programming guide.

Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 00bde65733cb..9c69c77d10c8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1825,13 +1825,6 @@ static int qmp_ufs_power_off(struct phy *phy)
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
--
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
