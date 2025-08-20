Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93407CA0FE0
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 12:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOWWm68ahi8rdeefv9UKnIZmoElS6tFESA5uewSvyMI=; b=nStAd9nViyFxC/
	nQ7olihJakBVhqvVGMC6n9q6Y54oluaad0KrnYEEQ4ZcaxKD+u6hIMELjfVZZD4MM7NKcvKsXneG+
	5igALo9kDdd+bUlhdFejeXm+N+x4MBWNdrF3wWMXTga9rmg3JMFCT0PDRrH0UU1cbMmnN9Z1g2+r+
	QpViRW0boLAstYD59OGw32AKWW1iUBLTcxpUj8eh6YGS+s+t+LHP5ojjp0jpAebU40HL5ndRaXtR3
	Xtg87yF5FnP0BXLiXdQceuI76liVyz0AJSe0tNFWsJIb1S/TEH0k6C/TcKNVhLRwduk7czdAoJTac
	+qg3bBKDIOXpaJNZdjQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohUM-0000000DUgm-0ujv;
	Wed, 20 Aug 2025 12:00:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohJy-0000000DTCo-2rkG
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 11:49:39 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K9rV9e010752
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:49:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eQi7QofWcWU158eHa77hdKaL
	MtA3y2gGZ0Eyw0PH0w4=; b=XRFmaEMslRE5X4uO/ji+OsjfJYFnH5j7tKnrndUM
	jgnyDrwLaMjFnRz/WJDihtq5/NFBqMRvz8soLQa6BPccpTKet3utuvHsCK7FFeTS
	ihb7boZRAiH/eP4PIfDN9naahMao0qhYEch625dtktKtYZQ8OAT5PMV+NtFNM8jI
	flLUW7OapLaVLcyKx+x+paCwMpfDfJxOZpycrTJrRQ2CGrCAwD0GbFwQs3jBGNQj
	WnlJiGrLgfcTEmfBRYP79gjZeIAWkGBD7IzmZm5L4jJy22E8Zl29IBWUy3OHsitq
	aqF4QhbAQJYqoXURUqSltZcDkjaiR6ediEVV8foif/wYKg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n528sjsx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:49:37 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70d7c7e96ceso13564216d6.3
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 04:49:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755690577; x=1756295377;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eQi7QofWcWU158eHa77hdKaLMtA3y2gGZ0Eyw0PH0w4=;
        b=q295oVUQO4F5ktOfWkpJbtbamWjOVy+eWz1aviKg3BILnkicraf0lK0TKJixG5zYLM
         sYyx8ebjJywzcWn4ntUzH+lI2OiAHqSjC/be5eR7KXYq2qufhinHS43bZ5dYYJO2KF6S
         utEkqYJWoAeglapH7tqunS6fJniGu74Xbo/JpMtJr9q7DC0xvftiBOCkOjD/jtQZP7pS
         t4HMapaoNoBH5sUXgfibTd0n9t6A0OR7YHTQxlhmq4ezcW4wO8IatNvEc4OuHFpsCXjK
         6cPUvZLus+R0qR9++QswmW0oQd05ZnJRe9akhVzRKcpJp6y7Ldnw19xpaGSSMgvPgfl1
         Siww==
X-Forwarded-Encrypted: i=1; AJvYcCXRJ/8xQxygVuvS6cxxRORTHuBpidvhmF1/hVc8xf6EwlTg7MWCjVBtADb+zTPL4OKJByB0/hP2/KA=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywt7VWvhE7Y15XqmCvrNbtOwfn3Fp5jw9vX4BC9QxXijhXeG2ya
	E1+OTz5wcfCYx6XHWHM+SZwiIzBvGAjOtCHaVYkugQT0rvPnbfAxHTjrb4svJmOmlIimRFY2xzO
	xg2+qizsw9thLwBCEuyeenJkdAOcCamm+NxDWlPbwpRjP4tEPzTsTn4dg3Df5Y1P0KkFz
X-Gm-Gg: ASbGnctHGlYLp9MSq51aG065/Dnqmh/vwjWKsljNF6dGxmEzciDiLUrY3viPtiPo7PP
	TSQkqFdKAcaumjdtGxk8y4DbMmTASl9IhXnmuFLGnW5eDEGXHSgAjETGBrPkqf1dpOXJG5khhuT
	SI+d8Nk1kzqyizxhR+5IcV3YHLJMYY377yFDvj9nlh2M9aeoFtT5F5XJ6PJpy5jAD7hrCdjVS6n
	L3JdzvSH9W13I1ARTV/zwaXdv2p8hEBQMU10LSx0PWfTYyl9oFSp6Sp9sYi9P+o/uEjKo3KSTrl
	BmUJCpxK3Uh09s33e6JDmthi/l8vEbS6+Sc6e9z3QVQ8Huk7N9DWgY/qvYwqZQop4Ec/j3rgpEV
	gE9fIKUoB2/z7XDXlyq7qxCZqchVrJAKmY42ylgVWHkFBh+DZhXev
X-Received: by 2002:a05:6214:20e3:b0:70d:6df4:1b03 with SMTP id 6a1803df08f44-70d77170c76mr19313136d6.65.1755690576807;
        Wed, 20 Aug 2025 04:49:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHmrvdHhyhkjHia2f4r6fnsTTnjiCF/kpkKVlmq6+LLt1eyY0mOs8rxItEF+MdJz7nJEs0lug==
X-Received: by 2002:a05:6214:20e3:b0:70d:6df4:1b03 with SMTP id 6a1803df08f44-70d77170c76mr19312816d6.65.1755690576172;
        Wed, 20 Aug 2025 04:49:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a625af7sm27271481fa.60.2025.08.20.04.49.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:49:35 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:49:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
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
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 14/14] drm/msm/dp: Add support for lane mapping
 configuration
Message-ID: <wwn24kjpwexl66hd3wufa53lkqojb2bkpdogtxwr3uqotjpf3u@hclfgsv64ajn>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-14-a43bd25ec39c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-14-a43bd25ec39c@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=I4c8hNgg c=1 sm=1 tr=0 ts=68a5b651 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=mR71zFEkwuVZQDQknwQA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: ltnvZ_imU3jok3kKbEk094mpPZRtf80F
X-Proofpoint-ORIG-GUID: ltnvZ_imU3jok3kKbEk094mpPZRtf80F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX0z8w4XviOVNO
 HzzF1EiJcgD0IC1n9u2/vUPC94kyuaFYC1jOtcPBEwUPx47nq1GlKeo9rJFoblzGeuczwJsxUjN
 qeRb8ao5PrL8zlj2RVpcupGuBHiNGpoI4n3DJnl+Qk9w+dWG+sjEYm2aF3sx0wnK2+dGdesubM7
 q6Rji6ohZXHbGcG2l+B9oMTfVo/t+G8OK0RBwc3pYarpVUvGm6Pd+qFCu4VUoxzrVYIsuMTbp8M
 YeXxgCwma/+oRIeQEopYUtsk+niZlQ5pIVoR3hbyklMDxsxvRLD7muuiJNRC0xLSoQnZ5DFAUiR
 GYA1JYJ8mtshC/ZA8g6bvID/T/c//naEOjc5QxM9Bw6VWdTq5/Sg4PnC9Ut03mfaiV5BoOb0V6v
 P6MDApvqXRA4OzNB7jYXqWSapEmVpg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_044938_840486_35F45C61 
X-CRM114-Status: GOOD (  18.00  )
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

On Wed, Aug 20, 2025 at 05:34:56PM +0800, Xiangxu Yin wrote:
> Since max_dp_lanes and max_dp_link_rate are link-specific parameters,
> move their parsing from dp_panel to dp_link for better separation
> of concerns.
>
> Add lane mapping configuration for the DisplayPort (DP) controller on
> the QCS615 platform.

Separate patch

> 
> QCS615 platform requires non-default logical-to-physical lane mapping
> due to its unique hardware routing. Unlike the standard mapping sequence
> <0 1 2 3>, QCS615 uses <3 2 0 1>, which necessitates explicit
> configuration via the data-lanes property in the device tree. This
> ensures correct signal routing between the DP controller and PHY.
> 
> The DP PHY supports polarity inversion (PN swap) but does not support
> lane swapping. Therefore, lane mapping should be handled in the DP
> controller domain using REG_DP_LOGICAL2PHYSICAL_LANE_MAPPING.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c  | 10 ++---
>  drivers/gpu/drm/msm/dp/dp_link.c  | 71 +++++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/msm/dp/dp_link.h  |  5 +++
>  drivers/gpu/drm/msm/dp/dp_panel.c | 78 +++++----------------------------------
>  drivers/gpu/drm/msm/dp/dp_panel.h |  3 --
>  5 files changed, 90 insertions(+), 77 deletions(-)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
