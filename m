Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD64ECAC582
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 09:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NAuZOXYM4LATF4I/s7zg5rxA4yIT/4SPZAzvWp86dBk=; b=V4oeE+adrk97BN
	7dBhoHR8t5VU7IEbilQCiLKJt/gNtByhBu24s0HaCbVIUeu9pvUBrBhzWQzj21JzMNlT3Ksruz0C3
	tSOra9hyDJ3T42FejfZ9i0euUGQaKy4Y90xVPdZrQUzProTmtDjvBMbhLKkncalf5eQaRxuQgqoVr
	jAVyjimUhWeqh5rvTZAFPey5u1Phwbpgf3z5gpcH/V0J1BjaXFtxpTJFUm1vGGN+SpNexmgKBOuou
	Dk0g0rmQT5nOGT5ErSnoWYqTPs/XCgUtF04f+GchOHXHrdItg89ne/2xWPtf8zrip86JneAwB7SOT
	f0GqNVd/+xcPiEwkwamw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux0WV-00000008Qbo-1wNb;
	Fri, 12 Sep 2025 09:56:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux0WU-00000008Qb1-0664
	for linux-phy@bombadil.infradead.org;
	Fri, 12 Sep 2025 09:56:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=OD9Udd7rbiexckZHIpahTYqBLCmCWRywICtA7wRkc1o=; b=TNoTuaYrsM1EHB4uC/EQ8Jpnh+
	zkbhQ1vLtfpzO4qHnQp/5n/4nYOpOGOqM2q+P+OJ20jhpO70dewbbZHpX4fiCw+ys9bAoqb3j4Sy1
	JP30Yz6Dy1NQDThLrY8t/qs79gseT9znsWekudkpQBKzzVdEaERynD9imRfgXPkoYH6Wu3XwLTmwI
	Imm81CFiRJQ7zskXaSXq42PDsnIZ+2rcpnJVqKJqcy3jJ7xGUJpnSf/qLmy1EFR+5wK5yljfXpH1r
	jGteJDf3s0eINLjq4Egerxw9qRJPP+mxZ1G5H6ifgAXYzmK0a+qhn2E3qzAFhCIAbxVpVYiER8od2
	J5iSpXyw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux0WQ-00000006Jvj-2VEn
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 09:56:52 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fDIL018555
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 09:56:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OD9Udd7rbiexckZHIpahTYqB
	LCmCWRywICtA7wRkc1o=; b=QHzpERssArGdpxOQxFRxqzVwLfUS1u4bDarSxvg9
	e8jIYhrccYF7cecxuM0xPfW4v0nx8yrzK9OWVW57dfQgyvi2gMY6IvGw1DPxZfj8
	9MA05eP12GFFEe4N+yFUTnbPASptLC+grOZPNEhbM5mkOsIHcQbPVw/r6YZc5JhI
	XF7BGfqr6yghI1d+z9x9bXKUx/rUifwwBStb3cECb2UJb9D/4syH/gAB/lKvpEUT
	4X7Hn2D4viFh9INnrBXQPhkzG57ts9lJY3/zXxI36dFQicdshP3vAH4WwpCUURY/
	+YtFtceIBMW5bW6p9EZUuX50eUgVdySpPTPElq78/fMxGg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8ak2w6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 09:56:45 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5ecf597acso42188621cf.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 02:56:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757671004; x=1758275804;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OD9Udd7rbiexckZHIpahTYqBLCmCWRywICtA7wRkc1o=;
        b=sqWGbWwrLNDEgUJcgQpZfotfzSNR0B4oevaps873Jxu1Hfa+ol1/P16GKSNMJJe50U
         zUeT5Mr9Xr94WCuHyWElD3RRfTJ3v7mLOclIKMDYD0eglWCh9M7Lqzgw0uz+qnXtZUqA
         gG6s4XjouhH8YYT2dVL5fy3tfI83k87kkhI5kn0tvIb4lvih6h/lH4aY5oS7ohaqySzl
         vEAhvQq5tXSS9l1WJ7lxPTECe4uQWGm95oKAfLbSOya+n2LE7i+1iUP2OZKOgrvClPZn
         XCcLAiktwhAhnS+qzTgry8hYS7XIvS+BByNHCvYlk4ea84drVrINj7t9yptphxB27Y/6
         36cA==
X-Forwarded-Encrypted: i=1; AJvYcCXY3XV7m8jXKDGjSJ64vMUzEDT0eWqw5QlrrbCJvvTgTgryKrOz97xcCrb0BOioYHo84vVPjn0VLU4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwK+FGpgW6fsFhueARbCrEVdWLNsheQoDZHYA+uIXUA2To7A1ry
	mRUa1Wl6rKj1lnd1S04UvuX0QTiZk1YLsfQPE3w50ACEjhJ+KOI050OOyXaYllaN4D72Ij8T8zM
	+7QMQprNfG6IF5AfwXOeghRlrGJg6C5xMHdAsjnPyEL8BCpx0rMDfI2up4FrRzq3/a+3/
X-Gm-Gg: ASbGncvEd2ISJ+SjDva834n0VAdSCzPVG5pMbBmPnVp7ZfP5z7vScr/LNYbDH1dBE2o
	fV6nbaO05GwIEqcPlIRA6UcZ48nzqXdydNZr1irWg/Vu6Y1eaKYBw6/LnH+ODdmX9FZIRFd2DHN
	6XbTv/PKTHvKteFBJS5TwDO1gHfYAfWcC8vDMxhRH1lKcIuBLrV3n/h3wj1li+XQkl3aHfVUR/E
	kprvE5DgLevI9iBbBkCGUOyM+3RDs1gM3FG3B/k3vQzdcfOL0/A4d4VFeIxsYtLiOspAe6WzkrT
	hAR4D2y4Vqz5hM9zmjeo89Esz9FiCwBN7M20G1nW1ItgLS1SMAL7J7igTykyBI3KY8m9qIhwSX0
	BVAywnfTJwFWuwlEDsHdPv0Ebv2mzcEZCJitRqygL7igs5BCWPO68
X-Received: by 2002:a05:622a:289:b0:4b3:f3b:6b14 with SMTP id d75a77b69052e-4b77d1d50b7mr29032661cf.79.1757671003813;
        Fri, 12 Sep 2025 02:56:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHrg+eZkUE6kJIyOVqREfUPXquzVktUgoDHxmRV3RNRm2kAXVXWPWukFFYePEL33rxXTVJhig==
X-Received: by 2002:a05:622a:289:b0:4b3:f3b:6b14 with SMTP id d75a77b69052e-4b77d1d50b7mr29032261cf.79.1757671003214;
        Fri, 12 Sep 2025 02:56:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e63c63e3csm1057056e87.83.2025.09.12.02.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 02:56:42 -0700 (PDT)
Date: Fri, 12 Sep 2025 12:56:40 +0300
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
Subject: Re: [PATCH v4 06/13] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
Message-ID: <ejwrkogssqdzxraacvxdbasxg2ud4t53rb6da2g4vdryyjuzoi@evdibveq7w46>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-6-2702bdda14ed@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-6-2702bdda14ed@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c3ee5d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=kgVMhnFeOIEbK27hWpcA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: swt46K1ia8xWj6OQiMh2-3sG1F3qkHe6
X-Proofpoint-ORIG-GUID: swt46K1ia8xWj6OQiMh2-3sG1F3qkHe6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX4lx6QQZvheLw
 Vmy0GIJlfdfTjWlp1swzFd+lQfipIR3PdJD9ecezLTqAY+ZUYfJk8aun96KUZyFDlL+RXkG66v3
 POZYIEHN+2+K4nqXVSiPBrLYXOIlKL6K8xfOngXITo4ZW80Mubj+gg4Nxj9X7yJ8xNRKFqUDefW
 gHdapSVPR0ezt4PQFwDg94sPxtRo9gzE+lMpILEuKjIWVy0lVMv2fg/Nak/Na0knN5yJieCIBba
 UZUZlVJPimXw3c4dXDRxzkfUzJOrNXeSRjelH8qBakGM02lmfJ1KwKqpIPqqtzfVZMp3CraInZO
 q9EJ6C/2PoMiJeNu2a3borHiFMY6di+qQ1+ByOiTX7B3M+lRlkOeauXQUPg0eTSKsUnMugN1KUc
 MV4WwA2Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_105651_043977_BFAB3A22 
X-CRM114-Status: GOOD (  17.01  )
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

On Thu, Sep 11, 2025 at 10:55:03PM +0800, Xiangxu Yin wrote:
> Move reset configuration to be managed via qmp_phy_cfg instead of
> hardcoded lists. This enables per-PHY customization and simplifies
> initialization logic for USB-only and USB/DP switchable PHYs.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 56 ++++++++++++++++++--------------
>  1 file changed, 31 insertions(+), 25 deletions(-)
> 
> @@ -1147,11 +1159,6 @@ static int qmp_usbc_parse_dt_legacy(struct qmp_usbc *qmp, struct device_node *np
>  
>  	qmp->num_clks = ret;
>  
> -	ret = qmp_usbc_reset_init(qmp, usb3phy_legacy_reset_l,
> -				 ARRAY_SIZE(usb3phy_legacy_reset_l));

You can not do this, it will break compatibility with the historical
DTS. Legacy code should continue using the old list of resets.

> -	if (ret)
> -		return ret;
> -
>  	return 0;
>  }
>  

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
