Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 010E4C88E64
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 00:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WD5hrb6jvX7BGmm6Z1qpQbFv0+bBeYFp4L8byozTDYo=; b=tDKAyJlDRmpsRg
	XoE0XtvnKUHegFM5Z3cwYEhC5V845l00JoVEQlvTjYgSwS4iBndUnSIryziMwkFMdLFqDevLayB0y
	SLgImR9QSpSwfrNCYvulK6qFOv4ZxlppeWU7d1t5x7qsWOUmaBYn8pDVAnxE/avCTOT/jK1PlNOai
	/ru/lfxyCzJNi2UCFE+NIg2yWVBpKkxtEQcxJYhAxOQv8aGgfRPeREYspz2Y2EhlBbET9vCep4Of1
	iOUuGW3R5l9mo4d9fjA+dZt6ID+CE9K3yT5qL2s6zspiJFiIJ1hZFKwDPk+aDk+JwEF6F8BRW2iQj
	grbmlYmNwyrSRFhmWf9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5uCi-000000027BS-1lxm;
	Mon, 14 Sep 2026 00:05:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5uCg-000000027B7-0ON4
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 00:05:47 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DNYv142421820
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 00:05:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RFfMXnGd4KZ9ZeGQQ7T1vM3J
	mMfNVsWmNXWnKZ/EyFU=; b=RjGLO2iR56z9k1Wyb9BNCcvkFLnw4qHtmwKfIZrw
	EJPCVhCVz0aqhlq8ZAM+gQ+r4Gkv/Ax3LAQEtsX7BWlvFf2mfJWoLzZPhJkGDzaN
	amIa1e9Fi6bSk9GtCtbXOFw+x+fY/3vZlkbn0a4HxBuIurQ9PGeIFY//5nCVAfOr
	xfTfEENE4Pt7V9JDNKMdvO4BqcgiCNgU1pChHNsNCJ6tFNKarLOmrIT6Tb20nChr
	NFzzWvvVKTvNrBbVh/M/MVESsiK9LVH0/iHNFRXv7V3LJ53FVT3rbKqqXJBg7lZI
	iGHb+POvy59JDGsRxhKi1wYqmQW0Y7y/josD5L1Bhr/mVw==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmy9ccc45-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 00:05:44 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-97caca2faacso315930241.2
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 17:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789344344; x=1789949144; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=RFfMXnGd4KZ9ZeGQQ7T1vM3JmMfNVsWmNXWnKZ/EyFU=;
        b=GtghsOLRtCsLEsNOguFTui0Kv6GdcLXPoB5l6RA3YaQ5Ckjsjnb33KXl7dhG8hlLnK
         lJPJwfILMxyJ0j3rzurVK+nc7kfUvEyl6lPrHIWes8Ir+yO+DzG781BtX0QF7ZfwY+3i
         Gsz7vXgHjDdkKznszuXkpiAdATtGIlYvKxCpeF5vRGvjmkBoqo92k+qdsNpTRStPaDRi
         /RBbxU0huZzvCOrssYU0L/qhbD7UZOSKVF3HyH2NYuB9Ch1so3wy996yS57i/TDtF8ME
         8V5KwTtcZNPP3tu0OtwUZzJ5YhhKqBFg+5oRB/qLrSEu8Y6j6YltLhonWCfC3F1/jRCC
         2N7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789344344; x=1789949144;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RFfMXnGd4KZ9ZeGQQ7T1vM3JmMfNVsWmNXWnKZ/EyFU=;
        b=EPnlRVeoJEXPlDIY0bREEstPGuWyyC/SOEJUlxyY5bS2cIm6mTB+BHHSdUmH67P6dC
         MhjyFKOq+YPuBzjz5c9dQtd3XsHCyh3JRwBFy4VIyZxehglFR49m8tAp/ieG4N4Oeexm
         cnAGnawxihBDas4co3oULFcbpr2JQvA616I5ahLGef0qLMtnB89phwjEC5ZIucwDekhP
         ABUBYWCCH4cSuRnMq5vIR/GbKW1NSJ5RFSNbukoXtzNu/jYl/1cqzIpOUNvq1qStY+D9
         qN4wIld4YWMIKE0zvvvOYDSf+OkXjGkURd3eGpnNJuQnj2FvOE2PTkMRCT9vsZAWfXQY
         Jpvw==
X-Forwarded-Encrypted: i=1; AKwUvBy9oIWxLFZk3BJnJ5ke7K2iKFh9XnACcDrzS9jUhVPViJeBcECZt4ituf7KqayQRTr2Fj1Q7MQxRBU=@lists.infradead.org
X-Gm-Message-State: AFuF++nSTE9SM1tpun818vox98JwMf6lfIWsFgPyN6fmQ08BZVTziXU7
	pmIcJTJif/uBdTsJiEU3tAz6hVqxtUJ6m9acKhHR9Hbml0pOzIiCFA/8ZGB4JrmYFwHLGuOSWpO
	zMLYRh778tsxNkeUj8GelO88uAXGdiiJHKP0JoQ8uf/4fXPw/rAb6LUkpZwJaJ1HTgMOy
X-Gm-Gg: AYBFou0zGodmMdF24eIzGG/vKEkF6GuK6688f/u4NMgCLCZecBNOu3vJMTDEV2XuZ0B
	Wgzfp40EjeHkqKIFlvuaOJDfYykPZhkDw3Luhc/m10+CE4rtxfN6FzOn2csmF9XpPsfBMuIjQjy
	Or2VlhQWllczP7/lYAMx7JKKNiLM3hO4gtLkm5xBPm+YZEIMQbNi1XxmVu1hYSNsfzmKDx+qVEQ
	/U6KGnRUTjc5QSr6gzNkdQpRaNL9NOt7f1MhFPkgat2a6JFSifdGAPEdNzSQB7c0p9kIIMbwuuM
	Q7TDP0T3QK1IbczZWBUJEZJC5uTYhrvt57HDXeERkvxAssF/r72/06Gyq3xwrSsBvaUg8d73VWA
	NUhVm4pqd8oRV/O79asXMiq4cUIZx2ki8QLNJb7d3anExuFnv4v5CxyK04IQUp0hT4rLMEnM2eY
	H91167kbZdyV9F
X-Received: by 2002:a05:6102:162b:b0:797:b4ae:5897 with SMTP id ada2fe7eead31-79b5db96600mr47854137.7.1789344343503;
        Sun, 13 Sep 2026 17:05:43 -0700 (PDT)
X-Received: by 2002:a05:6102:162b:b0:797:b4ae:5897 with SMTP id ada2fe7eead31-79b5db96600mr47836137.7.1789344343016;
        Sun, 13 Sep 2026 17:05:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a5a33263c7sm21536081fa.21.2026.09.13.17.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 17:05:41 -0700 (PDT)
Date: Mon, 14 Sep 2026 03:05:39 +0300
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
Subject: Re: [PATCH 10/17] phy: qcom: edp: Add Nord voltage-swing and
 pre-emphasis tables
Message-ID: <rrkzp7kbest7vmkcgq3g4ewhpskl4sdawtjncvfdgmixi2bjod@faldfme3q4wr>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-10-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-10-e25c073cf1b6@oss.qualcomm.com>
X-Proofpoint-GUID: FEaVOl9VCiTgrw0m9ulHPGPgIkksUK5l
X-Authority-Analysis: v=2.4 cv=Pv4G/AM3 c=1 sm=1 tr=0 ts=6aa73a58 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=WDH15GvG5mASCzW3U0MA:9 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDM0NCBTYWx0ZWRfX6AxknOjb80Cl
 b0P4QaMTWEre4FIYrnzyxkfqqusieEElBpp82Q2/Dv3YLdIM5/WphdJglq/5hIXfuKFW8GGd2QQ
 SAx4iWgmdv8XCEMbdyu5vpzsglq4QLs=
X-Proofpoint-ORIG-GUID: FEaVOl9VCiTgrw0m9ulHPGPgIkksUK5l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDM0NCBTYWx0ZWRfXyFfiA1hXRx8f
 ICbcdHYJKmrlCQZ6+Xhl1Ms3tOIMVXt370kYthjgmiqkdHTcjS/9ruwK7dAFBON8ynad5aFuOQu
 O5hjwJAYv0KUdbpBDkbcvh/mb8XTjjrUwBEaQRdrCGn3q6pTzh9EMsZTIGSkG2UYVBdZEoLofOp
 5UjLMvoIv8yGv/fVxFbFhDu0xbQUFUAiwOFuFfTPBqv4qRZy+X0CXq8kKzryEXGfOLLMpuj9ziV
 +A2Qp3NEKlzzoOanBAJ9/XfFWw/Pbzfei3QPLZFVMeVCwmVQxVEcdBq+BJKCPI+bpx3I8L9Xf19
 DinnglFFDGhcJZ7vp3oUULpgkHrLYYiEMfIq5W4MLxFi1HE40+amecS2Kas7sT0rwGsHEvHXVl8
 5mhdpRGU90g/RQSF0ZQX6sQA2Q9rSpmlFUg3SAaINm/468FLeze9nKWqpgfCCGVrFLlUiwqajOc
 a3XwSyY8yZCSu+noukQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_07,2026-09-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609130344
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_170546_263187_6ED7C5E9 
X-CRM114-Status: GOOD (  20.00  )
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

On Fri, Sep 11, 2026 at 09:06:41PM +0530, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Nord requires different TX voltage-swing and pre-emphasis levels for
> both eDP and DP modes.  Add four pairs of 4x4 tables covering RBR/HBR
> and HBR2/HBR3 for each mode, sourced from HPG Tables 2-2, 2-4, 2-6-a
> and 2-6-b, and wrap them in qcom_edp_swing_pre_emph_cfg descriptors.
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>

How many commits do we have for a Nord? There is no point in splitting
it in 10 different commits.

> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 85 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 85 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index ee0d7f1a90fe..64878398f43c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -1527,6 +1527,91 @@ static const u8 edp_phy_vco_div_cfg_nord[4] = {
>  };
>  
>  
> +/*
> + * nord eDP swing/pre-emphasis tables (eDP mode, low HBR: RBR/HBR).
> + * From HPG Table 2-2: LDO ON 550mV (0x51).
> + * Rates: 1.62/2.16/2.43/2.7 Gbps
> + */
> +static const u8 nord_edp_swing_hbr_rbr[4][4] = {
> +	{ 0x07, 0x0f, 0x16, 0x1f },
> +	{ 0x0d, 0x16, 0x1e, 0xff },
> +	{ 0x11, 0x1b, 0xff, 0xff },
> +	{ 0x16, 0xff, 0xff, 0xff },
> +};

edp_swing_hbr_rbr? Why do you need to duplicate it? Drop the duplicate
tables.

> +
> +static const u8 nord_edp_pre_emp_hbr_rbr[4][4] = {
> +	{ 0x05, 0x11, 0x17, 0x1d },
> +	{ 0x05, 0x11, 0x18, 0xff },
> +	{ 0x06, 0x11, 0xff, 0xff },
> +	{ 0x00, 0xff, 0xff, 0xff },
> +};
> +
> +/*
> + * nord eDP swing/pre-emphasis tables (eDP mode, high HBR: HBR2/HBR3).
> + * From HPG Table 2-4: LDO ON 660mV (0x91).
> + * Rates: 3.24/4.32/5.4/5.94/8.1 Gbps
> + */
> +static const u8 nord_edp_swing_hbr2_hbr3[4][4] = {
> +	{ 0x0b, 0x11, 0x17, 0x1c },
> +	{ 0x10, 0x19, 0x1f, 0xff },
> +	{ 0x19, 0x1f, 0xff, 0xff },
> +	{ 0x1f, 0xff, 0xff, 0xff },
> +};
> +
> +static const u8 nord_edp_pre_emp_hbr2_hbr3[4][4] = {
> +	{ 0x0c, 0x15, 0x19, 0x1e },
> +	{ 0x0b, 0x15, 0x19, 0xff },
> +	{ 0x0e, 0x14, 0xff, 0xff },
> +	{ 0x0d, 0xff, 0xff, 0xff },
> +};
> +
> +static const struct qcom_edp_swing_pre_emph_cfg nord_edp_swing_pre_emph_cfg = {
> +	.swing_hbr_rbr		= &nord_edp_swing_hbr_rbr,
> +	.swing_hbr3_hbr2	= &nord_edp_swing_hbr2_hbr3,
> +	.pre_emphasis_hbr_rbr	= &nord_edp_pre_emp_hbr_rbr,
> +	.pre_emphasis_hbr3_hbr2	= &nord_edp_pre_emp_hbr2_hbr3,
> +};
> +
> +/*
> + * nord DP swing/pre-emphasis tables (DP mode, COMBO_PHYS TypeC).
> + * From HPG Table 2-6-a (HBR3/HBR2) and Table 2-6-b (HBR/RBR).
> + */
> +static const u8 nord_dp_swing_hbr2_hbr3[4][4] = {
> +	{ 0x02, 0x12, 0x16, 0x1a },
> +	{ 0x09, 0x19, 0x1f, 0xff },
> +	{ 0x10, 0x1f, 0xff, 0xff },
> +	{ 0x1f, 0xff, 0xff, 0xff },
> +};
> +
> +static const u8 nord_dp_pre_emp_hbr2_hbr3[4][4] = {
> +	{ 0x00, 0x0c, 0x15, 0x1b },
> +	{ 0x02, 0x0e, 0x16, 0xff },
> +	{ 0x02, 0x11, 0xff, 0xff },
> +	{ 0x04, 0xff, 0xff, 0xff },
> +};
> +
> +static const u8 nord_dp_swing_hbr_rbr[4][4] = {
> +	{ 0x07, 0x0f, 0x16, 0x1f },
> +	{ 0x11, 0x1e, 0x1f, 0xff },
> +	{ 0x16, 0x1f, 0xff, 0xff },
> +	{ 0x1f, 0xff, 0xff, 0xff },
> +};
> +
> +static const u8 nord_dp_pre_emp_hbr_rbr[4][4] = {
> +	{ 0x00, 0x0e, 0x15, 0x1a },
> +	{ 0x00, 0x0e, 0x15, 0xff },
> +	{ 0x00, 0x0e, 0xff, 0xff },
> +	{ 0x02, 0xff, 0xff, 0xff },
> +};
> +
> +static const struct qcom_edp_swing_pre_emph_cfg nord_dp_swing_pre_emph_cfg = {
> +	.swing_hbr_rbr		= &nord_dp_swing_hbr_rbr,
> +	.swing_hbr3_hbr2	= &nord_dp_swing_hbr2_hbr3,
> +	.pre_emphasis_hbr_rbr	= &nord_dp_pre_emp_hbr_rbr,
> +	.pre_emphasis_hbr3_hbr2	= &nord_dp_pre_emp_hbr2_hbr3,
> +};
> +
> +
>  static const struct of_device_id qcom_edp_phy_match_table[] = {
>  	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
>  	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
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
