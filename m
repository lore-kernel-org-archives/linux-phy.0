Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E650D6EBE2
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 07:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=riSlEviBy0y9+ypimPDDjRXyazsfgvIffR6c2QCoALU=; b=qeAnWiqFnPH6Rm
	g4PEZRd7gUox0PIHxGf/fwJAl9N07yD3Ik5HRlkzwJWQIo34zS98s64+VhfTn/IrGcUVuU0SrnQSS
	5MjPt8QTEDN5UqRLqKafvTCmJdclFoFlWToE9Fw9xssxdnm4Nf2zscQHfBn44eQ2BO2Cj8YkN1X+c
	YzuNrpcH+fIM+dDVdqoVFMZn+6Lc1T4d/BP0uRwVbrFcNEzFdzeA6PciOo8Pt4r5j3Wrmb/DCb0Br
	VQ8fUk0Px0yjpFVc6y8DzKXNGeWxryDvgELeg3y/DBbwLi5P1Hl19NBgq119r0AWH2LVLujOrk7WM
	G7iiIgmR/ChAgluVk4iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGvuf-0000000H7RA-020B;
	Fri, 29 Nov 2024 07:59:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGvub-0000000H7Q3-23GJ
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 07:59:39 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ASNS0BH008537;
	Fri, 29 Nov 2024 07:59:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	II2/7psObqJRlsSmixY+Ggt+3kD1fPFPDHteJnLJoHc=; b=H8YhtMSofNZ6wBac
	xEJmiE9/FZ/HnqhWSLDYINaSimBS9JGLL1i76U46rJ78/sQ8ccGYuNhxMBTWMWdx
	1IZxG+eKQ79WAcBNEgYhXQP9HPmtCmaIyB7BhqRLatxKRCda26gaJR4i4ojv7ZB7
	kEltlPEvszeoEmlQCWH/6Kn6LfE5IjCoV1UYmSiH/rqQ/7oihlw2OraWIuTv+zzK
	QnxW1T/KSERx8T5LxTfwfjIIkrkalmY3lyTD7znSteQiNZ1RD5WDMrR6s/56/5WR
	ej5nP7l9/3MK0vXTECuR0n0h+5tuU5OUdoaWiwwPISJPwfjiMmD3oIX9Fu7hUbGk
	WHQwbg==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4366xw4uk3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Nov 2024 07:59:31 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AT7xUot002405
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Nov 2024 07:59:30 GMT
Received: from szioemm-lnxbld002.qualcomm.com (10.80.80.8) by
 nasanex01c.na.qualcomm.com (10.45.79.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 28 Nov 2024 23:59:23 -0800
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Date: Fri, 29 Nov 2024 15:57:47 +0800
Subject: [PATCH 7/8] drm/msm/dp: Retry Link Training 2 with lower pattern
MIME-Version: 1.0
Message-ID: <20241129-add-displayport-support-for-qcs615-platform-v1-7-09a4338d93ef@quicinc.com>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
In-Reply-To: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732867104; l=2567;
 i=quic_xiangxuy@quicinc.com; s=20241125; h=from:subject:message-id;
 bh=8/3LW4+HPMUH3aM6Hz1Gx/rY/UZuscAxr5Yaled+Z7o=;
 b=G3+ykvG9P/7rP22hO6S3tlsV/sAxb9L6sNlRmGe1v6SRTHRQd/4A7dZQFnEDkI9H1iMJIWDpA
 YoDSHhmniFEBhv6kKCHT07eU5pb/szmuB54w515UGd7NOEWik1Oh+Kb
X-Developer-Key: i=quic_xiangxuy@quicinc.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: rYGwnjnVYvOgnDwaNjXYrSxj40c4jqrs
X-Proofpoint-ORIG-GUID: rYGwnjnVYvOgnDwaNjXYrSxj40c4jqrs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 clxscore=1011 mlxlogscore=999 phishscore=0 adultscore=0 spamscore=0
 mlxscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411290064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_235937_548537_2D5CC7C8 
X-CRM114-Status: GOOD (  14.44  )
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

Add a mechanism to retry Link Training 2 by lowering the pattern level
when the link training #2 first attempt fails. This approach enhances
compatibility, particularly addressing issues caused by certain hub
configurations.

Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
---
 drivers/gpu/drm/msm/dp/dp_ctrl.c | 34 ++++++++++++++++++++++++++++++----
 1 file changed, 30 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
index 49c8ce9b2d0e57a613e50865be3fe98e814d425a..b1862294cb98c9f756b0108b7670cb42de37bae4 100644
--- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
+++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
@@ -1220,7 +1220,7 @@ static void msm_dp_ctrl_clear_training_pattern(struct msm_dp_ctrl_private *ctrl)
 }
 
 static int msm_dp_ctrl_link_train_2(struct msm_dp_ctrl_private *ctrl,
-			int *training_step)
+			int *training_step, bool downgrade)
 {
 	int tries = 0, ret = 0;
 	u8 pattern;
@@ -1243,6 +1243,28 @@ static int msm_dp_ctrl_link_train_2(struct msm_dp_ctrl_private *ctrl,
 		state_ctrl_bit = 2;
 	}
 
+	/*
+	 * DP link training uses the highest allowed pattern by default.
+	 * If it fails, the pattern is downgraded to improve cable and monitor compatibility.
+	 */
+	if (downgrade) {
+		switch (pattern) {
+		case DP_TRAINING_PATTERN_4:
+			pattern = DP_TRAINING_PATTERN_3;
+			state_ctrl_bit = 3;
+			break;
+		case DP_TRAINING_PATTERN_3:
+			pattern = DP_TRAINING_PATTERN_2;
+			state_ctrl_bit = 2;
+			break;
+		default:
+			break;
+		}
+	}
+
+	drm_dbg_dp(ctrl->drm_dev, "pattern(%d) state_ctrl_bit(%d) downgrade(%d)\n",
+		pattern, state_ctrl_bit, downgrade);
+
 	ret = msm_dp_catalog_ctrl_set_pattern_state_bit(ctrl->catalog, state_ctrl_bit);
 	if (ret)
 		return ret;
@@ -1311,10 +1333,14 @@ static int msm_dp_ctrl_link_train(struct msm_dp_ctrl_private *ctrl,
 	/* print success info as this is a result of user initiated action */
 	drm_dbg_dp(ctrl->drm_dev, "link training #1 successful\n");
 
-	ret = msm_dp_ctrl_link_train_2(ctrl, training_step);
+	ret = msm_dp_ctrl_link_train_2(ctrl, training_step, false);
 	if (ret) {
-		DRM_ERROR("link training #2 failed. ret=%d\n", ret);
-		goto end;
+		drm_dbg_dp(ctrl->drm_dev, "link training #2 failed, retry downgrade.\n");
+		ret = msm_dp_ctrl_link_train_2(ctrl, training_step, true);
+		if (ret) {
+			DRM_ERROR("link training #2 failed. ret=%d\n", ret);
+			goto end;
+		}
 	}
 
 	/* print success info as this is a result of user initiated action */

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
