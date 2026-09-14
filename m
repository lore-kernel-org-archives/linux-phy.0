Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88A8AC88E64
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 00:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPitk090j/26x2+ynlG54O0nQbPqijv9jMvYz+jG/0E=; b=b8/T6RQb/65ZsF
	ZjdULYxBTwpJWqnS7qmewRTHR51TazKBwgrLVoRreAn3D433S97OlzudbRs1si4DKGB8bhW3VBTEc
	6Sjy5h9GI0WjlI3bQk8zYmLVxWsFtcolLeMdtUxJs67E4kosFTSciqF0eyaMl5u7/OTr+36DzBLBo
	jPFf9DlW9hqddkqALyTQhpVj1aHPREV6k1LBPxx2OREnDECWxEP9y99YqejFvhn76Wh4i9Ea1VUNg
	QMYSK13w2fjo3E4oZpOochFesnTsMJpNICG9jnGXBkAuwjGb6zWrUpvCTBGVa607ReSvbRQ3N+ghn
	Iit1WxtztrtAQzh5Mqbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5uAZ-0000000277M-1kK5;
	Mon, 14 Sep 2026 00:03:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5uAW-00000002770-2BXV
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 00:03:33 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DNYZH42358127
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 00:03:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=QCkweCa7F1/CfL9F/9LUYh2D
	moFaRAIGZJkNvknrjg8=; b=A13MD8t5ztJPFtfgVH/8KEWLJcSSvt+HA2SlvQbM
	AZK5ZLrulxyLHOFRHGSD1EKyQx5gDQn9MN984XcBQ9hSqkPCuIX4hdKHr2UzY3eC
	vbrwkfTcjmzqfwUnPcojt31V0O6roFyb/+erS4Yx8t0TVuZyglYeWxiPUUj/cxbJ
	ETH9p6bWWCqxYwGxlL3s/IleiDANgCQzD6FCCnuw+Frp7qqBfFuo55yssWA92iSC
	SW4k+Vi6DgqLKc+kKR0BbESfq4v0urXQjxpQhiUfVsPdkDNprzK6HAmNRAiKCxm2
	UTuqQQeUYqZjGODhiJDWf0PD3/D5Gy+XPpGaOeXJOhQCOg==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gn018m8jr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 00:03:31 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5c83124d530so3566928e0c.2
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 17:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789344211; x=1789949011; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=QCkweCa7F1/CfL9F/9LUYh2DmoFaRAIGZJkNvknrjg8=;
        b=bESCN5fIYHNdEANGPMPSj286EMh3AzDEpVbzEfu+lKWfBeXZstA0qDZQp+k9G+1AjY
         /MjMTybaq6NB1nK/ceY8lOovgopetpPpbMjq4pTVDXtkP9zDuj44MCEUVeST0NJ7cY4L
         BDyhXMFq4XISu67G7uf6Vl7DV+9SoJ0mp5wnn4HOvPOmiqgz3Fin0Tho4Z10il8COMNo
         nvy3u4adHTFZMAygPQYwdl66oCCJ3vAEe74t9M8Pe23kkkJvXL7ReUh2+lemuvih/NjR
         Z/MnzA7OF8oDA2nCd1Tr/JjpOvG/DRg2WDpIfbyvLTxt40TLgDwQrOLzj9WKK7E80brr
         yyFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789344211; x=1789949011;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QCkweCa7F1/CfL9F/9LUYh2DmoFaRAIGZJkNvknrjg8=;
        b=Fb8oR08njV1TdjqOvERd9SjeRXAXFRStjDun71rcUT5mUzAb9e/OopFd1k9ct+0t69
         PM5ul0h8gQRRrKc3xumrLzXEssna5/mxkZPvQb7LY8nSNa63wOBsYUN/xCL3R4Oe8RwK
         Cd/z62GeFmzoTBEiOt7VRd3lx0qSkmHSGrJkQyMz4chvAFRohgJ9cGN6CsJSadaZELe+
         IHqpONjQcrjiM0GWkNwwDhO8GeLQM6nFzisKbHIQgdikQxFL3vaSAELzBzui3lMeBTOA
         LGXiMsTndjshc/+uUox35GBG/3BG5IkQ86BhjTQxD6TsNAaEL/2FvBHMj1sbpTUZD4QL
         EARw==
X-Forwarded-Encrypted: i=1; AKwUvBztZJ4OffbiIREihY8WQBGlUdXfvb4nyqLXPZn2GFVgdDbW5+CMWJwkvUDG0AuFC81wVB5/UB0GkPA=@lists.infradead.org
X-Gm-Message-State: AFuF++kWuaXgBUhaGkold8NiVl4IUyqRXCqLFNwGtjSqhfads3J6NbaI
	zsXm6bgrHvo5TUC2MomPI5UYQokNH/ine0teb3vEg8YmW1mB6AD9lHbmOpIM32/j7zDtVj4nVq1
	gYi36XHcSmStLBhZURH8ovAi37WMvcnTRDWiHrhTdUONBu1IXne+qytCopw/I/Ra4G+Gq
X-Gm-Gg: AYBFou33Nd013pHmppnTAeU3Nq35spklZ+x9IH9o0ybeKpyKyJP8wVFA9vefohdT1I0
	nLrYUYi2BdnX05GUuVqR60PtTdp4cst95wo3XAghu6NZC5134z0jwB1CZokrRYh8a1N7UPy0OqJ
	A9CcBI4hkH8jyDHy9udclupTSv/kLGx51gM94oXusaeGNLNgRD9yGg/oOIxE0wE7qM1LHhdcVq2
	e8WumBvC/h2UDdacbhpA5O/+hNJvSVGg97xHikVjFoXH1qF/QBpxMgbzKb40UvofwNi33pRhN9e
	cJE/yYCa1LkIP8iW+JDx9fGrDwAPNZ6otJi40730AN4BxQpqVbZIjtnTLeAm8bQmVI9te8RwIzv
	fGwr9OYTQZ+bHyMQAq/1hZa/0SKY0jEO+rsrpQVjQfVePxyoNUliDxUCg1BK53Z7HetAn+HKv7/
	KbodllTxun7wYQ
X-Received: by 2002:a05:6102:5093:b0:77b:28c1:210e with SMTP id ada2fe7eead31-79b579b2355mr81977137.1.1789344210744;
        Sun, 13 Sep 2026 17:03:30 -0700 (PDT)
X-Received: by 2002:a05:6102:5093:b0:77b:28c1:210e with SMTP id ada2fe7eead31-79b579b2355mr81948137.1.1789344210374;
        Sun, 13 Sep 2026 17:03:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b8a047aa12sm2040899e87.74.2026.09.13.17.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 17:03:28 -0700 (PDT)
Date: Mon, 14 Sep 2026 03:03:24 +0300
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
Subject: Re: [PATCH 09/17] phy: qcom: edp: Add Nord AUX channel and VCO
 divider configuration tables
Message-ID: <clxbpw3awcpispcixwrvwj7hocvoag6fhhp7d4azamxghk5x5o@ar3infqpcy56>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-9-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-9-e25c073cf1b6@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=c4g+0h9l c=1 sm=1 tr=0 ts=6aa739d3 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=_h1llJ5GsiActe-pZHAA:9 a=CjuIK1q_8ugA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDM0NCBTYWx0ZWRfXxOvGs8N9stwo
 QTDs2u7AGE2ItFDPPZlG2gh5bufxmUwVnBcwuR2olaES0bkm7SWVFsGR/TjmMw2LGonVHQp7bpW
 bdNEVzM2cuU5daKd2+3MWxD2wCzzkj4=
X-Proofpoint-GUID: k_oksp2uqMGQfCwUd5UA7jVFSBE39_h6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDM0NCBTYWx0ZWRfX4Trj/1/ayMe5
 w/J52Aw6vDX5BYKO5EXiANmh2qm8D9zUdSh1a5x8HrXf+Lg8ZwzyZExyL6/+8OEeXzcZG2ogt0u
 uhVN0cyAaZoS3jhSd3PI4v/Bj/GniYPjLKzdJuOWViUEuqDTs2dYsBpiKtYdYMR6RePcEx2Z0o1
 KklCfGh6Q9pIg8C5SS2PFn1lhwrYWTQm74fHIibsXNfJOdKMXgy0myzRlXxCVtdNpAHO7gs6wA+
 epQshEFvm3CWbCDyXwCL2Gh9FNuPmp2pyegI86OCQ1Jok+ne1GmY/x+8o8p6N4b1cg7lQ/fA6Ud
 JCQLAUp6stRFBj1Qtm317TxP+VNny3XHyKvOuWkSJva7hOCZo0MYjrSAMFsu+RWpGeLVrS+wKxw
 +ltCM7Xosy3bVP6MK8f6c0xT+kU1jx4X+eJfRwYbRh9o8vajIqXq9ilR9szF/nD1psUoH9StP/2
 u9SavVxA4xUSOlJ8jAQ==
X-Proofpoint-ORIG-GUID: k_oksp2uqMGQfCwUd5UA7jVFSBE39_h6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_07,2026-09-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609130344
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_170332_576405_668E0353 
X-CRM114-Status: GOOD (  21.73  )
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

On Fri, Sep 11, 2026 at 09:06:40PM +0530, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Nord requires different AUX channel and VCO divider settings compared
> to existing SoCs.  Add edp_phy_aux_cfg_nord and edp_phy_vco_div_cfg_nord
> with values sourced from HPG Tables 2-1-a and 2-1-b respectively.
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 373f13b3d6d5..ee0d7f1a90fe 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -1508,6 +1508,25 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>  	return PTR_ERR_OR_ZERO(phy_provider);
>  }
>  
> +/*
> + * nord AUX config (eDP mode).
> + * From HPG Table 2-1-a: edp_phy_aux_bist.csv
> + * Index:  0     1     2     3     4     5     6     7     8     9    10    11    12

Drop useless comments.

> + */
> +static const u8 edp_phy_aux_cfg_nord[DP_AUX_CFG_SIZE] = {
> +	0x00, 0x13, 0xa4, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x04,

So, it's the same as edp_phy_aux_cfg_v5, except for the last register?

> +};
> +
> +/*
> + * nord VCO_DIV config for eDP mode.
> + * From HPG Table 2-1-b AUX Clock Settings (eDP mode) - Nominal/Turbo column.
> + * Indices: [0]=1620, [1]=2700, [2]=5400, [3]=8100

:-(

If it's AI, fix the AI prompt, please.

> + */
> +static const u8 edp_phy_vco_div_cfg_nord[4] = {
> +	0x00, 0x00, 0x02, 0x01,
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
