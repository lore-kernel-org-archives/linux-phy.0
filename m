Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F3BEC87FCF
	for <linux-phy@archiver.kernel.org>; Sat,  9 Aug 2025 07:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3miIvX6WD5usr0wQoEcK+b7JCe/BuzhTu/ZsSewS7s=; b=XFaijhWW5nBcy9
	lBYdZKMz5ZzcQ0TXfx4+BTIc8Ftv7PkoCqD/dKmlPBz88KqSl7O9JQO0/3WbAoqL9OqQzQfvh+saF
	WNLtqHxrMaXAyEcMT0v0gzRD+V8k/3dIWvMOuoFx41shJ8egnd1tK8phXZ0H7XxC3P5BdaCFN19S6
	iCyWxjznzSmAZJ5qP96r/D+WxA9Mi5rc9w4/L8/Ekg1GdxPreU6yFYD6GKBYWEtEJTWMyxPPHgkyI
	J6tXCDd43iy+OQ3fHmksmt4dJhtUA2nFt5gw1HwBkA8qiVq7/nCpAE2EBrqDpfO2OBAKc0C8etcGd
	AhIlOxB/ZdomXfREDKzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uke1x-00000004E5L-3jgT;
	Sat, 09 Aug 2025 07:30:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uke1v-00000004E4z-3r55
	for linux-phy@lists.infradead.org;
	Sat, 09 Aug 2025 07:30:17 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5797GVVj025917
	for <linux-phy@lists.infradead.org>; Sat, 9 Aug 2025 07:30:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6cdLO8eSlr9RJYCTskzMuxsJ
	U7OJLCh7xxZyeqOV+Z8=; b=bRNFMl9k01cPZ27SnLt5YRi+YNY8iZx2Se8sUBfr
	wkdGbCG5I/c7d0fecxzy1YDdtmf+DSwdfngbzNbhspvgYn0ZNPTX3L91KwEDJnTp
	UoWPDv1/CbWaNsndJoF1V409sON0wUz/g5xk46o0jIB7AICMPIOAglezeszcjO7p
	fOhMZIgqUQfzDNuztLwhzG2UOuk/yW3DfmE24ft6+62CZ3rSD+Pt/7eyE14NI46L
	Zgn572YM7oVKOsyTrrXHKhA3TNVjGJKU1VI5rVT9w+ZRDgbtj/XqW7m9gK6zyUAk
	ClZnZPvEXUooZeSFfN957vlS28mPZLSqQHsAFYlkIRR/ZQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dwwy0a2e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 09 Aug 2025 07:30:13 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b0b507d014so20411711cf.2
        for <linux-phy@lists.infradead.org>; Sat, 09 Aug 2025 00:30:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754724613; x=1755329413;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6cdLO8eSlr9RJYCTskzMuxsJU7OJLCh7xxZyeqOV+Z8=;
        b=fcFVQsECVpBUqfTDJTuI0LVIJurY5dqn0PMsM74qL68aN+9Mk0PNX8pRSts8ct2KWW
         9q3gzdLP/EaV0zxOttTRaoqKf/RscSe/qHBQzCrMUXmwUys6B1rCCymDN+bYo70PTcLq
         EJ8GQfDdLW+i86rO0a0yIMZejIAULf9a5x9EvsogxiDUE7OewagVJF6nJBjXmuXb0gz1
         zEBLM4CA1TPpirkfck0HoIV38kmHHmy+KLFmFhnF8BCK7PooWXXumTevbYpc1UNC3bKr
         jrrGcghK/D9dO9+ZQs8OK+vw6fjgRZvZfHn6/lQaX3Usc5e93kECQbr/HQLgRyKpT3X/
         eVxw==
X-Forwarded-Encrypted: i=1; AJvYcCUcPMHz47nsaUvLqmV4XMXVH/020P1IWQ9nyjvAkW39a4+z9cBdwwgZrYqtu+dGf2GGN/aS/ODKdqw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwJQ8caIzYxIISPlsUbZnNwoJ3VV83/xUdRe9ZFfbqUCRrdx5ci
	M0MFg2r3VGraHJcw3g1euL/dNING9i7EFsn18FJwT8IBi3+nEZwqAw1EgTbmWI1+Ov0MfOrhkx/
	JD2Ev4s4ZQNXM9nW/g4EiKxLdeGNNOkbY22b5KpYdDTu8twq0H6oThLuRkwndapJKKOMr
X-Gm-Gg: ASbGnct57XW3wQZ5D89SWqcgYdX7BgrvqlQarN01iL7umNOCWl0UUCeljmiq+5PPOtp
	CikaGpKRP+m7eKFy1kH7H7a9Z96RF3/0Ie91dWeQu7uXtbhY4/qQYVXPEn6hyGMn4J4FoHnp5nc
	M/pFm7NNNvLXOBm5BNVTOyEssc9M2AeKDLDXSlHc9qiJ4DBhpoOX63r/gB/JzmAr+MFVWqwK4gp
	pyyRH4HmVy5CTtG7zYBoO/cPpfn9HRQZjFgAD9kN4I0Q8xdomfsbkQs6BK16Wk7CqpGDdh+shq2
	Fff83QMIQJ5x5LlpS9ra4WtunXL1XxLiNTah6mrsb9qcHRqXMuvRSEsrjXf7vYxyGIuMK68pcv/
	F0Y+CdsoF9p+9oyzJGFG+Oi23f0BnwT0Z0Ls61Tvi5C+oygnx6WY1
X-Received: by 2002:a05:622a:258b:b0:4b0:65cc:f64f with SMTP id d75a77b69052e-4b0aed7c945mr88513401cf.54.1754724612726;
        Sat, 09 Aug 2025 00:30:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHI6V+Z5+t3pF8WT1G/7aQiYdC2lbd+mLRd22M3GqlN6tzB0CFSCGVQ963LVGJWMyblECj+jQ==
X-Received: by 2002:a05:622a:258b:b0:4b0:65cc:f64f with SMTP id d75a77b69052e-4b0aed7c945mr88513091cf.54.1754724612236;
        Sat, 09 Aug 2025 00:30:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-332382a9483sm30812911fa.23.2025.08.09.00.30.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 00:30:11 -0700 (PDT)
Date: Sat, 9 Aug 2025 10:30:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, conor+dt@kernel.org,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konradybcio@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
Message-ID: <5nsglhsnqdx4l44r36zmxumcpbbwhns4432hm3lvttsgyjaknb@feobdhpzzo65>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250806154340.20122-5-quic_nitirawa@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyMSBTYWx0ZWRfX/nFrhi3l9err
 BHrNwjDLgYInGewkcg345tW2pYaHVtCsOQ6AQRAyLNO24js0HXbxIqeEirsnQGtGRIhn/vXBVfo
 nLHq6INWYNSIqWKfhauHEoBgDqMwKCtqEBaAotC4nxsuOGWkD1oQ5GqNXhQlqCvFT2tmJJRmJRJ
 wT8tG2ml4OSXVjYZPz6u8e4jzNpx3jZ3w80UvCniwc19t8V/o7R+Y3X/eoKfcjOaooMccOE/hX5
 3Z+oPzsPiLyxQvgpUsUb3GtNtSy3eA71Bnstadn7RVkr9DZ/czIzrF3Ei5doS/c89TSeSmT1lUw
 3xaLUY68gG5HdK6+zBSrXCXkqtG1sCyZrATQFDOCMtVpWDF1eAAG29/JbKpYvQU3FhusSm9dWYI
 cxTC6Me+
X-Authority-Analysis: v=2.4 cv=CbUI5Krl c=1 sm=1 tr=0 ts=6896f905 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=eDCZef9bSGwXM37ZZ4wA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: otsDlC61XZidUEyaG9VJF-rpnc_-6siP
X-Proofpoint-ORIG-GUID: otsDlC61XZidUEyaG9VJF-rpnc_-6siP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 phishscore=0 spamscore=0 priorityscore=1501
 bulkscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508090021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250809_003016_081913_7972DEA6 
X-CRM114-Status: GOOD (  16.46  )
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

On Wed, Aug 06, 2025 at 09:13:40PM +0530, Nitin Rawat wrote:
> Add support in QMP PHY driver to read optional vdda-phy-max-microamp
> and vdda-pll-max-microamp properties from the device tree.
> 
> These properties define the expected maximum current (in microamps) for
> each supply. The driver uses this information to configure regulators
> more accurately and ensure they operate in the correct mode based on
> client load requirements.

What defines those load values? Are they actually dependent on the
platform? On the SoC? On the board design? On the UFS gear?

> 
> If the property is not present, the driver defaults load to
> `QMP_VREG_UNUSED`.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 22 +++++++++++++++++++---
>  1 file changed, 19 insertions(+), 3 deletions(-)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
