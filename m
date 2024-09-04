Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ACC0CD3431
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 08:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LcZy2SgvsRuS0wrZX1xvwBXx61WTHMlTafaQGv//Uc=; b=oPHI2foIx4Ms7c
	8DuhMuCWttEA2iRl2UcL2ygDLjU7FU+6u5v+o86dJXTRc1XcViBxGDkQtqw05eROQQ7OjniogBnlw
	RTTH52hkBhIbPGQcaWAZUjl0cVNVko9b56aKMx8XHPX2AQZezCnmDMHVDEHI5uSBJLeLWK/a8rF+W
	1v59DkeKRvWsOxMSJ5v1f0VOdWEk8W10aInnQpZY34uz8sIf3iCjRf/ZKkTcQl0K1LK81s37h7OB/
	4bApydYlYKQyllg1npEaU/D04qHv/kgwb/dD4AD9yGu9N8to2Oe6uImfUIwkqZgcNNSzYhoOaLYfB
	KfpuJxjiEzqfk0csPnmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slljj-00000003WVY-0MEN;
	Wed, 04 Sep 2024 08:51:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sllU4-00000003R2C-0eHt;
	Wed, 04 Sep 2024 08:35:25 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4848KXuf009495;
	Wed, 4 Sep 2024 08:35:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9OkqXgP+KLa/2/+tehPx9LVC4VIKH5FkCorAROfvZyc=; b=G3IzgZ5gUYxOaJE1
	V0pVVPG0tD1MRETjlqqo+sflPTkOPFvd7zG/dtFzPPRJmcsW6/qba+AnFDtfDEXM
	EHkRezcvrbeVXLS8gJRzVpv0VGERe+brQQlOTu87+lXrVHN0rUnZxz5u9TPyAYa7
	RwIx257f/aFUqwase1nj28Om+GYXsb2MAVDmxwjhqTwex3RDfIfu8EN2J6aIqkem
	pK0xlsPQwwNkWNGhUhYw5DzhYajt0UhA/JkgApGdqLaOp/sKYQ8Sa6JbxEkF44FU
	UJZ1U7+5pC7nlJPINQIhk4eePssD1eVMRlEQZkfQDF9b63vK5tt2YGAAD9sZC3F+
	B+s4FQ==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41e0bhk8wq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Sep 2024 08:35:11 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4848Z9jH030117
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 4 Sep 2024 08:35:09 GMT
Received: from jingyw-gv.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 4 Sep 2024 01:35:01 -0700
From: Jingyi Wang <quic_jingyw@quicinc.com>
Date: Wed, 4 Sep 2024 16:33:48 +0800
Subject: [PATCH 07/19] pmdomain: qcom: rpmhpd: Add QCS8300 power domains
MIME-Version: 1.0
Message-ID: <20240904-qcs8300_initial_dtsi-v1-7-d0ea9afdc007@quicinc.com>
References: <20240904-qcs8300_initial_dtsi-v1-0-d0ea9afdc007@quicinc.com>
In-Reply-To: <20240904-qcs8300_initial_dtsi-v1-0-d0ea9afdc007@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier
	<mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Bartosz
 Golaszewski" <bartosz.golaszewski@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, "Andy Gross" <agross@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        "Thomas Gleixner" <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
        Robin
 Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
        Konrad Dybcio
	<konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh
	<quic_gurus@quicinc.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, Lee Jones
	<lee@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-remoteproc@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-scsi@vger.kernel.org>,
        <linux-pm@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <iommu@lists.linux.dev>, Jingyi Wang <quic_jingyw@quicinc.com>,
        Tingguo Cheng
	<quic_tingguoc@quicinc.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1725438840; l=1659;
 i=quic_jingyw@quicinc.com; s=20240829; h=from:subject:message-id;
 bh=hz1lD5uBC7NgSpedT6G7gBtBmMuKqPdisyGX4o9be4M=;
 b=r5iEKgXRzUgLUqXKQQ6lY6dF+xYD9piv935nID6tuA1g+2S1XQECbpzjabyS/bd0LwIGWmPdm
 m4pPnwE47H3BHJ7jtNCClUgMrtHZEm9k8ZBTxF8+SWC97tGehxLLY6j
X-Developer-Key: i=quic_jingyw@quicinc.com; a=ed25519;
 pk=3tHAHZsIl3cClXtU9HGR1okpPOs9Xyy1M0jzHw6A/qs=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: tL7J73z-ES22nOsCfl5UftRZz7_6PrJm
X-Proofpoint-GUID: tL7J73z-ES22nOsCfl5UftRZz7_6PrJm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-04_05,2024-09-04_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 priorityscore=1501 suspectscore=0 adultscore=0 bulkscore=0 malwarescore=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 mlxscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2409040065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_013524_371525_5700007B 
X-CRM114-Status: GOOD (  12.23  )
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

From: Tingguo Cheng <quic_tingguoc@quicinc.com>

Add support for the power-domains found on QCS8300 platform.

Co-developed-by: Shazad Hussain <quic_shazhuss@quicinc.com>
Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
---
 drivers/pmdomain/qcom/rpmhpd.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/pmdomain/qcom/rpmhpd.c b/drivers/pmdomain/qcom/rpmhpd.c
index d2cb4271a1ca..d79321b08d16 100644
--- a/drivers/pmdomain/qcom/rpmhpd.c
+++ b/drivers/pmdomain/qcom/rpmhpd.c
@@ -623,7 +623,31 @@ static const struct rpmhpd_desc x1e80100_desc = {
 	.num_pds = ARRAY_SIZE(x1e80100_rpmhpds),
 };
 
+/* QCS8300 RPMH power domains */
+static struct rpmhpd *qcs8300_rpmhpds[] = {
+	[QCS8300_CX] = &cx,
+	[QCS8300_CX_AO] = &cx_ao,
+	[QCS8300_EBI] = &ebi,
+	[QCS8300_GFX] = &gfx,
+	[QCS8300_LCX] = &lcx,
+	[QCS8300_LMX] = &lmx,
+	[QCS8300_MMCX] = &mmcx,
+	[QCS8300_MMCX_AO] = &mmcx_ao,
+	[QCS8300_MXC] = &mxc,
+	[QCS8300_MXC_AO] = &mxc_ao,
+	[QCS8300_MX] = &mx,
+	[QCS8300_MX_AO] = &mx_ao,
+	[QCS8300_NSP0] = &nsp0,
+	[QCS8300_NSP1] = &nsp1,
+};
+
+static const struct rpmhpd_desc qcs8300_desc = {
+	.rpmhpds = qcs8300_rpmhpds,
+	.num_pds = ARRAY_SIZE(qcs8300_rpmhpds),
+};
+
 static const struct of_device_id rpmhpd_match_table[] = {
+	{ .compatible = "qcom,qcs8300-rpmhpd", .data = &qcs8300_desc },
 	{ .compatible = "qcom,qdu1000-rpmhpd", .data = &qdu1000_desc },
 	{ .compatible = "qcom,sa8155p-rpmhpd", .data = &sa8155p_desc },
 	{ .compatible = "qcom,sa8540p-rpmhpd", .data = &sa8540p_desc },

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
