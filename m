Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5453CA0EF7
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 00:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDaNPD99wX8ZYsMCRRVqy6HnfFo0ld+UUpcuYwe7Jd0=; b=I0D6/t9FBP8lYr
	6v55d7xfSUG1Pc/YcKiGp5Bl1kj0RuS2KLjIa+ukLa7q3+QTJtgPSRKpEoRopvNdVHcMtjKoV5SH4
	sD2MZv5A5OPYG+fZoL2AAHaHOXf3DqmkzATTbDubGb+wKF8laygWCtj4qu4JqYl4uGD+Ehr+w9MHr
	js637GaYnFLfYHpBH8cwe3FL+gM4R/lHpFDZZhQziIyYDcWlts6C7pXoloeBZnPqeUORoLTDwqSIi
	faRij4GqDsFK9L0zfw6EMmzInqbKnepWMVp1yo4J07zLC4gWOATh48excM/CBpxSTlg4QOFm5oXbU
	UT6ihgm7nlsFclH1LldQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoX9h-0000000C0fo-2t0Y;
	Wed, 20 Aug 2025 00:58:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoX1G-0000000BzfJ-0zsf
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 00:49:39 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57JL0llE010693
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 00:49:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7zu7l2y9FBY48F1LOrgt552y
	dSy/rBgg7xXX+MIdGBY=; b=cEO8gOtjKCDyVBmgTI2FC0zHb7EUqrTyGCT5cnI7
	IXMGLE0Tq8TVen2mFXh0N2Sl1nJIxWH8zOIqKsua4DuMjtAbWUQOjNqeNSxddk/S
	ooyQ7z6rCBeRlE7/WqZAvy0YZSa6Ytq88MvTy6th308rt6Fc4A8jvihpD/Rzsbfk
	lNVs2OVHSgBs/lyMI1YbOSf+Gx2VHUezMKEqKNoQW4DT0kukD6bbgc6NTcpZmbrO
	IfymP1rYxZOsVyP5qVBjDgJdLDqBepiVqRHy7uK6uvcphSR6tC9k7bhgjL0ir54+
	aZilODCBAqcqFZ25i1ea4Fjyh45X8IKhzg2zq4hgVf6SEA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n0td8e7e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 00:49:37 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a88dae248so9647756d6.0
        for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 17:49:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755650976; x=1756255776;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7zu7l2y9FBY48F1LOrgt552ydSy/rBgg7xXX+MIdGBY=;
        b=kDax8qGvFVqOBXEUwe+x50Yrl1DxsHwul7O+/YxGOtVM5vjUjpJ0td4uqsdS8pkIXP
         cTjykecFFyHOcXwU58SYVC9hz44UZO26f98j6GPTBZ2N1iTNITYfOzDNcpuMVrm5MJ2O
         RnuxHWHcHQ0KrnrxyXZsF0U6ZXMy1TDbT2/n9UfiqbVTIWcJw2CI6vn012EaNJVM8dwK
         HrRx6yX1sGc35l1KO+bBrg6J4syQwtE8mJ9Itu0+TzaYlSjz9G8JUlMzkOFKvYbUVMDb
         dPnKKbkklJaOWlnGwKWgz9gmXVhRTHm7DCNH6BokvcGsI0L/x0AWgoDZ1rRXIj2xvHUM
         Qm5A==
X-Forwarded-Encrypted: i=1; AJvYcCXpwseGfc8YyoT+HKtOjMaoJRgEEwlyiL8f8KWVkTU8s0W2LkdUpTAlIgtcmAhr8VHCbXanPvI8NDc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzV95Deh0IZiqVojUJiU7E2+nroRXR1cF72P2t+P1bDpM46NDht
	5/O35Sk4MClHJoRJjjQhzDNrMEhHZPqQNVzZM56kLrDZtCReYjVQIqHnyK1Xn36ypOMGWACcZPP
	Ri8YGqm/R7Of7L6P+fIcuJLqZs3lrHRv7IUVS7wY5Ctzbs80XaQtH+TxPEne4f+TUbDuD
X-Gm-Gg: ASbGncvQD78cfiubc6ERt5XB0CNQ3bAz+K4btUs/wvyRNe4SLXcb/oLQIBSvvBDHbSk
	fnN6EDBUFzWojA4WK/Wni4aC0poPUYG/WimzA8WlColEDOCu+714xN7EfNgern3W5HRF0twrHGn
	1LivSxbs5W0zPXqrNzovFMGsB7Dgq5cpdtpeNu8FHfekoOw9Dqtyws6KUXcSc0HkNtJCd5Gfzp9
	qqxG1Hkse9Ari2ExStZHxfwBNSzXnaj0LWVtGCY2sin+nmnMUG6c7nlltHoSKyloPAP5PxMiQDK
	NskPq3Nl/GHoHnjOzFkWGLCn9pOQbO136gCa1XzCSPN9VAgES2wvK/nIDdqsNSjO/Bfb8+X+7Bs
	S0cyV3MLsr+8vXbOQyOIcDypKAr89NC3SCNziVjps64E4eqZLvUl7
X-Received: by 2002:a05:6214:1c0c:b0:70b:be30:62c7 with SMTP id 6a1803df08f44-70c689212cdmr48106606d6.24.1755650976120;
        Tue, 19 Aug 2025 17:49:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJlvHfhO/H8jyDOpduulQj1SpN2n0STcA5OEQOkKAQCJmffL6GHOubWWLrzJfepchpusERIg==
X-Received: by 2002:a05:6214:1c0c:b0:70b:be30:62c7 with SMTP id 6a1803df08f44-70c689212cdmr48106356d6.24.1755650975640;
        Tue, 19 Aug 2025 17:49:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef35f11csm2323366e87.51.2025.08.19.17.49.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 17:49:34 -0700 (PDT)
Date: Wed, 20 Aug 2025 03:49:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 2/2] phy: qcom-qmp-ufs: Add regulator loads for SM8650
 and SM8750
Message-ID: <ger4kizeltjwalfuwu4dpfjiskrv2okgo5c7d6n3pb24yaxgfo@nkcndblyx3il>
References: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
 <20250819222832.8471-3-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250819222832.8471-3-quic_nitirawa@quicinc.com>
X-Authority-Analysis: v=2.4 cv=OfLBzhTY c=1 sm=1 tr=0 ts=68a51ba1 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=ehUKESkC_4NtqqJ1MVkA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE5MDE5NiBTYWx0ZWRfX2xhzfdEVjLJ9
 kDzteoFS4A6JIpKEhGBGDk10WNrtAVXq0XrZjY2Q8suo3MBtKVQ4b7eEa79rcbM4HuhbooIxRtd
 9ym1piZSDYPCTHA5JnRoT2ScUxlPg0zq6BU67oQqdZ+12tMikl+qR1oPvkLWP4d+8yaVYj/jfsN
 s/9bCmb5OiMjHv8IXlxkDWQe+Tm3p4OTIsBsZt39KC4POu9KDEKkIU0W7M1lMYhke4QOF8QBT0M
 Vnug8TQT8pTg6VoU+7y+bvHoZVuAbpqk3zKNgB751cBUd9uwtkBLY3GnHfHI7AAvO4wur8p3zuu
 JJImMdaMQPRDPsGFSBZ4nH8PX45MMGJHUwFe1aejj4Av7ZQDlxBjQETYkmtMacvjCV50GGKx9/U
 RbUfHZgLWbO7m/ZBS2GqgLiAC1TM/w==
X-Proofpoint-ORIG-GUID: EwjDgTv8BYwgFZESyMxu81Mq-7DjwZoc
X-Proofpoint-GUID: EwjDgTv8BYwgFZESyMxu81Mq-7DjwZoc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 malwarescore=0
 bulkscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508190196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_174938_280932_C8AA73FA 
X-CRM114-Status: GOOD (  22.53  )
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

On Wed, Aug 20, 2025 at 03:58:26AM +0530, Nitin Rawat wrote:
> Add regulator load voting support for SM8650 and SM8750 platforms by
> introducing dedicated regulator bulk data arrays with their load
> values.
> 
> The load requirements are:
> - SM8650: vdda-phy (205mA), vdda-pll (17.5mA)
> - SM8750: vdda-phy (213mA), vdda-pll (18.3mA)
> 
> This ensures stable operation and proper power management for these
> platforms where regulators are shared between the QMP USB PHY and
> other IP blocks by setting appropriate regulator load currents during PHY
> operations.
> 
> Configurations without specific load requirements will continue to work
> unchanged, as init_load_uA remains zero-initialized when .init_load_uA
> is not provided.

Can we please get configuration for the rest of the platforms?

> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 19 +++++++++++++++----
>  1 file changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index aaa88ca0ef07..1c3ce0fa6adf 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -1170,6 +1170,17 @@ static const struct regulator_bulk_data qmp_phy_vreg_l[] = {
>  	{ .supply = "vdda-pll" },
>  };
> 
> +/* Regulator bulk data with load values for specific configurations */
> +static const struct regulator_bulk_data sm8650_ufsphy_vreg_l[] = {
> +	{ .supply = "vdda-phy", .init_load_uA = 205000 },
> +	{ .supply = "vdda-pll", .init_load_uA = 17500 },
> +};
> +
> +static const struct regulator_bulk_data sm8750_ufsphy_vreg_l[] = {
> +	{ .supply = "vdda-phy", .init_load_uA = 213000 },
> +	{ .supply = "vdda-pll", .init_load_uA = 18300 },
> +};
> +
>  static const struct qmp_ufs_offsets qmp_ufs_offsets = {
>  	.serdes		= 0,
>  	.pcs		= 0xc00,
> @@ -1638,8 +1649,8 @@ static const struct qmp_phy_cfg sm8650_ufsphy_cfg = {
>  		.max_gear	= UFS_HS_G5,
>  	},
> 
> -	.vreg_list		= qmp_phy_vreg_l,
> -	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.vreg_list		= sm8650_ufsphy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(sm8650_ufsphy_vreg_l),
>  	.regs			= ufsphy_v6_regs_layout,
>  };
> 
> @@ -1676,8 +1687,8 @@ static const struct qmp_phy_cfg sm8750_ufsphy_cfg = {
>  		.max_gear	= UFS_HS_G5,
>  	},
> 
> -	.vreg_list		= qmp_phy_vreg_l,
> -	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.vreg_list		= sm8750_ufsphy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(sm8750_ufsphy_vreg_l),
>  	.regs			= ufsphy_v6_regs_layout,
> 
>  };
> --
> 2.48.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
