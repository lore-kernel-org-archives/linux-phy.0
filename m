Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F731C4332F
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 12:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OrwuDi2GsRvsiABWrIolN/cED5bJlWNonEW3by46Fak=; b=HwMLBPfffkT5xq
	avI5aOY1q5ahrJdVOaoWsTeJxq44ilU+dikHkPgWiDL5Usv8iNPQQDtpu1wBAgtcCDPkfGH6YwXcM
	ht/yAwumkRX3sMA9okNN1KpUKmXasjZvH0mUBgK9Z7Ehz8mce5NQsFqYuno64x/1Utk8lfx60Sv//
	VBRWG0s7O4g69OSrOJ62ek0OVFyt8CwBSRkApTnLHx6l21pIKXaO73uRtqvxqS/+W/EoIsaJ+cXr7
	panr88y8mH31ws4H7TtRn8sk5hzlh31ql+7C/kV3nQTCayei/9aJEctA0dN0AgqiKWmZZ+iZv+faD
	NQmnJMIWGG1RsvlJmF3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0LAE-001Tkw-2V;
	Tue, 07 Nov 2023 12:26:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0LAA-001TjE-39
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 12:26:36 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A7BDWh0032348;
	Tue, 7 Nov 2023 12:26:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding : to : cc; s=qcppdkim1;
 bh=WagOSN0LKU38ydqefYc2XSv6twzzzoHXv6JD7Z+6zzE=;
 b=lH4pIfwxgRh9gMh8uMks97DpYe/t7H2JM3RHAuIWqq8bZbOcxrmWuc70vShr5E1x+/T2
 YDrxwr3rRjAchev2qFHAyd3ssy1z9onJCEYXGwMIe8+kqTvJwyCPbfdMEWyEF+I5/tb1
 SokP5BCC3JdGYj4brbOLs5Iyi2n2GMudPqsz6cSYov/wV90OBZshBJs1LRAhEKFh7NRi
 Hft0GC6P0PQRWmKrTr2sb8fJTEx2dVawYyTugBx80Ur6Ysbko1JWeMpy+TFiq/SvxusM
 ehBgfpQ3cOqggBnFPsFL0EbhqE1oFpD8fQUY/Iffp3qAx+IBjzom24j+5YrhkePu5OZ/ 9A== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u72r2acrm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Nov 2023 12:26:27 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A7CQQea019724
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 7 Nov 2023 12:26:26 GMT
Received: from hu-krichai-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Tue, 7 Nov 2023 04:26:20 -0800
From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: [PATCH v2 0/3] phy: qcom-qmp-pcie: Add support to keep refclk
 always on
Date: Tue, 7 Nov 2023 17:56:12 +0530
Message-ID: <20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAOUsSmUC/32NQQ6CMBREr0L+2hpaohRX3MMQ0paP/Iittlolp
 He3cgCXbzLzZoWAnjDAqVjBY6RAzmYQuwLMpOwFGQ2ZQZSi4rw8Mo+jma+9mt9qCb2zrNGoUIq
 mNlpCnt1zgz6b8txlnig8nV+2h8h/6R9Z5KxkvFb1OEh9qIRuHy8yZM3euBt0KaUvPL+9obIAA
 AA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <quic_vbadigan@quicinc.com>, <quic_ramkri@quicinc.com>,
        <quic_nitegupt@quicinc.com>, <quic_skananth@quicinc.com>,
        <quic_vpernami@quicinc.com>, <quic_parass@quicinc.com>,
        "Krishna chaitanya
 chundru" <quic_krichai@quicinc.com>
X-Mailer: b4 0.13-dev-83828
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699359979; l=1835;
 i=quic_krichai@quicinc.com; s=20230907; h=from:subject:message-id;
 bh=ZPZPrynK1to5tU6Nntdv6ZjZE6gwlHLvzWEUoUPbsOI=;
 b=G8ar5bvAM+GojJeMIEwMybLQvttUez1+xCt4sMEE1+BxRtidHeWqbWHRlZ9q4fSrIsI1rKhpF
 jSStPzGVlaLBqY87/stg0tweiKLamO+ajVp68AN9W7lzAZFhi980Fvl
X-Developer-Key: i=quic_krichai@quicinc.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: aPyDmGNXNdkaSO-Iuw9u9SY0V18UHMke
X-Proofpoint-ORIG-GUID: aPyDmGNXNdkaSO-Iuw9u9SY0V18UHMke
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-07_02,2023-11-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 adultscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 phishscore=0 priorityscore=1501 mlxscore=0 spamscore=0
 mlxlogscore=760 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2311070102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_042635_149353_799E9CCD 
X-CRM114-Status: GOOD (  16.84  )
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

This series adds support to provide refclk to endpoint even in low
power states.

Due to some platform specific issues with CLKREQ signal, it is not being
propagated to the host and as host doesn't know the clkreq signal host is
not sending refclk. Due to this endpoint is seeing linkdown and going
to bad state.
To avoid those ref clk should be provided always to the endpoint. The
issue is coming only when ep intiates the L1.1 or L1.2 exit and clkreq
is not being propagated properly to the host. 

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
---
Changes in v2:
- Added refclk cntrl registers to the applicable phy versions & added reg layout where
- refclk cntrl offset needs to be updated (Dmitry)
- Error out if refclk_always_on is set and there is no refclk control register to enable it (Dmitry)
- updated the dt-binding description & some nit's as suggested by (Bjorn)
- Link to v1: https://lore.kernel.org/r/20231106-refclk_always_on-v1-0-17a7fd8b532b@quicinc.com

---
Krishna chaitanya chundru (3):
      dt-bindings: phy: qcom,qmp: Add PCIe qcom,refclk-always-on property
      phy: qcom-qmp-pcie: Add endpoint refclk control register offset
      phy: qcom-qmp-pcie: Add support for keeping refclk always on

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  7 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 40 ++++++++++++++++++++--
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h    |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h |  1 +
 5 files changed, 47 insertions(+), 3 deletions(-)
---
base-commit: 71e68e182e382e951d6248bccc3c960dcec5a718
change-id: 20231106-refclk_always_on-9beae8297cb8

Best regards,
-- 
Krishna chaitanya chundru <quic_krichai@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
