Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1138AC88E50
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fl4cC5ubdKAtRrNegmu6/kOqYytnCH17b6zDm7ei3ZQ=; b=RrUQS0BSn4GV0Z
	bwxqNmGn+lj0tCGsfN8WiWC2yya9bMFMvRDL4UMmGM+hlJTbnDKPsZ+IK4nBh0q2972Hky27/mjGZ
	dbnXFzJuhxtic8d5bihzjutshMEBXt+MRXjxUb580rRazmUqrwjlO9zRiS6N9CdJD4E5AauTyEcP/
	Pbmw7BPJWXMD8nxnaMT2l6BKbOCbXvsq5DYFwPy3CPsaJSCZGtEF8+JQNQDfaR69ywjrjlGvspl/H
	oFkyxxq60Bm80MgC6cFxje5Tc8nAjUN8f8J/1x+iEADGvt5rUtgy2R7Y2RLuBcYvUOtWobVYppr05
	uas/utZIQflfOUM2amlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53KL-0000000H54T-2xHm;
	Fri, 11 Sep 2026 15:38:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53KI-0000000H539-0wqI
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:38:08 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BEmQEN222951
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:38:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a3b4UwBK4xHO58Q36xweSRGPLGI+zEDxQpaG3A4xvtg=; b=o/fYRnm7a8olrqzO
	vLo6+L0NqSocJR64l+gsZ0GQnTf5iHgirvyvUycTN611vwiKuzjkhVNSAkBurNwz
	t6d1xkkwWt6U8f00hSZC0Wy+lvbNE06IUUGHu/EBHjELHZvCOwA4kfMIB50VR2ti
	tFpqAc+WY7d6n0j9mkLr53xc+UwhfYGsBIgXBb37WD0mxCu3RqVgdBALezigHTHe
	c7uMw8f1WFQw25ye4yK3JKEyLqw1CV3kgS2602wUTl/4evFtNQ09Y494DBsfw8aR
	iovGI5fFFDKkTkqvuJpBmV2RV8vVPUMQhgJ/YlHBpXmshNmUxD12j7fpyHWEPes9
	hap4Yg==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmbdrag70-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:37:59 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-45eb9967696so1185317fac.1
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 08:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789141079; x=1789745879; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=a3b4UwBK4xHO58Q36xweSRGPLGI+zEDxQpaG3A4xvtg=;
        b=UO5zu+4Z2KsIRJL5X5xMrJMX9YCLnv2I2N75pfA2zDXX/1wIfuB+MBHBq68RFW6foD
         CI6TB420ZYcCvv4Izk+iFzdPuyEis/UXNDvXgYIAExjF7t5qD6V7yuIO8fzgHsA+dwuM
         FFMhlIfmogZ54V9A/MS+VdUNXC4i+6chTMzkNWGXq9E5DKGYg1zQ3PWb+S4PMCLMFcoz
         kLYjn+ZjlBRMmxJLtzPvfdNATgkpU2vugyP81/KGOmUqUXbu4hxsetIv8uRtC/lZ4oHQ
         GMDRCzhn5dNdanzCCzSJAgjdRRYzh7hJG22H06puhvw3ypCNVEZTfja3CGq79ZHD9VD8
         9PGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141079; x=1789745879;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=a3b4UwBK4xHO58Q36xweSRGPLGI+zEDxQpaG3A4xvtg=;
        b=XBBh5tBPZyJrySEs4ap5QiBDxMELhWUxiDaYH4rPk+mfR44L4Q5pfhZM/MVC/+2+iG
         fa5SQSBmTe8FRrWYKlHd61gOjpg2Mg8D14yTL6dNifbCmFG6sWDJR8bsgzBeSNsyyq15
         xw5XdZNp1ugTTpt8ijy5X0DYjK4eUnqP4TbCPJCS6ym+twrFfpmvEt0y9Ogt8a1Ld9LG
         cy/nL7wB7+fkNCvJSUMMXL8ifagRR0J1LocZGjWLZCMgQe/4krXI8JN614ZDped16pyE
         d2aj0ks7rBaOQHdqBgRt3T525B3UQRQ+7rg+t7UJUCARyG02Qn/ETskpMMlvwhhQnM1h
         g+QQ==
X-Forwarded-Encrypted: i=1; AKwUvBwridsjbWqHCXqNpnWd1wRGhMUtHWNzdJbKkaWKgQhEe+CO/ZHH0niQqcI3phRQkMSC7ikz4HIpUf4=@lists.infradead.org
X-Gm-Message-State: AFuF++lTItzwBhFaqLuFUeYyCbpfg06wwzD0lZ+Kf/B+ZJKdI2zqSrAd
	7IZE4YesfWpPVQMWPLKxc3DpsduGFYQ+0XE+GtQcC/oA7cYic6IBaqviCTe0KAHQ2Fh2i3rZ/2U
	r29++F4qudUdLeJqegG/b+cr+Tu/3/OrQRKv64/LOZ0CGk4zyfmw6vYrjwxCdjU2OC9Pi
X-Gm-Gg: AYBFou2T01tC0R+c49cqDxNcG7r5fOnPceqwy0Nc9YuRsji5N59AcSsEuAg7aBnJVkD
	5S05QyUOKcPgaITxQOD8NiV2qSLdHoAX2COHP40rPC2J7KBjymJn7O9m+YdNyRl8n+SlP9hxFgX
	7jb0ZcrWxPd+MoLt/RsY9bRQKKPLCyJSCaYraggUkiahIoeB1yD9uL2AD4fY/nqbXrcwFDbJ4oF
	v0TLKbns+h9Ghr8ZhFla2Mcv8XSOAuSpILcTe9Hb4MXWfDf27q2EimlIpM7cV2FFk3tSgE6kHjo
	onHNB1fsg6wt93XoLJ6ZFCp6hk9PWyKP31VP0oO4jJfm+WLwTtX3+LRboD69C/iXloanbNMgJ3K
	EaNBkqbt4R/Sou5JdQT9Z8VPLx1E=
X-Received: by 2002:a05:6870:9599:b0:456:4c6b:773a with SMTP id 586e51a60fabf-47dd260022emr2776999fac.9.1789141079303;
        Fri, 11 Sep 2026 08:37:59 -0700 (PDT)
X-Received: by 2002:a05:6870:9599:b0:456:4c6b:773a with SMTP id 586e51a60fabf-47dd260022emr2776953fac.9.1789141078821;
        Fri, 11 Sep 2026 08:37:58 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-47df90ff148sm1882160fac.14.2026.09.11.08.37.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:37:58 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 21:06:37 +0530
Subject: [PATCH 06/17] drm/msm/dp: Add support for DP controllers on Nord
MIME-Version: 1.0
Message-Id: <20260911-nord-drv-dt-v1-6-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
In-Reply-To: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789141012; l=1636;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=ZQKmc91CyQsnRW9gYuzHEpGY83cu2vNY2czx81TJ+4E=;
 b=y/qsLOGWDhcRqZYEtbq8zdeWKASA4zme6WOoFsKiY9BMi4SXhW8VaksKMG85ynnflPfDBcRfB
 xH48FZ/7pmBCZN97tZLOl7NHAZFwiJExWbDi0uVkuGFAW0WqV/8X6DA
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-GUID: Fd8xyUhiQcAPjRq3Pnoe3YlJ2GPxaA-7
X-Authority-Analysis: v=2.4 cv=PLmaavqC c=1 sm=1 tr=0 ts=6aa42058 cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=rrrw5iIUSJUMZ46_DcEA:9 a=QEXdDO2ut3YA:10
 a=eBU8X_Hb5SQ8N-bgNfv4:22
X-Proofpoint-ORIG-GUID: Fd8xyUhiQcAPjRq3Pnoe3YlJ2GPxaA-7
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX++iQ9Cbh8vJo
 avq0qTr0xBWbCII6KVQz2eFOWLmPxTLXwAaAbXIIeG5U0v2trBRN+bq4+pRM9ME653h7i/1PsSj
 BPJNgZFEyiIslnFlqJ0xvtaZGhqtf9Q=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfXy03dhNcrXcc8
 dvxRuW3yVowUD1GJqPNN3v7PL2ywadjqN7nVoVzEnM/W+/ONp3Fp33hp1cABqIBw++NLU2BGR4g
 o9/927KkGLDBJ8M7KgfzWQRzSIImj6o35yMCTPkN//IDXFm+wWoAlMaH26dT9siuqN2IxXQs0I0
 mWmPpflX2GS+ccXMaPV4Q3lUPnwvdTlAx8izV/XO1gMgzGFvEQUh6F2S9ca4gLyxt4bN66Yd4YK
 eitWAx5XTO3w4clZFSD9jgj6a+ezliNEM/Izicu8AjreGhMZHwoSE79q2rWBVEQdOAk234JIg4p
 fExCM0KN5CTRsZkSpYCNUe+n+1yVwwyVO6WNjtHv2Hdj7pmbaMb3lrf48uDsbDer+9YWQGf075p
 AZvupwU8kur6bKVM2WwZ+wqWIFrPcDVdzGpzKVGxW7PGYaUPGnbkLjdTIGAKIusSUdZw25RiLPA
 30APi/gDcSu0xzLAXQA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 phishscore=0 adultscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609110218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_083806_457269_F0707A39 
X-CRM114-Status: GOOD (  13.17  )
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

From: Mahadevan P <mahadevan.p@oss.qualcomm.com>

Add the DP controller description and compatible for the Qualcomm Nord
SoC, which provides two independent DP controllers, both wide-bus
capable.

Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index bc646d172abe..7e23cb2829ee 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -103,6 +103,12 @@ static const struct msm_dp_desc msm_dp_desc_glymur[] = {
 	{}
 };
 
+static const struct msm_dp_desc msm_dp_desc_nord[] = {
+	{ .io_start = 0x0af54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
+	{ .io_start = 0x0af5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
+	{}
+};
+
 static const struct msm_dp_desc msm_dp_desc_sa8775p[] = {
 	{ .io_start = 0x0af54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
 	{ .io_start = 0x0af5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
@@ -161,6 +167,7 @@ static const struct msm_dp_desc msm_dp_desc_x1e80100[] = {
 
 static const struct of_device_id msm_dp_dt_match[] = {
 	{ .compatible = "qcom,glymur-dp", .data = &msm_dp_desc_glymur },
+	{ .compatible = "qcom,nord-dp", .data = &msm_dp_desc_nord },
 	{ .compatible = "qcom,sa8775p-dp", .data = &msm_dp_desc_sa8775p },
 	{ .compatible = "qcom,sc7180-dp", .data = &msm_dp_desc_sc7180 },
 	{ .compatible = "qcom,sc7280-dp", .data = &msm_dp_desc_sc7280 },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
