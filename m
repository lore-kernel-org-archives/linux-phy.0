Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E3D2CA0EDC
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 12:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FPuqp9ObqqvD8q10JPCJrlgLaROfT/rAjDVc1hxfac=; b=RDLGtpHTUiT7fe
	kwmL177Q7Xvd6EbFdB3fs+u/jjidCSHOnVOPfyooqkATuQ7m5os7KC28oxgeBrnA7BEk3fauhgMvs
	JdDblzvW5UKtJcvgmGkN9k0ToJB8Wf/yYdBzV7JyQwTd+6i2PG1Iz8gzoWQ4uXA2O2oDeSGo++uIL
	t00nz6SQlgH9ZT3AZ2kwX9iIywYHrsXwhhaxGZDXdQ8e1PNoT5HvXGbbrHctT6e8cAiUBnXSuOAh5
	hjiCvPle8Nyv0dVACPglywwvwaLSZaXVNn7sT5Z9GHW+1KZ72Yoaveb6puDrAYkVXZQBhpOLVrHCM
	se8qkyZ9HFacYs7uAFZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohUL-0000000DUg8-3KwP;
	Wed, 20 Aug 2025 12:00:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohHu-0000000DSu5-0u2D
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 11:47:31 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57KA93p0011357
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:47:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dFc4IH/0HHEYW2zGgPx9oUd1
	ai5FCg3dSwI1TYF3zRA=; b=fj0EFRd64mA+29oBybgkCVSDClAeX2cpVe/JJ+lY
	ybKS2lKptFDXF+W36AaL8Z/4b8ujhEqHlvJFA+8BwmoEUvFU6ugNCOOBqE4Gk9tZ
	LaV+nX6UBN6e56o3l2QkykgRXIUeFRM+qQhrLlWnUaSmM06ehbpCitK700fj4/Ob
	bkNueSH5OJ4ulXd/qK7JQqPRjPc2dFhKavJAUf65g2r5wIt4zCHyT2xFQ4MzrRMI
	0B/r0m64I02uycCk0vw0p8rTbIFURSFW50OGz/IJSamZkA43D+SsQ/6OJyr4a222
	Jgt0i10jklvZUdAPxPJxpbRoB+b0h88g5COwO949pR8ksw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52bhkk6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 11:47:29 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70a9f57f950so135803386d6.3
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 04:47:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755690448; x=1756295248;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dFc4IH/0HHEYW2zGgPx9oUd1ai5FCg3dSwI1TYF3zRA=;
        b=T8vFC1tFIS+n8HgUFONHu5FXCNAOsbr7OzutiTIxQSAFsyFoig7+WtaMWwvNURNlim
         4ZSoDlE0/uI79Pb7FlQrypilARWW8TdKIVsxjUk+JYp6Vltl7+sB0MIIef7hidTXvxLA
         wjrwEp9oHq94eDcTQ7WnGa0bDjGytEZIBCpj+JImIPgRWxNd3zEMrSOXEjE1EVsrC5MY
         8/bKAGDa4g7Es77fdcX6Ii4EjwoF2CBlHtx7Y6ZoSSxHE24CUJ4aH/GPUuj7bj62jH4Y
         JooGCbJP+3GGftiEKAJPrUEL4QfpEzrl3AQ6r81NKe8e7Bb+pV1vHUmih30PBuwL2MTi
         E/Pg==
X-Forwarded-Encrypted: i=1; AJvYcCU0H0ItsMtyFWPv2zSP27epKpYyuAnibE8pnNR5aYN95nlti926vdIhxZuyHqskV7JH9y3sww3pE5k=@lists.infradead.org
X-Gm-Message-State: AOJu0YymGwXiiUflR1Ux3eV1W5w854Ca1G52o6R1n/vev/SHFEwz4GuK
	Rj4xfZPh4OHGGrJxs8UbIMaise49qsZ+IvmhDpHXYPzpczUYbdXoAV1EeAQmAhv5V6DcTuZ1iDk
	i/wHjiB+3WjWz+iWRAjKWzC2HQg4VNgE6MO4eKHvA/PFATmrLoCtX2GalK6qkhGyWEUmw
X-Gm-Gg: ASbGncvbq9hdmjUVw1E5Lpqu2qcGjeWcOu2b/ZyZSOW4NgyPGEj+rX7lZZ+iQxat4Mz
	or/03l+D4DAQIyat64/oJq0oJ1t3j7z4XhNH+WrHLIgXW26yZEfM2+u4LDXSTyBu/TV6hVkizRC
	OJJ3jHrrwB+w8F+Vfe2Rx82/KDFAyD8caAafaXvV4XD7+2imrokLOafXP2HgKRu5TG2qtt4fO3M
	Rxaj1C8t2XQI9Qv7gIVqY8bj2q3U3Shebe1nq3BP/K+3BovYXL3yjoDYDF6+3BKb4Imga7MRA1T
	/b7Qzk3YFfK0RXUDFkmEtYlSaUagEU0Ff5/gDmDkiQ+w6AvyWCqgWE/i5K6V4rH7zHABlpg0DFP
	CdT3nlk4wlfTdxcDqBnqGMA20ihnKK8vbxQYGy2fpDpRHxAcE5H9X
X-Received: by 2002:a05:6214:e69:b0:70a:3792:71b3 with SMTP id 6a1803df08f44-70d76f870a8mr26796536d6.8.1755690448120;
        Wed, 20 Aug 2025 04:47:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/gakNMa/QxtXVM6Q3T3hNzkLDxmdNOzWdZVhhKTGdYxa2vtoe8JOEwhpP+CZNBh6RpUnOkg==
X-Received: by 2002:a05:6214:e69:b0:70a:3792:71b3 with SMTP id 6a1803df08f44-70d76f870a8mr26796116d6.8.1755690447455;
        Wed, 20 Aug 2025 04:47:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3519d8sm2573833e87.11.2025.08.20.04.47.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:47:26 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:47:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 05/14] phy: qcom: qmp-usbc: Add DP-related fields for
 USB/DP switchable PHY
Message-ID: <7b6utbnibia767bp55vhvg6ghdavb66ubdpabyguohuwtmz3mp@unvm36jttota>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-5-a43bd25ec39c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-5-a43bd25ec39c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX3APLPHR/6883
 5Z2YgHEVkpI6rEPZb9AV1WgWqw4SYUGHooJrbbEpaRA5rJUNTbG1YKhng+x2oxkjm2uyOasezvC
 da7Lg6pHZLZq0wryXQIWEWOB7nfXjlvlJlG/JRolDxK6pv1Gdp0e4JbAEeCdb74oBObkSN4jBBX
 HTC3xMqVA4tK2YlP+PGTbNZlMwdlllsd07FRntTSGjLEgyeat/UU93V2ziB6UNFPmc+IRVpNrFQ
 ZSixq3n7l2ckEACdHagU/nC1iLAT37Vlh4tej2+9g7n2H/errubgPMJU0N9BTkDD0BSOj6dyNAH
 PHHjLjfuK/Td85Iga1/ObPZKO6mdfKu32uN/nI3hIgh8aHu73umQQYU1XzX4OGsCpnYGyKlb2yx
 RqJ7bOfy75+txjbpZEuynYqxV/MOLg==
X-Authority-Analysis: v=2.4 cv=cr3CU14i c=1 sm=1 tr=0 ts=68a5b5d1 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=tpX6aX9aePfZnGUoeJ0A:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: QpdVjNnokMVZj8Iz-slDLNCfUvUEFu-w
X-Proofpoint-ORIG-GUID: QpdVjNnokMVZj8Iz-slDLNCfUvUEFu-w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 adultscore=0 phishscore=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_044730_258076_4F7A5904 
X-CRM114-Status: GOOD (  20.52  )
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

On Wed, Aug 20, 2025 at 05:34:47PM +0800, Xiangxu Yin wrote:
> Extend qmp_usbc_offsets and qmp_phy_cfg with DP-specific fields,
> including register offsets, init tables, and callback hooks. Also
> update qmp_usbc struct to track DP-related resources and state.
> This enables support for USB/DP switchable Type-C PHYs that operate
> in either mode.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 73 ++++++++++++++++++++++++--------
>  1 file changed, 55 insertions(+), 18 deletions(-)
> 
>  
> +	struct regmap *tcsr_map;
> +	u32 vls_clamp_reg;
> +	u32 dp_phy_mode_reg;
> +
>  	struct mutex phy_mutex;
>  
> +	struct phy *usb_phy;

Should be a part of the previous patch.

>  	enum phy_mode mode;
>  	unsigned int usb_init_count;
>  
> -	struct phy *phy;

Similarly.

> -
> -	struct clk_fixed_rate pipe_clk_fixed;
> +	struct phy *dp_phy;
> +	unsigned int dp_aux_cfg;
> +	struct phy_configure_opts_dp dp_opts;
> +	unsigned int dp_init_count;
>  
>  	struct typec_switch_dev *sw;
>  	enum typec_orientation orientation;
> @@ -874,11 +911,11 @@ static int qmp_usbc_typec_switch_set(struct typec_switch_dev *sw,
>  	qmp->orientation = orientation;
>  
>  	if (qmp->usb_init_count) {
> -		qmp_usbc_usb_power_off(qmp->phy);
> -		qmp_usbc_com_exit(qmp->phy);
> +		qmp_usbc_usb_power_off(qmp->usb_phy);
> +		qmp_usbc_com_exit(qmp->usb_phy);
>  
> -		qmp_usbc_com_init(qmp->phy);
> -		qmp_usbc_usb_power_on(qmp->phy);
> +		qmp_usbc_com_init(qmp->usb_phy);
> +		qmp_usbc_usb_power_on(qmp->usb_phy);

and these.

>  	}
>  
>  	mutex_unlock(&qmp->phy_mutex);
> @@ -1106,14 +1143,14 @@ static int qmp_usbc_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_node_put;
>  
> -	qmp->phy = devm_phy_create(dev, np, &qmp_usbc_usb_phy_ops);
> -	if (IS_ERR(qmp->phy)) {
> -		ret = PTR_ERR(qmp->phy);
> +	qmp->usb_phy = devm_phy_create(dev, np, &qmp_usbc_usb_phy_ops);
> +	if (IS_ERR(qmp->usb_phy)) {
> +		ret = PTR_ERR(qmp->usb_phy);
>  		dev_err(dev, "failed to create PHY: %d\n", ret);
>  		goto err_node_put;
>  	}
>  
> -	phy_set_drvdata(qmp->phy, qmp);
> +	phy_set_drvdata(qmp->usb_phy, qmp);
>  
>  	of_node_put(np);
>  
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
