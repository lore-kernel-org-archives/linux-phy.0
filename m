Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46B98CAC587
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 06:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7037/mSqDzof38da+K/NIuZhSjiiy5oESKD4h9/KGhI=; b=iVkCKM170gyUkf
	Hb75Q3/L9Cy4Qu1qVmMXIxtZNm5bo9J3pjyKLQu5QtwLD2aycm05TNtLcuXrUc4oxx0DQO7D1FSA+
	2SryYxJ0W6agXBIV36OWpYy0epQwcwSV0pMjIzZBF0cZqjME0m+L8kKyZzz8aSGlgTRGHTB4yHb/A
	vkMMh8NBlpQJXF1q1GDqQH83kZDIoqjCGjs8x3PNCESwIXPI9mZr40vkaH2VyuLHACkDLy46G0773
	0Dk0Idk/ZYFQC1xEv5eaO8DuzsOs7OPyQ++yIyn5snc1M/hmt81q/L+alhWcflrO0fG8z+5inmw2M
	1Ibz79EnhwSMK8TwfnHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvsC8-00000004pw0-23Sy;
	Tue, 09 Sep 2025 06:51:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvjM0-00000002Rta-3BC4
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 21:24:49 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 588GBuP2004401
	for <linux-phy@lists.infradead.org>; Mon, 8 Sep 2025 21:24:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ho1b7eZtsIeWGcXrm1h2k9Iv
	wHibecXwGDuG/9qhAHQ=; b=Tc5b5iExEKbkAuWZ4q8AdY9qYBS1FP/drxF0UoVD
	H6fwJOkLBnR3yuUNgZecFdht/kpP35P6hQniI0vI9pmhsmv3WKo2d9qioVDj8TMd
	yclT+HuM6eIaTGXQx/dFAm/mYs7yLLer0eSY57cuA0nWUicGExDtr04LH7ym3WRe
	IJgz5dMhU1Fx1sY3HsLp3+yMbMuf2IyLbqm1E1TXv89TjP+Gy9hlsmTsBt+VsavQ
	kglAfOjQhpISYs2ucWXpXdvKNcAiQ3IUOVdJLlFVFColP0ZI9B+yMQJwH+ttvqr9
	lKSppt5vktUojfp+Z9Ymiqqv3lf214AE4PE+6lbiXNySNA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490c9j63qj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 21:24:47 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b6090aeaacso48732551cf.3
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 14:24:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757366687; x=1757971487;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ho1b7eZtsIeWGcXrm1h2k9IvwHibecXwGDuG/9qhAHQ=;
        b=svkIqmTGCXKw5duh7L8FApotTkeTRsasqLif3GbLAsbZZv6tnmYVSSO+LDZP+AS9GN
         Q/KD/zozaQNuQWTLjBMgtQsoAEerYR/3hZM6vUm5HJ6Cu5Z7HJqcbVK8DWYXXroz5+U9
         nq93flKXxkklQ97AqwEYUr/fqHVmhyQMqfP4Z9btr9x1cJXsgUkD4zF9/Nt6i3FojgOc
         IkLU1FxVxEyxsVKpcJH0hwCumda/Sjf/znrtOWnPcl48zp86FtktgXzdzxQMZRC1ONbw
         FKOh3PI9uEsCNGNqgUt4XK64au02RCwqak1Is2LoQqOKs8n+jiTwyrXcPe+pZijqG17z
         afFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVq2kkX3f5g7I7owwwiI3kR+l47sBUA3U/25qH7bsD1XTBHctmkpyDuczXlw/INojTSaBEnjod5zZ8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyy6YO2NkfmE7trWdM4dm+Tn+QsWrsYCYRh3Qw9o+5nQjNs1g54
	6aCPrGIA768hNe+3fD22cZkVFLAOlzipgJRU+APp0VA67qqsdIsBKmngh/klmYMw7xOWhcbtPSL
	iRJb9j1WotlutGHBsP/ubrOvLT/7IUPcHByH/sc4sFs38UQxhp5pfnvU9IQeh2+l/qW9h
X-Gm-Gg: ASbGncuQtgBCdmde8F/Mqlrr4cJy1QSgu2soMNwsJAWrDnYVamHZKP9xaLyNlygcOeY
	DGCPIcx0Edn3rUu2dWyMs7dGW8ddXbuiEqri2Tq1LbgmA1EWx+k6pjSqmLeGUbbiqa3nhb0g+CH
	i8OMLFHOedXQRHclitbs3i0GugKqrpx9ZY4SO4JD/I6SrDe6T1CDzdjPwLr98N39gOz29osEQvs
	LnsT8sjV8+1593aCrLn4CfG/v+r4dTB7u1WOFepYVYmbyyGFVnyBuNxL1a2jHG/LhGaEwmZpi8U
	Fw1ddtM9q2m8AmJ6mJRYGv4KcD3GZaFyjuE7fITrp3Oexdh5m2hUlEiRiMRviv8S4e7Uv2gSR4K
	GXvBEcoo0Db/nkLLeJ8fLOsWL8zJR4IuI1ug0C/xU0zjAQtAhAFMv
X-Received: by 2002:a05:622a:4c83:b0:4b6:1abb:79f5 with SMTP id d75a77b69052e-4b61abb7a44mr7385041cf.28.1757366686695;
        Mon, 08 Sep 2025 14:24:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9mHK3xIysct+OJsOitEaI0FFJVfD8DwRlzV1DglA6ed+m8l9nen/ZfTvHn0M3YqIVLtYHdw==
X-Received: by 2002:a05:622a:4c83:b0:4b6:1abb:79f5 with SMTP id d75a77b69052e-4b61abb7a44mr7384521cf.28.1757366686023;
        Mon, 08 Sep 2025 14:24:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5680c424fc9sm36306e87.9.2025.09.08.14.24.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 14:24:45 -0700 (PDT)
Date: Tue, 9 Sep 2025 00:24:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 4/5] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
Message-ID: <dfhvmeo3pnjubgiwvakpzhzgl6uwlopyrkwuqyhfqw6jfh4mty@t4lhuh4jh6af>
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
 <20250908-topic-x1e80100-hdmi-v3-4-c53b0f2bc2fb@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250908-topic-x1e80100-hdmi-v3-4-c53b0f2bc2fb@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyMiBTYWx0ZWRfX8HC1kj/N9IZw
 Xd07ISjzoWL7t3hDidOX3DkJi4QNk+/aHFqOtiL7sr/TY6q/Lr71SIn0ur5Clz8QDAGq4Xi/+22
 7/6D8g8cLQYfq37EfpMvJZZo2FkKzlYMxMCstlM4EZ8qzC53CJ1CJDj4m07u5kPhD+w+zTq076R
 6ubUvukp0ehV/hr1txYaAjSoYjuXEYdSxUNIi+J5YkVbU+gkwQO0Q/1rYvwxPOFFO9MiWm6YFe7
 Ey5chHdglJo0GkLp9JbJDz04aX3858nirdADXaW/G3T9a4jrH/GFtJP9iTmK75oooU19vAukBAg
 hFtGDJelNCu/9w5k2N/K2a1STGYp9zT1FX6d6p/JcdOKu3FS6nU2BXwkHQPTW9/5L6w0eZ6vMQ7
 uGakt47v
X-Proofpoint-ORIG-GUID: 76skUqUH3brf_g5di6ffz7zoJmQjZXys
X-Authority-Analysis: v=2.4 cv=PpOTbxM3 c=1 sm=1 tr=0 ts=68bf499f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=V-D1fa0CeKMiCSXBIY0A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 76skUqUH3brf_g5di6ffz7zoJmQjZXys
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_142448_940166_12BD85EE 
X-CRM114-Status: GOOD (  36.91  )
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

On Mon, Sep 08, 2025 at 03:04:21PM +0200, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> Get the lanes mapping from DT and stop registering the USB-C
> muxes in favor of a static mode and orientation detemined
> by the lanes mapping.
> 
> This allows supporting boards with direct connection of USB3 and
> DisplayPort lanes to the QMP Combo PHY lanes, not using the
> USB-C Altmode feature.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 132 ++++++++++++++++++++++++++++--
>  1 file changed, 124 insertions(+), 8 deletions(-)

Looking at the patch... Would it be possible to make it more generic? I
think some of the RockChips also have similar combo USB+DP PHY (and
similar issues). I believe, Mediatek might also have the same issue.

> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 7b5af30f1d028c592500e723ecd27b54ed554709..f3f91a69dc8b81e049cd06f7ab4f04baf57776cd 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -13,6 +13,7 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_address.h>
> +#include <linux/of_graph.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
>  #include <linux/regulator/consumer.h>
> @@ -1744,6 +1745,21 @@ static const u8 qmp_dp_v6_pre_emphasis_hbr_rbr[4][4] = {
>  	{ 0x22, 0xff, 0xff, 0xff }
>  };
>  
> +static const u32 usb3_data_lane_mapping[][2] = {
> +	[TYPEC_ORIENTATION_NORMAL] = { 1, 0 },
> +	[TYPEC_ORIENTATION_REVERSE] = { 2, 3 },
> +};
> +
> +static const u32 dp_2_data_lanes_mapping[][2] = {
> +	[TYPEC_ORIENTATION_NORMAL] = { 0, 1 },
> +	[TYPEC_ORIENTATION_REVERSE] = { 3, 2 },
> +};
> +
> +static const u32 dp_4_data_lanes_mapping[][4] = {
> +	[TYPEC_ORIENTATION_NORMAL] = { 0, 1, 2, 3 },
> +	[TYPEC_ORIENTATION_REVERSE] = { 3, 2, 1, 0 },
> +};
> +
>  struct qmp_combo;
>  
>  struct qmp_combo_offsets {
> @@ -4167,9 +4183,114 @@ static int qmp_combo_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_node_put;
>  
> -	ret = qmp_combo_typec_register(qmp);
> -	if (ret)
> -		goto err_node_put;
> +	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
> +
> +	if (of_find_property(dev->of_node, "mode-switch", NULL) ||
> +	    of_find_property(dev->of_node, "orientation-switch", NULL)) {
> +		ret = qmp_combo_typec_register(qmp);
> +		if (ret)
> +			goto err_node_put;
> +	} else {

At least this needs to be extracted to a function (or set of functions).

> +		enum typec_orientation usb3_orientation = TYPEC_ORIENTATION_NONE;
> +		enum typec_orientation dp_orientation = TYPEC_ORIENTATION_NONE;
> +		struct device_node *usb3_ep, *dp_ep;
> +		u32 data_lanes[4];
> +		int count, i;
> +
> +		usb3_ep = of_graph_get_endpoint_by_regs(dev->of_node, 0, 0);
> +		dp_ep = of_graph_get_endpoint_by_regs(dev->of_node, 0, 1);
> +
> +		if (usb3_ep) {
> +			ret = of_property_count_u32_elems(usb3_ep, "data-lanes");
> +			if (ret == -EINVAL)
> +				/* Property isn't here, ignore property */

In all thsese error cases we are leaking a ref count on usb3_ep and
dp_ep.

> +				goto usb3_mapping_done;
> +			if (ret < 0)
> +				goto err_node_put;
> +
> +			count = ret;
> +			if (count != 2)
> +				/* Property size is invalid, ignore property */
> +				goto usb3_mapping_done;
> +
> +			ret = of_property_read_u32_array(usb3_ep, "data-lanes", data_lanes, count);
> +			if (ret)
> +				goto err_node_put;
> +
> +			for (i = TYPEC_ORIENTATION_NORMAL; i <= TYPEC_ORIENTATION_REVERSE; i++)
> +				if (!memcmp(data_lanes, usb3_data_lane_mapping[i], sizeof(u32) * 2))
> +					break;
> +
> +			if (i >= TYPEC_ORIENTATION_REVERSE)
> +				/* Property value is invalid, ignore property */
> +				goto usb3_mapping_done;
> +
> +			usb3_orientation = i;
> +		}
> +
> +usb3_mapping_done:
> +		of_node_put(usb3_ep);
> +
> +		if (dp_ep) {
> +			ret = of_property_count_u32_elems(dp_ep, "data-lanes");
> +			if (ret == -EINVAL)
> +				/* Property isn't here, ignore property */
> +				goto dp_mapping_done;
> +			if (ret < 0)
> +				goto err_node_put;
> +
> +			count = ret;
> +			if (count != 2 && count != 4)
> +				/* Property size is invalid, ignore property */
> +				goto dp_mapping_done;
> +
> +			ret = of_property_read_u32_array(dp_ep, "data-lanes", data_lanes, count);
> +
> +			if (ret)
> +				goto err_node_put;
> +
> +			for (i = TYPEC_ORIENTATION_NORMAL; i <= TYPEC_ORIENTATION_REVERSE; i++) {
> +				switch (count) {
> +				case 2:
> +					ret = memcmp(data_lanes, dp_2_data_lanes_mapping[i],
> +						      sizeof(u32) * count);
> +					break;
> +				case 4:
> +					ret = memcmp(data_lanes, dp_4_data_lanes_mapping[i],
> +						     sizeof(u32) * count);
> +					break;
> +				}
> +
> +				if (!ret)
> +					break;
> +			}
> +
> +			if (i >= TYPEC_ORIENTATION_REVERSE)
> +				/* Property value is invalid, ignore property */
> +				goto dp_mapping_done;
> +
> +			dp_orientation = i;
> +		}
> +
> +dp_mapping_done:
> +		of_node_put(dp_ep);
> +
> +		if (dp_orientation == TYPEC_ORIENTATION_NONE &&
> +		    usb3_orientation != TYPEC_ORIENTATION_NONE) {
> +			qmp->qmpphy_mode = QMPPHY_MODE_USB3_ONLY;
> +			qmp->orientation = usb3_orientation;
> +		} else if (usb3_orientation == TYPEC_ORIENTATION_NONE &&
> +			 dp_orientation != TYPEC_ORIENTATION_NONE) {
> +			qmp->qmpphy_mode = QMPPHY_MODE_DP_ONLY;
> +			qmp->orientation = dp_orientation;
> +		} else if (dp_orientation != TYPEC_ORIENTATION_NONE &&
> +			 dp_orientation == usb3_orientation) {
> +			qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
> +			qmp->orientation = dp_orientation;
> +		} else {
> +			dev_warn(dev, "unable to determine orientation & mode from data-lanes");
> +		}
> +	}
>  
>  	ret = drm_aux_bridge_register(dev);
>  	if (ret)
> @@ -4189,11 +4310,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_node_put;
>  
> -	/*
> -	 * The hw default is USB3_ONLY, but USB3+DP mode lets us more easily
> -	 * check both sub-blocks' init tables for blunders at probe time.
> -	 */
> -	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
>  
>  	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
>  	if (IS_ERR(qmp->usb_phy)) {
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
