Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD46BE7719E
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 08:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1dCoIfYmvyFmCkY5/FTmXrzOE1hrbPln9vc4Xcf1Et4=; b=4Sc+JkSKm4xedg
	R81c1A1fYfdGLn4mzcm/yeL4SnQVJGdzyB2OK+rVFx30Mh/pJykgKNCWWmCFp9JCSTqTgFMEgavVb
	of7G5KZhfnAVcBgwEVJht7pGWFPM5yphqMetHoj+iklgjeWtcRXe9GXGzgLgukMrSIUUCbNOLFzD1
	5pkVBBePnQ5Y4NyV5ZP4KKHbK+mOMe9uNmuICWeD8su23vBXDudOkeKY9nO86vU13IpTRh7qO+ohN
	ILeluISSQI8eLb/38DfuWGoFFJOargHo3F9T/Pq7caMhaxg3f+x6UBqtn5eW2DiB/QyjGv5NdUsTL
	vGj5/BL9yH1R1itVYLWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXFSJ-00000004JXl-1q68;
	Mon, 13 Jan 2025 08:05:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXFSH-00000004JVi-02uh
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 08:05:50 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50CNtKZf011894;
	Mon, 13 Jan 2025 08:05:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=dZhNNFatGOfrzOo5PU3sDE
	/wRMQDPpssBs2P4fO//Q8=; b=I9TfBw+bI+8NNejCaYp6386QK1D/j0IoQvE5W6
	730D8oPQ9+ysbA3XmKtA8b1ygfeClVpd7wLfHwH3AD6VQXCF399o1LzilmjT7cOf
	G5CIRuPqbNisrNjRIGTXchXWhsgg+kAVFee75qtQG7K3NLmCLgo0RxBfsRR+jOHk
	1sr4/jgVgXz46+SZ1/Q5ilIJb/z58mCnjLjJvx1LgY/5pMdpuyXiZlxJQ4CPQCdd
	Gwu8N3tuHs2A6ZvLFbRFkPwcPDAfSr6eLVlnFwFbLqkpN7yog04GYrZknqem+i0W
	yhKEQiqbrt/YlZJMQ6yX8Gzcq2+ea+jMrWijU35gCIo/InOw==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 444f5bhhgg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 08:05:41 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50D85eVn017872
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 08:05:40 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 13 Jan 2025 00:05:33 -0800
From: Yongxing Mou <quic_yongmou@quicinc.com>
Subject: [PATCH v3 0/4] Display enablement changes for Qualcomm QCS8300
 platform
Date: Mon, 13 Jan 2025 16:03:07 +0800
Message-ID: <20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMXIhGcC/22OQW7CMBBFrxJ5jSt7bAcnq96jQigeT4oXScAOE
 Qjl7h0Cm1Zd/pHem/cQhXKiItrqITItqaRp5GF2lcBTN36TTJG3AAVWA1g5xFLifLxg8UYpqXX
 Ye28i1ioIhs6Z+nTbhF+H1850ubJ3fh1F6ApJnIYhzW0FwXvvdO9YYdCSVQGjVdiTbmrHLwkBm
 hjF03VKZZ7yfWtdYJO9s9zfrAUktynE0BtyHptPbsA04gd/fna+wfpfsMPQqRicMUi/wMO6rj/
 suIj/MwEAAA==
X-Change-ID: 20241224-mdssdt_qcs8300-11b7883dc60b
To: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
	<quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        "Kuogee
 Hsieh" <quic_khsieh@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon
 Vijay Abraham I" <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
CC: Yongxing Mou <quic_yongmou@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736755526; l=2367;
 i=quic_yongmou@quicinc.com; s=20241121; h=from:subject:message-id;
 bh=PrZJWe5jkvnSOe+cw62NYLMo4ZA6BD9ffzq1/UWGszk=;
 b=6SajGJDXa5kKOqyQCiYJ1mzr//8E13JVK2AvG06cZ+ATb2k5TLL1Yl5WXwpRByd2/4uWFdR5n
 PZ+O7vt8Pw9AcHkvzPbVEmRSRxZMbqL1z5sOZTwppKQpq91SB3brWm2
X-Developer-Key: i=quic_yongmou@quicinc.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: V07N94WsT0XO4otTeWiFRFzd-F2mr43v
X-Proofpoint-ORIG-GUID: V07N94WsT0XO4otTeWiFRFzd-F2mr43v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 mlxlogscore=999 malwarescore=0 clxscore=1011 impostorscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0 spamscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501130068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_000549_060037_A4F2C8A5 
X-CRM114-Status: GOOD (  12.41  )
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

This series introduces support to enable the Mobile Display Subsystem (MDSS)
, Display Processing Unit (DPU), DisplayPort controller for the Qualcomm 
QCS8300 target. It includes the addition of the hardware catalog, compatible
string, and their YAML bindings.

Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
---
Changes in v3:Fixed review comments from Krzysztof, Dmitry.
- Fix the missing space issue in commit message.[Krzysztof]
- Separate the patch for the phy from this series.[Dmitry]
- Remove unused dependencies and update in the cover letter.[Dmitry][Krzysztof]
- Link to v2: https://lore.kernel.org/r/20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com

Changes in v2:Fixed review comments from Krzysztof, Dmitry, Rob.
- Decouple the devicetree changes from this series.[Dmitry][Krzysztof]
- Drop the dpu driver changes and reuse SA8775P DPU driver.[Dmitry]
- Fix compilation issues in MDSS bindings.[Rob][Krzysztof]
- Correct formatting errors and remove unnecessary status in MDSS
  bindings.[Krzysztof]
- Add the the necessary information in MDSS changes commit msg.[Dmitry]
- Rebase MDSS driver changes to https://lore.kernel.org/dri-devel/
  20241127-msm-mdss-ubwc-v3-0-9782a7c2b023@linaro.org/.[Dmitry]
- Package the DisplayPort controller and eDP PHY bindings document to
  this patch series.
- Collecting MDSS changes reviewd-by Dmitry.
- Reuse the sa8775p eDP PHY as a fallback compat.[Dmitry]
- Reuse the sm8650 DP controller as a fallback compat.[Dmitry]
- Link to v1: https://lore.kernel.org/r/20241127-mdss_qcs8300-v1-0-29b2c3ee95b8@quicinc.com
~

---
Yongxing Mou (4):
      dt-bindings: display/msm: Document the DPU for QCS8300
      dt-bindings: display: msm: dp-controller: document QCS8300 compatible
      dt-bindings: display/msm: Document MDSS on QCS8300
      drm/msm: mdss: Add QCS8300 support

 .../bindings/display/msm/dp-controller.yaml        |   4 +
 .../bindings/display/msm/qcom,qcs8300-mdss.yaml    | 244 +++++++++++++++++++++
 .../bindings/display/msm/qcom,sm8650-dpu.yaml      |  13 +-
 drivers/gpu/drm/msm/msm_mdss.c                     |  11 +
 4 files changed, 268 insertions(+), 4 deletions(-)
---
base-commit: 2b88851f583d3c4e40bcd40cfe1965241ec229dd
change-id: 20241224-mdssdt_qcs8300-11b7883dc60b

Best regards,
-- 
Yongxing Mou <quic_yongmou@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
