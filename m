Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EABD1CA101F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 10:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1PVJ0k0G9RP3odS2TbcSrOqjchK48OOMOvAW78LKG04=; b=qdmI3gy66glD+M
	FfBHtucP/uitXUZJNETDlpCmF7DqGHfAc+hhQDOvjjReQTUvz+7dfd+IX1j0gAZqVe9wXGV/T/+9D
	EtHShhiBjD6/kmHkaNxwfYHNOrdGPYca3V9kgd70PUj6N+vCgLEr2+Tzgu9s/TbsDbnLn9DvAxqKo
	yT5NhLmu/Ew7wV1Tlr9MELIwoNTJ85dnmX4/NUdIgslsDmI/cPFLmYjunwZp5lyDEICXS0CJVvJyS
	cMpvhxEYThd0wZVyMkJV03PxuxK1BQfVhvCAU2xHP5Kdf8pFsP4F6/udBflRrKBm4E6dya4NB/s1o
	X1i2E+4b61iChroTvl6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux1F1-00000008epT-323K;
	Fri, 12 Sep 2025 10:42:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux1Ez-00000008eoA-2xiZ
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 10:42:54 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fJJp014008
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 10:42:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tmYj8o/t1vex4Px+MD+gCX2U
	CvHxt1dgbQLo/nWIiZg=; b=GQjW8HmIki9icNT1gdLF4cGqZwRgsCl53xJuS9Yu
	9IbMPHlyD40imdDMbcw3uSHzdLk7F3WgcNYQUjtYYpkZccjxvcvi8uul3CNtWfhe
	DTW7SnSgqJLvD3FnvuDcm3lJIjgsG6mTVn0ZtT2ZUAfbKq8JOU+5owxZ2fMR1/mf
	fyxG57HDuUI0InyWg0+OrsdXe94iztWIJ64I6LeESBNenh1RSDbYGp6PNXFhEaaF
	w5zwcoOlcBY1NQwqM7U/A+Yg4r9Cjq9AR/EZT7x4QbOadsDi9bi0NcJwxPuoyM47
	7UlbLJMbYYrEZgLNA4mUtKtbeF1VfEl5x4cZtQ89DFgKLA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493qphvxm5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 10:42:52 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-718c2590e94so63267766d6.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 03:42:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757673771; x=1758278571;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tmYj8o/t1vex4Px+MD+gCX2UCvHxt1dgbQLo/nWIiZg=;
        b=iBXufqqU3yTlfX9KEMzo9Ps21j/9xJS4aSxm8mSOYErprVnjvBGe+i9zENWBMqL3Y8
         4kLh8Hg6HsWQg8MnEjTycYzeGIsKoUHcS9Cv7KoOPjoiU10vL6KhJuVrLQ3AD8CthIEK
         ziYIGszTjhtkmZDFbWzahlJ+i+PVOmXLarF3WfoLB3r2vRDQ0IFZl9axa77/yy6ziICx
         L4F2CrpdDXIOFOb/ExYmS1VOYqEpbgYZ25rvfp7X74Yg2NA7eL240CwDPE9RUlwYY3ie
         3zUvdZseKxXO13xTbR0FAAdV9DHRZE1Xw1+rNALQFFPRvoEIFEwJQ7nmFEUcFcE0h1EU
         PzaA==
X-Forwarded-Encrypted: i=1; AJvYcCVYPNDEWVitbRUL7fmhUN7rzTyYjBkDHSmKoIHXh2YdIjH+jTbWgIrjanqWNGlJaF1r3hSC3qLPr54=@lists.infradead.org
X-Gm-Message-State: AOJu0YzekGsRDJb2m+bfYIcTBGWiSsIc0sNxO60KRqUNsxI89KJ6bnl3
	H7g/uvYBmlwT3RRgudrDN1BP+hP53IqqvNYoRe33JVX61N1q7rbTqJDA3X4E9s3CE9zYTb3NYa/
	NaMtG4HZ6wZf0YoCNBJJpd3CKBCW6GzKkpUNGcc1q8HsbWeH3vqt6tvROzDkNBnObNSTg
X-Gm-Gg: ASbGncv5MLTY/kC75lWYF2ZSy+Z0gFJ8Pu72sk/Q5Ul9ENYmwgttINgNgqmg6VEG9ly
	pK/ZUoiBr8cyiB9i6OajFsStgeuX0czf03grHXE0fUIlPyIpxRiLeyy11JdUHZvHPMVETJU8kPI
	GC+yhDBFu0Ueh7iD6bYxNj+zjuoP28MveVMMVtAvXqEL1Q8qPUjWT7poIQe19Fs/YxcDuC25iGo
	Sd8ZyEsrNxupCIGgECx5eeNPkRwChHNO6EL0Ew3sAKDO0fhN73HMhOoFgtwcF8sBXBEua+JtG4p
	CGPvfU2T4WMIHY7FquEAKAXLfCvmhKdVEgwsDJZ3VV+PWTJaO/4Kwyg7PbRuUL1vcDfXhNKylBJ
	4WTs70MqxJSNfRSQUZVCAYUzqLN6T69L4585W7NAHQz3AvWckyCuv
X-Received: by 2002:a05:6214:c66:b0:729:1a8e:bbc3 with SMTP id 6a1803df08f44-76224bd0051mr77315906d6.16.1757673771417;
        Fri, 12 Sep 2025 03:42:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZ2QmS8xdGEbDL2t/HPuGI8RfYY86H09ePtFLONg3tM736xe3yZrmy2xCP1EXPL4YyRv692Q==
X-Received: by 2002:a05:6214:c66:b0:729:1a8e:bbc3 with SMTP id 6a1803df08f44-76224bd0051mr77315476d6.16.1757673770919;
        Fri, 12 Sep 2025 03:42:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e6460ded0sm1080496e87.105.2025.09.12.03.42.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 03:42:50 -0700 (PDT)
Date: Fri, 12 Sep 2025 13:42:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
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
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 13/13] drm/msm/dp: Add support for lane mapping
 configuration
Message-ID: <oex5463riqvvyfyntxcyissaznnfsd6xogcniqouqcn6yokgwu@dwhje4i5inj6>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-13-2702bdda14ed@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-13-2702bdda14ed@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=aPDwqa9m c=1 sm=1 tr=0 ts=68c3f92c cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=7XclI0hbOSOr8FJszFwA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: iGnZ6obICF4wcGx_pu1gLtQ4RWatGrUX
X-Proofpoint-ORIG-GUID: iGnZ6obICF4wcGx_pu1gLtQ4RWatGrUX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDA0MCBTYWx0ZWRfX0ZDLqrcc1ytP
 xijMIVBV2J86NHJcAHvelLY+PoEAZCbBFo9qiTTRxHhvZQQ63vAuYitLW53MOY05oKx6eFJkdgn
 p1C51TeRX9yafGPRtiV7ZUYVmTTrIs3+64jmtc+9/24xmg0JZHTAyy4PU2Q/WHKJHH041a5Umwt
 1W0mCN/kbMMe3i1SmZoy6a9X3ogs76KhplyNcitUd0T4dcxJSchvvfvFdIiKMJ4REwvC/iyCliw
 FFUjVarRusJqQNCTQmtdOHOnarP4VxPyIH2XcYPCcv+BJE/R0lShK+qJy6pacBltFQ9WyYyBQZh
 6gvqP1k1wQ3rIIK2YUSnN9Dua1qKYYRC4FS/VUrd0g1lNoWLuXuNsqnC93badt8zML1uX6gX9P2
 EBEj46ye
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509110040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_034253_878642_5BAA1DA4 
X-CRM114-Status: GOOD (  24.23  )
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

On Thu, Sep 11, 2025 at 10:55:10PM +0800, Xiangxu Yin wrote:
> QCS615 platform requires non-default logical-to-physical lane mapping due
> to its unique hardware routing. Unlike the standard mapping sequence
> <0 1 2 3>, QCS615 uses <3 2 0 1>, which necessitates explicit
> configuration via the data-lanes property in the device tree. This ensures
> correct signal routing between the DP controller and PHY.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c | 10 +++++-----
>  drivers/gpu/drm/msm/dp/dp_link.c | 12 ++++++++++--
>  drivers/gpu/drm/msm/dp/dp_link.h |  1 +
>  3 files changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> index c42fd2c17a328f6deae211c9cd57cc7416a9365a..cbcc7c2f0ffc4696749b6c43818d20853ddec069 100644
> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> @@ -423,13 +423,13 @@ static void msm_dp_ctrl_config_ctrl(struct msm_dp_ctrl_private *ctrl)
>  
>  static void msm_dp_ctrl_lane_mapping(struct msm_dp_ctrl_private *ctrl)
>  {
> -	u32 ln_0 = 0, ln_1 = 1, ln_2 = 2, ln_3 = 3; /* One-to-One mapping */
> +	u32 *lane_map = ctrl->link->lane_map;
>  	u32 ln_mapping;
>  
> -	ln_mapping = ln_0 << LANE0_MAPPING_SHIFT;
> -	ln_mapping |= ln_1 << LANE1_MAPPING_SHIFT;
> -	ln_mapping |= ln_2 << LANE2_MAPPING_SHIFT;
> -	ln_mapping |= ln_3 << LANE3_MAPPING_SHIFT;
> +	ln_mapping = lane_map[0] << LANE0_MAPPING_SHIFT;
> +	ln_mapping |= lane_map[1] << LANE1_MAPPING_SHIFT;
> +	ln_mapping |= lane_map[2] << LANE2_MAPPING_SHIFT;
> +	ln_mapping |= lane_map[3] << LANE3_MAPPING_SHIFT;
>  
>  	msm_dp_write_link(ctrl, REG_DP_LOGICAL2PHYSICAL_LANE_MAPPING,
>  			ln_mapping);
> diff --git a/drivers/gpu/drm/msm/dp/dp_link.c b/drivers/gpu/drm/msm/dp/dp_link.c
> index caca947122c60abb2a01e295f3e254cf02e34502..7c7a4aa584eb42a0ca7c6ec45de585cde8639cb4 100644
> --- a/drivers/gpu/drm/msm/dp/dp_link.c
> +++ b/drivers/gpu/drm/msm/dp/dp_link.c
> @@ -1242,6 +1242,7 @@ static int msm_dp_link_parse_dt(struct msm_dp_link *msm_dp_link)
>  	struct msm_dp_link_private *link;
>  	struct device_node *of_node;
>  	int cnt;
> +	u32 lane_map[DP_MAX_NUM_DP_LANES] = {0};
>  
>  	link = container_of(msm_dp_link, struct msm_dp_link_private, msm_dp_link);
>  	of_node = link->dev->of_node;
> @@ -1255,10 +1256,17 @@ static int msm_dp_link_parse_dt(struct msm_dp_link *msm_dp_link)
>  		cnt = drm_of_get_data_lanes_count(of_node, 1, DP_MAX_NUM_DP_LANES);
>  	}
>  
> -	if (cnt > 0)
> +	if (cnt > 0) {
> +		struct device_node *endpoint;
> +
>  		msm_dp_link->max_dp_lanes = cnt;
> -	else
> +		endpoint = of_graph_get_endpoint_by_regs(of_node, 1, -1);
> +		of_property_read_u32_array(endpoint, "data-lanes", lane_map, cnt);
> +	} else {
>  		msm_dp_link->max_dp_lanes = DP_MAX_NUM_DP_LANES; /* 4 lanes */
> +	}
> +
> +	memcpy(msm_dp_link->lane_map, lane_map, msm_dp_link->max_dp_lanes * sizeof(u32));

This will break all the cases when data-lanes is not present in DT: you
are storing the empty lane map instead of the 1:1 lane mapping that was
in place beforehand.

>  
>  	msm_dp_link->max_dp_link_rate = msm_dp_link_link_frequencies(of_node);
>  	if (!msm_dp_link->max_dp_link_rate)

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
