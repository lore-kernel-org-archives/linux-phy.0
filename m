Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EFFCC88E5C
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 21:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2e/9Rzwlt4RuJF+mJw4i8/S8bl4mxgtZyHnhzggku6g=; b=HWeUY5pTQfiH+B
	G1Omt52iOWXCJeohk4kiFoaNWpAXBNe4nR8bXC2UX8oOrVwub5dPbLnRERklcQn8EtAttROT/vCmt
	xIF0DxE0srfxD2h8MddUhU+YQeg9BnOw573H+5PJ+k9jIHCUa96N9cQJgM+HhBMhGDDG3QFLy3Wfm
	Dfk4bRTeVRPIdMe3thdAb5Q9suBh3G6tJ1LznKHdeYu76gNi1cCLzxjZDynkAp/R9hqbebBoTP5h0
	O5qcUXaiKwREyuZ2JTCCZ0i43iSl5idIn1YqIgLslWiJqKR+hOY5e4yIqhmB9WnU+obamqOfCBzA5
	q2Z1EZTbZhbs2wIyZasQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5ryC-000000023US-0J5O;
	Sun, 13 Sep 2026 21:42:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5ry7-000000023U7-3OvP
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 21:42:37 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DLCVWi2996019
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 21:42:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UAdGueHE+a9zntgGiuhM1GjC
	qAqzf2hTlkwX0CikYMg=; b=HiG7s61O7LGrUojzPSNwW2HKxGtpYY3b88ujTUKb
	bCz5YQeaL1TvTwyu/bR4bkuoLNH1OXicEdKxBlRWa6xI5XwLKLWrUisB+inMjHPt
	yiaZttPMLj1pU1rDsqxtBnIitLj7TmSKsT9yTtioZjE+IOjGRxSjUBhlkF+nahOs
	1A+VL6iuLZYJt8WeheaW5DnRma/8QI6kfRauPkD8ripL0p/y8OqdSI97VH8XLAeY
	hYVMXso/MHXdeWoN9Tfd7dEjdcfUARMHkjU0TBsb1L+SLoTGoiSbntsjm7PhVxu5
	+od8D/nSWUgqo6akM6tHPP9KHqvj3U7PPd89be8d3a3D1Q==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gp3hsr1f9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 21:42:34 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5c7a3b3c06bso674676e0c.2
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 14:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789335753; x=1789940553; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=UAdGueHE+a9zntgGiuhM1GjCqAqzf2hTlkwX0CikYMg=;
        b=J3r5kNbFK1Y10nFmNkRnWlrmhB7qt3gnUFOmkZk86zQSQuIUxQsH761EodQX0MHQFV
         0yFWWS7QOIkrVbshFWNObkjLr55636B2qC7zlBnLRb8wu8KRgqJliRUha6/fvTgIS0x2
         q37Y/1+0GeWIeiCegoWFrvD+XUwFi5jOFJ3n3ruFsuNUWJSS8PM9UQUtqIXD7IjGh67I
         P3BjEV3fL7ibQwHM5ZsOu3R0SnHeHu5682rGAxKfXiUJ9HTmQwVldkWu8gLIUo7hpx/A
         7+23ivfYIOw3W9os0rny5RcI+gtflrwfAEPag+Wsw/wba8tG7HyGevPuFJfQAz2DdRuF
         8qIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789335753; x=1789940553;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UAdGueHE+a9zntgGiuhM1GjCqAqzf2hTlkwX0CikYMg=;
        b=KjNRz0hJWgDpZYoIHI/2JSncm5rfh70GjP+53t1fOUjGYMDBHw6k8tqmdLdOdso9xF
         FJ5dEzgNpR9Ltcir1bzs+7n658Pu9A3H+D33Uuxf/iFx65DnzrSk9J9oNoZDX6oDaObP
         1qiYHIK3AieWqRP7CN+M7y2DdCy5LK+SKoQaXNnsLcZLJcWrv9U7e0do5s8X4sYrhjBW
         KBKHrPER+bFlgowzFzwIcaCeLm+Mg4yWR3UARbgn3IBArCtyT9EL7cse63683vXD9mOY
         OLfah8LB7LiJLzPyHf+ZexcLjaZM4pZAVa1vz0zM4uN6Uv+FBPkr9Da30N/Z9WdP6a6E
         gOAA==
X-Forwarded-Encrypted: i=1; AKwUvByBzSTuXGMyZ6WmBoaBNCXHv/HnrwfHP66FrOv1v5hgY/OhIjwXo/sEAdnt1TLleXNwSqXK8st87QM=@lists.infradead.org
X-Gm-Message-State: AFuF++ma8y0jiqdI+EXkiR6wi7bOwNZuOg7KrrYp/ZwX2YQkaLlERPFY
	NKGDtcqBYe2GMbGLDyr26yr5I7FWue1kkPTgnDUgp4J5mOXn/Nsst655xJ11h2PQG8Xdb/U8U3L
	Gdf+69dCpNS8PJK6/9YvcWUC/D5vtqIISetkgyc6BEv5X52NUqQ1S4GNtU7+mLrE5sHMU
X-Gm-Gg: AYBFou0bkQaeYf4ZdnIEkG2znWt1Eb9bzALcEHeV4QW1ze3/n5kV1knIeVN/CfFXImO
	/Xg/zHcFxEUO97nhgUvlUbHeX5HuU01TWviaW2THJapf+bKSPQNUclw9bdKqboqXbGORxMeOX+K
	UQPkNWWs7K54K2Hz/heaK5bVH/bqLV8JLYFsMMV9BTBHjuQ1+J/p0H7+35Qk0ZOi/fOltumqxaY
	OwRyQnvk2uGrXG2/A6Ks8T5M/aMY5YCrTvHpsdqulRk3FiY+7X+M93oDXQshAVCiKDMZz00S0pI
	/n9pDZTwLHVdWeZD+TTRMhpih4TLrSlIVhab5WcEJL+1wBBRz6LUP1OGCutg7z7sA0nqHbbeVnp
	xbr17lAIEZ1pJYpbeRexFatEdRpHGxIprchFdBA9KVfCiZEhVQmEmq00B4csQQrSCXgz26eoQfE
	g/uq+PlCbUDn2L
X-Received: by 2002:a05:6102:a144:b0:796:7d9:a60 with SMTP id ada2fe7eead31-79607d9203fmr2599830137.3.1789335753501;
        Sun, 13 Sep 2026 14:42:33 -0700 (PDT)
X-Received: by 2002:a05:6102:a144:b0:796:7d9:a60 with SMTP id ada2fe7eead31-79607d9203fmr2599819137.3.1789335753065;
        Sun, 13 Sep 2026 14:42:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b8a047854fsm1938531e87.67.2026.09.13.14.42.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 14:42:30 -0700 (PDT)
Date: Mon, 14 Sep 2026 00:42:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <quic_riteshk@quicinc.com>,
        Vishnuvardhan Prodduturi <quic_vproddut@quicinc.com>,
        Mani Chandana Kuntumalla <quic_mkuntuma@quicinc.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 4/4] drm/msm/dp: continue link training downgrade when
 cable is still plugged
Message-ID: <q45k66o2geby5lewynwx3okmmmun7ippmlzsyx6jegabptmrd2@cwk4f2hu7vwk>
References: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
 <20260824-qcom-dp-typec-reconnect-fixes-v1-4-2825e5bf8a96@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260824-qcom-dp-typec-reconnect-fixes-v1-4-2825e5bf8a96@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDMwOSBTYWx0ZWRfX7tbkM6P3u6j+
 lNeJxXTiMmd68iHNm2f5Q2nj+I73vPxN5jYO5913Ri5UhATu41gxbr2XIlLlTsqOzBD0i9uebq6
 CX03uzM0fGHiKk+2FXLGIrMBgBK7fJXUAbaT+CfOeOcvgLDJL8wqOM1KvmDQR0aan73qXLzkH+Z
 zTdfZCuKQ2ZzWhcBuVR5+HJYydyaTHaXrOnPbbPaiyj0SIj5f4+HeNtwqg+WyWhOHy5qvbCAk+p
 dz/LkuC97zD2io5y846vr4db41H1Z41t0x9gz+CmPQFru0g4L3lnxpmQMdCxBM4LU+8GVijD9qD
 d4SFSz/ta1ae3rvvNCSSfHFPLpfdApDNHl9+vz6ndTbUg146b8EEKXB1Bzb4M0pXEbprBNCsjmH
 8svW4bAIoXDRtBN6UoCR5/jUpngTBn6IN5YQ1ynDecxKiyhBf0uTLtZozQjt/v3mHVP8eamEPE5
 1mx/Q508JUEwzTm43jg==
X-Authority-Analysis: v=2.4 cv=IZwSymqa c=1 sm=1 tr=0 ts=6aa718ca cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=282R5v4PAPrGKAVVY-QA:9 a=CjuIK1q_8ugA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-GUID: pmRRhFcEdbf3BVzQR7uoSn-M8qLVswsk
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDMwOSBTYWx0ZWRfX6Rj5ZZOnkRI8
 A7rtjtmxppsfoJK4JodlFaCEj1kjz+1sG4ysVipx7SbN7xXerwDD6tbMegb12xsbqQC7eQn/Tbt
 5hbZoMYIqygCVMr6S6IYYE35OITmzbE=
X-Proofpoint-ORIG-GUID: pmRRhFcEdbf3BVzQR7uoSn-M8qLVswsk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_07,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0 phishscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609130309
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_144235_980827_276E2BA1 
X-CRM114-Status: GOOD (  25.33  )
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

On Mon, Aug 24, 2026 at 04:58:07PM +0530, Saurabh Anand wrote:
> During a Type-C reconnect the AUX channel may report link-disconnected
> transiently while the physical cable is still present. The link training
> retry loop in msm_dp_ctrl_on_link() was aborting immediately on any
> msm_dp_aux_is_link_connected() failure, preventing the rate/lane downgrade
> path from running.
> 
> When the display is known to be plugged (msm_dp_ctrl->plugged), an AUX
> link-disconnected status is likely a transient glitch rather than a true
> unplug. Allow the downgrade loop to continue in that case by requiring both
> conditions before breaking out of the retry loop: AUX reports disconnected
> and the display is not plugged.

A cable reconnect should follow the full procedure. DPRX may use long
HPD pulses to signal that DPTX should reconfigure the link according to
the changed status registers.

> 
> The plugged state is snapshotted from dp_display into msm_dp_ctrl just
> before msm_dp_ctrl_on_link() is called, so the retry loop has an accurate
> view of cable presence at the time link training started.
> 
> Signed-off-by: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c    | 4 ++--
>  drivers/gpu/drm/msm/dp/dp_ctrl.h    | 1 +
>  drivers/gpu/drm/msm/dp/dp_display.c | 1 +
>  3 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> index 59070f399e2d..e8fd8f4c75fe 100644
> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> @@ -2379,7 +2379,7 @@ int msm_dp_ctrl_on_link(struct msm_dp_ctrl *msm_dp_ctrl,
>  			break;
>  		} else if (training_step == DP_TRAINING_1) {
>  			/* link train_1 failed */
> -			if (!msm_dp_aux_is_link_connected(ctrl->aux))
> +			if (!msm_dp_aux_is_link_connected(ctrl->aux) && !msm_dp_ctrl->plugged)

Locking?

>  				break;
>  
>  			drm_dp_dpcd_read_link_status(ctrl->aux, link_status);
> @@ -2404,7 +2404,7 @@ int msm_dp_ctrl_on_link(struct msm_dp_ctrl *msm_dp_ctrl,
>  			}
>  		} else if (training_step == DP_TRAINING_2) {
>  			/* link train_2 failed */
> -			if (!msm_dp_aux_is_link_connected(ctrl->aux))
> +			if (!msm_dp_aux_is_link_connected(ctrl->aux) && !msm_dp_ctrl->plugged)
>  				break;
>  
>  			drm_dp_dpcd_read_link_status(ctrl->aux, link_status);
> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.h b/drivers/gpu/drm/msm/dp/dp_ctrl.h
> index 5902cf7e746a..95533b0b6297 100644
> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.h
> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.h
> @@ -12,6 +12,7 @@
>  
>  struct msm_dp_ctrl {
>  	bool wide_bus_en;
> +	bool plugged;
>  };
>  
>  struct phy;
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index 1f60c78a463d..93a37a44273f 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -644,6 +644,7 @@ static int msm_dp_display_prepare_link(struct msm_dp_display_private *dp)
>  	if (!msm_dp_display->power_on) {
>  		msm_dp_display_host_phy_init(dp);
>  		force_link_train = true;
> +		dp->ctrl->plugged = dp->plugged;

No, don't create copies of the fiels. They easily get out of sync.

>  	}
>  
>  	rc = msm_dp_ctrl_on_link(dp->ctrl, dp->panel);
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
