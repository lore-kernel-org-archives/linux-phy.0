Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9CF9C88E5C
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 23:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2enYMAmNOVvmCvOsh5UnPosu5/81ogzsbsSA3TdlRs=; b=nB4XvtYq1oeC5w
	D8BA6rLJMrwR8NlSQRhwAbomUm8zz19fL4UDeknYqj5jp2d/2j1BtNNcwVcCr07WLY8zFhIYxTRLY
	GcslT2+wQ+Eqc0aWe/bj+DEczD570+n2YVNGxRSg3DllFJ7qnLYAKqNefo5ARYcDrIXL5CQSHzBGz
	jPZJ44higdQ7NQwJSYETtobsDZcQbb2PPoALM828pmBny5oudegd5AMIRI8R3iLhAARpJLZMHyJH2
	VY+zogxsahCXFtaBUcGJbwRaG5AqWY3cd2mWGZ8d289gFjlQRalNhxVRZm7rLslaZ+7/h06lredaR
	koePGou2+Df3XH6GCh8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5tuy-000000026nI-2Iyp;
	Sun, 13 Sep 2026 23:47:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5tuw-000000026mx-2aTV
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 23:47:27 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DNYVIM3066746
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 23:47:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cmOd/wtJBwDY+aB9upH1uIT8
	B7lNgLS/AKryTS4QZfQ=; b=hx+8GYib+ZSJR2XplPITMr2FMSVazDbcRgI1G5C0
	MZrAOyPg3Ub5sE3XWE/7QYp8XUCb65kofTRdd6UyY7xmGpOQNq+mtAXV406YoN8t
	sRAEub4enFRNX5Eqo0WoHPOUw7QAzSEJMoy6wJgvsmPjOVlq1GH0FsheffvcZO+y
	iMIFhMq/lahMqvzqGo/fdcgtsCxWOb3SAXMXxiHlsOjxJFH5IlMQX4bi79k6ERdu
	LGdxL0N4r3p8g3aUZzl5EWgg0Pv1y9z6UD/9Ta5dJ7HMEd23WlxWPOzcN4s42R5Y
	fc3RuWZIK1QdPn21WPFCWnPKGwipDY0JsOpSq1j6qSQaAw==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmy9c4cq6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 23:47:25 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-78a5a291af3so2320405137.0
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 16:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789343245; x=1789948045; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=cmOd/wtJBwDY+aB9upH1uIT8B7lNgLS/AKryTS4QZfQ=;
        b=aemS59WS/s/AS/nB8UJt301uLSDcLducFjqLp7sdYGIrxsdtXkktz6X4xqJG1hlw/A
         bBsjOFkfhn2+sUsmULxEbv7VV3njaIiMU7BhBEXn2RT0BYZeQpb1CDVex/h1LSUs997m
         6ESQp6c+TtiEFOlknJES17XweaJcb7j8cgHfJ4afuJSz1UDpAHhLj5QfQAruF2DUsCf0
         vKoPhaOFI/Zufp1wIg5wgz26U3mhDAQL94ZJwWhGmhEfLqkEpRYxpa+OcTcSHAMailD/
         ZA5iUtWAPUkXa3a6e+PWS0llp1dKNtQo55M9R14HkYwmXAarjBcWVtye+huLdG8ZJbtb
         uBCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789343245; x=1789948045;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cmOd/wtJBwDY+aB9upH1uIT8B7lNgLS/AKryTS4QZfQ=;
        b=LClaciaJxx4d5iC6mhD4BoUEOzkz7d58pVOAsmX00svPbcTFxQDcfjQoZ8bQklLD1p
         mJKB/7pDwkbBx0DJnGCTNogv9EIVUe/Wp1lkBOsTAJoxN4t0GRrg9PCAqJF81eRRAIS6
         3mq7Tu9kdy32lyf0z3IdKDNW5QaunfilPRJMcYZha+dJYOibSn/L5VQyDXfEZPSqLwsF
         EadLJy/ce4UuXEv1VZE2ONUYLJXY8jTs+fsYFyWWzmxxV225aEZnaZ0ia2OMMZldK0C3
         JMqah1epPfg4o79n4DKGuVTQ4gUBz93aO8WwgQGq9T3DluWsyw1IzM4L+qxLsLlhsjd4
         uAxw==
X-Forwarded-Encrypted: i=1; AKwUvBwPI59cxvl1CptNeOjRCbt3kWLO/L2pR47/paqmbskknGPOo2LODG57NuM+u37+aAYTJM0amBTG4g0=@lists.infradead.org
X-Gm-Message-State: AFuF++ng2DWUWOwdvjSPCBkzPhi7YTf5WW3DfhH8UWM5Rvkpo9eU1Vym
	R8A/Sr0xeX9O/ri/tFYg8x/qMRjQB8I1FyLVDfMYt9TZjYGjSCLYhixwSVEI8x3qS5OpylGlmRZ
	jHPTRDsAMeXiRSRSoKNUSb8i4b59CnrlKl8v220hLv1swp0yogTZB6l8ubo0DQ38uB+Yz
X-Gm-Gg: AYBFou00NpGEGxla0xIa0JMLSKxRoIo7hbzbj/tpbtZtybzIn42Bz0PyL0+VQKwR9SG
	wM/Fat60v/gDja2mDbz8VwgzBxYRJEgEenNvOWaho6k6X5+ErJa9DoDN9Lza8wE6H7d09rTKo+k
	OsO0OFZ75CkkjkRvUCrg0lxulGddDUG/v8QaVMCNseCvpPH7ho9+Z9sUteDQw+/pPN4r87n8yEg
	PZ5QsRtG6sVwyjLGma2vTJb2a4zp1DTCrnUv+g9b9oTgFF76xC0Lgiv1YUUSnjY8y6/AjfAVbJJ
	3OKAfuEZ/2fs+WNcJb5zd2xt6xkdDFkfdDPD8XNHm4Dg2b+uIkxcPNqtYE7O7wv9hLN4YVXhc8T
	/Ugb5oSsDHOZzXEjO858zlVV95NqMy9PVqm6i8gH2tpkq0Aybi+Y1h1uqg0FyqOwUG2YrUkqMtX
	V6m4oZhm01eCEy
X-Received: by 2002:a05:6102:918:b0:786:dfa:c5ea with SMTP id ada2fe7eead31-79b57cb42f6mr40900137.5.1789343244862;
        Sun, 13 Sep 2026 16:47:24 -0700 (PDT)
X-Received: by 2002:a05:6102:918:b0:786:dfa:c5ea with SMTP id ada2fe7eead31-79b57cb42f6mr40887137.5.1789343244498;
        Sun, 13 Sep 2026 16:47:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a5a33263e0sm21888431fa.15.2026.09.13.16.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 16:47:21 -0700 (PDT)
Date: Mon, 14 Sep 2026 02:47:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 05/17] drm/msm: mdss: Add support for MDSS on Nord
Message-ID: <xmrrgh62hk4kdhfxt4xa5ngn7kc4f3p44dpvf2yfqdhkoxlis6@iftzpwpcc3qk>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-5-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-5-e25c073cf1b6@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: bDKJiBZ8X6vl7OFMtXYfWXeWz8gsrcTF
X-Proofpoint-GUID: bDKJiBZ8X6vl7OFMtXYfWXeWz8gsrcTF
X-Authority-Analysis: v=2.4 cv=c5Y+0h9l c=1 sm=1 tr=0 ts=6aa7360d cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=ReDZFTIDzEE4zWO0opkA:9 a=CjuIK1q_8ugA:10 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDM0MSBTYWx0ZWRfX+eDmfWtAaD7s
 K++Y5rn49NMBJx3cz0VpITtQyc8xgdteu1ciuukHJqS5oldVXcTxxFT3BrWbr7X6k7Q19R+zEHm
 QjuuEoilbYALAOsuOGfohaH5LkUb4mx7+y0y2t/xH4vT+zgwIMrBbALD6N+I9troc+T2mzY7//0
 r0YGK4XMKehps2fG5jNKCr+6VREMzF+xRflDUAyf+L76SR7VXvanAit/S768bFS4AkYhWfjsUky
 r5Omk4fOnGlgAwy9BHkECjGXEVxKqWnYI1WjSMy8HaezTLi0mP8WZFx3UPZySJUz2/+bQ5goVmP
 MokZltw78Nw2X7fHA7OwMIRO85H9PGjDjWvRc1mM6WiB8mTszwI4qdrK+PQ8IwFYMtUpmdEkRTt
 E8cKGJLfWVJcEI2lQczlS4EZQcxVSzRQZFSsnwCbbUoL+Q9zffxGpcDZDyWtzPr7NBPXxG9aiOG
 oo1S7RCLjOFkZ7pX3Yg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDM0MSBTYWx0ZWRfXwb9CHwhsmfbI
 bFW0/2bcyR5K9ih5liMti8bioztwWCfBKNSmA8chhMksaanJsN1ZIoyHC35G7PMWZbAaKGEJTBy
 nMNmgmXGzzLELJ/cGtXYG29GHeBqhRE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_07,2026-09-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609130341
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_164726_782780_DD3BE8D4 
X-CRM114-Status: GOOD (  17.77  )
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

On Fri, Sep 11, 2026 at 09:06:36PM +0530, Nabige Aala wrote:
> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> 
> Add the MDSS compatible for the Qualcomm Nord SoC, reusing the 57 MBps
> register bus bandwidth setting shared with the other recent platforms.

Why?

> 
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/msm_mdss.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
> index 9087c4b290db..90bcc8c28dc2 100644
> --- a/drivers/gpu/drm/msm/msm_mdss.c
> +++ b/drivers/gpu/drm/msm/msm_mdss.c
> @@ -531,6 +531,7 @@ static const struct of_device_id mdss_dt_match[] = {
>  	{ .compatible = "qcom,kaanapali-mdss", .data = &data_57k },
>  	{ .compatible = "qcom,milos-mdss", .data = &data_14k },
>  	{ .compatible = "qcom,msm8998-mdss", .data = &data_76k8 },
> +	{ .compatible = "qcom,nord-mdss", .data = &data_57k },
>  	{ .compatible = "qcom,qcm2290-mdss", .data = &data_76k8 },
>  	{ .compatible = "qcom,qcs8300-mdss", .data = &data_74k },
>  	{ .compatible = "qcom,sa8775p-mdss", .data = &data_74k },
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
