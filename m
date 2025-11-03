Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22631CCF9F8
	for <linux-phy@archiver.kernel.org>; Mon,  3 Nov 2025 04:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkvTScvlnZlr4ODjBd1ied+HLkUzYtfJ7PpS4yvPuQI=; b=a54BD6hnng2fTa
	ShUM6EJ39Mv9TLyj4O7ODRsl4lSQAl9DxmgKch2K9vudtffR+9adGCH6Ie68Tet6H0uwyD6i9vunm
	+aorF9jf+nsYe9Zq82XV1jkLI9NhFTz+95lyHVybActRRnZ83RANzdF+pQX4zJV6hFMRsL6OXlWgN
	i5qNe9d3O66eyk0cze5rkG4fmxqgKswsV0oCXvZVgG0Ij7zVyJ8VkBKAeqWl9KInkc3Tmb091M3l8
	TKwZEoM5yBzgntuvdIYLufZcIVPvp6zGf0L8hwYQc+XbqEIhEN3rVPwSTDC1tbJDYXLngqmyTJRGS
	Ti70VBkuzFZNS9EwR6pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFlkm-00000009ABl-3iQY;
	Mon, 03 Nov 2025 04:01:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFlkd-00000009A8f-0JtJ
	for linux-phy@lists.infradead.org;
	Mon, 03 Nov 2025 04:01:11 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A2Lb28m1195699
	for <linux-phy@lists.infradead.org>; Mon, 3 Nov 2025 04:01:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BqZVWtvZB01lHMDhWvhuziwX
	8RpB8DpNtZTndZIHXgg=; b=OtM8VIIu6EV3q/gqLC//i4PeKqEI+2AfaAF8ucL3
	S66Amy+FETzxX+5JJll3ntgww8612f4zgviKNMywRr7jJU+4qRSIcI6N4OIU2m1b
	zrxujBLtb8L5V7+I3Es8WP/bLNViZsE9LvMnO0E8RtkH4DuzwekgqUJ4BdVohf45
	qYy54hUio7x+YtsvAMk5G6hLved7G9UORlagsuhq4X77FZ5VfMh0IIFQaNfMAY3R
	eEFVJLAVkOXsCXIRXOB1TzZCT2Yu95JMOiAa1Pxwr/XS6/cIFz4RZJM6xvn8n9zt
	+YWXUTeGOynuPD8POgLOThRtnoUrESjo9Jf4i6oHsWRd7A==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5bg9k4u2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Nov 2025 04:01:02 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4eba930d6ecso121124801cf.3
        for <linux-phy@lists.infradead.org>; Sun, 02 Nov 2025 20:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762142461; x=1762747261; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BqZVWtvZB01lHMDhWvhuziwX8RpB8DpNtZTndZIHXgg=;
        b=H/WLsOLzV17IuS6O1aPw6CQdKnPQYB8o8hpJeTd1gBVZx5nbY6jpscbZLzC7tHba6I
         LvMeRuwe+53vDNeBI30e5OSq9IzeNop9KM+qttXYAsGcDQs0D3Y/H+BS+HGpGISDzExh
         eBHY0Ywv/LZCeK+Ljnp5BnvSY3bk5c/TMOJoAz0LrggOZoqt6psOvfDGZ2iD9wWvxGSq
         a4aZVDEOT0byKHmB9G5ygUkn8bEDhoF8cysTOKBf/vUFudm42buAwaB2fy4sW/rcrbRD
         sjeee9nfNQ74QErYJbkuBWqEEAFDN4RJUZJlMiSkrOSzqNiBwqtLMWcm7iEHM7iv7H9l
         ScTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762142461; x=1762747261;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BqZVWtvZB01lHMDhWvhuziwX8RpB8DpNtZTndZIHXgg=;
        b=hD2qVhksOzyaNIu82hyY9RuyxXW5K5CXVkxYCvzgQOXXHGyf+xXLHeOo4bsCuElpgD
         zSv4cEZyFn4KkheL5UW7zgpB4Y87wJ19fKSUpytVoMVUx0pxDkh2xI8uq+t2fCAV93jn
         qPRqex0aIuD4/ScS1+O7gv9ijfJlLHDm8oM8paCsDfFeLcemWlz6HcU/aIl0vjAf7ga2
         arkfo6SsF4I+KewZ4AQn17WmeXeDx8ECDyFTj0eMaFtZSLs3upuqqBfDpcQ2tspasGmj
         /7kmYVtZDMJvnVfRW26L8vi3i0k2Skx4v9DFlo6j+WpSBwEW79p7yjDBdU7yqAepkjn7
         yldQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTuWrzhVOoz0OLA5p35xZZY5duq7xahQOit0OZ1AUsFqb/VkJ69qKFYiXgXJ2QihTKcE/hJqR9FSs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwOAP+oXDuHzXCulcCCYLlpPlAcU2S4ajQcII9Em2GNtGTc8+EQ
	XwtgDQo8fMKLIbsYf3pEMUYqaBEQG2+GNHbtiAOoF6XHf20DV9e6Ou+Ib8D3o7eNdh9TMHBQ/ZR
	MJOprzfltciWjORb3Er+YY11eJ9cjK1WQSaohsXlQ2haH8zMCRZP35uAJnhjn1Yxk39nz
X-Gm-Gg: ASbGncsovhNAM989BO/9cG4vb4eJgzwRmvoxCxIxF08RjhvmlHt6t82NTPEpK1KYBLK
	pSX2EOSgGb2RBAb2c2gAB448nmJm83NDNOksafu/GFMEIITJmanUK1aH+PBl6Q1L37t5KqjwaMk
	nCgDIqMaERkLEhuFl0327WlUAu10ctMvuJOJFVICTkD+m/gkZVy6C1O/TF4qacCASSXhziOVSEz
	oVAd2FtthHT5AwySkz5Rf4iZ+r0Ptk1ssjOiPAK48YPAs6MAoNbme1apk1aLMQZ3n843hGOsH+d
	53uaKBEHPE0rtc7ifyLeiLydIEOMRt65EDt/Wd733o9pohjOeqOw7d6KWP4l3yrJ/JCgP0Ljh9/
	LqK4ReBhh69BnDbsVVnrL0b62Wx6Rxm9epDclacYtlQOZkfm2+Tyz14W2EM5nwhZK2frAqRhRAK
	DGk6FzSGRx/HHa
X-Received: by 2002:a05:622a:986:b0:4e7:2844:b5ba with SMTP id d75a77b69052e-4ed30df358amr162631881cf.27.1762142461135;
        Sun, 02 Nov 2025 20:01:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFgslzu3J94CkQXnMCfCenunuSO8sFC/hoLWJyhjIPrs3wspZRnHXndVjUUPy44N7dZHlcIHA==
X-Received: by 2002:a05:622a:986:b0:4e7:2844:b5ba with SMTP id d75a77b69052e-4ed30df358amr162631081cf.27.1762142460117;
        Sun, 02 Nov 2025 20:01:00 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37a1c0baabcsm20998571fa.43.2025.11.02.20.00.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 20:00:59 -0800 (PST)
Date: Mon, 3 Nov 2025 06:00:57 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v8 03/10] drm/bridge: Implement generic USB Type-C DP HPD
 bridge
Message-ID: <rzozpbqmymdczerh3iijxxtz3xnsznoku7w2mquikwv6u5osvo@7h43hwc2fpzm>
References: <20251029071435.88-1-kernel@airkyi.com>
 <20251029071435.88-4-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251029071435.88-4-kernel@airkyi.com>
X-Proofpoint-ORIG-GUID: dBSDQfmO78gs_VtsqnCtmE7iZmekzad7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDAzNCBTYWx0ZWRfXzXvSZ6SEqGce
 /tEoY7gmB8cI3l7mcUGU4gzuhkbwzdoKkrNdYTZcAoXG3XPz/K4VoXaLQwAPKdXl4AsZXgQs6KZ
 Z9m+gERAgGRpmgm3Owccbkej4rhh+zx3tXbZJC89wiAzlXljaTInBDPGZFLgF1sLJTJTTfOfhQu
 emF/kNG010rzPxeRRRDCUABg9LmvYj5zXRFjD4Vnv7RGvkjX/p9pTUdLBv1F7PDxaDfogmrRbL3
 +sbIQm4Pc7ruvSLGn5WBAnck8jPzpD0+2BEGmcgVqGm4CouP4IIukASZuwiyb9cw5Lf9qCRf2vP
 en+zGExOlh1pQWa6s/qdm5pwFbHkHrYjLhqKn6IJxkjpHX9oSGZfPx/sEijQK+KE/Xvd1ogoWCI
 CoWiujU1/kdK0PwFpuyT87unQpAcxA==
X-Proofpoint-GUID: dBSDQfmO78gs_VtsqnCtmE7iZmekzad7
X-Authority-Analysis: v=2.4 cv=TaKbdBQh c=1 sm=1 tr=0 ts=690828fe cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=s8YR1HE3AAAA:8 a=KKAkSRfTAAAA:8 a=GMWCpaOuOXG1PATvt-oA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=jGH_LyMDp9YhSvY-UuyI:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511030034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251102_200103_127653_090ECAD4 
X-CRM114-Status: GOOD (  35.60  )
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

On Wed, Oct 29, 2025 at 03:14:28PM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Several USB-C controller drivers have already implemented the DP HPD
> bridge function provided by aux-hpd-bridge.c, but there are still
> some USB-C controller driver that have not yet implemented it.
> 
> This patch implements a generic DP HPD bridge based on aux-hpd-bridge.c,
> so that other USB-C controller drivers don't need to implement it again.

This doesn't describe the problem that you are trying to solve.

> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v8:
> - Merge generic DP HPD bridge into one module.
> 
>  drivers/gpu/drm/bridge/Kconfig                |  5 +-
>  drivers/gpu/drm/bridge/Makefile               |  8 +++-
>  drivers/gpu/drm/bridge/aux-hpd-bridge.c       | 23 ++++++++-
>  drivers/gpu/drm/bridge/aux-hpd-bridge.h       | 13 +++++
>  .../gpu/drm/bridge/aux-hpd-typec-dp-bridge.c  | 47 +++++++++++++++++++
>  5 files changed, 93 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/gpu/drm/bridge/aux-hpd-bridge.h
>  create mode 100644 drivers/gpu/drm/bridge/aux-hpd-typec-dp-bridge.c
> 
> diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
> index a250afd8d662..17257b223a28 100644
> --- a/drivers/gpu/drm/bridge/Kconfig
> +++ b/drivers/gpu/drm/bridge/Kconfig
> @@ -23,13 +23,16 @@ config DRM_AUX_BRIDGE
>  	  build bridges chain.
>  
>  config DRM_AUX_HPD_BRIDGE
> -	tristate
> +	tristate "AUX HPD bridge support"

Why? No, this is supposed to be selected by other drivers. Users don't
know an wouldn't know what is this.

>  	depends on DRM_BRIDGE && OF
>  	select AUXILIARY_BUS
>  	help
>  	  Simple bridge that terminates the bridge chain and provides HPD
>  	  support.
>  
> +	  Specifically, if you want a default Type-C DisplayPort HPD bridge for
> +	  each port of the Type-C controller, say Y here.
> +
>  menu "Display Interface Bridges"
>  	depends on DRM && DRM_BRIDGE
>  
> diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
> index c7dc03182e59..2998937444bc 100644
> --- a/drivers/gpu/drm/bridge/Makefile
> +++ b/drivers/gpu/drm/bridge/Makefile
> @@ -1,6 +1,12 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-$(CONFIG_DRM_AUX_BRIDGE) += aux-bridge.o
> -obj-$(CONFIG_DRM_AUX_HPD_BRIDGE) += aux-hpd-bridge.o
> +
> +hpd-bridge-y := aux-hpd-bridge.o
> +ifneq ($(CONFIG_TYPEC),)
> +hpd-bridge-y += aux-hpd-typec-dp-bridge.o
> +endif
> +obj-$(CONFIG_DRM_AUX_HPD_BRIDGE) += hpd-bridge.o
> +
>  obj-$(CONFIG_DRM_CHIPONE_ICN6211) += chipone-icn6211.o
>  obj-$(CONFIG_DRM_CHRONTEL_CH7033) += chrontel-ch7033.o
>  obj-$(CONFIG_DRM_CROS_EC_ANX7688) += cros-ec-anx7688.o
> diff --git a/drivers/gpu/drm/bridge/aux-hpd-bridge.c b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
> index 2e9c702c7087..11ad6dc776c7 100644
> --- a/drivers/gpu/drm/bridge/aux-hpd-bridge.c
> +++ b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
> @@ -12,6 +12,8 @@
>  #include <drm/drm_bridge.h>
>  #include <drm/bridge/aux-bridge.h>
>  
> +#include "aux-hpd-bridge.h"
> +
>  static DEFINE_IDA(drm_aux_hpd_bridge_ida);
>  
>  struct drm_aux_hpd_bridge_data {
> @@ -204,7 +206,26 @@ static struct auxiliary_driver drm_aux_hpd_bridge_drv = {
>  	.id_table = drm_aux_hpd_bridge_table,
>  	.probe = drm_aux_hpd_bridge_probe,
>  };
> -module_auxiliary_driver(drm_aux_hpd_bridge_drv);
> +
> +static int drm_aux_hpd_bridge_mod_init(void)
> +{
> +	int ret;
> +
> +	ret = auxiliary_driver_register(&drm_aux_hpd_bridge_drv);
> +	if (ret)
> +		return ret;
> +
> +	return drm_aux_hpd_typec_dp_bridge_init();
> +}
> +
> +static void drm_aux_hpd_bridge_mod_exit(void)
> +{
> +	drm_aux_hpd_typec_dp_bridge_exit();
> +	auxiliary_driver_unregister(&drm_aux_hpd_bridge_drv);
> +}
> +
> +module_init(drm_aux_hpd_bridge_mod_init);
> +module_exit(drm_aux_hpd_bridge_mod_exit);
>  
>  MODULE_AUTHOR("Dmitry Baryshkov <dmitry.baryshkov@linaro.org>");
>  MODULE_DESCRIPTION("DRM HPD bridge");
> diff --git a/drivers/gpu/drm/bridge/aux-hpd-bridge.h b/drivers/gpu/drm/bridge/aux-hpd-bridge.h
> new file mode 100644
> index 000000000000..69364731c2f1
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/aux-hpd-bridge.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +#ifndef AUX_HPD_BRIDGE_H
> +#define AUX_HPD_BRIDGE_H
> +
> +#if IS_REACHABLE(CONFIG_TYPEC)
> +int drm_aux_hpd_typec_dp_bridge_init(void);
> +void drm_aux_hpd_typec_dp_bridge_exit(void);
> +#else
> +static inline int drm_aux_hpd_typec_dp_bridge_init(void) { return 0; }
> +static inline void drm_aux_hpd_typec_dp_bridge_exit(void) { }
> +#endif /* IS_REACHABLE(CONFIG_TYPEC) */
> +
> +#endif /* AUX_HPD_BRIDGE_H */
> diff --git a/drivers/gpu/drm/bridge/aux-hpd-typec-dp-bridge.c b/drivers/gpu/drm/bridge/aux-hpd-typec-dp-bridge.c
> new file mode 100644
> index 000000000000..6f2a1fca0fc5
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/aux-hpd-typec-dp-bridge.c
> @@ -0,0 +1,47 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +#include <linux/of.h>
> +#include <linux/usb/typec_altmode.h>
> +#include <linux/usb/typec_dp.h>
> +#include <linux/usb/typec_notify.h>
> +
> +#include <drm/bridge/aux-bridge.h>
> +
> +#include "aux-hpd-bridge.h"
> +
> +#if IS_REACHABLE(CONFIG_TYPEC)
> +static int drm_typec_bus_event(struct notifier_block *nb,
> +			       unsigned long action, void *data)
> +{

This feels like this should be a part of the Type-C subsystem rather
than DRM.

> +	struct typec_altmode *alt = (struct typec_altmode *)data;
> +
> +	if (action != TYPEC_ALTMODE_REGISTERED)
> +		goto done;
> +
> +	if (is_typec_partner(&alt->dev) || alt->svid != USB_TYPEC_DP_SID)
> +		goto done;
> +
> +	/*
> +	 * alt->dev.parent->parent : USB-C controller device
> +	 * alt->dev.parent         : USB-C connector device
> +	 */
> +	drm_dp_hpd_bridge_register(alt->dev.parent->parent,
> +				   to_of_node(alt->dev.parent->fwnode));
> +
> +done:
> +	return NOTIFY_OK;
> +}
> +
> +static struct notifier_block drm_typec_event_nb = {
> +	.notifier_call = drm_typec_bus_event,
> +};
> +
> +int drm_aux_hpd_typec_dp_bridge_init(void)
> +{
> +	return typec_altmode_register_notify(&drm_typec_event_nb);
> +}
> +
> +void drm_aux_hpd_typec_dp_bridge_exit(void)
> +{
> +	typec_altmode_unregister_notify(&drm_typec_event_nb);
> +}
> +#endif
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
