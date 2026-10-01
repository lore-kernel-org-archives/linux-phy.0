Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02A6ACA5FA5
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 10:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqKFi2yjR8pfyhj3AeEuDwjXDYbVnawI/j1Et19JQ94=; b=ipE/neP/+b19uH
	cbt0S69bG9G5BMkTocIbyoLB+PKWCagzoruoK8EdXcPuPEAfsXSg/K10RtDWY785/y+MiOo8RmN21
	jS2UMYH1DmXAaynTnmpya2yeexVH3FqVFFe1vhKo8TvDb/pUPJioEnXx9hDuNeIiT1n4w4cEjbTvg
	xpiU6K6BqM3kCw1K2dO9sxbZRhspBQz0V7aGyZpQytcfVptu51HjRy1/Zj/q1cKcxAalI+UK51pGO
	U+9rtZxyZsagniwcIFQRwMrGqg9hxsPJbTE87oNz201nUQBW7A3Nf/mNuajgxDTs4s2TK42M94PLS
	h742pcnGoSbqgZdCZzcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDbp-00000008Sed-1Z9d;
	Thu, 01 Oct 2026 10:01:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDbn-00000008SeB-3ypJ
	for linux-phy@bombadil.infradead.org;
	Thu, 01 Oct 2026 10:01:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=FhCLJRTVNsdis8B08EU1ZSRsp44UCFICG7klwxtE3HU=; b=nulcWvavGnkdZEDVimvFccIVdt
	DL5WThM6Xblb4pjyOj3IagtFAr/bRiTj0L8kkdrMF9Jnnqahiz+3XpKAArbu69ZNosZgA+OPeL1pe
	GyRUoTKNLzKdeZ/Ll3KWwWtSbAhlkqlL+bRXfzksi77soLU/TotT8+D1wEYACxipnimBISSc8saro
	ge7+mA3GX9EIXQZ8DI73WSAWG37+9zh7gPV7cDrCq+7St7DGlD13YDhM21NrSXoEvKObannYug+cj
	pC/5yDdUYPQxHW5hTB3f79/tSGsCLG3e1Mwzrc7EuMPEvVIJrom26u8YJtishwyCGX2LyvMeTulit
	Pso0+cYg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xCDbj-00000004pBT-0BKz
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 10:01:45 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6916xRJw1289117
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 10:01:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FhCLJRTVNsdis8B08EU1ZSRs
	p44UCFICG7klwxtE3HU=; b=Qh7iwOS2zSkfO3ogGqaI6pnDJNS+iBqnwqfcqtCr
	ywhQ+VqLGlfdvdDkWQiuNLpNURYaDNCaxlyFmYauKnzUHxCSVxiAHJsCvRkCfyDE
	qNYJMqhPfXm7eX4FszIV28ylcv6Gw0G0mTMxLum/Ia7Z6/FG/sfEmT6o8G0dKIy3
	ahVt53k3z8uft99r3zgF1JyCj6z5vy2APLxNoNPb/kDBkDRdwfknV8doIv3wEuo9
	sy1iVFHsbE0lJ+l5pTGyUspcaatNEn73eWZC5GK3WqWkd1hZqEGWhIvvt7fRlXdz
	6ryVH6UKUtaYKaPbqMlufOvDaLeKyH6gdEQP4PjwN3DdsQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h17pjb96f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 10:01:38 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5c93c294214so1942714e0c.0
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 03:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790848898; x=1791453698; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=FhCLJRTVNsdis8B08EU1ZSRsp44UCFICG7klwxtE3HU=;
        b=THaInzbQNYzDeVLJdjgxwldE4w5GCtoaDOE3BGqraWkfFJyPU3RmjYm3x83wNzQzKt
         JwmHZV6NfKN7SIFGO/mNKOpniGTJ2j1RDEd0agZ2J/urgFC9hKVrzj3jIkf6PZBQwmFD
         phcyeeEf5pnBy679AEQxMYaOWv/fHnoL9+vAWaLYkQe/j9uceC/PY0KogAsS1tzClbAq
         EJb2YspbF1ei0Au7+bjNc6tFrq3hUOSn0z7EouzGtNjfT+pGc3ysH4xHiJxT6jkqtycn
         o+pHtkIjXvHtl33BfCC9EV5dDS4vf+Bx2/uCc9vvoYicCcU3jhfGFOmQS1BoZO2yVq8v
         3gEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790848898; x=1791453698;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FhCLJRTVNsdis8B08EU1ZSRsp44UCFICG7klwxtE3HU=;
        b=hAFJvaXdIXORQv2CzBGnJy4u2LhidB61SPyDM/1TgsQYq8P4x2WfXFw+8Qo4B0i7n8
         bUo83/T35hpOJWVvH83nRQfC0ArOeCre8brB53rz+QIZQ3FsbBR8j5km0GnWwjgFOiyJ
         IRDrFURyv54pGEpWQQKFaJufyYrpD1rDgN97WF+HtLTBWxoLJXsFQxbBsFT5XNH2b5rw
         Nkmgm1VdkLuNTivygMxxDMqUiIrV1Mk6qkNz+mHWVx/z+ZVpRR3BR2XgARdg/JpNwU1e
         OBjjekBjGdmoOnA7w8OBJBsaniP85lpvcgVHlXDxR1nUvqHumi1yNNCMslbnPi0ACQjt
         QKTg==
X-Forwarded-Encrypted: i=1; AKwUvBywkVOnSPfwTjBNu6eJzPhveQLOkW0QX9OGVvQFBLhi2PtAUEkro6KnxeGfT9lkaSgYWrIcBMR4EjY=@lists.infradead.org
X-Gm-Message-State: AFq9FYIAxgjfNGXmiWVSgraYZgO5mG6NiSA+e7AZnCfcQXyNGYs5KK/c
	IoB+FlXuMzdgecvgUFRps+AULGlzgunyY07IVz/DkNOsH2cbLMsHkzMxFSHRodvcCBosSj3fufZ
	Qhn+xzRUMQGJXxN1HEobPFnGYJux0KxWmC8baGmOLZUvPnmBo0t1zzp8t/tGDc7eoAz+rxOnMHD
	20
X-Gm-Gg: AYBFou1N+thKy0euy0QC6poPdriT9c3pNwrMB+HGwkzXflnJgRpKGDmivzNB7SZzDXQ
	2fF7gs5oc+d1WuDfN0rmPHtNEFv5fpxLGy73HFwbEHH1aMwy2MrXs+kao0x2cBiHWlor3wF1lCI
	sDGARKh4h44XAX4H1hLa6YooXYxmxQ4G2q3JOyYM3AJo6HUGHeNJOT8/GhfL4VK+6r2vDZAaufR
	YJnpF+T/HxO+cUhIgpsii/dvgvgZBn0kU0Eqq8E0WZJWnnJrLCG09OKSXCHt8bNngjRZ1NEAMHf
	0qiJ8zKBzgzzQJfGXChzVtBc9lqHN/9nZSbrf08NVuPm2XCseF0/hyX1eRnf7JCiy0Duj34sAbV
	YoWrBhLCamdR8Fg6+tfyyWlMUemIg9C/BhVRxsIiRiz/NBMRXKNJsMrUoYCTnGWGfkeBp55ILEx
	SrAf6VcTPpbzsN
X-Received: by 2002:a05:6102:3f91:b0:7a7:195a:1b23 with SMTP id ada2fe7eead31-7be73997455mr918857137.29.1790848897321;
        Thu, 01 Oct 2026 03:01:37 -0700 (PDT)
X-Received: by 2002:a05:6102:3f91:b0:7a7:195a:1b23 with SMTP id ada2fe7eead31-7be73997455mr918853137.29.1790848896786;
        Thu, 01 Oct 2026 03:01:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a7717f1e64sm14360591fa.17.2026.10.01.03.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 03:01:35 -0700 (PDT)
Date: Thu, 1 Oct 2026 13:01:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v5 04/11] phy: qualcomm: qmp-combo: Ignore Type-C
 orientation for Glymur DP mode
Message-ID: <rp53rdt4rseek4cjmyqhmwg6rm25nnm7e3p2qvmjkr3l42ymmo@25os6fta5wm3>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
 <20261001-glymur-phy-v3-v5-4-3848c2615d5a@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261001-glymur-phy-v3-v5-4-3848c2615d5a@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=eqpKXYpX c=1 sm=1 tr=0 ts=6abe2f82 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=cuVGQRL4-KZBxk5-JMUA:9 a=CjuIK1q_8ugA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-GUID: EXxu8jwHKW2SbNUAw3CTa-V5RLdlET5F
X-Proofpoint-ORIG-GUID: EXxu8jwHKW2SbNUAw3CTa-V5RLdlET5F
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDAzOSBTYWx0ZWRfX6Uv6f9gSG1Ig
 5hkNKygsu+9jgpm+PgUetrWVcSMYjsdjkQkvp5+JndvmMjbo198M2a19wA5VliUNPsxa3/gkpT6
 E8JbbMfgKFJI4Ap4Vr1xLArAllpeKGc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDAzOSBTYWx0ZWRfXz6uExy8a0NhL
 VTJedpee+j+Nf11YbzAiH1IVbyWaKiEgDqht2aVKRuYT4aicq2XNTfZ8sezJnMKEK9MCZWDcea3
 XJYx26TZAxSGTlVZnINnidyzh2I/hqxuh3fR2p6qgiHys4+xwX6TiOnojMD9hsRYEVyQBWkYEp1
 0rtwd+RkSFpLZP8LMTXPS44mf1FqQWXL84k+mH5MjxXQtRB09m/ntyOXmC4Nve5uW0VcyCaU33/
 ct6XczsUG+uWg/jfG0Z6a9JiKMRdEC/0ncefG5vzDNvjn1SC6J+3gJE/R9ciPgL2cYutZLS8G1q
 RgVhTqyPut6dMuxpR9WWsb0+9mVNsuzpHKwO9dCCm82JC1sfrjPM44QRJT07hjgEjSmx62R/c0Z
 Ofs1z3ogCA9NJD1B8rT1wgiyTWBhIKbo9qd7ke/ucQih8fuj22UNb2SHGcO8d9D+GIOOj+5gCjF
 65bC12GnNeMMkfG60Sg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 malwarescore=0 adultscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610010039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_110144_105388_94CCFB93 
X-CRM114-Status: GOOD (  18.21  )
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

On Thu, Oct 01, 2026 at 03:04:21PM +0530, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Glymur platforms use a fixed DP lane mapping and do not support DP PHY
> mode reversal based on Type-C orientation. Add a configuration flag to

Does it handle orientation somewhere else? Where? Is it a property of
the SoC or is it a way how it is plumbed on a particular device?

> ignore reverse orientation during DP mode setup and enable it for Glymur,
> ensuring that QSERDES_DP_PHY_MODE is always programmed with the
> fix mode value (0x5c).
> 
> Fixes: 815891eee6687 ("phy: qcom-qmp-combo: Introduce orientation variable")
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
