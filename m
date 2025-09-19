Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF6D8CAC592
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 18:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXQyB1BpzxcBDDLc0ON+nLYbyEpg4oAmZ16RefmK8es=; b=PmP58Rrsc70Ta4
	EtP/L74mvtCx6L+XHK5iVvWq4q997I/6ZWFK5RRaLuKrJiDFhgDHnLEn+zMPk0Ov/t4eKqucDIIdG
	zveR26KE+NZLCZikJQ9APkoJ0U2Ob+7h4m+4RnOEJh/TowsyLiOnBGyQa8CL4XpCy6yFFs1AJQZgz
	AV0J0A/O8wp9LFbrQNybKgkNdaNqm+xtPG1XxQ6A/DVV8nk5lu7955dc2Q6rNWjM5qSum2cAiWHCN
	uRpgv9f2Z6XyrxSwXIMCtog7l4lrux2OQkQIO8P5NzsFrboTsuo9pWvNDjWpMqYDblLKrNJ98SXsc
	HKAaybGvj7hFjnWMN9Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzfxj-00000003mLo-3807;
	Fri, 19 Sep 2025 18:36:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzfxg-00000003mJj-1ge5
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 18:36:01 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JE6GLX018237
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 18:36:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hTmf9magk+DlWQu9tHn8bu4Z
	O0Ceo1+biZ46108Y4Yo=; b=cOTSP/1Si9D8QIE7AZqfda7fhE13dZtI1sZzIZFT
	zYGx41Ank5l8RvlgRoLsqWYTCbYrU3ZgYxixZS+G+qpL8MwRT/9hZEFEc30xNEo7
	Q2X4/XnGTfzqY+ajRCBlrf1/wN8EcUazYFJJBN9/FU+lUTsUX2VL81OqA3wAKcfb
	r4MYeljpxHsumH6XSPoZB0X6Zp86hU9T4+P8RHMwHG+nE67I7USju7p/BdWE89Oy
	JGuxTBlck+IhYwjo8ew7QJICsSmFG46x0BtVzpeqkEqwz/y87QUxDGcWU/r+1bVy
	hDizSpU/ePmsmeX4dHbh4MQEOQDcwqycD2hbIuWpsMexHw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxwkeva-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 18:35:59 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-773e990bda0so45244966d6.3
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 11:35:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758306958; x=1758911758;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hTmf9magk+DlWQu9tHn8bu4ZO0Ceo1+biZ46108Y4Yo=;
        b=kyCVYEcY/LqVaQk6Qzw/U6oeARmSl8zTGehi9/Aiic2C4GVWI6h0Saclt/NsL53QpT
         khvC40YPz7y+alXdvkDiOLXmcSs4YL564+HjrEHQYYSO1QU0jtB2ZnieZ3d6QQcD9kiG
         P+8QhSEmvcmQrL4tTggpxKKwP7mpcSKZfmzKbFJYfqlNap/sMyEtFeb+v7N++CRnfu82
         gN1+hzq+4BqrC3CFZ/Dou1GH0CPO8YwEA1vfFS7ElTtiv7D7SGt38uIhPjcSMRufg2su
         K9nK4GRywdwpbqQdWpaoJ85Um8SxZPf+OmX8OYA4oGXiSjJs3LLQ1GLk7nNW4lvCnKO3
         A8RA==
X-Forwarded-Encrypted: i=1; AJvYcCVMZenJNxlW1VNyNtuDGDLZYf/E9rx4XA2kfoqEsh7YwQdNr9ZSooOZImMLPNw/xYmKLVhKAYqq1Iw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxXmK3OheMVcY5IpzGLEcrJg/LtkwUDadx+pov3eH8v819kECoZ
	HqurO1WQg6JAUNgfiWemKTjjM/x9cMNcTiK+wLteZ82PRYSUUQJIMkwie0OeLcvYec0+WuW3ICM
	ItZpR3FEV/ph1xqZ96R7d49nMBQj1RnlFdIJuK0V6G0bdk0DNz4T5aK88NV1GsnOPQSoe
X-Gm-Gg: ASbGnctMZxzgM0jcLBkqQVZlGxT4wx8oBK3rXhCRl1RVK8v0XeW56u2c3MfEgSaoNqt
	nDPSl1Z+tU3RYA3e3X/rnZtlxsG6wvonanlRbDorqOatdT4k9ctNSJgXfevGnUR7ujpHHRA2Q2Y
	oWtcmbmZM4cPCJvtkdV1GaEeR4f3yLAC8GWJMy4aeYWQH3cLP4SOSR1zW70UnrwCtOAgvs7jPaN
	QgQ0f37Dl6aVSQxLQ8wKPFvxzrdZBLbpL8gegF5DewYML7mJKcG+aZOG4J9Qy0Qx4PbZurgbnK0
	ZeNYsHZVa+I1OimnUc5uqtsZTfvlafyDi8kSw4DNrKDT2yQ7u51BAAutMOuSdKaEsE7044ji8Uw
	u3gJ9wcVrMOMAzMyWr0uNFwxrnoILS9exi7z/qS30MYdgbsbkdzMx
X-Received: by 2002:a05:6214:e6a:b0:794:518e:b176 with SMTP id 6a1803df08f44-799129826ddmr46888776d6.21.1758306958340;
        Fri, 19 Sep 2025 11:35:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOqy99Klf3VfxARITMXbbN0KY4DghVg+miJJ/vqzrCYCaw3nxehJtISCH41+5KegCo/Yw3Jw==
X-Received: by 2002:a05:6214:e6a:b0:794:518e:b176 with SMTP id 6a1803df08f44-799129826ddmr46888316d6.21.1758306957787;
        Fri, 19 Sep 2025 11:35:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57b3528c49dsm84989e87.134.2025.09.19.11.35.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 11:35:56 -0700 (PDT)
Date: Fri, 19 Sep 2025 21:35:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v5 14/14] drm/msm/dp: Add support for lane mapping
 configuration
Message-ID: <j7ooyi5vih6ofnjigdgj6uk3ycutugunpm5pu5zf55pu5ua6r2@agg73zakjicn>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-14-eae6681f4002@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-14-eae6681f4002@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=HbIUTjE8 c=1 sm=1 tr=0 ts=68cda28f cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=QVMBky1v5tPz4CN-K1AA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfXyBrBDKOOaPqZ
 BDo5IW13siOlS+ZR9tzd+RjZ/YyfuakMkkSHJBMnTIM3wGJfmHc4w8WTYyobSa5RtevI8iGNByq
 fnbrvmAxiFstCGZC4Z2zCJelgerj/iiYD0wCb7oNMS0E93tp4AbQPT1Eo4TvWW3ntpHw2ZS4LDc
 SpKW6UdAkecOXTKdQLudDqeZpq6lIJtLQaRMCTylgi62KqPSKG4cwX0pH9ne3WRc/D/dFjjLI/M
 sUwbswRUVPITtoTAHyhyX4LwG8d2D+WnarSCXluO67tcMYhURJWl2S2Fegod758veTOL+Rth+NC
 SN9U095j1CT2A03TpeEwtcO1+wKhBCK4Z3VeSd06gTpPucaIPZ8rHXVuvFVAoFyzz4L2hlevF0R
 BSd7WAKK
X-Proofpoint-GUID: RYlYtUEYMbzYUGSIDyOiYJVmwqiaQi6P
X-Proofpoint-ORIG-GUID: RYlYtUEYMbzYUGSIDyOiYJVmwqiaQi6P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_113600_446575_0468B022 
X-CRM114-Status: GOOD (  27.93  )
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

On Fri, Sep 19, 2025 at 10:24:31PM +0800, Xiangxu Yin wrote:
> QCS615 platform requires non-default logical-to-physical lane mapping due
> to its unique hardware routing. Unlike the standard mapping sequence
> <0 1 2 3>, QCS615 uses <3 2 0 1>, which necessitates explicit
> configuration via the data-lanes property in the device tree. This ensures
> correct signal routing between the DP controller and PHY.
> 
> For partial definitions, fill remaining lanes with unused physical lanes
> in ascending order.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c | 10 +++----
>  drivers/gpu/drm/msm/dp/dp_link.c | 60 ++++++++++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/msm/dp/dp_link.h |  1 +
>  3 files changed, 66 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_link.c b/drivers/gpu/drm/msm/dp/dp_link.c
> index 2aeb3ecf76fab2ee6a9512b785ca5dceebfc3964..34a91e194a124ef5372f13352f7b3513aa88da2a 100644
> --- a/drivers/gpu/drm/msm/dp/dp_link.c
> +++ b/drivers/gpu/drm/msm/dp/dp_link.c
> @@ -1236,6 +1236,61 @@ static u32 msm_dp_link_link_frequencies(struct device_node *of_node)
>  	return frequency;
>  }
>  
> +/*
> + * Always populate msm_dp_link->lane_map with 4 lanes.
> + * - Use DTS "data-lanes" if present; otherwise fall back to default mapping.
> + * - For partial definitions, fill remaining entries with unused lanes in
> + *   ascending order.
> + */
> +static int msm_dp_link_lane_map(struct device *dev, struct msm_dp_link *msm_dp_link)
> +{
> +	struct device_node *of_node = dev->of_node;
> +	struct device_node *endpoint;
> +	int cnt = msm_dp_link->max_dp_lanes;
> +	u32 tmp[DP_MAX_NUM_DP_LANES];
> +	u32 map[DP_MAX_NUM_DP_LANES] = {0, 1, 2, 3}; /* default 1:1 mapping */
> +	bool used[DP_MAX_NUM_DP_LANES] = {false};
> +	int i, j = 0, ret = -EINVAL;
> +
> +	endpoint = of_graph_get_endpoint_by_regs(of_node, 1, -1);
> +	if (endpoint) {
> +		ret = of_property_read_u32_array(endpoint, "data-lanes", tmp, cnt);
> +		if (ret)
> +			dev_dbg(dev, "endpoint data-lanes read failed (ret=%d)\n", ret);
> +	}
> +
> +	if (ret) {
> +		ret = of_property_read_u32_array(of_node, "data-lanes", tmp, cnt);
> +		if (ret) {
> +			dev_info(dev, "data-lanes not defined, set to default\n");
> +			goto out;
> +		}
> +	}
> +
> +	for (i = 0; i < cnt; i++) {
> +		if (tmp[i] >= DP_MAX_NUM_DP_LANES) {
> +			dev_err(dev, "data-lanes[%d]=%u out of range\n", i, tmp[i]);
> +			return -EINVAL;
> +		}
> +		used[tmp[i]] = true;
> +		map[i] = tmp[i];
> +	}
> +
> +	/* Fill the remaining entries with unused physical lanes (ascending) */
> +	for (i = cnt; i < DP_MAX_NUM_DP_LANES && j < DP_MAX_NUM_DP_LANES; j++) {

Nit: i = cnt, j = 0; Don't init loop variables at the top of the
function.

Other than that:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


> +		if (!used[j])
> +			map[i++] = j;
> +	}
> +
> +out:
> +	if (endpoint)
> +		of_node_put(endpoint);
> +
> +	dev_dbg(dev, "data-lanes count %d <%d %d %d %d>\n", cnt, map[0], map[1], map[2], map[3]);
> +	memcpy(msm_dp_link->lane_map, map, sizeof(map));
> +	return 0;
> +}
> +
>  static int msm_dp_link_parse_dt(struct device *dev, struct msm_dp_link *msm_dp_link)
>  {
>  	struct device_node *of_node = dev->of_node;

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
