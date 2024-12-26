Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 697CBE7718E
	for <linux-phy@archiver.kernel.org>; Thu, 26 Dec 2024 09:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQscW+WLmMmWXxqjsMKvyi27auZPy/T49tKm1Fdgk6Q=; b=iEU7633ReU3tBu
	3uOoFpKh2Y0dUmXl0cRtU75eN9uJ7Onx3wcYy53fsmf1acMvO4iCisP1Q+ptBK+6Ci78UIfrbvjjB
	KNkFdbBbfMEHzqE66xEBmDqvp9qxqKksWIWh8jY6xWiMh6/crMXNJw6eA8OUdqiQM3sOd8GY2pW7m
	mRgeSjnc6ECTwLUjOI4KhribJy/IjbTVlcp2d6MQk3jmReLVz21NWi3/GXist4ApctLG9ASFrexiR
	+A6aH869FbW4P/S9F8fYA7ZEgKz9TbWOqtICsag91W4Y+ja6hFYp5o4EjC2cCYe1h5oIR1/QwENZ4
	Etf2QfhtCDR/v+j/5eXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQkPF-0000000FYL9-0hay;
	Thu, 26 Dec 2024 09:43:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQkPC-0000000FYJI-2LTs
	for linux-phy@lists.infradead.org;
	Thu, 26 Dec 2024 09:43:47 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BQ1vVCg001822;
	Thu, 26 Dec 2024 09:43:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l9D0iGf5gfsI47OTyHusqADcAsJb13cd95a9Ia17SRI=; b=XFLOK+F54Vmqa1Hh
	jY2lmNj0bcXNo+x6mV+8fnXP37qDagMd/5+/7LFVNKneSPSJ+hjrpEGpqlQYGa+x
	fuDVpV5PN36ybAnuhe8BctgewaFT4JylFIfetdyvw+Df4L6EIo9dNVdrMVT6KLpy
	/nL0FcJE1vLo7CJVQcQNvbP9pB9Aw6fIPlQ+7Ci7HLvWK6kvUNmYJbZH2woWk4LL
	uuxI3sq6u6Uc0AD+kTulqCG0po3OT2A5Sxe+00hp0XtnI4aqLtdmuVfHT2EguKdS
	T/6J6Btp95It7rYXJbYShYwXYxe8obLv+YNW07K1L45+TgJg+z6BmXuIxHmA/R9K
	G0zLGw==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43rwxja6g2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Dec 2024 09:43:41 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BQ9he9s005334
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Dec 2024 09:43:41 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 26 Dec 2024 01:43:34 -0800
From: Yongxing Mou <quic_yongmou@quicinc.com>
Date: Thu, 26 Dec 2024 17:40:49 +0800
Subject: [PATCH v2 5/5] drm/msm: mdss: Add QCS8300 support
MIME-Version: 1.0
Message-ID: <20241226-mdssdt_qcs8300-v2-5-acba0db533ce@quicinc.com>
References: <20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com>
In-Reply-To: <20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com>
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
        <linux-phy@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735206183; l=1622;
 i=quic_yongmou@quicinc.com; s=20241121; h=from:subject:message-id;
 bh=T1quEqzzRYSTMr7FDeES364YwjAI1nS3gNRFG9z4HNk=;
 b=HtbY/AX2zNsrOYqZMz2lkI1joXDehgg8w211gXR5XZurJny5uq/TmLMCotqGlx9mFrX7txLmn
 EkwHWH1AnqxB5hmzcEWugBSRbfomh5Cq8OHJNPPc2HJazLPb+tvNehX
X-Developer-Key: i=quic_yongmou@quicinc.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 3chVvJ4-vkNoZcjvWDGztUvm3WrSbPDf
X-Proofpoint-GUID: 3chVvJ4-vkNoZcjvWDGztUvm3WrSbPDf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 suspectscore=0 mlxscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0
 priorityscore=1501 impostorscore=0 mlxlogscore=999 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412260085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_014346_625135_A98F103E 
X-CRM114-Status: GOOD (  11.56  )
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

Add Mobile Display Subsystem (MDSS) support for the QCS8300 platform.
Due to different memory type, it use different mdss_data with SA8775P
although using the same dpu.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
---
 drivers/gpu/drm/msm/msm_mdss.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index dcb49fd30402b80edd2cb5971f95a78eaad6081f..40c8b476763b8c39434b1448008cfa8ffac7a8ea 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -582,6 +582,16 @@ static const struct msm_mdss_data qcm2290_data = {
 	.reg_bus_bw = 76800,
 };
 
+static const struct msm_mdss_data qcs8300_data = {
+	.ubwc_enc_version = UBWC_4_0,
+	.ubwc_dec_version = UBWC_4_0,
+	.ubwc_swizzle = 6,
+	.ubwc_bank_spread = true,
+	.highest_bank_bit = 3,
+	.macrotile_mode = true,
+	.reg_bus_bw = 74000,
+};
+
 static const struct msm_mdss_data sa8775p_data = {
 	.ubwc_enc_version = UBWC_4_0,
 	.ubwc_dec_version = UBWC_4_0,
@@ -737,6 +747,7 @@ static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,mdss" },
 	{ .compatible = "qcom,msm8998-mdss", .data = &msm8998_data },
 	{ .compatible = "qcom,qcm2290-mdss", .data = &qcm2290_data },
+	{ .compatible = "qcom,qcs8300-mdss", .data = &qcs8300_data },
 	{ .compatible = "qcom,sa8775p-mdss", .data = &sa8775p_data },
 	{ .compatible = "qcom,sdm670-mdss", .data = &sdm670_data },
 	{ .compatible = "qcom,sdm845-mdss", .data = &sdm845_data },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
