Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1ACDCA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYRc2K+/scVi9XcfcaIuhSnlz8Cp+EpjCTauk5FeOP4=; b=vF2MlZDbmV3Z7A
	xgO8/ncY3gnA5apV97i2F1jR3KWOFr3Hc3ypiDsKO52EaiBxY/euO2TdKhO4SkPY34FW7JKK6f1rB
	eaJTifU6s2AYs8Vio7LZHPIIzZvll+7Kmj6R4ikTYt5WS1sTAvbvITUoQysikAD1h6qH71FESCcvG
	VNqxnlVDf5AAtJyaNRP4vaCFKOhLd/v7sL6A1tNn5fN0FPk1ZUcisTlSxT4kwgH58EFzX5rxWv8BP
	bO0Vyah0Sr0fxvrF2KQmxCndN+4TYCyCcytaeKwPSyfz2R70hEZvqtRpY7m2JuBU53XwlTWEpEbLb
	BPcdqpU5I/DNOZ6blUQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGG9C-0000000AaY0-3hhG;
	Mon, 12 Oct 2026 13:33:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGG9A-0000000AaXg-3WD7
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:32:58 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69CC0AYM3292357
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:32:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y1IjNtEMdxjbwDwuNpcU6wRXEZzlvZfdEKgYGqTYRAI=; b=lCLGc7LEXCK1uWmy
	HqD22Xn8MbL46m3I/dpxvDbRB5HvJCdFaakmKxBNvvbk7Tr/JLiiJla6qspz6dKp
	J00cCffHC1/UCAD9YdKlYfRNb1Zsv1bSa//q0j5sC4XMvEtxvD9bDKXUfURllH67
	aZXh4l6uozsQLmERXkHOotpweC4KOH0juzD4/NaDnYmBeY3TgTc743MHBO2w55Zj
	jcEjv60L4WNiCZQwoDhtKxZzD+O6c5dlLkN9SaD/CEo03QCJ5tCiDez59F9Zdj7o
	xPuHBMkNbFe94VLixcLPY4HoxlFXQuPbNcJSeoa3tq35X8Hnio41owm7yGHVm4Fq
	6GpZRg==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8uh3hhkn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:32:56 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-30c0d568830so4325133eec.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791811976; x=1792416776; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Y1IjNtEMdxjbwDwuNpcU6wRXEZzlvZfdEKgYGqTYRAI=;
        b=cXjbfG9TLQHL8LJBMC8FoJyDpqF58d8pLMInsAe2R3nzHOFZZoLEjCDp72WNxwPGLL
         HX0QXSUWITM4pSprjeTO6Kw7C3gd0D52OV0SZlg7AFZUFWJJw74XTX2cXcBoEACWqwfe
         mZHXpMUGn3sdjOzghlXYHNoampaK8B/gUXxdJP/gbwz/FWckEFU5Anr+IdEQK9u449ws
         uuVR1ANR1zJZcCGORj4DArnMpVGN8FIe+dlV/WWmnCToeoJn5789YUU+Neb2ZpuWEGlF
         DF5aRJDADWMe9/Kf/MRWleJhMBB/YDy9yZBFOCBqBPeDCKEH5PtyEoKpbCfpqpD73EFQ
         hsPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791811976; x=1792416776;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Y1IjNtEMdxjbwDwuNpcU6wRXEZzlvZfdEKgYGqTYRAI=;
        b=p545G7M8CKH75R7/j3acyJ/zckGhMX6XG5bJzlJjRH0J3fqCmoF7j4LBe5fYkdoR5r
         vFT02P7wVpeRlcooVe/XCHtZChOKl6UFxsCDAjozWz5soeWm1zg/tTVUNc4rYsMLDk0Q
         K35iVagFF5X9sTX4ktMdJperHECf4VC147mwN6jQPvqkEwiXnv0XzYq3JZKn+dXJZtSD
         HNfbo9sFNIcqVwnziJioM5ImftzbzEK8D7A+JkeoT8Wq47pkP5fRUQQ5gzdHxWDSc+Yg
         ybhuNAiiGrfC1WU/nFVeblmQcY5i9/o0D7BARHvQPYXK3Zvex+aN8N8s4KFCb4Kl/pZg
         TxrQ==
X-Forwarded-Encrypted: i=1; AKwUvBy3MDs5DaQEj9zOHgskrnnQ/FyLKnnTcu4XT+DXSHWcN6HxCZNeB67lNdV2nSJlSVAUUEWe6Zbe3c0=@lists.infradead.org
X-Gm-Message-State: AFq9FYLAcVQSgRr1yeAzvCefkNhrGD4e+pZqzM6g5IlMn788tI2XTRUX
	1BT2Vf5o2kkmi28D8iEmGZKNH8PPlVFQK94dAAT6gOZmV+m715GiJfYXy+Gn9f6WtPaQOHiND65
	0P/jBMgMW2cL4AfNROzoBsXKSKZVeSAm843lifZSjOGTaA6jpu0rqO041rn2LwkWbtEu6
X-Gm-Gg: AYBFou1LcqLvkUi/xyVOKrq53mrYA57J/pv8RhDGL87aVn2q3HF+fITiWFwy0Hx3KLa
	qleiuJJ787StmIgcOO/t9K1u8GtBSCcMumu8bmdlWEdONdWQKwQQ4lJ2WRkwgjAUwhk209j+j2Q
	rRZ/liuBra/cDgSu6qWNLgVKan//4S4VoCMfWfMjtdv9eDYt896mFdmQN5aCilxf8mzZ1AA4LzN
	j4gh4pAmNcLA4RQr+qeXmy+Yz2HPJdAK8946C1HhHXhBqT1Yxg/tdqkLkIS54TchziwtS9WixFd
	KhVzCii3xvscAsf8uiT34L8lbOW+AoWXq7P1RbtQ0m+qECuYAGbDK5V4lkQnfwsdXUo6qPL6wku
	7Y6Sf49UlLOTYIv3lgqCugcZA1mQ=
X-Received: by 2002:a05:7300:cc14:b0:353:7b68:4f6e with SMTP id 5a478bee46e88-3537e03ce89mr18413042eec.12.1791811975596;
        Mon, 12 Oct 2026 06:32:55 -0700 (PDT)
X-Received: by 2002:a05:7300:cc14:b0:353:7b68:4f6e with SMTP id 5a478bee46e88-3537e03ce89mr18412982eec.12.1791811975006;
        Mon, 12 Oct 2026 06:32:55 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537ca1b556sm44740397eec.9.2026.10.12.06.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 06:32:54 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 19:02:12 +0530
Subject: [PATCH v2 02/13] dt-bindings: display: msm: Document the Nord
 DiplayPort controller
MIME-Version: 1.0
Message-Id: <20261012-nord-drv-dt-v2-2-a2ab9af954d2@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
In-Reply-To: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791811948; l=1467;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=mVpP8pxnU4255kU6h5VkhP1R63UQvGKZmNqAt9hXj2M=;
 b=LD0OMDaEEh2++O5ZlIhqQ2YfyYZKek2XbkJiqhtEHPi/CUYUHDtQ7ubnfsfN0NDscNI8kyXgQ
 Jjt14Bp7vrdAvUiKq6B30/SPLabJoaJNgxD1DOioHI1kDI/usPzIZNT
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX0Gy76x5mmcNX
 MmqCtydPhwrwijRfvfvcz92mO/3+jZm64OG5mH54szmZgZEQcW4rOJHNdUtLSr48ouRsxYjgYOR
 YuYPFixUuZ1gbJ69dSfdEFmygFgGXtOOayD8ejjtKKn7RvkDARsuXmQ4fKka3orjxar+f9FSBe7
 +uQvHnEZnavtYPxERgT/v/3guMXymxzNVPDI6LfIVU3ocWFas5jQ5W1l4CXGXd+z/lCthfAz/Fm
 XQiY4B/6iDDxC6NMUK5pEdPqGcezhk2HNjFekjBMJcxu5KqJof9VcnHpCM2PfBr4rfeYT1RGl8N
 sunpdStoZGFb2uoDWh9VFQ0jEy4bjqWBZQ/24N59EPZL3jZ9jnLrKjc7ob/HSZ1U5zkzUt3WkS1
 aLqVhQDwO9RMjNp3k0mm+ZdARH/lZDujprm4xsYae49BysaA42wQFSOF2qkYRuUuTX0yHd+o+PL
 ZpY+nSsG+DoNERh4DFA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfXyvrR8RxL2NQB
 4JqorqfGYm73MVt8tHm+RBlnyIAbmEi4SsbWBsEXO0GXAYNgrwwmePa5FroPGJ00gvdPMt6OiSm
 1B4FXU7694CHxdBP2i50PkVb52HSd8w=
X-Authority-Analysis: v=2.4 cv=QO391QLL c=1 sm=1 tr=0 ts=6acce188 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=JUH7OfOS-bFBGMyep_YA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-ORIG-GUID: -YH3LLv7MMwIjZgDxgV0fJVIMawaWFGH
X-Proofpoint-GUID: -YH3LLv7MMwIjZgDxgV0fJVIMawaWFGH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_04,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_063256_913057_328F4D01 
X-CRM114-Status: GOOD (  11.03  )
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

Nord uses MDSS 12.1 with two independent DP controller instances,
each exposing two DP cores at new IO offsets. None of the existing
compatibles match this layout, so add qcom,nord-dp.

Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 094a6383bb77..fce8b962a6b8 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -19,6 +19,7 @@ properties:
     oneOf:
       - enum:
           - qcom,glymur-dp
+          - qcom,nord-dp
           - qcom,sa8775p-dp
           - qcom,sc7180-dp
           - qcom,sc7280-dp
@@ -209,6 +210,7 @@ allOf:
             contains:
               enum:
                 - qcom,glymur-dp
+                - qcom,nord-dp
                 - qcom,sa8775p-dp
                 - qcom,x1e80100-dp
       then:
@@ -315,6 +317,7 @@ allOf:
             enum:
               # these platforms support 4 stream MST on first DP,
               # 2 streams MST on the second one.
+              - qcom,nord-dp
               - qcom,sa8775p-dp
     then:
       properties:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
