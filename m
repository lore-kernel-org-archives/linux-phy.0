Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4514C4167B
	for <linux-phy@archiver.kernel.org>; Mon, 27 Nov 2023 12:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xMOYM+V8OO67H1nOaMinZrzLRikelBmISOc6B3pKqo0=; b=3eBCrBHxN/fsLh
	QE2F1dckuJVV/mGcIKH8zjfi7xA4t3Z+t7TJtxGO0BMkLXrGX1J2oVK9Cz4cGNIL5KWWSwqjfY5uE
	LQOdii1b0+pD7aaneKdkMWhnI4Ev7yB3LZGAEqqkGWqUemTeQdOtvTKM/G3pBKjdW5WEKByPrh+5I
	EutL92gwRe1Ml2EtmYXc9b7oQUoB7iyq881XNKYplsUNLYXOXdwoj49F61Btw+N7jnHw5a7opGp1y
	Cs6pdhNJeN1oUGL8EjdzEmbhy3zsxzK3KKXNjoFKqhiMbOUE2oVWH+YCkFlcKbGtws1gi14KRwKZf
	tHaObltMODXun21ugimw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7aVS-002QbG-1g;
	Mon, 27 Nov 2023 12:14:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7aVP-002Qa3-0l
	for linux-phy@lists.infradead.org;
	Mon, 27 Nov 2023 12:14:28 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AR6smjJ008693;
	Mon, 27 Nov 2023 12:14:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding : to : cc; s=qcppdkim1;
 bh=vClwkOHgG/gZmrqLMBX55wvjdeEUUTVIg+b1zvKB++s=;
 b=J11STfDKtBtqziczX0qn+/vh0llYGupbAzNauOlICO0M54RqyTa6x/yFvJnlITorlw3r
 VHnCbH/kTPPrDX6RzzeybasTfSgA/gtJnIfJhQgx+DAQc931WkWysN7EgjiD9OFLw4HD
 RrkUPP5qvCQ4hPHh9FDhpobJk56NQKuL8/LWSZ45CX7KNC2HU+wPAvFLLpbQ5VM8A0hO
 OQPcCO6euIm0gpEtjAXUHGh70ABNNXc56tujjgGSgZePNWZKwIJuxq88HnSPK2OmcTXx
 TklLjkd1uKq2rpd66Za+cSJ6KEWga8OgX4akXBcgg5iI4w9fRVSTu/hks41Rem7E8dJz KA== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3uk95cc40w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Nov 2023 12:14:23 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3ARCEMCD014861
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Nov 2023 12:14:22 GMT
Received: from hu-krichai-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Mon, 27 Nov 2023 04:14:16 -0800
From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: [PATCH v3 0/3] phy: qcom-qmp-pcie: Add support to keep refclk
 always on
Date: Mon, 27 Nov 2023 17:43:48 +0530
Message-ID: <20231127-refclk_always_on-v3-0-26d969fa8f1d@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAP6HZGUC/33NwQ6CMAyA4VchOzvDOmXgyfcwhmxjSCNuuumUE
 N7dwUkT4/Fv2q8jCcajCWSXjcSbiAGdTcFXGdGdtCdDsUlNIAfOWF5Qb1rdn2vZP+UQamdppYw
 0JVRCq5Kks2vawNdCHo6pOwx354flQ2Tz9A8WGc0pE1K0Tam2HNT+9kCNVq+1u5CZi/BJiB8EJ
 KIxwKsCWr1R/JuYpukNo4RcpvUAAAA=
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
 chundru" <quic_krichai@quicinc.com>,
        Dmitry Baryshkov
	<dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13-dev-83828
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701087256; l=2204;
 i=quic_krichai@quicinc.com; s=20230907; h=from:subject:message-id;
 bh=zwRcEn2JJMlI3K+aZ3E+nZH0JUyB40bJf8sdwp5BDSw=;
 b=Usb4J4AeWk89oDnNxCSO/cdVUIrdxete6ptYyTeN/BoO2w68zTUe37ja+2GgOwTNBfizKAOnl
 tGbIqNewu65AWSTsnTVULKnNdtsMZ7OQLcX7C/LX6zfvnbYUTAVZ5G3
X-Developer-Key: i=quic_krichai@quicinc.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: e2WlklcLz_SUTI1LgI-FzxXa7P8uAXWz
X-Proofpoint-ORIG-GUID: e2WlklcLz_SUTI1LgI-FzxXa7P8uAXWz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-27_09,2023-11-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1015
 adultscore=0 bulkscore=0 suspectscore=0 mlxlogscore=673 spamscore=0
 lowpriorityscore=0 phishscore=0 mlxscore=0 priorityscore=1501
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311270083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_041427_281048_5ED39B11 
X-CRM114-Status: GOOD (  17.80  )
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
Changes in v3:
- Updated the dt-binding description as suggested by Dmitry.
- Added the new macros for v5_20 and v6_20 as suggested by Dmitry.
- Link to v2: https://lore.kernel.org/r/20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com

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
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |  4 +++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h      |  4 +++
 7 files changed, 55 insertions(+), 3 deletions(-)
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
