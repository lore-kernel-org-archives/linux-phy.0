Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 949FDC54E90
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 12:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ls+sJwkFNa9ZLs2xEh7RYyAgzGPsC1PI9W780G/keqw=; b=4+2587g8CMhgrT
	Avnr27mJqmBwsNAO3L0MrPxAbengyJLuX/4EyonufQSyDUpek5Fb6iGTx1gthPCmKqgI+WANXjhBM
	onDKpS+o1ijBTbYAgsPWa6Yg1jb+tpDCETKwpeWnwjwSWUaX4n78GlQs0wnUMCrtzs5D02457zAOS
	bRleaSws60WSllH+mcLMS9r50GAy7d0g8LZhLQ823CVTS5JRWH8D61Wj6a3yAEcSM3l249PUzW8cL
	Q4YAz6E70YE14d2Pgsi6XfsarFwdUGd2JHRcHSdDXWPPqSAgbnY+XlLiKQ0dobhsm+H3moeK9oH79
	rAnw7VslJq972MqJSr1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI5GO-000000011Fl-0uWF;
	Thu, 22 May 2025 12:43:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI5Da-000000010rE-0CqY
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 12:40:15 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54M7jJk6013406
	for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 12:40:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+EqEHGQsGLV7fMWgFHiDCICo
	9owZC5//Pie9xhLsJeQ=; b=VgQalo+0oOyORAiuezYHZYJqlNe7dZ4MnpprEVb9
	vwU8lKz3Z6m6Rli/ceqcyMqHNWDZTKZrwrQDJwEjJB9n+fQ46sFrHMYJy6UkK2oK
	Ic1SkaBhS3pPYcbwBAFu0JcGLJPjaIdpZdtUMH6kbvPKNcsvLCTCQXf+lal7bZ3N
	cWPNJJAgtyuEFAx4YeQ4+APzW/Gx9udZfw2ceEMM1W+v4rd2pz2qDK5tDkjtbBDK
	OuNfLY0VCMBLzk27BTvpEZFCX+YMR6tg21W1/OTTQ0HHCxHl0ZuKyCoMyJnTfEl3
	x0M0JcYU9q+VzC+xAp4bwjtdW7eHUWWOoG3bGigQivs1zg==
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwh5efrg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 12:40:13 +0000 (GMT)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-400b1222c6dso6224697b6e.2
        for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 05:40:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747917611; x=1748522411;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+EqEHGQsGLV7fMWgFHiDCICo9owZC5//Pie9xhLsJeQ=;
        b=pZJnmd7FCJ5SVibMS0hh7xHCAueoT6t8sZwIP6z4DP5jo55OvXbAcSncXey7CIQADF
         B51l7WKr4LQi5susgldVJfg4crji8+hwr+/F9Tz0mrYI8TPJUH9uweSXET3azfBO2G3l
         kOrJp4woaaK9djuoreXplsrlph3lfJ2x2joR/f/Gq/w9DejWCM7kDHTooNuiYYXXTPLm
         BkJyTOvO34d0LRtgN9iJucbF41D1AuKi1BeV0erFC2tgCiNgj/+JLik9vjGpCjupHYN5
         Bm8G/LcxN2jjCzWpdyDJWR6eeYjqS7L81m0zp4IYAVlgw/+ewJ563xD2hUpiljim3rRx
         atjg==
X-Forwarded-Encrypted: i=1; AJvYcCWisUCUYy27muJMwblAabIkfZbteTwR1Sm+pH0bxbqZiO2srSrrDSkG89gdw+KL6lH2vDk7z/ge6Iw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwsTAgjNYgAC19kWr3YdtDwqbCFYSjuDuMQntp8D2ANY3AnByOV
	nQRCeMI9TtTlZv2f/OJ5heXJ06ucgMPU14oGSYoLZS6HfxLKZm5vlX/UeQeM0/B6zwD0Q+/EZT8
	t1+lDXPTH9dNKWNKZ8r/EfqWRrzejbRGyCw56b2MMh71Qlq2q1KQBA7K4KrNRGR/o2uYkhpe2Z7
	M4
X-Gm-Gg: ASbGncu2yBQL2riUaxslzccDMgkSLUUrtcuuCFs5NfKz0zd9HiY1cC78ZrS5pDZRj/+
	vuYd2x7GD8LUqdJpApiz5MHL4Z9qqoTmzMlfQQiwnkZHqwocxBxRPvzkFjBUVPssrVXvgliPbx3
	73Ptsx/xzuVY1W06uK9aDm5FC2LNGRYHWXHqqR71D5j08/8ntvvZSrwF3XjYyiduZtOKeoirVun
	GfpudqRDGMDICbYPa6HZ4UpJ+VUY9oPC+9+nVnGfxHFgOb59FZ4347WDwT2LU6GPxmhuizyRZxB
	zTxw8n8Yil96inDN8ZpQ+EW0X6pcp1FK5TLMUSytceHymVN+ywbvDKbzp85h/0q8Nx3kWTHbxO8
	=
X-Received: by 2002:a05:6808:4447:b0:3fe:ab15:5ecb with SMTP id 5614622812f47-404da713fc8mr16614824b6e.9.1747917610962;
        Thu, 22 May 2025 05:40:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFve+8mofNSpVKLWwuMYBvia/xh0sTk8FAf6wyF/tDiY8jaMMruPUXYmConthQlvyqWvXyIXA==
X-Received: by 2002:ad4:5caa:0:b0:6f5:dd5:a594 with SMTP id 6a1803df08f44-6f8b2cb94cemr428744686d6.5.1747917599863;
        Thu, 22 May 2025 05:39:59 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e7017e6esm3376695e87.136.2025.05.22.05.39.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 05:39:58 -0700 (PDT)
Date: Thu, 22 May 2025 15:39:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 1/5] drm/msm/hdmi: switch to generic PHY subsystem
Message-ID: <tm2ogebkaxu3g6xdmrjkx3u6veac45qd7mtiruan4rcevs75xn@apubmfvg74nt>
References: <20250520-fd-hdmi-phy-v4-0-fcbaa652ad75@oss.qualcomm.com>
 <20250520-fd-hdmi-phy-v4-1-fcbaa652ad75@oss.qualcomm.com>
 <a42b9cbb-2f85-40c4-8b40-6f84970aba86@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a42b9cbb-2f85-40c4-8b40-6f84970aba86@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDEyOCBTYWx0ZWRfX8ooWCPT5MM8p
 HjwIOG3Ifx/kAGZO2GVGNYgYc6unD1ghZnvDJByRjXIPHaHPXeBoDVss4qy8E1bHV+3/Gs76q8O
 qitOwldMMGhcVgB21dXNw88wqTMita4LzkPPdoUipKn3cIXAHtPm7xoKd9ranvsQ1+cqzGxtv45
 gJOR8LQfckjgC4lBuetGjuZJvfHdnWgOo6OsR7Ct036RU/zjWjnUcnDm7Osayk7j6m6NGeyAjfu
 BeRs38iRDWOP5/ztYgAd/UtF4c9FZYFhI8jrpnwqV3Hwu3IE7mjuzPpLIteSv/9tLbbZ8qmXSPE
 9+Fa80nlUbu47mSh8hrTykht8DmCC+qG/lQFuVQR4haQ9BZ68cT7e512LTUpveLiYMAS9pPlrkR
 H25d2li4A8if+BtFoJmC8JAD8yODECobcyNhjLndzSuPC9yuig/yAqZCziHTjhfTvkgSgYyb
X-Authority-Analysis: v=2.4 cv=XeWJzJ55 c=1 sm=1 tr=0 ts=682f1b2d cx=c_pps
 a=WJcna6AvsNCxL/DJwPP1KA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=kkxXnT2X172yt9C4ahEA:9
 a=CjuIK1q_8ugA:10 a=_Y9Zt4tPzoBS9L09Snn2:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: mfDTnRHWKWHo2RhOBV_N-k-wbaKSJMY6
X-Proofpoint-ORIG-GUID: mfDTnRHWKWHo2RhOBV_N-k-wbaKSJMY6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 mlxlogscore=999 mlxscore=0 bulkscore=0 spamscore=0
 suspectscore=0 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505220128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_054014_102419_430E5B5E 
X-CRM114-Status: GOOD (  27.83  )
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

On Thu, May 22, 2025 at 09:38:34AM +0200, neil.armstrong@linaro.org wrote:
> On 20/05/2025 22:44, Dmitry Baryshkov wrote:
> > From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > 
> > Change the MSM HDMI driver to use generic PHY subsystem. Moving PHY
> > drivers allows better code sharing with the rest of the PHY system.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >   drivers/gpu/drm/msm/Makefile                     |   7 -
> >   drivers/gpu/drm/msm/hdmi/hdmi.c                  |  58 +-
> >   drivers/gpu/drm/msm/hdmi/hdmi.h                  |  80 +--
> >   drivers/gpu/drm/msm/hdmi/hdmi_bridge.c           |  32 +-
> >   drivers/gpu/drm/msm/hdmi/hdmi_phy.c              | 225 -------
> >   drivers/gpu/drm/msm/hdmi/hdmi_phy_8960.c         |  51 --
> >   drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c         | 765 ----------------------
> >   drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c         | 769 -----------------------
> >   drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c         | 141 -----
> >   drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c         |  44 --
> >   drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c         | 458 --------------
> >   drivers/phy/qualcomm/Kconfig                     |  21 +
> >   drivers/phy/qualcomm/Makefile                    |  14 +
> >   drivers/phy/qualcomm/phy-qcom-hdmi-28hpm.c       |  71 +++
> >   drivers/phy/qualcomm/phy-qcom-hdmi-28lpm.c       | 441 +++++++++++++
> >   drivers/phy/qualcomm/phy-qcom-hdmi-45nm.c        | 186 ++++++
> >   drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.c      | 212 +++++++
> >   drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.h      |  81 +++
> >   drivers/phy/qualcomm/phy-qcom-qmp-hdmi-base.c    | 185 ++++++
> >   drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8996.c | 442 +++++++++++++
> >   drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8998.c | 495 +++++++++++++++
> >   drivers/phy/qualcomm/phy-qcom-qmp-hdmi.h         |  77 +++
> >   22 files changed, 2259 insertions(+), 2596 deletions(-)
> > 
> 
> <snip>
> 
> > diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
> > index 53a7ce8cc7bc7b6278eae2cbc42c3fda8d697f6d..1a00c26c1b40fc81623c9fb22ba25f448c27bffb 100644
> > --- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
> > +++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
> > @@ -5,6 +5,7 @@
> >    */
> >   #include <linux/delay.h>
> > +#include <linux/phy/phy.h>
> >   #include <drm/drm_bridge_connector.h>
> >   #include <drm/drm_edid.h>
> >   #include <drm/display/drm_hdmi_helper.h>
> > @@ -286,11 +287,12 @@ static void msm_hdmi_bridge_atomic_pre_enable(struct drm_bridge *bridge,
> >   {
> >   	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
> >   	struct hdmi *hdmi = hdmi_bridge->hdmi;
> > -	struct hdmi_phy *phy = hdmi->phy;
> >   	struct drm_encoder *encoder = bridge->encoder;
> >   	struct drm_connector *connector;
> >   	struct drm_connector_state *conn_state;
> >   	struct drm_crtc_state *crtc_state;
> > +	union phy_configure_opts phy_opts;
> > +	int ret;
> >   	DBG("power up");
> > @@ -304,7 +306,7 @@ static void msm_hdmi_bridge_atomic_pre_enable(struct drm_bridge *bridge,
> >   	mutex_lock(&hdmi->state_mutex);
> >   	if (!hdmi->power_on) {
> > -		msm_hdmi_phy_resource_enable(phy);
> > +		phy_init(hdmi->phy);
> >   		msm_hdmi_power_on(bridge);
> >   		hdmi->power_on = true;
> >   	}
> > @@ -315,7 +317,23 @@ static void msm_hdmi_bridge_atomic_pre_enable(struct drm_bridge *bridge,
> >   	drm_atomic_helper_connector_hdmi_update_infoframes(connector, state);
> > -	msm_hdmi_phy_powerup(phy, hdmi->pixclock);
> > +	phy_opts.hdmi.tmds_char_rate = conn_state->hdmi.tmds_char_rate;
> > +	phy_opts.hdmi.bpc = 8;
> > +	phy_configure(hdmi->phy, &phy_opts);
> > +
> > +	ret = phy_power_on(hdmi->phy);
> > +	if (WARN_ON(ret))
> > +		return;
> > +
> > +	if (hdmi->extp_clk) {
> > +		ret = clk_set_rate(hdmi->extp_clk, hdmi->pixclock);
> > +		if (ret)
> > +			DRM_DEV_ERROR(bridge->dev->dev, "failed to set extp clk rate: %d\n", ret);
> > +
> > +		ret = clk_prepare_enable(hdmi->extp_clk);
> > +		if (ret)
> > +			DRM_DEV_ERROR(bridge->dev->dev, "failed to enable extp clk: %d\n", ret);
> > +	}
> 
> Why do you again set the extp_clk since it's already set & enabled in msm_hdmi_power_on() ?
> 
> Perhaps I missed a change but it's like that on next-20250521

Yes. And it was a part of the series beforehand. I will check, why it
was required or I will drop it.

> 
> >   	msm_hdmi_set_mode(hdmi, true);
> > @@ -328,7 +346,6 @@ static void msm_hdmi_bridge_atomic_post_disable(struct drm_bridge *bridge,
> >   {
> >   	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
> >   	struct hdmi *hdmi = hdmi_bridge->hdmi;
> > -	struct hdmi_phy *phy = hdmi->phy;
> >   	if (hdmi->hdcp_ctrl)
> >   		msm_hdmi_hdcp_off(hdmi->hdcp_ctrl);
> > @@ -339,14 +356,17 @@ static void msm_hdmi_bridge_atomic_post_disable(struct drm_bridge *bridge,
> >   	mutex_lock(&hdmi->state_mutex);
> >   	msm_hdmi_set_mode(hdmi, hdmi->hpd_enabled);
> > -	msm_hdmi_phy_powerdown(phy);
> > +	if (hdmi->extp_clk)
> > +		clk_disable_unprepare(hdmi->extp_clk);
> > +
> > +	phy_power_off(hdmi->phy);
> >   	if (hdmi->power_on) {
> >   		power_off(bridge);
> >   		hdmi->power_on = false;
> >   		if (hdmi->connector->display_info.is_hdmi)
> >   			msm_hdmi_audio_update(hdmi);
> > -		msm_hdmi_phy_resource_disable(phy);
> > +		phy_exit(hdmi->phy);
> >   	}
> >   	mutex_unlock(&hdmi->state_mutex);
> >   }
> <snip>
> 
> Otherwise it looks fine even there's a lot to digest and hard to figure out
> the exact changes done to the PHY drivers.

Yes. I have been trying to find other ways to handle such move, but I
couldn't find any.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
