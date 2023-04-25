Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A633C6FD18
	for <linux-phy@archiver.kernel.org>; Tue, 25 Apr 2023 03:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8rhuZdBBweS7K0o8XQe5vW4fa9/Ki6oDvqv/qKvcubE=; b=VNe76TaqjhQfEr
	HQV9DkDSOZ8BX2hsmY9BH9La6MsIKv8OI8YI5iQ22rhDL6JRdXMpMXWCF3dQRVoItSoK5sJnCngYs
	xhUNR05Az3zCFM0LG4sNazKQu615VvEvXGUasrEIaxdFB2ONEytknVTusWd10azIlWIdI8gxPq5kN
	eriTVmKtkSQTXEoGssq9bB+w/ifO2QjaF7rV/gqEcK+qeNm1+bpXJZ7VQaYrv9Vdvl9z2q69buZIF
	KsjowudumkJni0svNSn8yLYL35XZqwItKgIqxUfbXdrJm7mYI6ojWbg+xiRI/tG1FpVD9OJ1Lz6c+
	ToIjN47OUfNRtNHt9Uyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pr9XU-0006mt-36;
	Tue, 25 Apr 2023 03:40:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pr9XR-0006kX-1P
	for linux-phy@lists.infradead.org;
	Tue, 25 Apr 2023 03:40:22 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33P30Bem017196;
	Tue, 25 Apr 2023 03:40:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=qcppdkim1;
 bh=yi6EG1qqv73a0sIDHoOSwGLXjvmL2fvt3WG2cWVQ/dg=;
 b=JM+LmufxD28tojMEZF7e0pSeI4mRPTLqaKx8d4dDVeRU0F99omYdpLczI9FlSxaH7Pbp
 ARXU0KCCKmLbnrShPkxHHHB0D13NiYvrPmkn2GdqAK/rrmMNZT/NeLt9/6AL/4k3yppN
 60o3Baynyi2KpgUbNqhZDDw2gCQ0Zi6GPfURY0MFDCMVsjzC3dYieZ9fTUQfgtethbcM
 9ea+kVhi0Hxp4+/t9GnPPxVumq1l0Z1MP38+VzEsIfwRFwlEO7ezWjRoyNSXfyL8+Gh/
 hsdLdMcBwoRRbjyAiUffDnWMAADu3WGjsgkXsRBXyo39xzslGKTLquMAE55U5O0hPl+z XA== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q61jdrjh6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Apr 2023 03:40:16 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33P3eGhr024328
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Apr 2023 03:40:16 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Mon, 24 Apr 2023 20:40:15 -0700
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay
 Abraham I <kishon@kernel.org>,
        Johan Hovold <johan@kernel.org>
CC: Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/7] phy: qcom-qmp-combo: Support orientation switching
Date: Mon, 24 Apr 2023 20:40:03 -0700
Message-ID: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: bYO7i8Vlraynx29cT2Rh4tbPLB7HYBbP
X-Proofpoint-GUID: bYO7i8Vlraynx29cT2Rh4tbPLB7HYBbP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-25_03,2023-04-21_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 spamscore=0 clxscore=1011 mlxlogscore=999 malwarescore=0 phishscore=0
 adultscore=0 mlxscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304250032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_204021_502580_B125D877 
X-CRM114-Status: GOOD (  11.78  )
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

This adds support for USB and DisplayPort orientation switching to the
QMP combo PHY, as well as updating the sc8280xp devices to include the
QMP in the SuperSpeed graph.

Bjorn Andersson (7):
  dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add ports and
    orientation-switch
  phy: qcom-qmp-combo: Move phy_mutex out of com_init/exit
  phy: qcom-qmp-combo: Introduce orientation variable
  phy: qcom-qmp-combo: Introduce orientation switching
  phy: qcom-qmp-combo: Introduce drm_bridge
  arm64: dts: qcom: sc8280xp-crd: Add QMP to SuperSpeed graph
  arm64: dts: qcom: sc8280xp-x13s: Add QMP to SuperSpeed graph

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  51 ++++
 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     |  28 ++-
 .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |  28 ++-
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        |  34 +++
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 227 ++++++++++++++----
 5 files changed, 309 insertions(+), 59 deletions(-)

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
