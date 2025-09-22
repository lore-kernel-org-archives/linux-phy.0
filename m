Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A0C2CAC59A
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 03:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dAgNEgQW/q+9+0bBDy/AsZ4hfpIa3c5cGep6rsymGog=; b=RUKc9JppF6eGZj
	z6LXUldHRBqh14V7AIDa+s1bT5lflHgMVngF6hFUKqeRNA2yfiMb/d/LoKZWdzaie0TI5PbEdbamJ
	Vxok9AmUwixU2vNDpvrNSek9IcCcaUIv3WVPsOJKYXwMdftljZmq60NPE/XTWnrj7GRW3G6X3lU6P
	q98tUxyu+lk/6vyftmONhHVztLlrjshQpy92tUUavlIeXgv6bIwDx6oLgv3Un11535uLn1VpJx8+5
	aRzJGZO0G+cOgHrbqGJID/w+m9Pxvb23+H+cS55AQ9EnrO4bLoWZLC3zYL/pGxDXw761IRQZ7YY53
	UlAge8Xj2pDjuZqD7QuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0X9g-00000008gf3-0oG5;
	Mon, 22 Sep 2025 03:23:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0X9d-00000008ge0-00sT
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 03:23:55 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M0PVTM002772
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 03:23:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QNOuyexfI1zurDE81bZpL3amoeTGP01KN4jEw4M/iDE=; b=G/U6xiNzV2UvfuHY
	w9UYJxdZAPN0SctDzMP7+/Sd8DUwyT9kgq1KRYZnwWLhNELJQRR47/OlUsYWQR/n
	ihVWLh9PRHCmsn4hHg3GZ8wrVebIlGc6XS+ybPfwfiKgQyKvc6yaxk2jR1FDAZup
	J6uRA5DDCdtqnOjqrvHjuT++/mg/ohNwgBVDYqeEyxNaCv4o3beQO62JQRvO/Ni4
	2ZNyhu8jnRIc0E5ZCuZ8OqpibzOKhSlKoHUwjQPqY+AxYRgeyLS5VclAw+iuYt/f
	BY1OvTAJZxNWn28UruCdaz/cZV3TmIyAeHvJFrW4GYGOObmCMhoXxbJ/qqpDpXK2
	3i+w1g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98b9e6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 03:23:49 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-244582e9d17so13736645ad.3
        for <linux-phy@lists.infradead.org>; Sun, 21 Sep 2025 20:23:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758511428; x=1759116228;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QNOuyexfI1zurDE81bZpL3amoeTGP01KN4jEw4M/iDE=;
        b=qWPBhEpADIJhZT3lCMnaSsbkmoyZjC1Ol/PVr+InbT8lR+umeCgnR8jH0P0f/KVn9B
         aywimPFiT0ZSmJZBD3N6khCCokTDjT2JMPXS11TAi6in4wmqs0GKSxjwy70H9F+2KjS1
         VjZHuvnuSITtf1PpYCplYCYAFqyBLHgRp6xVUQhQJTT3GVCL1VNIammuLceGwD89WK2o
         MvZpNdwR92e7Mu7HvqDq2N5CzASGUVXTP+PMnNJrkceDzUtSFYdDU8HG8boM485twPeC
         drTzfIYt5Q8YLNFevf9HzyNrp+iPDcN+HvoghS9sbbfimYwJj6gsL+ARHjFFZgeHkyqn
         2kpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWddrFm91jfFcPQSLoZS0kfVsoV0tXYh1VavYG097I1GnY0XbeVp0n06qqIvIdXMuBsJM6yHV7ycG0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxn4QB3Ugu+KUY0o/NJp1nuscu+nFNgJYC0lEpdPKbM6WDepir3
	w/iElcrGOjLalVRIsgHxHDSS/7ofXvHiZftDtpkWDxcJxEBiKZHmgp/MR3b4EV0kwLka1uu/0It
	e+cCVo22YihfJhr+mv54quOYjcmGY2Hf//vTyxI/4/7AClGLrrCej2cVC/rN75zBRwvjb
X-Gm-Gg: ASbGnct87hOs2seFLHVQdyKe9Vn174VJTZ7ZmYylQqolHOQl8KJKLfR4Hb1Adkl+XHz
	vJxZrxc7avv/ggA0cHcLNGgCOX1BV7hNN77IB8/yYlDtIoFBqlymEGrrCqvuYeSrDyaNiQOqW1Q
	KO5BxMTllRD0hO9GbiXq2fXg5iwl/ov7SrzoOl5pcWk9AsLw4lcURSbVIWjSJxEu+oT08KRu6Vq
	hgmRaYexCHLdqw0cvHVfnx/4Z3vNpdavYKeq/2yTu1UggxnrdouHfabTbtHJ+XsB1RfmVKTURii
	zyyOAPaZNUFYDDOn4X+QtewuRqn0LGLV2UJruyaYw3Nix8UX41rhZhlh21Lm2lx0KmNHFli86+y
	/eyXfPdRUWHrfGz2mswcMWYRlRXV9kUc3yA==
X-Received: by 2002:a17:903:22c8:b0:26b:992f:d872 with SMTP id d9443c01a7336-26b992fe5aamr70458295ad.3.1758511428458;
        Sun, 21 Sep 2025 20:23:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZqyYB8DrXuJB2KI3l1495xieQN/jAycrK65rdpR541CtvuXZ3P/PsTk/gjpllb2oItS0VQg==
X-Received: by 2002:a17:903:22c8:b0:26b:992f:d872 with SMTP id d9443c01a7336-26b992fe5aamr70458015ad.3.1758511427930;
        Sun, 21 Sep 2025 20:23:47 -0700 (PDT)
Received: from [10.133.33.87] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269802df446sm117628455ad.68.2025.09.21.20.23.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Sep 2025 20:23:47 -0700 (PDT)
Message-ID: <b8d2c97b-2b23-4866-8d20-c20868e878e3@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 11:23:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 14/14] drm/msm/dp: Add support for lane mapping
 configuration
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
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
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-14-eae6681f4002@oss.qualcomm.com>
 <j7ooyi5vih6ofnjigdgj6uk3ycutugunpm5pu5zf55pu5ua6r2@agg73zakjicn>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <j7ooyi5vih6ofnjigdgj6uk3ycutugunpm5pu5zf55pu5ua6r2@agg73zakjicn>
X-Proofpoint-GUID: 7_4GC-Sn0Nb0DI9O0d1UFwtXSsDc62bC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX3jI7HZz8cm9l
 bzetr0l0DDLrnJ+1gDxiROtf5YYAwGNtj+IxtJdJECvqNm+y4sjkutAlott2qyjdk9CCpaOetBv
 SKlXBk7Mse4q8zsge7fHyjeI5Ctf6U32Z7VPXNGlu12+/cvNGEJ/bPora/dUW3AJOo9cfgxiy6q
 mVmtx2xOJWAXRVd0szFtkh6dGRD2t1ymmvtNM06fgj2V+c/mZ11TJVFKHVcG8fGbwbahNuxJWTp
 lItSOMK+xnoU9PR14k5/eJ2Gz8k121qVS4y4cJv6dQ9zXnInlxvO6tT/vw54u1e9Law145EOzmX
 vjiU5ZsyqFh4XT2kf9tMdcEtp6fsBZE3l4E0F5H0STMIOKQXn3fYh3h8nWxpQIyusLwOGX3xtpA
 8AzQUPEG
X-Proofpoint-ORIG-GUID: 7_4GC-Sn0Nb0DI9O0d1UFwtXSsDc62bC
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d0c145 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=z90s4CAT84tkWkAwxOgA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_10,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250921_202353_371321_02C17A05 
X-CRM114-Status: GOOD (  22.19  )
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


On 9/20/2025 2:35 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 19, 2025 at 10:24:31PM +0800, Xiangxu Yin wrote:
>> QCS615 platform requires non-default logical-to-physical lane mapping due
>> to its unique hardware routing. Unlike the standard mapping sequence
>> <0 1 2 3>, QCS615 uses <3 2 0 1>, which necessitates explicit
>> configuration via the data-lanes property in the device tree. This ensures
>> correct signal routing between the DP controller and PHY.
>>
>> For partial definitions, fill remaining lanes with unused physical lanes
>> in ascending order.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/gpu/drm/msm/dp/dp_ctrl.c | 10 +++----
>>  drivers/gpu/drm/msm/dp/dp_link.c | 60 ++++++++++++++++++++++++++++++++++++++++
>>  drivers/gpu/drm/msm/dp/dp_link.h |  1 +
>>  3 files changed, 66 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/msm/dp/dp_link.c b/drivers/gpu/drm/msm/dp/dp_link.c
>> index 2aeb3ecf76fab2ee6a9512b785ca5dceebfc3964..34a91e194a124ef5372f13352f7b3513aa88da2a 100644
>> --- a/drivers/gpu/drm/msm/dp/dp_link.c
>> +++ b/drivers/gpu/drm/msm/dp/dp_link.c
>> @@ -1236,6 +1236,61 @@ static u32 msm_dp_link_link_frequencies(struct device_node *of_node)
>>  	return frequency;
>>  }
>>  
>> +/*
>> + * Always populate msm_dp_link->lane_map with 4 lanes.
>> + * - Use DTS "data-lanes" if present; otherwise fall back to default mapping.
>> + * - For partial definitions, fill remaining entries with unused lanes in
>> + *   ascending order.
>> + */
>> +static int msm_dp_link_lane_map(struct device *dev, struct msm_dp_link *msm_dp_link)
>> +{
>> +	struct device_node *of_node = dev->of_node;
>> +	struct device_node *endpoint;
>> +	int cnt = msm_dp_link->max_dp_lanes;
>> +	u32 tmp[DP_MAX_NUM_DP_LANES];
>> +	u32 map[DP_MAX_NUM_DP_LANES] = {0, 1, 2, 3}; /* default 1:1 mapping */
>> +	bool used[DP_MAX_NUM_DP_LANES] = {false};
>> +	int i, j = 0, ret = -EINVAL;
>> +
>> +	endpoint = of_graph_get_endpoint_by_regs(of_node, 1, -1);
>> +	if (endpoint) {
>> +		ret = of_property_read_u32_array(endpoint, "data-lanes", tmp, cnt);
>> +		if (ret)
>> +			dev_dbg(dev, "endpoint data-lanes read failed (ret=%d)\n", ret);
>> +	}
>> +
>> +	if (ret) {
>> +		ret = of_property_read_u32_array(of_node, "data-lanes", tmp, cnt);
>> +		if (ret) {
>> +			dev_info(dev, "data-lanes not defined, set to default\n");
>> +			goto out;
>> +		}
>> +	}
>> +
>> +	for (i = 0; i < cnt; i++) {
>> +		if (tmp[i] >= DP_MAX_NUM_DP_LANES) {
>> +			dev_err(dev, "data-lanes[%d]=%u out of range\n", i, tmp[i]);
>> +			return -EINVAL;
>> +		}
>> +		used[tmp[i]] = true;
>> +		map[i] = tmp[i];
>> +	}
>> +
>> +	/* Fill the remaining entries with unused physical lanes (ascending) */
>> +	for (i = cnt; i < DP_MAX_NUM_DP_LANES && j < DP_MAX_NUM_DP_LANES; j++) {
> Nit: i = cnt, j = 0; Don't init loop variables at the top of the
> function.
>
> Other than that:
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>

Ack.


>> +		if (!used[j])
>> +			map[i++] = j;
>> +	}
>> +
>> +out:
>> +	if (endpoint)
>> +		of_node_put(endpoint);
>> +
>> +	dev_dbg(dev, "data-lanes count %d <%d %d %d %d>\n", cnt, map[0], map[1], map[2], map[3]);
>> +	memcpy(msm_dp_link->lane_map, map, sizeof(map));
>> +	return 0;
>> +}
>> +
>>  static int msm_dp_link_parse_dt(struct device *dev, struct msm_dp_link *msm_dp_link)
>>  {
>>  	struct device_node *of_node = dev->of_node;

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
