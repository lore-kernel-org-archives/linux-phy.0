Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DADFFD26D69
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 15:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWKcrSH37BxWP4vQlnh8TsIvcQ+xCGPwqCJnDll+KeA=; b=fVS1ZcLrl4y1jb
	cro7ej24QZ+hEzWo3zEg2N80g4W8yZrxPi6lA8e/GG4ibxRDkbm6na5Ahwga2Q9QbbePxAdg6hKVL
	VC875lIPE5MhdoDMUyprycIUXTXmld2t3w+wiZd7I0rR83ovDiVJDKCL8HnngV0BmZJvEguPHyS2h
	RyfGmO+/ZjkTKu1bAL6Wt7tXvPNyobK4NMmGj4mgDzVPQWdDONB4dARaGRtXh1Qgnfg+Ga4C56mar
	oubNDkhN8TIXJzpAKpMGPSNF/BjUZr81wJ36UJ7VwbboGc/ukIjW/4dScKffd0HN1EYN5gkSfi4Kw
	+KBjvoD30+vpqwhB7Lgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veEOO-00000002Twn-1sIH;
	Fri, 09 Jan 2026 15:27:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veEOM-00000002Tw8-1Npm
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 15:27:11 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6099N7l0472735
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 15:27:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Y8DchdoDjl88rzzm8DQwcMrW
	t/AMipXd0G0A9HBu7ik=; b=SUGsoD6KrVUpRRsAOoQxKPE4s412viu0SDkVH/9F
	fGF8iGX/DO3+oRFopDGigt9VfuvVw2w+eFGkn+8KdBDgP/lah/VF1w/xp4/K3AvS
	vhjLqJ3NobCng6HR72PkijTLAP4jx0vmKiyBmGPFcFaU021i0hzTTa3nLI3L81PW
	ohMjpVjMfrYxeshSy/uV1OqwvOGeEUIE41CNLeGMb3OGFBUHxmGi5pfxUqRYX2Xi
	FiD9h2mKCZiNVMnwMaeHLPMKKewhvHfBVjWZrp9EsCRDCQAwAK7gnzVr8NgSy7N3
	R4faUyMUhblKOPadH+fIW1s5mRnu98fQ7yYDWCuLH6/LuA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjy0a10ry-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 15:27:09 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b259f0da04so1089064185a.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 07:27:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767972428; x=1768577228; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y8DchdoDjl88rzzm8DQwcMrWt/AMipXd0G0A9HBu7ik=;
        b=FCzlaQMkMpkaztYuPvk1xEcGHSc6RbLeN3Jov/pPChp+2CEtX5WhARyIGtShUjSixE
         xzh3z/441bB8ezQW8q6O/SUYEdy080XryhlDf34ZAxrfAJhDLLeCC45F9M1o1X6Yf+aK
         dFiG/VAdGUBwW5qsSjEPj3mmDRxdUVnylizc2zToblMG4mP7ti0+vk96vWyUgpFOau03
         1SHwZWaeKF2eHm8W9UNtFksLdP7NIfwty4wBEUFTSeHRDEdiPWKQm0PzAz2w8+QK8/wU
         PocAS3o8/rJaOR7uzn1fyEd/XZ5O1/3pjUFbhw02dVPR2YKbbGnHEBFwdw/cKaXYV/wD
         qqHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767972428; x=1768577228;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y8DchdoDjl88rzzm8DQwcMrWt/AMipXd0G0A9HBu7ik=;
        b=tvTAVlV/gZ0AG300Phd5z4Ql1a8f4kRPOnvfik6HWxeiTN80JuwkG13/xFqexpefem
         JcDNFhqOI6nlZ6ospa9Al3F3RJc4iGKc5jgwwodc+pxE2l7gK8eirAy61bf6ZvkPYjvK
         OD558WnRBXQQ1kGwtVB0/ksFio+k1FvHbemXgk+AmbGYe8Dy+1/zVGgjafivv1rSJXfK
         9qqJ0OK9prGSjhUWXo4y437NAzNsjuooD0ZUbpZ0CjHexkT0c0/mxMfmwkxOkuoVHwiE
         knBf2c8jOeHoLHe/BaIOZ4v402hFo1K1YltLCqsPsJs0Pe/8B2mFCajxKIu4dh8JMJBs
         9OCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPUVoKZ2ptoLxhthoENqZ2BXFXk5w3scn/0sJUQ21DbLRSXO8YffnfjnxBbPG81rCnqcxnsBLstgA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzr9lWtFr79p0zLPGDcb3oRydM01k2xEBLbIS0EO/9L01E47Ggn
	WfvDj6gKnhd+915sTI6uc0MWxyWDOTgm/023GjiDsul7SsAgycaTGNwE4i9cml2QyPkE/0UD55H
	1ykFV46BI5hsiZ+g1JWz/mt+SFB8gtgAv1Jo1UcnZHjnYVeCDdsGNHxyVCHnrpyUzQLJuqTb0vn
	Fu
X-Gm-Gg: AY/fxX5dl+iQPQKSRb95Aml12UVi0RyH1/KF6nUPIk9Sh5sJQOG+kE+BQh23iS06xv+
	AeZmm4GKzrsdB/cKJwOw7IqV//K1eF0TLljHFFtEVm4p1yeJn+NvUuXrQp4hvlhvFQZHZX1j+/9
	MgM8efUapnW6PovzndplOyd1y6Km/cCB9uuDbZH5AJ+MZhJDi7M/0TXaNL8tLWWJj+2YNPNGbgW
	6jkdZPnFAtnuMhJfF13X6iAKwrNdWaxczsf1LWhBiazjkpVWKNMTTAy30vJjk7CycFupj4xS7Qt
	78ifzYVvMKf7ABVSjvRV8JklEURPgofDPM62P2kRuhhnI5Vr2RK3fCw5YKq5+U7Onqgv3sVYJRv
	Xlklg+BPzWcCcGxC7Av2u6Q0jgXlOxlMkzkCTlRSmOTCbIY3XduTtKjjFXWt1faUR9XllsTU8Yw
	tsBKvWA6O6hhG1nLDEEYBr3do=
X-Received: by 2002:a05:620a:458e:b0:8b2:7224:b25b with SMTP id af79cd13be357-8c38937598dmr1418115685a.16.1767972428407;
        Fri, 09 Jan 2026 07:27:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHT9tFfc7gS81RaPbkOnVTLwgWozNGf2TdgOHQBHYGKonVlbh7RXUkGNq3wcO8DwIDqtpuMVw==
X-Received: by 2002:a05:620a:458e:b0:8b2:7224:b25b with SMTP id af79cd13be357-8c38937598dmr1418110285a.16.1767972427812;
        Fri, 09 Jan 2026 07:27:07 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb8ad930sm22376341fa.28.2026.01.09.07.27.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 07:27:06 -0800 (PST)
Date: Fri, 9 Jan 2026 17:27:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/msm/dp: Correct LeMans/Monaco DP phy Swing/Emphasis
 setting
Message-ID: <qnwvucdihyavgn5prchafmfly7mc4b5ts4h2wxjky2cbkv4t33@ct6zncecngvs>
References: <20260109-klm_dpphy-v1-1-a6b6abe382de@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260109-klm_dpphy-v1-1-a6b6abe382de@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDExNSBTYWx0ZWRfX4yTzsgwAwzui
 s78MFrGDYIbwpFdY01rfLumTv4uzSJIogngcnbPYAyGzWLd7+L8OV6Ql1Kq7vPiMuVo7FnbTDJc
 w0sLP9Yt9vkzFnLLaiJ7iXXLQCoCt4690qnLVGdJB/DCOOvqesHDrZ2OctSNyVKmlwa1repN2q0
 egteEbWi3hpLUPhCKcRSrWnIVoGb7ptVhw4jcPq5i4dN+pU1qsx4ALq/C6Sah3w+Uocp1Z3oKvF
 gNvoid9kdGd/Nyi/KYjyDzVg5YIbyFdNcZ3gt+y14HofOx7GJyHb4PO66X/DQ2PbvZoF3rbDo5g
 stnaw3sBoCJp0+P9R8FhKMx+YSuqzwG/Ljk60ZMb6DD79V57DPr6J5P2nAxsn3S1BCsC1hFqF6X
 VyeTA9oNO5F23RsRq9g/pZetp9idxL6KQulH5yxHj/qRnzGJMVqlvSF1IQ8SkVoRtJpq3QZQEqs
 EJAc/sduHNQNlOwl27w==
X-Proofpoint-ORIG-GUID: UR1JbcdNg7_EbM51QfFo5PjSlI_nHi5G
X-Proofpoint-GUID: UR1JbcdNg7_EbM51QfFo5PjSlI_nHi5G
X-Authority-Analysis: v=2.4 cv=QPFlhwLL c=1 sm=1 tr=0 ts=69611e4d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ePONTUrQY_oyHk2hGNkA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_04,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_072710_369666_F669D2A1 
X-CRM114-Status: GOOD (  12.88  )
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

On Fri, Jan 09, 2026 at 04:30:21PM +0800, Yongxing Mou wrote:
> Currently, the LeMans/Monaco DP PHY operates in DP mode rather than eDP
> mode. Per the PHY HPG, the Swing and Emphasis settings have been corrected

have been corrected... when?

> to the appropriate DP-mode values.
> 
> Additionally, the HPG specifies that the LDO value should be set to 0 when
> in DP mode. These misconfigurations can lead to link training failures on
> certain dongles.

Separate commit

> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>

Missing Fixes, cc:stable

> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 27 ++++++++++++++++++++++++---
>  1 file changed, 24 insertions(+), 3 deletions(-)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
