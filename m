Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B53D0CA0FE7
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 10:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYn91WtCD6+XmOkNh5Ac9cPIyPK15tYlLiIty64sxAU=; b=i6AUoEgE6na1oJ
	OgyokxSIU3vN49RgBOqn44wcgLMTwReYjtl3NFPl8R0k9gfzE5Fv1xEG3+w5Admdl4OTSM2Ud7Fnp
	d9lzNQtSR4FCfxOVbkKj1y89F4iOJyhkG8NG8GLmFiQ0y427GZucdhcZhQfkW6Qfa9qASBuxQT91R
	qrMNRnMC9TWNhM+8YJyeN047D7SQo1BQ7OSaS6up82HDFV+RO7TYdmITl+XuAr1fvL8eTXAWogT1a
	KYOcVzFsVSZHxLUv0dUWpmRSjb/r/jaN7t43TwwhC3uB235R305thpmjXjS53ueQCuci+hj2Ggzs4
	2hwH5/ZTPbuDghnMGKew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofhJ-0000000D5J4-1kK0;
	Wed, 20 Aug 2025 10:05:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofFx-0000000Cxc8-3Ga1
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 09:37:22 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1p12d009507
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 09:37:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uegs61kuvy/Ef2awv7oKRsWNlD6GJZeqQNqXJ5q3U3M=; b=LY+ninO3vDfwnTNS
	iZjusYM8bZZqcMtUChWT6lnXtWwt6+iBwVD9G89Aji+m6/uLUHLgsOtg/jxnpnts
	60AikWkmIWnpIZ70WP/2V6Und2ObG+r/DHOXhC9zyvNZvWCcdqqmzeCm15FFxVFn
	16PmSrZt5/iniYvy//bz0FtufRjQAryPirXPtRqNE3zxdLe07bR2ynP2R9QCEmet
	E5PLwoDQpGtwF5JHX6Z4tF37+zbdPaPH+v9uvj+i3Xu++UHJ0gZaJatW/VGzFiRb
	FuS51o3taH9RRzuKwjElP0iOhY7mRd5Moo+cijOOSgH6bauAlb0jlWb1xzEpqRiX
	F7rUqA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52a17yf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 09:37:20 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-323266b2342so2322802a91.0
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 02:37:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755682639; x=1756287439;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uegs61kuvy/Ef2awv7oKRsWNlD6GJZeqQNqXJ5q3U3M=;
        b=jH+31IjdvrZ3GpZ+TijSydraod7rC8Aa7t2UQzF4KZsCVFEWbR1qUq6sTZSBchJ2Fa
         6dFKFzmabrvkKBh/igjxUwW8bQPagTzPCIx69HV7EKtC/vrIGMM9w+6jP1mERYjyGAb1
         vrSnObuWOyRBDYsdD+z9dYWGUWsgn1R1koSpAjGtr9UCUTfPdg2p3J5bGfBWVB1Ukddj
         v3xvH6u1fGw0R4wKXMWbhk4YqFz6bpVQqTQwhht5bf5HLC+hsoWhoFmknQIIQw4+s3US
         0KdiRsEhNFL/pep4JsxAykBc2vaA1hD9updyoY87tA9jkSQq3OgAh7MV958V6GLfHae9
         dGuA==
X-Forwarded-Encrypted: i=1; AJvYcCXqovGb5uAjStw7ATEHNSQ7zHcz1k6UilRe4FlKKhBsbkf9jw30M8EyUG5CqGH9i+h7ae/vAY1ENuU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4S1G4TmgUBOMuT0TfwigrI1HhaOA73PrMxVC4+9WrpvssoED2
	Qz6XmAvNfftJ21UEVmID9upzVXo/11g/Bcsvxl402dkfv9McsNt7vBQBjVGcMaN0pdvKI2L+m2L
	8QWR/+hyEfiD6YkUSzpGa63COByPDZA7tNOhZUDbl3zDdVBp46yOH+vY/R3LdXCIXgAsO
X-Gm-Gg: ASbGncu7nKdF9ObM3Y7DIks8rA73CNnfitLg0B819Eh+6F901ydhqaendxetOSYhReU
	pD98g8Eu5pB8F3B84RdgH/HKXNG/MT85q3gnEnt7JsN+Brhmap0x6BgdtSAkS/d1LSKmBQaCL04
	ZEqBpbHiyMUOYcGnNNjoeoTU2Z5+gtoOvqB1dyMxn4jPWDs22G3Dh13uIyzLk/XyB8xG1n5R57J
	I/Yl6u6mjZhGCDbpQ9M/AVbKkPxhtiMCa9HyCDXjx+1uYTFDsjtjwVKKjWTxGz1qbblLyIyBpq1
	WVMZIZVwOVxaeNUKFYl71ElIBLWZNEPEOtUyhM/b9Xnj+KEhpCtmBMPNOmWwXuE696wOQMTAgL6
	QaHtKGt59ml9JwJS7+XnyXMF5a/T1fHC5y3QRpyH/SYrizolx0xcX5z22
X-Received: by 2002:a17:902:ce83:b0:240:4cf6:b07b with SMTP id d9443c01a7336-245ef27aae4mr14851435ad.9.1755682639083;
        Wed, 20 Aug 2025 02:37:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhfCvj2U0FsjX6+7/r+e6YXxU+CPkEer/Hg5wGnIICikJE5F8McukYclnXK8JpsF9sBJac1g==
X-Received: by 2002:a17:902:ce83:b0:240:4cf6:b07b with SMTP id d9443c01a7336-245ef27aae4mr14851125ad.9.1755682638604;
        Wed, 20 Aug 2025 02:37:18 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4ec100sm20954305ad.116.2025.08.20.02.37.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 02:37:18 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 17:34:55 +0800
Subject: [PATCH v3 13/14] drm/msm/dp: Add DisplayPort support for sm6150
MIME-Version: 1.0
Message-Id: <20250820-add-displayport-support-for-qcs615-platform-v3-13-a43bd25ec39c@oss.qualcomm.com>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
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
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        quic_lliu6@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755682521; l=1316;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=CUfovqe+BoyUTI1U5egPOGaqwOCo/lDF47XuEnGpvAs=;
 b=ekFdgiw2VFgvGPY0u++RuMC/OoE30pi/c4ArAK4euKoOaQd5xA/773GbG8DDKJIfnJZNmKkAa
 ++LEXlx15JPA4vl5eGl1FhBay0hnnzF2X25zr4Rxgu8ALm78V7VObo/
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=feD0C0QF c=1 sm=1 tr=0 ts=68a59750 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=V_msf0f7WKJAu9UcZZMA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: TL1PjVNNiOV0b67l9dOg8fqRus2K1mkX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX8jFCFUtn+Gdc
 lIgyDDsp4aw2enJlKKDvVzcFI6vrcbhz5l0lFiuBhcNrFQGt86rZEtK0WuG48l7JCECMK/2Z6vY
 DOwhS06GZEemhuJ/KobTjo0U7gImNYdw3g5UFhI+/20JpIddZWPoRHxRWFgTD17XliCZDD4TqiZ
 sMzmqCKL2yfKIPH1J3fp85fOVM8EQpzZW2dfFZ8yPySOVDY9D2Roo0e/D2Z+7mVDyGs5+QxEURd
 GXrrK4dd8CHMPlevN/D+YWUfUAw7iGo5lPo6y07LbpGwT8zYGun9EH7967IEhFEBAiC+LfJUTgT
 AKqzKXbehYZ4lr2fydHXuu5rWj0qf0Yq18TXkuQRZmIUVJh78bWpjmEHcYBzGfLf1CrWXgeIeyK
 ZeXItJ2gx0a/5ZJ2X8JiucYM38dKKw==
X-Proofpoint-GUID: TL1PjVNNiOV0b67l9dOg8fqRus2K1mkX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_023721_827458_D568CA80 
X-CRM114-Status: GOOD (  12.95  )
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

Add support for SM6150 DisplayPort controller, which shares base offset
and configuration with SC7180. While SM6150 lacks some SC7180 features
(e.g. HBR3), current msm_dp_desc_sc7180 data is sufficient. Listing it
explicitly ensures future compatibility.

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
