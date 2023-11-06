Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5496BC4332F
	for <linux-phy@archiver.kernel.org>; Mon,  6 Nov 2023 11:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OeQrk2m7IEFfJpC0aMrbCoZhvQdV2mkkAfvBhInU61Y=; b=Wbldnk3ZuL57bq
	ppRjY4R+ZxBL7zTfBaaabykn8u8L/wrqZfb9+izfV09p+U0meQTTT6yhRLYnKHJ8dGy/MiFH4nSnl
	Hy9CLekXemHo9MHuvS788ixpimQ/f6jbDackspzVOFHgYRpzkwmF2Gu51RGi3QdfrKnnXG5BDhjqt
	Lo98aj6nSbGys9Dlk9IcgKL6AVoQCwq4XhaojqGH+2YJWk3nK/kiic1a11tbSxoT2z2rZcdWLZ7tx
	mrZwojPmWAvXlZgopB3xDbg4v3fuqVHry9nBjTlBbP1/taY9VD0gFtQhDSQez2XiVk5J1qTUgFLNy
	Uwwy1mE1zcm4+5DdM2yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzyA9-00GXGk-0B;
	Mon, 06 Nov 2023 11:53:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzyA6-00GXCb-0G
	for linux-phy@lists.infradead.org;
	Mon, 06 Nov 2023 11:52:59 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A6ASvNa005529;
	Mon, 6 Nov 2023 11:52:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding : to : cc; s=qcppdkim1;
 bh=O7Ok2W0/XRJKfI34YipOsLcgoAANsmCKZDKdtVVLPwo=;
 b=MHhFVPhgTBBCNRVaWcvwzTcBZusbWWK2/+cZJt88d3/sWloFT1ZwxoM9rkQmKM1Sd202
 3+I0ASQzpvXMC3HZuTklVVGljjyGu7MDrYVnOE1Lx4mSkOjsnIBwXj4kijK/pilLusx2
 UcjmQH7NtKUf3DIFv9guyatfFtxz/zVs5Yd+xRFWN50xmrEs9yA9G95EoaYKPIYrb9TC
 obbYkByTAyYJfYNUd6dv3TTdNFxdSWJeGXoyeNUy3g7WE7XLqsp0OaN+k8w4oBzI5CCm
 EQ+ud3eqS2VqTnaJZrnbbnk3zo4HYlnZ0IJUCgLINCluose37lIRPK8z4iOuxI1DONKl GA== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u6xdu87bs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Nov 2023 11:52:51 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A6Bqo6r014804
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 6 Nov 2023 11:52:50 GMT
Received: from hu-krichai-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Mon, 6 Nov 2023 03:52:45 -0800
From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: [PATCH 0/2] phy: qcom-qmp-pcie: Add support to keep refclk always
 on
Date: Mon, 6 Nov 2023 17:22:33 +0530
Message-ID: <20231106-refclk_always_on-v1-0-17a7fd8b532b@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAILTSGUC/x2MWwqAIBAArxL7nZAGpV0lQtS2WgoLhR6Ed0/6H
 JiZFyIGwghd8ULAkyLtPgMvC3CL8TMyGjODqETNedWwgJPbVm22yzxR754piwalUK2zEnJ2ZIP
 uf9kPKX22j9GLYgAAAA==
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699271564; l=1149;
 i=quic_krichai@quicinc.com; s=20230907; h=from:subject:message-id;
 bh=rOqRd8dUZXBv8AK+fFRgy5WFi6zRJCdIHc+U2YfEafk=;
 b=rS5if1xwJXYJ31AXMIj/0x3LJ8ePUkfqSStWanLdLMfdi/BjMDcDeO6Sh/ocSJNx/dMHP6tFy
 qhQo2K3bG+CD8Ovi1Fd7nJYl1WPot3X4mbxtMgnMEno97FfCk3tixJ0
X-Developer-Key: i=quic_krichai@quicinc.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: daU4FlACUj3NOompZky48E78CpQgzj66
X-Proofpoint-ORIG-GUID: daU4FlACUj3NOompZky48E78CpQgzj66
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-06_10,2023-11-02_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 mlxlogscore=573 priorityscore=1501
 spamscore=0 impostorscore=0 mlxscore=0 malwarescore=0 clxscore=1011
 bulkscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2311060098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_035258_123074_94281DC1 
X-CRM114-Status: GOOD (  14.45  )
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
Krishna chaitanya chundru (2):
      dt-bindings: phy: qcom,qmp: Add PCIe qcom,refclk-always-on property
      phy: qcom-qmp-pcie: Add support for keeping refclk always on

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml    |  5 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c            | 21 +++++++++++++++++----
 2 files changed, 22 insertions(+), 4 deletions(-)
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
