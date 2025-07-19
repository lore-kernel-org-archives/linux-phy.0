Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6216C83F27
	for <linux-phy@archiver.kernel.org>; Sat, 19 Jul 2025 10:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDXBiqnFkPSmIemxX030nDpWMCrsdae4ijprM2oAtAM=; b=ink5/F68N0oOI+
	XUcQI4VaHVzblO0PuzkApRC4Mm+awUu/3j55CW/WekMywqW9AVRsqHdWdMVaLOMkeIdYgd5X5PuKJ
	plPNX2JYmWg8zGxnOd6SGTSfpCy54lby+XacmMr+my4nkFCrQbq+Yq0wv5D1EtoGhekgzMnXVjmup
	irVpG8aGMsm4DJDaKUzWsD4AGKf4KuSvaYZhLfAJYItOCJZtRsSGXjSmbI505SPhohVsp+SgKfcYv
	Tv909Bsdpmr5zmst/X4PxXNh2ukOIGXc3RdAjxIMjKzqgvrGi0bkPoITvxFBGtyD1Lo1krgUcadoy
	4NruBz3dB3WTuZbFX+QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ud5CW-0000000E9kk-2Kxj;
	Sat, 19 Jul 2025 10:53:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ud5CU-0000000E9ix-02QH
	for linux-phy@lists.infradead.org;
	Sat, 19 Jul 2025 10:53:55 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56J4E5Na032086
	for <linux-phy@lists.infradead.org>; Sat, 19 Jul 2025 10:53:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aqHtp61gi/MVVqpPkBkPz7nq
	zj2NZMIcHn+kla2ZN4c=; b=SdRgksaU3n0/sMpQ8XUiiDYGoQ70xrm0QbQr8PDg
	S0+acoJzMc8l4SYRgpySDuIJSlEcsc2Hwby8/Wt/hNGd90zWTuI0BQ+7oE+t49ht
	9apLGxz83+0t7M2CAMACWcMiYuCppt0E9xdoBFGUlExRGIjTvBP6mXG2regVuHzR
	qZu6bD8W4MID62X2DgD9kIkEIDjO6koIqjP7ry4/5SGzaLyayxxeNQXfaREoEUVQ
	hPUFsnGMEKXZHeHrcXFxqM41p+xgeQISAbSFix/xXhW1WDcGLBO/73pKi172Zfk+
	NMogtuaHI361nKygSHQn/MvffjIaC+BaWrXm4J6RaFdMaA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 480459ggj3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 19 Jul 2025 10:53:53 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e1b7fe85b1so507309085a.3
        for <linux-phy@lists.infradead.org>; Sat, 19 Jul 2025 03:53:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752922432; x=1753527232;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aqHtp61gi/MVVqpPkBkPz7nqzj2NZMIcHn+kla2ZN4c=;
        b=rAGmQjZg/Hnn5jBpMW7VB+5lUG/002MavxcJOWMi0b/gB2hNWYKfZJP6RP44Bap75l
         YbPz/f393v+XPABPRvZTQW+AzvaxDYGsJn7+of2Fc1DSyQjOMt74IzkdRMk/Diu82RvG
         3F7Rt7/Af8Z40xRh/NnqkvVtsfTYRfEd8WhqrnRdRqxleEABt29Ws1CuBDYSK4TehVtF
         lWlmj5hOygpdfMAWfX4/tFMg3Lstq4ZSGPaFjJtwGi0g5XQDZQLOq4Lwex7WwShpt3aM
         H7yP1b30PRWWhuX82fbe6i8d2xlLxGo6gLsozxDP1aQvnlMtcYqjXt2BRXgvFOES8ri9
         Qrfw==
X-Forwarded-Encrypted: i=1; AJvYcCWGSvDj6WgwHw7THrBNtB6wp/7vKStL++ofFYG307ka3857IIGfw3YhWZPZ6IpiGAx7iDA9ctzCelc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwlXVhA+rv0CHueNKu/Wh0xsU3yDs2O4f1abm3HFb4K4jDi3Aje
	iM9oLsVB1gnj34WHObBwQnfPcBUZl/E9zn4KgOpTOePinxFxhwnF/HiziDr/YBeQsTxGoTtMZ/d
	MKjcQy7Mq/TJvUMeRdQMgYrm8o/rpirIljwBwr99zX8tVP2Rrg3DpwKloPdEouQtGpe8j
X-Gm-Gg: ASbGncu/XyIk51jtpyQIHQKrvPvczOXxhpYn+kD3t+Ky6PDUu1+8KNTy0yOljWRU6lv
	PLfKru1m1jX0jm4gYm6sQLSPnejsGMk5bD5f5Fe0Ar7DQx2igCjZ+guX//XnG088Ew/6JR2uM6Q
	KsEkahYxE454Fej4ixWj0WvEwNWABleRtc9QLI820WVnSZl+oubWksELSxkOFFGWYIEAZKG1OrW
	nL5LbR8+2xiKJ657bhiNveUxsBboVcyjccduD6QHcTg43z26Is+pGG7jCvokTeMCFj4lU2bnhfj
	XlADLYP0+AKP9DQwvzXM2Mx0appI2+R73u3HcLji7d7uMcPRPqp8/z934g7CMCgQcubvrw6IaOF
	Omgh6WRKwURYehM9/zcnFGlTJR2QantBs9L0xSNXlHdsbHqvvlH9D
X-Received: by 2002:a05:620a:440a:b0:7d4:49fa:3c59 with SMTP id af79cd13be357-7e34356c61bmr2239109385a.15.1752922432087;
        Sat, 19 Jul 2025 03:53:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGPrmyV8egRcX0tplCS17IxY7fqr0+H6cJp69VeGuqF/GMP4bJno9IhBcl041AaSBLD5rosBg==
X-Received: by 2002:a05:620a:440a:b0:7d4:49fa:3c59 with SMTP id af79cd13be357-7e34356c61bmr2239105885a.15.1752922431592;
        Sat, 19 Jul 2025 03:53:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31a9b1b1sm677727e87.35.2025.07.19.03.53.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Jul 2025 03:53:50 -0700 (PDT)
Date: Sat, 19 Jul 2025 13:53:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 3/5] drm/rockchip: cdn-dp: Support handle lane info
 and HPD without extcon
Message-ID: <t3th2tqbnkmsqssypxvye6vsfhpw37sf7wyl53cso3r5pqa7qp@gn74pj75j4pb>
References: <20250718062619.99-1-kernel@airkyi.com>
 <20250718062619.99-4-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250718062619.99-4-kernel@airkyi.com>
X-Proofpoint-ORIG-GUID: NRbfc0bSe0qpD3AhX95iptZDuCKjw57B
X-Authority-Analysis: v=2.4 cv=fdyty1QF c=1 sm=1 tr=0 ts=687b7941 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=ady2-bcLGFUvj2b528oA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: NRbfc0bSe0qpD3AhX95iptZDuCKjw57B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE5MDEwOCBTYWx0ZWRfX5t6sUgj+hfdc
 NLYhUN7RJUb5MN4Ja7+eFlxVewCCdSlb+uaOx420+713d9rWumZrCeQePSBdlIOODYPdMoGoViX
 pIsrM1jHZ7maP4I+40xjlBxW3/JIFKEp8q3qutZTPcgsWEoAPkfnDtRgSsUBbNz086csngDX5a+
 sS8Gzd9Li7a86tpyO5YsIe+VR1RL/A2twh9WlJO1bDHUhoL5018kXUCHG5HTAx0+8AaA1peO2+j
 0xT9Nnc1a/vtK04w6ZngM51SAVdidCtcpp7+XpSjShVO8jPC0nbwDRStHWgYKGZlW9f1DOwmcqu
 ufd8GQsDUPTOYB2kNasdBfO7rFEeTZmOGLKnsj8wCAHaGT0/mp8umSlA8yOwgXYt7SdPkLffIWp
 YimSSViPGKHDt41okc1IzCDO5Kfg3VPew6Uppz079IL5TqoZZotb1vo17RAgsiViONJhTmQb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-19_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 mlxlogscore=999 mlxscore=0 spamscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507190108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250719_035354_055994_8DC71EC3 
X-CRM114-Status: GOOD (  33.65  )
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

On Fri, Jul 18, 2025 at 02:26:17PM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> This patch add support for get PHY lane info and handle HPD state
> without help of extcon.
> 
> There is no extcon needed if the Type-C controller is present. In this
> case, cdn_dp_hpd_notify() will handle HPD event from USB/DP combo PHY,
> and the lane info can be get from PHY instead of extcon.

The DP AltMode driver will send drm_connector_oob_hotplug_event() to the
DRM connector associated with the USB-C connector fwnode. However your
DP connector will have fwnode set to the DP controller, if I'm not
mistaken. So I doubt that HPD events are going to be delivered
correctly.

> 
> The extcon device should still be supported if Type-C controller is
> not present.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v2:
> - Ignore duplicate HPD events.
> 
>  drivers/gpu/drm/rockchip/cdn-dp-core.c | 37 ++++++++++++++++++++------
>  1 file changed, 29 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> index 24f6b3879f4b..b574b059b58d 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> @@ -156,6 +156,9 @@ static int cdn_dp_get_port_lanes(struct cdn_dp_port *port)
>  	int dptx;
>  	u8 lanes;
>  
> +	if (!edev)
> +		return phy_get_bus_width(port->phy);
> +
>  	dptx = extcon_get_state(edev, EXTCON_DISP_DP);
>  	if (dptx > 0) {
>  		extcon_get_property(edev, EXTCON_DISP_DP,
> @@ -219,7 +222,7 @@ static bool cdn_dp_check_sink_connection(struct cdn_dp_device *dp)
>  	 * some docks need more time to power up.
>  	 */
>  	while (time_before(jiffies, timeout)) {
> -		if (!extcon_get_state(port->extcon, EXTCON_DISP_DP))
> +		if (port->extcon && !extcon_get_state(port->extcon, EXTCON_DISP_DP))
>  			return false;
>  
>  		if (!cdn_dp_get_sink_count(dp, &sink_count))
> @@ -385,11 +388,14 @@ static int cdn_dp_enable_phy(struct cdn_dp_device *dp, struct cdn_dp_port *port)
>  		goto err_power_on;
>  	}
>  
> -	ret = extcon_get_property(port->extcon, EXTCON_DISP_DP,
> -				  EXTCON_PROP_USB_TYPEC_POLARITY, &property);
> -	if (ret) {
> -		DRM_DEV_ERROR(dp->dev, "get property failed\n");
> -		goto err_power_on;
> +	property.intval = 0;
> +	if (port->extcon) {
> +		ret = extcon_get_property(port->extcon, EXTCON_DISP_DP,
> +					  EXTCON_PROP_USB_TYPEC_POLARITY, &property);
> +		if (ret) {
> +			DRM_DEV_ERROR(dp->dev, "get property failed\n");
> +			goto err_power_on;
> +		}
>  	}
>  
>  	port->lanes = cdn_dp_get_port_lanes(port);
> @@ -821,6 +827,17 @@ static int cdn_dp_audio_mute_stream(struct drm_connector *connector,
>  	return ret;
>  }
>  
> +static void cdn_dp_hpd_notify(struct drm_bridge *bridge,
> +			      enum drm_connector_status status)
> +{
> +	struct cdn_dp_device *dp = bridge_to_dp(bridge);
> +	enum drm_connector_status last_status =
> +		dp->connected ? connector_status_connected : connector_status_disconnected;
> +
> +	if (last_status != status)
> +		schedule_work(&dp->event_work);
> +}
> +
>  static const struct drm_bridge_funcs cdn_dp_bridge_funcs = {
>  	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
>  	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
> @@ -831,6 +848,7 @@ static const struct drm_bridge_funcs cdn_dp_bridge_funcs = {
>  	.atomic_disable = cdn_dp_bridge_atomic_disable,
>  	.mode_valid = cdn_dp_bridge_mode_valid,
>  	.mode_set = cdn_dp_bridge_mode_set,
> +	.hpd_notify = cdn_dp_hpd_notify,
>  
>  	.dp_audio_prepare = cdn_dp_audio_prepare,
>  	.dp_audio_mute_stream = cdn_dp_audio_mute_stream,
> @@ -1028,6 +1046,9 @@ static int cdn_dp_bind(struct device *dev, struct device *master, void *data)
>  	for (i = 0; i < dp->ports; i++) {
>  		port = dp->port[i];
>  
> +		if (!port->extcon)
> +			continue;
> +
>  		port->event_nb.notifier_call = cdn_dp_pd_event;
>  		ret = devm_extcon_register_notifier(dp->dev, port->extcon,
>  						    EXTCON_DISP_DP,
> @@ -1120,14 +1141,14 @@ static int cdn_dp_probe(struct platform_device *pdev)
>  		    PTR_ERR(phy) == -EPROBE_DEFER)
>  			return -EPROBE_DEFER;
>  
> -		if (IS_ERR(extcon) || IS_ERR(phy))
> +		if (IS_ERR(phy) || PTR_ERR(extcon) != -ENODEV)
>  			continue;
>  
>  		port = devm_kzalloc(dev, sizeof(*port), GFP_KERNEL);
>  		if (!port)
>  			return -ENOMEM;
>  
> -		port->extcon = extcon;
> +		port->extcon = IS_ERR(extcon) ? NULL : extcon;
>  		port->phy = phy;
>  		port->dp = dp;
>  		port->id = i;
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
