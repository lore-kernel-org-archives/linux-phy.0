Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20B0FEE49A5
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 11:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BVRbcPjyl+TnI2zBvzJckbkQlwlST9Vtk9L9L3nJF7o=; b=MfZeL8T8x2Mm6b
	s+Fwg1KVBLLxjLNQuMNus/aBve5xUUKMbI+Bh8thOC43Vz1reqTVy9ggvDeRBS1VyuBM5FS8mEoCx
	QYar2N4C4+1gB5vpajgJoKtRWSbc+sj6WwHXkRPTyZ1hHPP7S8IxPKS2HuXdEPccfpro3YmiEdFG1
	GWLbatpMqV45r3LtMm7CsIC7izErVin2M0t58ML2HYXmqMpQ+kqUdxl1rujN/2qqZldHKTyrefmhD
	MffZkNnKPYNq09wGO2Qrkca8oXCrvcOCXTUc3YQtKxWztTFtc+H7ErI+yObO6nTaf/ozY0Dp/XoiV
	8+SI+IJZalehibQki3YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXKVR-00AsEp-2V;
	Sat, 19 Aug 2023 11:52:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXKVP-00AsDM-1l
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 11:52:36 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37JBqT7B027316;
	Sat, 19 Aug 2023 11:52:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=1pCp/9JG/z/JZVXi97z7gosuH4C0kGyQuydaqAd62Oo=;
 b=MdFdnQmco3deQCqaPGJMP0KTsAJLqIu/Op/qZCddoQpk0JhbDjPPW8Ki/aDsTdrbqikv
 Vkr7yLz5gvy4NcWZ/nQzH8WhWp9kJtBBGhVbnMnzeaqYCZ8sJ88yxxeXqrCNarAd189C
 2O0V7bmvkUydZ2GT4Gfv1lV4DUCRIwUiWYtdSMnwPTlK1BakAQI0IHCw6VaoqvdlkKC/
 fOCHS9zYPKIj1BgmmwCyzvypIQfp1uC4CDX54cRnBoiVE/WuRdudkz56KW5M5UXk3XKz
 cIc/1KBgIz2Qfo/13AOFR4Pl7MGhFlpBL1uv/oNA9qRLA9Q04RUkS6PjusIxqtmVsSuq Kw== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sjmregjvp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 19 Aug 2023 11:52:29 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 37JBqQue014047;
	Sat, 19 Aug 2023 11:52:26 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3sjptk9pvt-1;
	Sat, 19 Aug 2023 11:52:26 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 37JBqQTm014041;
	Sat, 19 Aug 2023 11:52:26 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 37JBqPmW014039;
	Sat, 19 Aug 2023 11:52:26 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 399DA601034; Sat, 19 Aug 2023 17:22:25 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V2 0/2] Add Phy Configuration support for SC7280
Date: Sat, 19 Aug 2023 17:22:21 +0530
Message-Id: <20230819115223.9479-1-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.17.1
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: zuOAx2yDUIEre9msHi9winFo-UCY2oFn
X-Proofpoint-ORIG-GUID: zuOAx2yDUIEre9msHi9winFo-UCY2oFn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-19_12,2023-08-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 mlxscore=0 lowpriorityscore=0 impostorscore=0 mlxlogscore=857
 malwarescore=0 adultscore=0 bulkscore=0 clxscore=1011 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2308190113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230819_045235_722297_913756F7 
X-CRM114-Status: GOOD (  10.34  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This patch adds Phy configuration support for Qualcomm SC7280 SOC.

Changes from V1:
- Addressed dmitry's comment to align sc7280 register arrays in sorted order
- Addressed konrad & vinod's comment to align phy compatible in sorted order

Nitin Rawat (2):
  dt-bindings: phy: Add QMP UFS PHY comptible for SC7280
  phy: qcom-qmp-ufs: Add Phy Configuration support for SC7280

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 142 ++++++++++++++++++
 2 files changed, 144 insertions(+)

--
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
