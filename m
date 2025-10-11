Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E65ACCD18D
	for <linux-phy@archiver.kernel.org>; Sat, 11 Oct 2025 18:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRliT+e849s9zu5G1+5U5Ow8+BEctwa2mLFzdo7QJKA=; b=B6byG/IpLnjeVD
	hTNpce2m/EeSiiE3wfwt2faoSeCNhbeTGBIYeY4BbmZzeRb6OngMg/UWSH2t4dIdzO/HSLv0XKId6
	7f9jN2X64XDiHGKqEA1/dFGPN6VOebuwHQC3ftgyQbOxLvl8ImwP2nqQnDdqynZpK/YlN24ecdO6R
	UzJJPNU47KtR7+Et/XbJozmbbHzU0ZoC2AUhJFuaZrS6PJ5MPHJTlMyFwuLuZ1pZAHrfmEXAgrkKK
	hWzySEIBgZk6TofeVjUi6bIAcD7Py190Utmpc4VtSUz8kC5lq0TcQ5eeuqKFCu+s8bHhZYTf0L6W2
	+7kE5n6ISa3bN49ymRIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7ehT-0000000AWxB-0chP;
	Sat, 11 Oct 2025 18:52:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7ehP-0000000AWvS-3HA0
	for linux-phy@lists.infradead.org;
	Sat, 11 Oct 2025 18:52:13 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59BHfohe028681
	for <linux-phy@lists.infradead.org>; Sat, 11 Oct 2025 18:52:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/+pzSiIjVBnWxA/hQntIwuWV
	dEB2AAtnUsGXY13DWPI=; b=SVdsgXu+Dv9XNolVHUB2L3Cuv0aSMuggEYDMC+i9
	6k5APB5vDU1bJiw9zKOgXB+sCZqw8MNDqdi1wl+bbjsaYb1xX5y99eqorLOmFN9/
	En7o9HnNswuxn7OzMK5UmryBhtbd/WZZPtur3trLWlPfz2a6rPezyR0VRrn7yTM8
	ZoZzBoI7ojkheJ/5uAaGE3yTASujDDp4UPtmiCMEcfXAtzyk3SZC34Udr6jJhuJ8
	2mCaEtTfuVKF/zpdBVIx7rCX1A9TAz82niaGoknye/d/Npl0auFXVvlaAJ/qQHH7
	KI3wuOvexIohrqY0k2X7OHrD5HoBqN2ByGjcNNG/jIPAwA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfby12wu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 11 Oct 2025 18:52:10 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-828bd08624aso1648260785a.1
        for <linux-phy@lists.infradead.org>; Sat, 11 Oct 2025 11:52:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760208730; x=1760813530;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/+pzSiIjVBnWxA/hQntIwuWVdEB2AAtnUsGXY13DWPI=;
        b=OJVuwUISAo+VIv3486PsTgIvwbTe3t+74C97s9kdjk8DSAVFNtutUnovRK3rPnreTk
         ZlWnXAv3nchWklgAKmu2sX2GGggbzJplvUik7lN7SYdMrFrhrNqShwC3cqr2JfJANkkj
         vAIX5PZ0FgccVrRYLsz2ei4v76cOSqGT4+X0Fkm2RgLye8fQMPJ5pSsSPEb6roIW6Cfn
         R88fEYPvmYfuRd/Z5H+xPranEC8TGEw/7gznIZXwQkQ+j8+CrNitpyTJuNy0MknpO6El
         0UW/IRx/b0dgK+MWpYpMCzz+CNXevWv+xtZLI/hl2ZI4x6LG+agp3lA6Xz3TRpJitgRT
         9uNg==
X-Forwarded-Encrypted: i=1; AJvYcCXIbGWNP4dPWIEzVHTEuiFYHj3n2tuhruwg90iA54nh17tadEWwpf4FgKFlh2wyokG6g224n1jmCRE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yztc7Cc4qPYF0fLCHCdd5mTcz520O7itei2L1GGfoeBu+O4ggEG
	k3bnlc1b4TGIr2/VRg/mOtOwXAr3veBaPCD/RMTLr0sej+imM3RcXJ2Hw8EDTPKygwL4NYOJkTG
	LjP3x/BaYPEs38cZsSGsRW/SKa4AhEVkOF2rGznInfPR8PK2zyFpN+No6czdvpcbDPCKI
X-Gm-Gg: ASbGncv+O78gToGWydiFAQfJo5mFTvQgxBfTh2YDA7xHGcWCi9XE3fFZKdOKAuwGUaW
	kk0nImF3PewSqq63IhAOSTTmxPFmR8gltYadfftUmkoeA55o/20r4uymeHymZFf+il2MVdQO3iX
	J1ZDtDkNUkfhsGqFx0NiJVgq4fCjhyQsrHiz5oDdQ/qmg/X446k+2DUMpCLByV9sBzsK6csqnr7
	EZtb4JtCs3ysYZJN99MRdtJjVoL/qcis0Gg2Xj+k8nV713INnQhxAHUsTpBi3aVB+1umOotMPCD
	KLjkoDnklkBfUAtOriS78cg12Mu/FadY/x8uVLO/XzFr5YtK+e+ARmlMbWAWs7OuVQ0uJo7KV3N
	O2jm8+zHuOBvayLmg1WKvvdLzU0nFA1LO4SvietpZSN9AtloWV1hT
X-Received: by 2002:a05:620a:400f:b0:85b:a906:127c with SMTP id af79cd13be357-88353558d25mr2318570885a.54.1760208729760;
        Sat, 11 Oct 2025 11:52:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/k0JIMwDDe8wKbfoitr+GmGj4WmEClMNGgNYD1vA6WxUaESVw6RtRzEdEu71iz8UzlrWicA==
X-Received: by 2002:a05:620a:400f:b0:85b:a906:127c with SMTP id af79cd13be357-88353558d25mr2318568685a.54.1760208729193;
        Sat, 11 Oct 2025 11:52:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881f88ddsm2167029e87.31.2025.10.11.11.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 11:52:08 -0700 (PDT)
Date: Sat, 11 Oct 2025 21:52:06 +0300
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
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v5 6/8] drm/rockchip: cdn-dp: Add multiple bridges to
 support PHY port selection
Message-ID: <qzcdulyj2enho7l6vyvad7ln46zk2u4z7rnsjv2nv4tbw5j6jf@6oenbixoh3sp>
References: <20251011033233.97-1-kernel@airkyi.com>
 <20251011033233.97-7-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251011033233.97-7-kernel@airkyi.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX+T6lcbWO2FGl
 qXLdNuYxse+KOvoA2hucq4VbIlRTMSj0kaTHXh2sbcDGdwHI+naWgwx6VsIp6hqJJWeIsbBO3HM
 dImQOIQlbywC7bARPZsiMYga1AyuybGIMwIx9fLdRCPYhwqDiGbVMzV6dlRnx/Ml5369Wv4Nhxi
 4dBnAA096yyfC+biIJtLDq+3xS3G7UHNMQpSyISYw36ItTIbOP5iIUOk6Apa7R5D1ED0RdEP/8R
 KeshXIlpNRmKSbkjYCbqjPCNABfO0iNbjl8ndhYIz/OVNn2+E2w+7SRxoNZoOhk3sibv1umaXU7
 vh1ihJsrTt3LklC5nD1/cwLHO+z3ZHmMUyQ8rIKR2f5C8elYqzOMWYNjd3NWs+JHBiUp4D5tuYU
 1TqeTmND+9+nnE4e0shPhxxfVYY44Q==
X-Proofpoint-GUID: VtVwiP0NLUAfhJjeuePQ_K-6EmUux2F8
X-Proofpoint-ORIG-GUID: VtVwiP0NLUAfhJjeuePQ_K-6EmUux2F8
X-Authority-Analysis: v=2.4 cv=A+Bh/qWG c=1 sm=1 tr=0 ts=68eaa75a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s8YR1HE3AAAA:8 a=Vq1njTOzTen_YWzSrCwA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-11_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 spamscore=0 clxscore=1015 bulkscore=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251011_115211_929765_5DA90E5C 
X-CRM114-Status: GOOD (  45.54  )
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

On Sat, Oct 11, 2025 at 11:32:31AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The RK3399 has two USB/DP combo PHY and one CDN-DP controller. And
> the CDN-DP can be switched to output to one of the PHYs. If both ports
> are plugged into DP, DP will select the first port for output.
> 
> This patch adds support for multiple bridges, enabling users to flexibly
> select the output port. For each PHY port, a separate encoder and bridge
> are registered.
> 
> The change is based on the DRM AUX HPD bridge, rather than the
> extcon approach. This requires the DT to correctly describe the
> connections between the first bridge in bridge chain and DP
> controller. For example, the bridge chain may be like this:
> 
> PHY aux birdge -> fsa4480 analog audio switch bridge ->
> onnn,nb7vpq904m USB reminder bridge -> USB-C controller AUX HPD bridge
> 
> In this case, the connection relationships among the PHY aux bridge
> and the DP contorller need to be described in DT.
> 
> In addition, the cdn_dp_parse_hpd_bridge_dt() will parses it and
> determines whether to register one or two bridges.
> 
> Since there is only one DP controller, only one of the PHY ports can
> output at a time. The key is how to switch between different PHYs,
> which is handled by cdn_dp_switch_port() and cdn_dp_enable().
> 
> There are two cases:
> 
> 1. Neither bridge is enabled. In this case, both bridges can
> independently read the EDID, and the PHY port may switch before
> reading the EDID.
> 
> 2. One bridge is already enabled. In this case, other bridges are not
> allowed to read the EDID. So we will try to return the cached EDID.
> 
> Since the scenario of two ports plug in at the same time is rare,
> I don't have a board which support two TypeC connector to test this.
> Therefore, I tested forced switching on a single PHY port, as well as
> output using a fake PHY port alongside a real PHY port.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v5:
> - By parsing the HPD bridge chain, set the connector's of_node to the
> of_node corresponding to the USB-C connector.
> - Return EDID cache when other port is already enabled.
> 
>  drivers/gpu/drm/rockchip/Kconfig       |   2 +
>  drivers/gpu/drm/rockchip/cdn-dp-core.c | 355 +++++++++++++++++++++----
>  drivers/gpu/drm/rockchip/cdn-dp-core.h |  24 +-
>  3 files changed, 324 insertions(+), 57 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> index faf50d872be3..7472ec923cfd 100644
> --- a/drivers/gpu/drm/rockchip/Kconfig
> +++ b/drivers/gpu/drm/rockchip/Kconfig
> @@ -55,6 +55,8 @@ config ROCKCHIP_CDN_DP
>  	select DRM_DISPLAY_HELPER
>  	select DRM_BRIDGE_CONNECTOR
>  	select DRM_DISPLAY_DP_HELPER
> +	select DRM_AUX_BRIDGE
> +	select DRM_AUX_HPD_BRIDGE

You are not using them in this driver, so this is not correct. Please
declare Kconfig dependencies for the drivers that actually call the API,
otherwise the LKP or somebody else can get compile errors because this
driver wasn't selected.

>  	help
>  	  This selects support for Rockchip SoC specific extensions
>  	  for the cdn DP driver. If you want to enable Dp on

[...]

> +
> +	/*
> +	 *
> +	 * &dp_out {
> +	 *	dp_controller_output0: endpoint@0 {
> +	 * 		remote-endpoint = <&dp_phy0_in>
> +	 * 	};
> +	 *
> +	 * 	dp_controller_output1: endpoint@1 {
> +	 * 		remote-endpoint = <&dp_phy1_in>
> +	 * 	};
> +	 * };
> +	 *
> +	 * &tcphy0_dp {
> +	 * 	port {
> +	 * 		tcphy0_typec_dp: endpoint@0 {
> +	 * 			reg = <0>;
> +	 * 			remote-endpoint = <&usbc0_dp>;
> +	 * 		};
> +	 *
> +	 * 		dp_phy0_in: endpoint@1 {
> +	 * 			reg = <1>;
> +	 * 			remote-endpoint = <&dp_controller_output0>;
> +	 * 		};
> +	 * 	};
> +	 * };
> +	 *
> +	 * &tcphy1_dp {
> +	 * 	...
> +	 * };
> +	 *
> +	 */
> +
> +	/* One endpoint may correspond to one HPD bridge. */
> +	for_each_of_graph_port_endpoint(port, dp_ep) {
> +		struct device_node *phy_bridge_node __free(device_node) =
> +			of_graph_get_remote_port_parent(dp_ep);
> +
> +		bridge = of_drm_find_bridge(phy_bridge_node);
> +		if (!bridge) {
> +			ret = -EPROBE_DEFER;
> +			goto out;
> +		}
> +
> +		dp->hpd_bridge_valid = true;
> +		dp->hpd_bridge_list[count].bridge = bridge;
> +		dp->hpd_bridge_list[count].parent = dp;
> +		dp->hpd_bridge_list[count].id = count;

This looks misnamed. They are not necessarily HPD bridges. There can be
a random chain between your controller and the actual output / connector
/etc.

> +		count++;
> +	}
> +
> +out:
> +	dp->bridge_count = count ? count : 1;
> +	return ret;
> +}
> +
> +static int cdn_dp_bind(struct device *dev, struct device *master, void *data)
> +{
> +	struct cdn_dp_device *dp = dev_get_drvdata(dev);
> +	struct drm_bridge *bridge, *hpd_bridge;
> +	struct drm_encoder *encoder;
> +	struct cdn_dp_port *port;
> +	struct drm_device *drm_dev = data;
> +	struct cdn_dp_bridge *bridge_list;

Why is it bridge_list?

> +	int ret, i;
> +
> +	ret = cdn_dp_parse_dt(dp);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = cdn_dp_parse_hpd_bridge_dt(dp);
> +	if (ret)
> +		return ret;
> +
> +	dp->drm_dev = drm_dev;
> +	dp->connected = false;
> +	dp->active = false;
> +	dp->active_port = -1;
> +	dp->fw_loaded = false;
> +
> +	for (i = 0; i < dp->bridge_count; i++) {
> +		bridge_list = devm_drm_bridge_alloc(dev, struct cdn_dp_bridge, bridge,
> +						    &cdn_dp_bridge_funcs);
> +		if (IS_ERR(bridge_list))
> +			return PTR_ERR(bridge_list);
> +		bridge_list->id = i;
> +		bridge_list->parent = dp;
> +		if (!dp->hpd_bridge_valid)
> +			bridge_list->connected = true;
> +		dp->bridge_list[i] = bridge_list;
> +	}
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
