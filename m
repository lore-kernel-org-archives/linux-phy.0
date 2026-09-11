Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA87AC88E58
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJ1AFcErosZtK8Fg5GVRTaGSXudaJpDLeZTnP3bssGI=; b=Hk/GIbhGGMzhLe
	TX5UE/rEFZ357iC8NjVmJSuKaZcgLCJKHjugMvgnKj5AGZV5r5k9fI2L3lWGIUzMVbPWxknFaQJ+3
	QSPhj/87z5UwyE4JZ35SOcjdJGw+RtAXO+pCrb44gNdF1pK0qWot1+1wQlnr51cvPWGEc3nfatJ72
	cq51W2N21e/tDPE0oA3lcYtioHKsBXex43/2QRQcVssUzVfoW2R6UNbhsrG7DlhcaGQXeq+4YJDTQ
	9uHg+KsVFI8VMDuUfaoBYRGpTAfSumDc4UwuJiu4Z4ESRDlO7jMFLv8ZFZm9/YpYl+6TyYnUfnN20
	frMfgR28NrVHiQfNChVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53K9-0000000H52h-2h2L;
	Fri, 11 Sep 2026 15:37:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53K3-0000000H529-3aVb
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:37:53 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BEmAaD222589
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:37:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nYhdb2mrR8nU9aigfyRID84GWgE0PGCAeGyhWEowOUM=; b=NQFT4JWxD+1csMZw
	ESk1TX6Fhzc3vBHA16zM/ySR1/pGO9JtHUtWv5Yi0YuuBHPcd5QO726I4J/D7yPH
	5gz11IHQNNI958H5RP6ItWVF+ua12yg9fDDD7WBIa8nZtFPa96o0pzLjOTOSpwKE
	3azZWpz6ZRBCIl2Y/4udZ1p3+4XD5f7amVejkCQo/fTY8iV76XJLqZopreRtxD77
	9XRuF4BxM/9sBT5nO+XZLlCaB4C/IqbhxawfKYuKKvhMbaZjb1LXd1FoOqaWts4W
	4r1+2wDNG+GhbKBZA4Pmr53Sx3YFT845zFabXet0Uy2RE8T49awBPLHZfLNxKAzf
	axps6Q==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmbdrag6d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:37:50 +0000 (GMT)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-4b98ca6c270so2259871b6e.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 08:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789141070; x=1789745870; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nYhdb2mrR8nU9aigfyRID84GWgE0PGCAeGyhWEowOUM=;
        b=B/mmKoY1FjCvghmtb8vGtKv1orKwNxLnfXuxS4JvgQkBeaPCnWUstZsb8Jb+2c2AES
         Rw5++7RG7CK8cyESU+0YNAx7rN+RODL/EYgvC/2hGYtgwYqws4yfUYLtRItPOwy7wwgu
         dl63HDYzHh0AD8ovk0PONjZ5/WrBO0BTwthMZ5sO2fDGtwhaVgVeJ8iNmNpQqxqm16QS
         EMXgMRveC5/QofTMmwCCDRq2qg2pdTTj/x0F8Nlbok7kltZDiN2phGnCz1udmiGIq/Gl
         jqnaIulF0qSnmJdz2SNSeUc4lerSIZiPEiVcUbrPLLMIvJKMuu5UK8QAcJiFW34i6Taz
         w3Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141070; x=1789745870;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nYhdb2mrR8nU9aigfyRID84GWgE0PGCAeGyhWEowOUM=;
        b=lHitmin5y3/OEzcBql6zaiuExC481EK5wZMgvudAG6Rn3PDBtI58iq4YneAPgRS2RG
         CClHm3wXPj+wtQ1sc4mZwFgQO/1cDnmXBMAYcWJHyr6ZSXvgxnTwYhC9XyjV/ZQYCPZE
         0R1ajSD7fppOfQmm0qgDnOyjMpTtzWdL92aY0w2G3JiAIT1wDmwbvty67zWxSI3upK4H
         T4QranmBFAh3fyN2bjpDtV+2sholniykHnNJUOssBOa0REiRFzUGJRXLfxtBTFCiOzwd
         xX3nyQwh0Xb8athYaeFIhylQi0m93dOL8p3FQsr8i2vl6ntH1KeaAcLCvHhOwzXcEsYk
         sMJA==
X-Forwarded-Encrypted: i=1; AKwUvByIlW1q376ZCcpLyVtSJkiV9atCmpuyu1zrW6gH+SzzSMDgcDfAU+pwLcmwhJJsyZ7mJSHHq6dZv98=@lists.infradead.org
X-Gm-Message-State: AFuF++lR+Pt0qgsUcW9MH4xyVNYAIu4nYsPK8adItPWnLV3birczXbjF
	JO8bb10+Y9qEI0X9r2RmL5C8QI3U4hT4NcPzvq9KlHmwOzJEoo4Ewc0h6t2QNYSAClGBC9lnkKY
	hEF57/D/uWx31wAZsBDTpZmiULIaDshWmymcm7lMj6gz7+GPP4FUBnLC8u9cWjAytuC+B
X-Gm-Gg: AYBFou14/lebTu4RR2H+BxjL9KqEoPdBBzHh1M6fitEGGxIpkLg1Y+ux79zF96kpN/s
	lg80Yx+rXu3SX860mUqyw2NBG4ymhKpfhmFX+P7Tt3p5DK46oD5OPJgF87uT731KxK72y21xoEh
	lPsA4WMCTjFUu60empLSB1FBO1B0Za+aF9CB/fTH7bc7oO9cNbqbUbaVHRY1IqrapbXr1LAX7q9
	4Vy7hzUnpolAAxTFpz332LE62G0/wTqIAyxRwAsZzy900eFgh/zv84Z8YoCkZuO7ZsX7jjEqsRV
	4b+LaFKUzAV7L+ze98tK5dmFHHI6M+7W+kjfFrSkUkROX1lXIUho5B+HUQPXNj3OpqD78Jxfksz
	NFyW+h989CWyt1oSvLi9IzCwFMOU=
X-Received: by 2002:a05:6820:f005:b0:6be:7d9:b05 with SMTP id 006d021491bc7-6bf43d77bf7mr4867234eaf.9.1789141070032;
        Fri, 11 Sep 2026 08:37:50 -0700 (PDT)
X-Received: by 2002:a05:6820:f005:b0:6be:7d9:b05 with SMTP id 006d021491bc7-6bf43d77bf7mr4867217eaf.9.1789141069612;
        Fri, 11 Sep 2026 08:37:49 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-47df90ff148sm1882160fac.14.2026.09.11.08.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:37:49 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 21:06:36 +0530
Subject: [PATCH 05/17] drm/msm: mdss: Add support for MDSS on Nord
MIME-Version: 1.0
Message-Id: <20260911-nord-drv-dt-v1-5-e25c073cf1b6@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789141012; l=1053;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=WJisw/+zpwludqPzeBDoVioQTucO9qU4qbNXUeHxKlM=;
 b=hHol8Y26136yGC56A15G8+99pmm0imVUMZrkON09gKnyKhZyWkvuSsE1wnklhdgr/TgMl5aFo
 LUoP58xTe3yDUgCeCcV0N8aIyNtvHvGVIvyQl7IeHl1K38J5/hl1Xk0
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-GUID: imaZOXtown0CC_dZaSKMPXuEVbYjmSIu
X-Authority-Analysis: v=2.4 cv=PLmaavqC c=1 sm=1 tr=0 ts=6aa4204e cx=c_pps
 a=yymyAM/LQ7lj/HqAiIiKTw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=p9I9VcFEeIzhw9_517AA:9 a=QEXdDO2ut3YA:10
 a=efpaJB4zofY2dbm2aIRb:22
X-Proofpoint-ORIG-GUID: imaZOXtown0CC_dZaSKMPXuEVbYjmSIu
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfXycvYxjqG/vaY
 ql2jUiwPzbv2T2PWeCl8F5Ut61uJi0Vx7q87Y7MrL2eAwEOqmqdGiPsFXWwnI9goUsOIv7RIh2k
 /7hz3gu7B9msuMGOKt3ckfpJxuT6DoE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX6kxaWZFLMKPY
 +PoDb9GYsnwDV+ijTYWcfIAzOK9z06axaKEwWeoNH2jT/14LuBTQUcxEHX3yur9CFrvenmwMOxO
 vejKEISzT+4T2zGDcpMf4m1NP7dKlIE9MaAvGjQsAwLIGxrCSvY96m5jS8QWcGtWJm/gbH8uhNx
 dNnzMtJHWHqjgZ5oqdi79vH7YhxFKUkpUigPM8vm9uSIbb79qRu8NybfYTKMBs53AW7qMRjtJKE
 K5HsJrnHeUzrH1hzPhEJsj+PNCFHt2NeuNi3HmuHY3fuLxv23TZdQjqUOxlqXOX2e2awybseQED
 q5dQUYdNLjCkvPacG4JXbw36kHOXhuxFC4On98z6Pcp6YrbwGbnMsPaYUKrBQBNbGoPQpfLmWjG
 Djndith8ri/0HkpV7MMfwq8LigqfWFuaCVzUbmsw2LKYPeUQ5Dam3hAtF6xM1dLmE+m5WkgiqOW
 i57kyuPga4w3GaRR5Fg==
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
X-CRM114-CacheID: sfid-20260911_083752_021485_C718584C 
X-CRM114-Status: GOOD (  12.65  )
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

Add the MDSS compatible for the Qualcomm Nord SoC, reusing the 57 MBps
register bus bandwidth setting shared with the other recent platforms.

Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/msm_mdss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 9087c4b290db..90bcc8c28dc2 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -531,6 +531,7 @@ static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,kaanapali-mdss", .data = &data_57k },
 	{ .compatible = "qcom,milos-mdss", .data = &data_14k },
 	{ .compatible = "qcom,msm8998-mdss", .data = &data_76k8 },
+	{ .compatible = "qcom,nord-mdss", .data = &data_57k },
 	{ .compatible = "qcom,qcm2290-mdss", .data = &data_76k8 },
 	{ .compatible = "qcom,qcs8300-mdss", .data = &data_74k },
 	{ .compatible = "qcom,sa8775p-mdss", .data = &data_74k },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
