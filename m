Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C3A1C88E45
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6bSMmsC3/Qnae32vnVOKo0VZ0uPHmrgOg3kVTZRsnkc=; b=j/DmJUn9hzXeQ3
	2GuwNlI6EIKRz/74kzta4x8dKBuH2vm6cGtvA4R0EboAXzBERvI51QqSghRUdv7moAYvobrkg0DvV
	nlv4CRUKYZcnmnmXbeijEqLAS2WRPJmtAvuuOd96JAGN6PBxk+BL0w/1jVyo5hagE/1GPdsYcQvOT
	r3fLFYDheW4sBMJfU3GVr97MVeSb3Yr3P/4CC2m5SRG7dYCoqOjGGPxxnZP6vDXAOc5bG6OCdXPjP
	k3FQxAwKFuD8Di8T+ejoGXrEgwv3koczmoY1TYDlnplg61QsWRfU3QA6V6SG6jfNvXza969fTteNe
	GCVrQEI94iXLHsXmegEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Lw-0000000H5X3-0YhN;
	Fri, 11 Sep 2026 15:39:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Lt-0000000H5WD-2RQM
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:39:46 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BElxKX3748692
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:39:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6CTqihogoF3yIPuPhTFZAPSTFdh7eb9dOeBLIBMoSAA=; b=ZNMAPedBNqVlA8Lr
	Ou5gpYxhDiC0HqQy/EQsPO5o7gYUn1tvFkbWOfd/bZW+3xBPvvgZ4RXiQcww/fwy
	53JFIOwzJVj5gQGBq0LDLohxDgBCtAxDjAgUcbP/QQiIhBiVRM2uuQ+cRsYAR8sk
	WApxk0L/HnTDo4V3tNrJrwSxk/MTZ7j2/G51kYCW//ada1Pp+JnI01kNNc1TpJmF
	eh4uEF/+ZndBgGrWJ8tj3n9Vb752K+2bKmSOIgCoejO69X28Wd0eDZCys5fPs0dT
	KxzDSPljjvkfFOD5t+/gck4yh9qSuzL3MEkxWbXeX+m6DtIPAS8osu5NDkNjVo1/
	COLgnA==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gm729kfsq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:39:45 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-456b5122c7cso3230539fac.1
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 08:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789141184; x=1789745984; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6CTqihogoF3yIPuPhTFZAPSTFdh7eb9dOeBLIBMoSAA=;
        b=CoMGTddS/L1k1x9CmhMrxB1kwastk6sVPKhbBfIVTc+AoidAo2fBtVFaQDVox2scb8
         J8Ol21oF3zBg0+8ERj9svlK4EUFHWtEr3pYI5IoHp7vEQmJRkKBMOAHBqXB6gJK29VjU
         XB4nJTR8w+Yth4lPAVxlPEAf/dxPqXKdqby3BkyJv0+crsTf9bd/EDgHa7/GwWyGZ1iz
         XSitZr/6K9RfX9pIiBNfq3dzIFmsCtre6iMMu/Ch2TMAjRJWwo70aousO3+8iucJCk8T
         cwpdqvHcm2MDu0gVZVT7mtZxMVJ5X0ic/l+Lyajqt567rdyMXd3noaiHWh0DlD4wX2KI
         8tXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141184; x=1789745984;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6CTqihogoF3yIPuPhTFZAPSTFdh7eb9dOeBLIBMoSAA=;
        b=SEtOra4eitCEdH3/SdNMlqlWeRU8+RzLxZn/ej6UQqmFU1bJOE6/PxWiMOiI8NzcqM
         xG2Aowu9tXIlQLKtzzEaZqD+3KZXiPBqWsz7bLXReOYsyfCPhVLhpXwMLIfZSgs79cKr
         iBW/Fh5EiHtH2RoNf16lLVJpUSDyeb16Lckica4Ch6fprC6JTuu7Upvfxroo82+kuj89
         HASoJKic5g1UaYKiMWFQhaUx78ctyu1cKZySlnSMFnYzQdclKLhmuEtjlP1Cb805Ff74
         +wL0cPKXC1OpSPyIOHOdUNC/qsMEw9UJD7iyEQNiqGeonjYIx45LDu7QjPrGE1WGK8W/
         q7xA==
X-Forwarded-Encrypted: i=1; AKwUvByNpe99QHiHYvemWo/vz4AeGoFuLNuvm/2l3pz+puNombGjRdN7QOoiLQQ1TWaDOlv7H+sDyQ6tr+g=@lists.infradead.org
X-Gm-Message-State: AFuF++mGAQxi7lUi4ywcmPbhRAQTgGlmKdT4oPF7QJJq5EngJwcloW2I
	gCFrMWTUx3O70Pi1oxF6q076HA+e1NSz3guAwqOLOrlCb9ai2yuiZwZD9AKeAd1wKXBJpcfMakO
	uhE2a4AZSqlLxViA+ctQVw7FFAgoGo+IC0+THknMD1R9uK7aB1lNTNgahPBPAko+zcZiz
X-Gm-Gg: AYBFou2+FHrt2lzTPNtM29BWxECZNf41xUCYwVhEjLEl9NS6zEhq9xEJa5JPBzkURPs
	Pdr9u16WRSJILY0vnFAEgXQxr9XkfZiuRARKjNa+gN3MWyq0bLgS7QLOGeM1smOdhqWQmSIDto8
	bO0yrz1zfjSXja+xfl1SEhpNg03jqsCbehu2NYk9QYVXH285czuDV3iFd/jwbVG+xe2nJR464IH
	uYpyLiiQFpNzLQZ2gYfg0h1b0utFT4l0Z8B9OgjlxqQVAUMFJ/x+0Pmk+9BJXq1esGgGnsPJDha
	GbmcsRTfvkw+Cy3fYpF6uRyzlCX5/I9QSI2FA5KP4TpWzZIpTrmFklj6TAf9ksKwjSkwaBmq72I
	drE44GdiMXwXxMXAk8K6Hs04f59s=
X-Received: by 2002:a05:6870:21d4:b0:44d:2da0:fa1f with SMTP id 586e51a60fabf-47dd35f90e3mr3131540fac.10.1789141184388;
        Fri, 11 Sep 2026 08:39:44 -0700 (PDT)
X-Received: by 2002:a05:6870:21d4:b0:44d:2da0:fa1f with SMTP id 586e51a60fabf-47dd35f90e3mr3131501fac.10.1789141184024;
        Fri, 11 Sep 2026 08:39:44 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-47df90ff148sm1882160fac.14.2026.09.11.08.39.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:39:43 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 21:06:48 +0530
Subject: [PATCH 17/17] phy: qcom: edp: Register qcom,nord-dp-phy OF
 compatible string
MIME-Version: 1.0
Message-Id: <20260911-nord-drv-dt-v1-17-e25c073cf1b6@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789141012; l=1090;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=u2YdZt6zLxkF9NeeDFO6cI3YUG8ouytJ0A/YUYMzpN4=;
 b=1rlx3/KAdoDBmbu9KB7g/WFds2V+Ax4LJFhoRI9zajHaHZ6SisVfgNvqXrfK2Fw5H02r/Jwvq
 3GllpLpxEV+AQB0eIz4Oai2ZEMjP/Cdnf2RNtpRBg3QwvV1uRsFOCCA
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX2T8xMbENczYw
 nC8En90y1WrUyDaRmOvFfdHPzEMFFPU0VVS121CXPPEpuAml7DW6hFVLy/SQuWoRx1uq4PrvdYB
 tlWELVkzlTghD5CzIW1Uk8Mt+C3FnzE=
X-Proofpoint-GUID: EdGRxlC0-48qSlcwmIluEje6bvkAKtjn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX33RJL2bmIePY
 UmRKbpa7l4dLfbFjFznUBHQh8gma2ql8jOVZe+D2Z6jBqxO+3HxaIuiHjQpoH4dZQlksNxRuXBr
 ixIl687LouUAkFnhiyYX4wnmnZ6cOaanm/pt/8ooMU9Bx/Edyotat71jJOIi6ba7QjKbM+b81hp
 uiG6+bseGcnQX90Zj1IVmcmqFiZGXlnZ4tnlMrVzf3KZJbf7FBiRc8/DySod3mR/kCfZvoC8Gg9
 yy25GdEu+k33kxvg8asKonip8HtfrLOcyPbX9faYOZPt36u82qSQwNzgRt/qdx54t7uEjdkqEZ3
 lwg6VRc/OgX0cSdAlmCoHTv3RUutUSBXiL82Mz50Xu3gOMkqqfE/u5g6ysHo4/hi+X5OasFJcU+
 Bm59ZUTUJeUa3YzC4Ww5YGCQnpT6GrOlQ4Lh9SpxDrePrcNdqgJA/gF7CQA+efo0SO6H+Qe9ajb
 qHqIe/Gp7Wjjc6PTERQ==
X-Proofpoint-ORIG-GUID: EdGRxlC0-48qSlcwmIluEje6bvkAKtjn
X-Authority-Analysis: v=2.4 cv=AfwkjHXG c=1 sm=1 tr=0 ts=6aa420c1 cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=o_H2acsbjChyEWv8a_8A:9 a=QEXdDO2ut3YA:10
 a=eBU8X_Hb5SQ8N-bgNfv4:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_083945_635423_1266505C 
X-CRM114-Status: GOOD (  11.99  )
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

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Add "qcom,nord-dp-phy" to the OF match table bound to nord_edp_phy_cfg
so the driver attaches to Nord DP PHY nodes described in device-tree.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 338f28cb404f..f9a85ae8be62 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -1872,6 +1872,7 @@ static const struct qcom_edp_phy_cfg nord_edp_phy_cfg = {
 
 static const struct of_device_id qcom_edp_phy_match_table[] = {
 	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
+	{ .compatible = "qcom,nord-dp-phy", .data = &nord_edp_phy_cfg, },
 	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
 	{ .compatible = "qcom,sc7280-edp-phy", .data = &sc7280_dp_phy_cfg, },
 	{ .compatible = "qcom,sc8180x-edp-phy", .data = &sc8180x_dp_phy_cfg, },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
