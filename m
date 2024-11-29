Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01C6CD6EBE5
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 07:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yY1znhNzuHTRh9ez5HaMTchVsZBOpQ0a3M9NNXIgtnM=; b=ctnzUxEnWxdqFC
	nnByvqPgvlMCZizsLuCBWH+Xo6HeXN6DGeObImQuADvjuFSFY7VycJr0iuo2vr26c38umpYiSyWle
	JsRUuUQutvHfiJoKn+YYoJILYB4WcViYyUrh9eJI7NTNJVtGangMDlAZWKy87MaMVCiXqIP/3gkNk
	UslLBh+l3dA5FEed/Atb0OkBeZAI/hFjlKoRGOikgU/Y7dj+JVZjqwxNwKRa4zdxwj/ixWMVdcicZ
	z6/ZUgHjKPjT/XrHkhg5Al9T8181Oy8t2jwdiSz/A6WLvQDJIev1j+BZMXJr8TeMISE/YEraKVBmu
	4c3kn/CydCA7i+HDo9cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGvts-0000000H7Bh-1u6s;
	Fri, 29 Nov 2024 07:58:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGvtp-0000000H7AT-21YA
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 07:58:51 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ASLZ9lV032583;
	Fri, 29 Nov 2024 07:58:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=wmDwwPYdRhYwNyIOV1zgnK
	J886oOT+Cnazeu21JtPFo=; b=Kn5UV2/R4aHp64GS44iiYZBnw+84mnisIBU0ZY
	8wt8xAAIiWzEzPCTRqynn+dxiKV2nicF8w/9kSR4n1dn6aPwCjldlPASq3XBcSGI
	nSRs0Q3TuLsMEU0B0YvtNnpyhpc/3x9SPS2af4g/jwQnpUaYj8KJZPGGc1XzJ+GZ
	GvQNc7CA+dC8T85AoPK6H5RjeFhoV7drU37wtiyHw4EeYFEcg0yNJFoXridQUxy8
	Y/2l1EspoF55N+AHTtxfSKfo98Toc/TyrxR7UW01uMNPG+4B+Xct7Xoh9K7fN01J
	LF3+C2j4O1V8UCG4TTuLddkgGTcztDA+1DReVnSoTMG6TgaQ==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43671ecrcs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Nov 2024 07:58:33 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AT7wX3m028949
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Nov 2024 07:58:33 GMT
Received: from szioemm-lnxbld002.qualcomm.com (10.80.80.8) by
 nasanex01c.na.qualcomm.com (10.45.79.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 28 Nov 2024 23:58:25 -0800
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Subject: [PATCH 0/8] Add DisplayPort support for QCS615 platform
Date: Fri, 29 Nov 2024 15:57:40 +0800
Message-ID: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPdzSWcC/x3NwQrCMBAE0F8pe3bBTbUYf0V6iNlEF7SJ2SpK6
 b+79DQ8BmYW0NQkKZy7BVr6iEqZDLTrIN7DdEsobAa3dwci5zEwI4vWR/jV0mbUd90yl4avqAM
 d0brZ+MTc03XgeOo9ebDF2lKW7/Z2Gdf1D6bApOl9AAAA
X-Change-ID: 20241129-add-displayport-support-for-qcs615-platform-f31b6dc83919
To: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
	<quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul
	<vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Linus Walleij
	<linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>, <quic_lliu6@quicinc.com>,
        <quic_fangez@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <freedreno@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-gpio@vger.kernel.org>, Xiangxu Yin <quic_xiangxuy@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732867102; l=1753;
 i=quic_xiangxuy@quicinc.com; s=20241125; h=from:subject:message-id;
 bh=Fd1OV19tKe/iRpJtP65nSl/tyRA4w5O73ceQTpa9AhM=;
 b=wGx2t6A6cR5ttTbyh1L6muXBC2nNyPEJEHutJc+jkfQVdR4jkzt4NRc6+2V7HLBPHztZpzht8
 pc06a+nec4QCswG4jagVbKXhTlaG4ZIZ3KqPr/xp91omKCftMJqu8Sw
X-Developer-Key: i=quic_xiangxuy@quicinc.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Hfd54WROFUaa1CI-iA_qBkFYE0apdKyE
X-Proofpoint-GUID: Hfd54WROFUaa1CI-iA_qBkFYE0apdKyE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 impostorscore=0 mlxscore=0 phishscore=0 priorityscore=1501 clxscore=1011
 bulkscore=0 lowpriorityscore=0 spamscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2411290064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_235849_552626_533A057C 
X-CRM114-Status: UNSURE (   9.18  )
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

This series aims to extend the USB-C PHY to support DP mode and enable
DisplayPort on the Qualcomm QCS615 platform.

The devicetree modification for DisplayPort on QCS615 will be provided
in a future patch.

Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
---
Xiangxu Yin (8):
      dt-bindings: display/msm: Document DP on QCS615
      dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add DP support for QCS615
      phy: qcom: qmp-usbc: Add DP phy mode support on QCS615
      drm/msm/dp: Add DisplayPort support for QCS615
      drm/msm/dp: Add support for lane mapping configuration
      drm/msm/dp: Add maximum width limitation for modes
      drm/msm/dp: Retry Link Training 2 with lower pattern
      drm/msm/dp: Support external GPIO HPD with 3rd pinctrl chip

 .../bindings/display/msm/dp-controller.yaml        |   13 +
 .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml    |   21 +-
 drivers/gpu/drm/msm/dp/dp_catalog.c                |   11 +-
 drivers/gpu/drm/msm/dp/dp_catalog.h                |    2 +-
 drivers/gpu/drm/msm/dp/dp_ctrl.c                   |   36 +-
 drivers/gpu/drm/msm/dp/dp_display.c                |   87 ++
 drivers/gpu/drm/msm/dp/dp_display.h                |    1 +
 drivers/gpu/drm/msm/dp/dp_panel.c                  |   26 +-
 drivers/gpu/drm/msm/dp/dp_panel.h                  |    4 +
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h         |    1 +
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c           | 1453 +++++++++++++++++---
 11 files changed, 1438 insertions(+), 217 deletions(-)
---
base-commit: f486c8aa16b8172f63bddc70116a0c897a7f3f02
change-id: 20241129-add-displayport-support-for-qcs615-platform-f31b6dc83919

Best regards,
-- 
xiangxuy <quic_xiangxuy@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
