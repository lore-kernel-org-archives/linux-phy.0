Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3AFFCAC59A
	for <linux-phy@archiver.kernel.org>; Thu, 18 Sep 2025 06:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wI/hGqAPNvRstAOBvmmzckWl2nHo4A5nvsgbHzyg3mY=; b=cYoVH2SEDirPY3
	SJYtQaQu01bY/rTCGOyhKH9eltDFHKTKlCZWIXp/SZ0LDbeIjdkyQfNsQL1cOJmwZ6ozFzATZ4wWG
	v2I8kCIzn++jDbGw1imn+5fh7eq3h38sIGhG62D3qpBrfzb2yOHfHm20NjPZwCSyt6n2V4REOE58g
	xRMIh+EmFGK2SszyFrYO27iq3mfN/YQrEnPpJ6ragL5OxrY7eZ/7Q5sTieGu51yeTIohb5Dlu1wWu
	nOfjoS7j3+H2OVfKucl+QqtHIbC2RMwTBvs/eddojC+g5BUxiqQTHfFfwAm+nIVuqQEDUrcqpTa5Z
	uzUOTEVZjOHrgDc3d/uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz8Ji-0000000GS5O-2KHB;
	Thu, 18 Sep 2025 06:40:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz8Jf-0000000GS2p-2gpQ
	for linux-phy@lists.infradead.org;
	Thu, 18 Sep 2025 06:40:28 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I3TYZi021410
	for <linux-phy@lists.infradead.org>; Thu, 18 Sep 2025 06:40:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LjaNkwEord8IuaS2Ix8rlcQtQCl3eabfxMXBeTRj034=; b=PEi5s4iU6KYwPSv2
	idItjN3VAXrFN0lg13BbjJbAv5ozq/cA4AFCzZdrlNJp6gWJMtOKz/jy96u71rRo
	NrO6UvNnYQ1JtvJMtLgpFhc3FM0aJcjQ1vmqgIuFyd9koEHWPQTcFEyWxKC3iGbP
	yK2ORo7+AVDcCIy51gzwVU1X++S6nhE2gsccFlYqVfxRz8UcWeTTbLTDzGwZBWsU
	M1JF9K74zyuUQH3aGiBaAprvPSg+17JAqg+qFjHV91W/SOxAs83jZC+bfpL8DwmG
	Ad67IExQ9hjx6FMs4nnpkUAfopoDdEtw2EqALnCU8DLcR90T8LUA/E24RbUFrsFc
	46Cv6w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy5d869-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 18 Sep 2025 06:40:22 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32ed282183bso200848a91.0
        for <linux-phy@lists.infradead.org>; Wed, 17 Sep 2025 23:40:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758177621; x=1758782421;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LjaNkwEord8IuaS2Ix8rlcQtQCl3eabfxMXBeTRj034=;
        b=viOS7yGLk0vDzW4IVg0zJB8oApqPa5LO+j/1uPIFHFwTt+CBRLyt6/R5DFhekne/uF
         p9VAULmNCLXUpR7VeEljqB5ZmSo9PULpTIwm9MDxX7m2EEFMmVyfgbulS7tJtryoAevD
         6oKhpHFp3KKCBHzOCBpmh97Xh/UTWS+MVX6wLQmePmKxNyhj1Czh02M6ael+gINQlr9s
         H/soZJraqHTdPHH9iqWCmEIW7Cv0GpduYo1Qam3+WKw7aR82WwdII7ifpf7mlkKEA6TP
         jHu+uFNaTbD9X2lVbU9X4HraFM0KnLP7yy2evYRQr5myRDB0YsvIHkooe5BFE/ulc55U
         SlJw==
X-Forwarded-Encrypted: i=1; AJvYcCXDDQL/uIALVmVxCojqGk2aSxOvOy7THIheZdBPL8YmkvAicfcRAjzvl2mMZnBz/B7C9XwJcBni/Qs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzA3TLOVvEsuyHVJUhUr056sJnlb6WH9WzicjlQ1nY/1f6KO8z4
	oDmcvjCck8FdcgK1/H8gsVD3Mtzg4dGoCPb5pn71j52+WJuQOPBHyekUnal7u52cwoO2149xmaA
	3txrxuOWiNzhgUDvvHcWtyBw+QsosRn99Av5n69be1XhJcojLUxO0SeRy4SeKWBprfF4G
X-Gm-Gg: ASbGnctPpM0gtcMV7jSXKVMk607TWCczHxHUoaxJX9prlJ4bmgI0Ll6fJvbu/begHKZ
	gSWtMb5MP+u7fBiEojEZ3UWQUX4wEYstka1UdtSIIe0VxLswRgdZ6OnbLq5bvc1orkMPHBbE02C
	hSpnfhQ8xLI7eRVKLuOJHccUyMOoJFryPfEwDxo1bJHyS40s7BPac8LLEEIhwyTSGoHjRIHNQzq
	3kATPE7n7mni+BWhq1RWFbsO1lFuyxzLLrVNwI82XlQF46AAeSA1VFEqWAHKRB0QYqWPXZLYPos
	ErbMeZRtMC2Egx9TNndrWQfkby3Jpaz4Ag/cCjcB1NmcM5NghEiqdHJhXcaOeN354d/DnceuPot
	Be0Kew/Y/L2uPN2tXZwqtEHGAZfCWhud5ZA==
X-Received: by 2002:a17:90b:1a85:b0:32b:dfd7:e42c with SMTP id 98e67ed59e1d1-32ee3f81fb9mr3115600a91.5.1758177621300;
        Wed, 17 Sep 2025 23:40:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF5qY1sAAfH7rgQLI8TMzDM81toKk94++RXJMv41XuxHoyUPZDYMls2v+1O0U+ZGupHT65xDA==
X-Received: by 2002:a17:90b:1a85:b0:32b:dfd7:e42c with SMTP id 98e67ed59e1d1-32ee3f81fb9mr3115576a91.5.1758177620860;
        Wed, 17 Sep 2025 23:40:20 -0700 (PDT)
Received: from [10.133.33.13] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77cfec3dadbsm1329619b3a.68.2025.09.17.23.40.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 23:40:20 -0700 (PDT)
Message-ID: <50346565-20d0-4ef9-80a5-e08070fdefb6@oss.qualcomm.com>
Date: Thu, 18 Sep 2025 14:40:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 13/13] drm/msm/dp: Add support for lane mapping
 configuration
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
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
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-13-2702bdda14ed@oss.qualcomm.com>
 <oex5463riqvvyfyntxcyissaznnfsd6xogcniqouqcn6yokgwu@dwhje4i5inj6>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <oex5463riqvvyfyntxcyissaznnfsd6xogcniqouqcn6yokgwu@dwhje4i5inj6>
X-Proofpoint-GUID: PxqxQsnjUuXqiRp_sByT2JUWw704Bwnr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX86b3YeIE2xM3
 ghkiKfZK562giqE2mfo4+ppqzY22n7xAbwlQiP0rexa0EAlkG7exH850ifq1IkJakpG/rz57bQW
 zLNw7teYEmMnovRmO4L/RjczVqBy+reSedtIBDNXb0AejO8ef82mM71jNDl1I8sWVrhH+eT+q69
 1Q0uIJPgA17Z8+gmRbCo0xqLN7zv80VIDB30ckiUvA4GDDY5TuZOv7dkO+KBX1Vyqsxb6zvan6y
 yuyCGYxfhicKXG2mgiXy7yrrsJVjYC9JCBRLK682EgiBU/2jSSVk28v8Z6xa1zrCrnsXVQfP3th
 Dr6yBlk//00VKTkaq8qlTtYWXQmN3z8Co6sgWbfTyhS/9tP9kACMkuBYVe47FjmrqSUOQaFd0pJ
 spDEeOS2
X-Authority-Analysis: v=2.4 cv=Y+f4sgeN c=1 sm=1 tr=0 ts=68cba956 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=zEApyEmNphHiV2Xtq7IA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: PxqxQsnjUuXqiRp_sByT2JUWw704Bwnr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 malwarescore=0 bulkscore=0 spamscore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_234027_790483_75872E8E 
X-CRM114-Status: GOOD (  22.36  )
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


On 9/12/2025 6:42 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 11, 2025 at 10:55:10PM +0800, Xiangxu Yin wrote:
>> QCS615 platform requires non-default logical-to-physical lane mapping due
>> to its unique hardware routing. Unlike the standard mapping sequence
>> <0 1 2 3>, QCS615 uses <3 2 0 1>, which necessitates explicit
>> configuration via the data-lanes property in the device tree. This ensures
>> correct signal routing between the DP controller and PHY.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/gpu/drm/msm/dp/dp_ctrl.c | 10 +++++-----
>>  drivers/gpu/drm/msm/dp/dp_link.c | 12 ++++++++++--
>>  drivers/gpu/drm/msm/dp/dp_link.h |  1 +
>>  3 files changed, 16 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
>> index c42fd2c17a328f6deae211c9cd57cc7416a9365a..cbcc7c2f0ffc4696749b6c43818d20853ddec069 100644
>> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
>> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
>> @@ -423,13 +423,13 @@ static void msm_dp_ctrl_config_ctrl(struct msm_dp_ctrl_private *ctrl)
>>  
>>  static void msm_dp_ctrl_lane_mapping(struct msm_dp_ctrl_private *ctrl)
>>  {
>> -	u32 ln_0 = 0, ln_1 = 1, ln_2 = 2, ln_3 = 3; /* One-to-One mapping */
>> +	u32 *lane_map = ctrl->link->lane_map;
>>  	u32 ln_mapping;
>>  
>> -	ln_mapping = ln_0 << LANE0_MAPPING_SHIFT;
>> -	ln_mapping |= ln_1 << LANE1_MAPPING_SHIFT;
>> -	ln_mapping |= ln_2 << LANE2_MAPPING_SHIFT;
>> -	ln_mapping |= ln_3 << LANE3_MAPPING_SHIFT;
>> +	ln_mapping = lane_map[0] << LANE0_MAPPING_SHIFT;
>> +	ln_mapping |= lane_map[1] << LANE1_MAPPING_SHIFT;
>> +	ln_mapping |= lane_map[2] << LANE2_MAPPING_SHIFT;
>> +	ln_mapping |= lane_map[3] << LANE3_MAPPING_SHIFT;
>>  
>>  	msm_dp_write_link(ctrl, REG_DP_LOGICAL2PHYSICAL_LANE_MAPPING,
>>  			ln_mapping);
>> diff --git a/drivers/gpu/drm/msm/dp/dp_link.c b/drivers/gpu/drm/msm/dp/dp_link.c
>> index caca947122c60abb2a01e295f3e254cf02e34502..7c7a4aa584eb42a0ca7c6ec45de585cde8639cb4 100644
>> --- a/drivers/gpu/drm/msm/dp/dp_link.c
>> +++ b/drivers/gpu/drm/msm/dp/dp_link.c
>> @@ -1242,6 +1242,7 @@ static int msm_dp_link_parse_dt(struct msm_dp_link *msm_dp_link)
>>  	struct msm_dp_link_private *link;
>>  	struct device_node *of_node;
>>  	int cnt;
>> +	u32 lane_map[DP_MAX_NUM_DP_LANES] = {0};
>>  
>>  	link = container_of(msm_dp_link, struct msm_dp_link_private, msm_dp_link);
>>  	of_node = link->dev->of_node;
>> @@ -1255,10 +1256,17 @@ static int msm_dp_link_parse_dt(struct msm_dp_link *msm_dp_link)
>>  		cnt = drm_of_get_data_lanes_count(of_node, 1, DP_MAX_NUM_DP_LANES);
>>  	}
>>  
>> -	if (cnt > 0)
>> +	if (cnt > 0) {
>> +		struct device_node *endpoint;
>> +
>>  		msm_dp_link->max_dp_lanes = cnt;
>> -	else
>> +		endpoint = of_graph_get_endpoint_by_regs(of_node, 1, -1);
>> +		of_property_read_u32_array(endpoint, "data-lanes", lane_map, cnt);
>> +	} else {
>>  		msm_dp_link->max_dp_lanes = DP_MAX_NUM_DP_LANES; /* 4 lanes */
>> +	}
>> +
>> +	memcpy(msm_dp_link->lane_map, lane_map, msm_dp_link->max_dp_lanes * sizeof(u32));
> This will break all the cases when data-lanes is not present in DT: you
> are storing the empty lane map instead of the 1:1 lane mapping that was
> in place beforehand.


You are right. It would overwrite the mapping with zeros when data-lanes is missing.

In the next patch I will:
1. Initialize to a default 1:1 mapping (<0 1 2 3>).
2. Validate and apply data-lanes only if present and valid.
3. Always produce a full 4-lane mapping, filling unused lanes with remaining physical lanes.


>>  
>>  	msm_dp_link->max_dp_link_rate = msm_dp_link_link_frequencies(of_node);
>>  	if (!msm_dp_link->max_dp_link_rate)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
