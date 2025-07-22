Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14CE8C83F25
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 07:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o24YFDjRZxo7y0juyN98+V9gykMwzdodw1Id9wqVfWo=; b=mTeu8p1E/3nibX
	UM43yO7zH4ZH7TQ2m+RVSJ4kndsXun8zVZVNdzkDpVeCdocRFtnK0dHiZmkuWin5p3aA/9VRsRLnO
	VnvjwGaDXQXVhEw8vhuQucrzz0UVM30tfxveRZuP1wPWpkZKAymu4eXacRsaYKNlnVA4KThzCQqHW
	xHwSAT/Hq9PLtui0ObiaJALpXbJRMVuKKm24yATcB1fk01nCYs17xR9TeFqRjUc4Sj9HqdQgmvSdI
	OKORWmSG49IJSGUp9WKhmKgJBaXJ3UO+7mHeHMlAssIBogAwUQIQWUAYLcmnbacHtimaVbSNmZAfU
	Ux3TAnu8UqNQ2KEuA3Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7Lp-00000001cox-3XT7;
	Tue, 22 Jul 2025 07:23:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7Ln-00000001cmn-3gTA
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 07:23:49 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M35pXl031038
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:23:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X7rTNTg/49ZHhf8B4W0jhkieUw+2aiMDE3XH+NwjhvM=; b=icgi/h3C+GjuGd1J
	WvE5bc0YhbTS3weKVinY83yE2zIwuULFNxarVzRuWMS67JuShghgGELWPRNUHqj1
	yBwgyvMiL/onk5YAAHQZ5InCCmZOtQ5jrqK4YT0xUdRQLS9jmWs1kbfSGizXNNlX
	b3OQzNfHFfLcG+MdRuCQ+EVQQh4LXumlX7jwj6YeaqFKP+1RV+F6GzC5ej4FbvM/
	eInGX8gJWEXS/4sYUhIUzPgQf1F1AZRy+OenETcTzhkAQmsQOTl7ODaVQqtq/gt/
	AjpQTOgJZ84wClAgsrLVeckFwR9KdM2znRFEFigg8+8ldq6O31Z/A1D0Vh74cP7R
	lGX0Aw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048tgeeu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:23:46 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3131cf89075so1363899a91.2
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 00:23:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753169026; x=1753773826;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X7rTNTg/49ZHhf8B4W0jhkieUw+2aiMDE3XH+NwjhvM=;
        b=EBvph1yNDASCoPZhXlzGq+EInXMCNt65pFVdgPdMxtGNXx7IDhd6JDjvIPsndyKCdy
         h+VFLNF1Bfu7ewsvCTjTvp1QwIudYbWYeFyEYWa0U8JPQdmc3n2I0xkWWnaQ5f/M+dVV
         EvNavhIHrra5H/LJnsMQyMJh9gf8SlW5+l7kGQbIQ/PTyko+ppMGLP0YwMxC+QggxEVb
         72SiXoVzDJ1ZEZIHgPZUN/7mljeKgRq8WCrHbxMJM0oy63KSw5mCHnydZD9lsVe95CV/
         vZEQ1LZ7h6YzGKPT0PYexngaiLyEuLByqMRdUJ0dx4q9HOtCcGCIWf5tS29lfWyoruJJ
         da9A==
X-Forwarded-Encrypted: i=1; AJvYcCVpD7dr8ZwVde5buTtO6ZVvxQe5EPyPCOQtVNZI6P0qtuekYqVYMvuG6z6udU2VVBU+pO7ycW2nJKg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2PBj8gUBF68nVt9629x9mITNwAsjMVdZrLVVGqfi3oZRDTM9K
	NIuvuLzvTRk1oaJx48ujxAsi/sxcgeGtuL5JRKwXi6fcz0WcGdyt9LInow+lvJJCoUI16Ip+CZ2
	ppL/JyX/ZwgnnYihYCoj7QF8/KVzC1uBEdQxtLgZpslWgiC1MqmZ0G2zd85NbNG1bRfWB
X-Gm-Gg: ASbGnctKw+CTEAmmRGwUktAGWWtiCXAAGAdo3ZuT1PNC1QUp11npsZnd1RVmuhQgP+P
	xYF1YVER3IhXX2caIGht5fsEZMj/LdowxjBcn3hlfZYw0iy5Gn6mekd1aq2kEHgQJe1s9N7iAqa
	GwKJ6st3ROQ0JaqHBIWyyFiciZWmdrTK7cqQ58m8HYVo8ujRkaMdHZsrGP+CeHr4uEbTl85Teow
	pwtEAjYD/vYnMAWb1KPKacF0JPFN7Fe5ByTpKjqQ15JCzDDwv7XbNt48DiVucKnPwimDvbGmBkO
	kPZFd2QvHVrHDREFf6aLdLRhFPSYgPakAbbkd7aO5qaQkz80sE1jtpiZAXcfxYM/Q7sJUFck60R
	4qLicxkeI7lbeVr6hVQwlpnYemjodL1UGqy7XoStpRXhbBwJefdtZGOeK
X-Received: by 2002:a17:903:1a68:b0:234:d7b2:2abe with SMTP id d9443c01a7336-23e24ef7922mr141277155ad.7.1753169025674;
        Tue, 22 Jul 2025 00:23:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZi2sVWjlvxIefJwnEAsJbibA0RoEFuNEkqwkL4eJL/Th6uYnt2AV1OJZwiVCrhQBLPZSpSg==
X-Received: by 2002:a17:903:1a68:b0:234:d7b2:2abe with SMTP id d9443c01a7336-23e24ef7922mr141277025ad.7.1753169025225;
        Tue, 22 Jul 2025 00:23:45 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45e6csm7490753a91.3.2025.07.22.00.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 00:23:44 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 15:22:13 +0800
Subject: [PATCH v2 12/13] drm/msm/dp: Add DisplayPort support for QCS615
MIME-Version: 1.0
Message-Id: <20250722-add-displayport-support-for-qcs615-platform-v2-12-42b4037171f8@oss.qualcomm.com>
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
In-Reply-To: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753168938; l=1195;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=ciyqoCYFS3+/i08fo7/Fy7G1mvvHDXj3yVN7GeS3ZyA=;
 b=FFmdwXZ8slTdA0DVE9pvzO1FYYEDAJMGMU1mJ7YxSnMqTiMvS9E6ow/3xLAHL6dB1Cr+/Lm96
 yucXBPSLDRWCQ54WzwHwXgwV6uLy40ZWzhspxwW2naZqPRAuu5M8Fc3
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA1OSBTYWx0ZWRfX1haJQ3hbWDuk
 3llIf+qEOQeWG7+zDskfhZm0rMCNpbeR8ryb+jSHPBo6/m0Tx8+Y55FWHdgkmqdRoTiDIz3R0GA
 V8nfh35fmEGOehjkpcez8eZxnzKvg6kYKexNFxq8a7JgD/s5WuB7UR3Fb8rHfguxmYq+VL2/kO1
 wZP/9+23AmV2CcmdjG6bRTqI+Il928XOnC+InKmgCjOBwAVsOh3RSwZLX+tW5vlhK8kaJGym8pw
 K+qAT6K9GhRLEvkZKZQDCUEHzfidXv2GoZ3/vjRKewodPJ1oKgGLetyWzWT7pC/7KeoQz6QOJ5v
 WDvzfI9kPAqmPJqbE5lnhfEXvgjTzaX1hXE7Lxc8MBdydMgM4DLZGOAL22aUzruAQSFnt9dGdzD
 If+jj7k3xh3vTCMFDDNsQYxkHtSSivI1DeDGlXiRG52+M4l/f/WrXj5JgFamkCU4K23LTmYV
X-Authority-Analysis: v=2.4 cv=Jb68rVKV c=1 sm=1 tr=0 ts=687f3c82 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=f-sKLqVA4YZL9HvktjMA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 1je_q076gWBFMZrAsATmKchuX1dmVdU2
X-Proofpoint-ORIG-GUID: 1je_q076gWBFMZrAsATmKchuX1dmVdU2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 adultscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0 mlxscore=0
 spamscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_002348_048218_2F2BB78F 
X-CRM114-Status: GOOD (  13.00  )
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

The Qualcomm QCS615 platform comes with a DisplayPort controller use the
same base offset as sc7180. add support for this in DP driver.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index d87d47cc7ec3eb757ac192c411000bc50b824c59..ddb22b50490035779904d4cab20e2fee7e0f9657 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -196,6 +196,7 @@ static const struct of_device_id msm_dp_dt_match[] = {
 	{ .compatible = "qcom,sc8280xp-dp", .data = &msm_dp_desc_sc8280xp },
 	{ .compatible = "qcom,sc8280xp-edp", .data = &msm_dp_desc_sc8280xp },
 	{ .compatible = "qcom,sdm845-dp", .data = &msm_dp_desc_sdm845 },
+	{ .compatible = "qcom,sm6150-dp", .data = &msm_dp_desc_sc7180 },
 	{ .compatible = "qcom,sm8350-dp", .data = &msm_dp_desc_sc7180 },
 	{ .compatible = "qcom,sm8650-dp", .data = &msm_dp_desc_sm8650 },
 	{ .compatible = "qcom,x1e80100-dp", .data = &msm_dp_desc_x1e80100 },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
