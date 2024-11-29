Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05AACD6EBE6
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPb4eGGaaUwZbqz0hOo/qFdZaqrj5qjX6KyRlZ0lo2g=; b=zClYYlSAYPf8YA
	KSJrUg1E4oYPV7XWI8C0Xs5JyrHT9U+sa+cEPy5MMpN2cGSq66OfvVHn3GvavMwlxnRwrLTbB3SOc
	8VV5bcEMLdavgD14NBQmNbkTCnfIGnxt2he1R7ggmbsmhFzeJ0N1TI+cPenizJRvk6+KkZXFoBgUe
	QB7AlwxS37gZK8FF+N5MFWC/uBOYEmhadmfLEuqjlVlcGNGQWUiKOEFQ6nkFvqJYRGqGecVRDA7mO
	5SYhooFzgKZe1eD8r3ERLx33XSgCp7xjGTnDlURvhyzoKfCtC4W/XMzxx4hnOua7PFublnxZpRM2D
	VABcT6+JWUt0/JbWUueA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGvts-0000000H7BS-0kg1;
	Fri, 29 Nov 2024 07:58:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGvtp-0000000H7AW-21fu
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 07:58:50 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ASMfxqI014340;
	Fri, 29 Nov 2024 07:58:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NS32UssW8dHqvhKdozniXo0XF8+DxtclGm3SwL51JBw=; b=dl0mMZ0jkdHd3lVP
	sb3OL8Xf3u709NIWOY2bF8opeZ683W5XNq/pGHcyRLVlnBGMBPHD4mZAt/yuc5Cu
	tYqzD+T0wddujDrlId4dkXHzXGo5YynPw5iKlQNk9PPUPchx5EFnAfwuFfm7Dfbd
	C55gBkvNvCsMPt0ntHsqz6lwBWyghe4mTLqi2bCv76HydZDDgWf97c9xNsfZPLbq
	Cpuk5t3r96gG3cOxZNw91kjdiDV71brfw1xbDIG4DAGgpBup2Xp28aG4SobNws12
	DL3MOfRqeUEAeApmo9EBKkGdVa3yBjDS+KrzdHzZjRX/h/kCxZkgGUlAZmsUgWzl
	V+I9Sw==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43671ecrd3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Nov 2024 07:58:42 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AT7wfX5025117
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Nov 2024 07:58:41 GMT
Received: from szioemm-lnxbld002.qualcomm.com (10.80.80.8) by
 nasanex01c.na.qualcomm.com (10.45.79.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 28 Nov 2024 23:58:33 -0800
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Date: Fri, 29 Nov 2024 15:57:41 +0800
Subject: [PATCH 1/8] dt-bindings: display/msm: Document DP on QCS615
MIME-Version: 1.0
Message-ID: <20241129-add-displayport-support-for-qcs615-platform-v1-1-09a4338d93ef@quicinc.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732867102; l=1433;
 i=quic_xiangxuy@quicinc.com; s=20241125; h=from:subject:message-id;
 bh=+Yc4b2vwMOMUcnhy+3PRkpU/S2QPiJtYGy+jm215PqY=;
 b=SM+aQp2qsJdegx3yOSGJbLaMppSV1CHq3Mi6hRrWpub+a6ouc+09NZqcx4CpfJn1uao4Qoo9P
 lqWZec09FRYAB/xemJprnGnysaxVHco7f4/5gRUZsEGQG/MKzZMWNbX
X-Developer-Key: i=quic_xiangxuy@quicinc.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: eAIGp_6-P54BTI5KJ0I3w3Ct6dalNf2y
X-Proofpoint-GUID: eAIGp_6-P54BTI5KJ0I3w3Ct6dalNf2y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 impostorscore=0 mlxscore=0 phishscore=0 priorityscore=1501 clxscore=1015
 bulkscore=0 lowpriorityscore=0 spamscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2411290064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_235849_552630_CF568EB3 
X-CRM114-Status: GOOD (  10.35  )
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

Document the DP hardware found on the Qualcomm QCS615 platform.

Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
---
 .../devicetree/bindings/display/msm/dp-controller.yaml      | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index a212f335d5ffae545d2e5bacec95299ca45e8405..a609245ae601bdc60b65f19d3e59c559886a969d 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,sc8280xp-dp
           - qcom,sc8280xp-edp
           - qcom,sdm845-dp
+          - qcom,sm6150-dp
           - qcom,sm8350-dp
           - qcom,sm8650-dp
       - items:
@@ -109,6 +110,18 @@ properties:
   vdda-1p2-supply:
     deprecated: true
 
+  max-width:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Maximum allowed width for display modes
+    default: 7680
+
+  dp-hpd-gpio:
+    description: External GPIO for controlling HPD when a 3rd pinctrl is used
+    items:
+      - description: phandle to 3rd GPIO controller
+      - description: GPIO pin number
+      - description: Optional GPIO flags
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     properties:

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
