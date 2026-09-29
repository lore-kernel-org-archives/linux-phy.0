Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DC5ECA5FA1
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 06:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MWFxWhz5qnGmUKIYQDaQnb6k4l8oCRBlLVAA9++vx6U=; b=pC2cnha9/E6mrP
	KtsWhvRUlY9ztilF9+sr0W4CMNkuztENL9XyI2xsYyovQM+Ng3ybojXju9i31TKimvo2aaoCeJl+6
	DC7+Of89bZY9wRMELB2sX+b5s3oGOUFiXoK51WveZsqHCUbqfWA1r/wIjpgu2ZtphjSfWAp2j60CN
	4ax1tW2ziUbpK9WmniLVRGlhSZHf2Z8eOdgNiU5H651WsaIWHPwbjCOiMN9eqH4kUMrVK/a2CTFG8
	tQr/hRZnMqZKiuocwggYXdsvoF27Ihoc15AbIgPvTzt3EyL40Ax6EEIN3JNK3ZOr5u7Zz70oGQ6di
	avTDZfh4whqCh6BxyrMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBQtX-00000002Otn-31i7;
	Tue, 29 Sep 2026 06:00:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBQtU-00000002Ori-3pI1
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 06:00:50 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68T47KS83241658
	for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 06:00:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1G9ZYYprJidyLCsJUFgcXeWgVtdfvjOEWIRel/cdgTg=; b=Asj2l5uzqpAwS2on
	K3xdczjCzx9o38FUQIgF1H2SSgHgYs6s1L4or8oBMDLYou9753WkSgkWYsF/sdYT
	p7+shG7OFThvFNigP3NEvHBhV8VYMnHGHI9VET+gr4EnBzMP9HzhnlKmtdDJMhJT
	4g98XRLuFEzHgOz3x7W/ko9xWw/rPEBHVZttOWJeZzKn2QtIpscSwo+3e5LB+uIX
	TV+u+rMpPx/7jevqlF6oWABQKClrKf2I19SEYUWptLs+3dCqADB/qTojzqzDJNac
	LIrZtuGRyprQ8KkLiLnrEZUhIMKCDjhO3+/+rBdw2MXQZIfJp0ECuZu0dvmRrkEj
	DVnXCg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h0144sbkn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 06:00:47 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-39af92138f9so874831a91.0
        for <linux-phy@lists.infradead.org>; Mon, 28 Sep 2026 23:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790661647; x=1791266447; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1G9ZYYprJidyLCsJUFgcXeWgVtdfvjOEWIRel/cdgTg=;
        b=ETvmuQoaKsfjjXWqZ9r+TXNd1lHrgK2599RSCk73trdGpWCb10BVQlq2r5I5iX2L9T
         0Pp64e9LodwO/YW9uNRGq9hTQ0CPJbEiI9Y+MFyxK/bVz9rEG2orzWVITxK36ztFSgx9
         mglEnyJn+QjeBa8eGkh7Pf0Zoq7ovu8yv7NLRhchsdz3wiK63qi5yB1btQmWDRqfHZnJ
         H92vuzfzH/B/wWK5t76B1+v40jjtd4uZFrTNGRmCVHDGMOK/FCXbMgmRC6qwqAEsm/7i
         PiaYninYsEeNN7HXDKW/jhimWUIckz9xJWUq4jyEfOKUw29R4V1+MWhhmyZulavWkNK+
         qbww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790661647; x=1791266447;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1G9ZYYprJidyLCsJUFgcXeWgVtdfvjOEWIRel/cdgTg=;
        b=BPij+vKunI97AtqUye8Sxu93ZNtOPJvfc3vB7DeVoi2nDDEXooR3nN4ksyRAHZTH7G
         liC+KNyirKtygNE0kz0Uk0ruTzQ/xKtiasPIMtjOct4xvqeLdT8iGQfSFnEkXRb4u/Dt
         noxv6leY6Ce1e9SP5UzIphf9yUGaUGj7+8mA+BY9NgbXFwthQnjoOub5GBC76BcOR69Y
         dUXcVZxWseXgaRxdpQtYhhtFQ72yKSoiVLmjoWXB4QBz40jvXjeT6/7pKQWlcjRU0eWJ
         6PjnuKoN6NP+oc8DEp0rAOZXY/jiCsT1lzyt61RrsGHUQUstRYJFUHZtM0VxLJZQtKaO
         jDXw==
X-Gm-Message-State: AFq9FYJXH6Hd46hncOvRikqL0vY1WcHkpuWwH1ZXd6f/otF0PvyecQbM
	08xRYPSfLH4b2HDJJ6OyITMRSzDO+oMMWo0s1g6FO81lis6v0pxDbhFma8ULMV2/MvoXQIxuTCx
	l2OR3dz/Q+vk15gE4Zq0IvndQNnhy4Rg8Kp3FJPFHNTGYNh9VZIsEKm/YXdCtCQGlyJEz
X-Gm-Gg: AYBFou0gpeaBJCcPWIicNNtpQ/1zy62Sj7rrhHnoO+aaM+eSXy+Bj1i4GHnQCWw2PGu
	0p5+LzIHehm/+IouajAoLEIPd0MHcsWmp4lLeC1+mTAQZaZ5n3lztosHgtRgbFvGKdnTiuT3TEq
	BcAlAiZjkTlZnfyTWe6MgXv4BUeLJNcocpsQ+h2wSYn9eUrLEqqWM7nx5OcNsrXKkkghQBKlLXp
	i0qgprKafnlt0eSbmUbkrPlYtS3NKo+Ds15XO5OYo6N3j3l33sCSVO5QNLOUIj/5od1c0V0ehrO
	zpLlFjQm9qNTpjWj4JF/5LStUECRVmQK9OubEeDWznfsasma227RGzwYJ5jT+Kyskozt13du0uN
	RmZzLglBqbMz5ZS4BqBBACJOjrXMNXNCPUo5f8CUR1BZfFPgRPoP7dRptVo6byRCTsSbYLLtO91
	/eoIFSZPKapQ==
X-Received: by 2002:a17:90b:28c6:b0:3a0:34a4:187e with SMTP id 98e67ed59e1d1-3a49c120f78mr703367a91.15.1790661646695;
        Mon, 28 Sep 2026 23:00:46 -0700 (PDT)
X-Received: by 2002:a17:90b:28c6:b0:3a0:34a4:187e with SMTP id 98e67ed59e1d1-3a49c120f78mr703335a91.15.1790661646208;
        Mon, 28 Sep 2026 23:00:46 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a4985ff0f2sm3383588a91.8.2026.09.28.23.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 23:00:45 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 28 Sep 2026 23:00:29 -0700
Subject: [PATCH v17 03/11] media: qcom: camss: Add Kaanapali compatible
MIME-Version: 1.0
Message-Id: <20260928-kaanapali-camss-v17-3-dcf3fd37f76c@oss.qualcomm.com>
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
In-Reply-To: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI5MDAyMyBTYWx0ZWRfX8+KFvqGRIkFh
 JE1bVQYL00ifsNOsv9dBTqrGMVJpjxKmaGhEN7l28Pr3r4XdLQp/JnYfuQ5ClKnhuru5B0BtD40
 u3ea3+EM4WaQ+40jsTJ6kvcxzpTSD0hp6EIXhoAI6dR1hDP8ZkQ0pvqYcklH5VGXQ6Iq2JeH1l4
 +87C+tIPcTBwL1Pj+QnvW0/HfBC8sEaH0PESFSebA1aaqzvqQPOQkXj5M3CnDTwgcv3uJMlLmpN
 VBV43kfEdUsiKlWTHXZhq4Aqla2T6F1DXNAtUWMZs9jmXDFXfKvlUg/czYH2RAKIO04JSeEQ9dg
 Kn7ncQ3Wdy/oTst7xbQ36BrjZML00o95BPKao/UQYc2zA42g81QasLwjTAISnD6RVpDzA1APNbA
 JrqzEHjm1ThB0w/pdVnnPC1gVQxSWLKS6xTibHZlXWMuBC8DOB8EvfNMSwNHZfiIc+YsTQe1K5P
 LYz7elVN5DtptD9Lj7Q==
X-Authority-Analysis: v=2.4 cv=FJSOVOos c=1 sm=1 tr=0 ts=6abb540f cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Eph36bqoL6-XvbZcx_wA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: L3LKgSkAgPX6wZIiuv6OZdcPVB6fr8hu
X-Proofpoint-GUID: L3LKgSkAgPX6wZIiuv6OZdcPVB6fr8hu
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI5MDAyMyBTYWx0ZWRfXx2yX36noLYM7
 5US4WsnUfUqgHVCvUNiqq4bpdbtT6Jq7EoJT/hMQspScMYgrUcwyQH6bGuf3kM9l+UV79WZr+vi
 Trln/MxFtOnlw5FGT+sPzoz6cx7RSPM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-29_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609290023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_230049_078041_32F23006 
X-CRM114-Status: GOOD (  15.21  )
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

Add CAMSS_KAANAPALI enum, Kaanapali compatible and Kaanapali CAMSS driver
private data, the private data just include some basic information
now, later changes will enumerate with CSIPHY, TPG, CSID and VFE
resources.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 22 ++++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 23f3cc30a15a..a528760487bd 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -34,6 +34,20 @@
 
 static const struct parent_dev_ops vfe_parent_dev_ops;
 
+static const struct resources_icc icc_res_kaanapali[] = {
+	{
+		.name = "ahb",
+		.icc_bw_tbl.avg = 150000,
+		.icc_bw_tbl.peak = 300000,
+	},
+	/* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
+	{
+		.name = "hf_mnoc",
+		.icc_bw_tbl.avg = 471860,
+		.icc_bw_tbl.peak = 925857,
+	}
+};
+
 static const struct camss_subdev_resources csiphy_res_8x16[] = {
 	/* CSIPHY0 */
 	{
@@ -5500,6 +5514,13 @@ static void camss_remove(struct platform_device *pdev)
 	camss_genpd_cleanup(camss);
 }
 
+static const struct camss_resources kaanapali_resources = {
+	.version = CAMSS_KAANAPALI,
+	.pd_name = "top",
+	.icc_res = icc_res_kaanapali,
+	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
+};
+
 static const struct camss_resources msm8916_resources = {
 	.version = CAMSS_8x16,
 	.csiphy_res = csiphy_res_8x16,
@@ -5733,6 +5754,7 @@ static const struct camss_resources x1e80100_resources = {
 };
 
 static const struct of_device_id camss_dt_match[] = {
+	{ .compatible = "qcom,kaanapali-camss", .data = &kaanapali_resources },
 	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
 	{ .compatible = "qcom,msm8939-camss", .data = &msm8939_resources },
 	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 93d691c8ac63..2c7a0218a82b 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -96,6 +96,7 @@ enum camss_version {
 	CAMSS_8550,
 	CAMSS_8650,
 	CAMSS_8775P,
+	CAMSS_KAANAPALI,
 	CAMSS_X1E80100,
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
