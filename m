Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A271CAC592
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 10:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3qVA2k0UQU092+Ld4ZGzhp6VK6/SKHYbKpCABZljf4=; b=Ox8n3ojBidlej3
	ukMH2LwCSMjRh31LePba4wkWXmGZpXz86CS2YaFWxQR9k4Rbpm4TBhm/qXnSoab5VmrpbkAH1+ExV
	tGoYb32BQ+e8DzFX3OC7i4BYvK4gzSjDSWzMPEnadWjXhfYIyw/Pr+JL+jQpg4FJtPmW457XET+ly
	BGF6x2Y9LrS1c6vE+47sOdYBn6M6WJDs4sMnJsko+3OI/UBlEq8FatMs5eCzeZ4i7Dhutk2cTosQk
	dUh9qJrMjq/FuvlL9eL5Moaux6TT5JIq9tKtj7aII3JrN2oqGszmHfyl07uZWYEJ0BAO3KQ9u2tXz
	BYCsTeLoEzDhr70EKOVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux153-00000008c9D-0oPJ;
	Fri, 12 Sep 2025 10:32:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux150-00000008c7z-0i1T
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 10:32:35 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fE3C001284
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 10:32:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EoZeu0gL7XFLE2oXZAdYX1fB
	kmSI6sTEmRZW+tG1M4Q=; b=aGkRMSDgGwaaJBbM0weNtqcHcsttdaCvb7pGLCje
	h41WvGyTCjM9CEnXLEGhA6kZ5F15GZd4lRFL0MvmJghIYDljoj5iOX07A6aystRO
	ZsF11XtSDDiNXaJL4/Zk3XPGbq94eQ4kwWA7hPrza3qr+fPdHHyBELrzN5WVUCxC
	JbP8GE618fEiK3OLfIoVVl6DUCY1FDEaj9IJCErQ47wUdiS4ft1ATxsZ3iqeHbXp
	5xr9eTX4t0DCsUOfV/yQsIoZ8c0nVzJxy60A8V2pDW+1kooYbH12I3A0NNM7xz7w
	2C4WI5p55cLsDOLQrvZTeSkDOi6iitmh3Wic73kli9dkmg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493f6h6702-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 10:32:33 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-764f0158a44so36617966d6.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 03:32:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757673152; x=1758277952;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EoZeu0gL7XFLE2oXZAdYX1fBkmSI6sTEmRZW+tG1M4Q=;
        b=TE7/GZxT75z8TbnhkwMxV14uFQoWcxqwKKf0L14ffzvSlXvktNzLiHF6i6Bua9Flp3
         uK5U7VTxGp0G4Nw8Iobm4WO662AVvWeXCr3e1UtVrlzFl2Nbb6i/s+CVBQUUZ42pn0kl
         pTD0Mp9pbnaYVVFQYV6wCJKLqBchJqgjZnUZ1PgMmVuOtVJ0DW8QG0BSeVBDWMus9Zh3
         SZkTax+R9RRbndS6GLOeqjk1+We4gsOU4pURm0p5GdiweJ4pdoHKa/edbd8uQyaY6dF1
         UDMm4sxf486W+n93SmSR51OYZGyxNDnJIytyGXhqrSCqYqNkJp8JsU/gSgMN4eodoLrR
         yK6A==
X-Forwarded-Encrypted: i=1; AJvYcCVKYPaA8UaTmXWgm7eapgn1f7AVnngJkIB+FB20FJouycH+peTYcb1oH8Y20EZJ1Xu4+TTgWnlBmJ4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzrmvRSg8gBopKuMviJ/TROIQknzWM2x3gt3Kgvlj8mq0MvNeiC
	mee6rPbVfQ0WSUVA9efO85WVoYeTXYn5o2nQvQwx5QbDMhLL/qu0oRmhLwNiA2JkrvwI2Ij8EaP
	ScG4/mdzm3TwWM+kzBTVpBJLr4EC4qkoFQlwvlu2D0WYGr5gHpQyvjZqI8y9TdnjNUUSJ
X-Gm-Gg: ASbGncs7O6JByENvHPxWTZL9V9qH440Dl47M/cs4rgLlIppmPvB6wy9yEPasTIPyTMc
	LBaUNlV5kBxXP9Wj1YVDGcLSbO87kkSa4ntrS0Jr8M92JUdXkYPEBWyJFMu+i7MlRwDHE990+ZI
	ybSE7yND/ThGA3wbGvRCASEnoKe5QjtLf0thL+xv7bM41vg6+117nNZka9YbQmcdgIeRC+atOAy
	V459eBiRnj2ePh0YJts0Ynuv1emXqAj8CWuGwsQr+7li1E09Wob2CGSJtTnmSyNatKDFYNNMmr4
	TslaYDUQq1Sdivmegyhboi20hBPSCeKbAT7c0AN0JHKMvzonrDyOuBZgr+fYvtx/TJMselnvmyy
	cZTReiH+W0tMIg4B/Os2O5maFzl4hhUT4Z50TAePmd9AG8HvFf02A
X-Received: by 2002:a05:6214:230c:b0:75b:f634:4a67 with SMTP id 6a1803df08f44-767bc026421mr29049006d6.14.1757673152221;
        Fri, 12 Sep 2025 03:32:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH65A47IPcjTGPJhYbtV51wn+vb+zZhqr0yJiBbHtP4GFqDciGEAz/Luthqfq7hIknGdaf0oQ==
X-Received: by 2002:a05:6214:230c:b0:75b:f634:4a67 with SMTP id 6a1803df08f44-767bc026421mr29048346d6.14.1757673150876;
        Fri, 12 Sep 2025 03:32:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e63c63c87sm1082936e87.69.2025.09.12.03.32.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 03:32:30 -0700 (PDT)
Date: Fri, 12 Sep 2025 13:32:28 +0300
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
Subject: Re: [PATCH v4 11/13] phy: qcom: qmp-usbc: Add USB/DP mutex handling
Message-ID: <nfugwwknnlxls75yo5rex6ggu5nzpq6enyx6e6nfnfei3icxjg@t7dnzcfcjw4o>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-11-2702bdda14ed@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-11-2702bdda14ed@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: YJeKSdgijelcyMsuLGCxeNwK8a0yOPx6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEwMDE3NyBTYWx0ZWRfX5Gi837BBPgE8
 vblvhSS/Q88nn7Vure5HiDTMvSSOV3kDs2i3duMZhCo4649IpbDBolnK8HX3jXorAAOQ/Mk03Vw
 Kag0J/pUVdSiMfSVGDFQY/7GdNcjRZaPdP7cdJjwH9zS+n/s9Sl52zoF0KXX22JgIdIvZklM1s0
 7a1f4BHnczm610Xz48WYj7OH1iS3mZQ/GnQ7qyiB+w1athreNRCm5gSSyFinTdi/4AaLErAM8eR
 xKAAl3VNbcf4jzZjCmZBF8xbulBeBUI7HPZQjoXSwZYFSsrtyxT62GQ5CueVpqEj8vFmzTl8yit
 tCBo9XRO9zpbptlyyRUhWiuVUANw7nc06rKkbsJIf71qYKVZQRFS6IdgEIlP64bNlnMXpkMaj4J
 PwECMJgV
X-Authority-Analysis: v=2.4 cv=WPB/XmsR c=1 sm=1 tr=0 ts=68c3f6c1 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=JLxk_RO0mVMWDHH2qmEA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: YJeKSdgijelcyMsuLGCxeNwK8a0yOPx6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509100177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_033234_220444_0BE07C14 
X-CRM114-Status: GOOD (  21.03  )
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

On Thu, Sep 11, 2025 at 10:55:08PM +0800, Xiangxu Yin wrote:
> Introduce mutual exclusion between USB and DP PHY modes to prevent
> simultaneous activation.

Describe the problem that you are trying to solve first.

> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index 613239d15a6a3bba47a647db4e663713f127c93e..866277036089c588cf0c63204efb91bbec5430ae 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -1061,6 +1061,19 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
>  	return 0;
>  }
>  
> +static int qmp_check_mutex_phy(struct qmp_usbc *qmp, bool is_dp)

mutex has a very well defined use case - a sleeping lock. Please find
some ofther name.

> +{
> +	if ((is_dp && qmp->usb_init_count) ||
> +	    (!is_dp && qmp->dp_init_count)) {
> +		dev_err(qmp->dev,
> +			"PHY is configured for %s, can not enable %s\n",
> +			is_dp ? "USB" : "DP", is_dp ? "DP" : "USB");
> +		return -EBUSY;
> +	}
> +
> +	return 0;
> +}
> +
>  static int qmp_usbc_usb_enable(struct phy *phy)
>  {
>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
