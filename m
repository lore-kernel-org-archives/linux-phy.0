Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25EE9C77B7A
	for <linux-phy@archiver.kernel.org>; Fri, 19 May 2023 08:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=thjRUMGdoYB12jFpcExJVEfcjqmg4PkJwTlVeyif+VQ=; b=uOwGbp6seZoUst
	ot5fkcMsMCM5XaWnztfinUQGnZl0q0hpTV2O5cIxkOLZ+SXCqDf0tYH2/1a65CAG5/MqpCVaQKWRo
	LkUBN9hl5Cpo/hTKyS66TY/zodKOf0y9fxxbUJa+uJ71yHgrNMyEbi4bkWJIw8Xjc8V7ULocwBvbj
	3CI8izElMWPXGLIFHKfQLP4w373AFaBaY/a1PQ43gSNhqs+RPgv/BWOKiszIqd6SzLWNvkh+hHInR
	5cL3TMTMmwha5tXzlnS/cgx+xUrJkj/SA1CzXw0/OE80Ms+EW16eEwUU6O9z6vwX/HvDxsgNzBhGp
	VWZdWRa6TrfnDWcduYng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzvvu-00FbuD-2Y;
	Fri, 19 May 2023 08:57:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzvvr-00Fbt7-0O
	for linux-phy@lists.infradead.org;
	Fri, 19 May 2023 08:57:52 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34J8oTZA032753;
	Fri, 19 May 2023 08:57:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=sKPZuWKItWiqjMUEVl/T/GGERSo5s6SN2n+IXHpcmQs=;
 b=DXXnB11fl/NJcKhHI1dwz35xQKmPPAZheWnuMW6f3xFfQ96v2DGL3okFEoySGWzHVFAz
 4Hio66ynXEZiADDlHjd0PurEYAx3niiwV+2sXz6QpkoSXRFOO6spMSt96JgHtA2wIeW/
 7F8YOkbt1tTO866pFvITbIzmYq8pMVV85NTw7H+fEBbwhXNh0pS8a/IA1KU10PoHqg9X
 BY8N5/Xi8HTSmkubvlAWBHmZYzviiQqV0PBRXGod6QAzAypSnsBJDrrujnrPqORDYGBu
 qN1dRdyMMK4SxyrG5YrwckAWs/5k0aIKPYv+/PpQrovQihM6Qy+t7caR1BSEXl/Y5jA6 Sg== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qnwk4gxnq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 May 2023 08:57:43 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 34J8vgJR010662
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 May 2023 08:57:42 GMT
Received: from devipriy-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Fri, 19 May 2023 01:57:37 -0700
From: Devi Priya <quic_devipriy@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <quic_srichara@quicinc.com>, <quic_sjaganat@quicinc.com>,
        <quic_kathirav@quicinc.com>, <quic_arajkuma@quicinc.com>,
        <quic_anusha@quicinc.com>, <quic_ipkumar@quicinc.com>
Subject: [PATCH V2 0/2] Add support for PCIe PHY in IPQ9574
Date: Fri, 19 May 2023 14:27:21 +0530
Message-ID: <20230519085723.15601-1-quic_devipriy@quicinc.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: jhJiId41iBN7r4pUWOdpcefAoCM6syH1
X-Proofpoint-ORIG-GUID: jhJiId41iBN7r4pUWOdpcefAoCM6syH1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-19_05,2023-05-17_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 clxscore=1011 impostorscore=0 mlxscore=0 phishscore=0 priorityscore=1501
 malwarescore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=670 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2304280000
 definitions=main-2305190075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_015751_444524_64EDF905 
X-CRM114-Status: GOOD (  13.82  )
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

This series adds support for a single-lane and two-lane PCIe PHYs
found on Qualcomm IPQ9574 platform.

This series has been separated out from the below PCIe series as suggested
by vinod
https://lore.kernel.org/linux-arm-msm/20230404164828.8031-1-quic_devipriy@quicinc.com/

[V2]
	Change logs are added to the respective patches.
[V1]
	https://lore.kernel.org/linux-arm-msm/20230421124150.21190-1-quic_devipriy@quicinc.com/

Devi Priya (2):
  dt-bindings: phy: qcom,qmp-pcie: Add ipq9574 bindings
  phy: qcom-qmp-pcie: Add support for IPQ9574 g3x1 and g3x2 PCIEs

 .../phy/qcom,ipq9574-qmp-pcie-phy.yaml        |  90 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 332 ++++++++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  14 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-pll.h   |   3 +
 4 files changed, 439 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.yaml

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
