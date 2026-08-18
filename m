Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0C12C5DF7E
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 15:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kA6yB5Vo498fV6DLSY2mk+nT4jB1bt3y9cy/j158RSk=; b=OAsoWED8Y0pGIK
	41jMbuQ62hWOP8yMVwHHPboXQp4AaQxpr5+8pNYPr2SH7lG1ayItoa+y2UNDlZzmKldf6ORyfW3Hu
	lQG9eyE2HrIy8oDxMoS7TVxER82qVuRkEEepa464hdVHbvstxZU7heqlXbi1yRSCv3Pn+0Iin2I6m
	8qTNAwDKUsx0uhxIZuWeq5VN5E7C3DcDbiPkPus6MJGifZNOYzj8yVZ5xwXLBVTaGxyUOvSu+ygGe
	TB1o6aZaOyJu945HD69u5/9XEI9WwUJTE0Cxn5+Qb43sRd3pNYWH2eW99dUvi2vo62lNKWLC8rMyL
	ov8DlpacQYJWYDYUf8WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwLxN-00000008Htm-24hH;
	Tue, 18 Aug 2026 15:42:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwLxK-00000008HtQ-33mz
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 15:42:28 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67IE0hl81103930
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 15:42:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C82d/+UAQNXbeW8G+O9iN6tLHSBIaUfkFkI8qR5+s5k=; b=FKGcqWHywCNRTvhW
	r3YCGBK/lLZfLnApS9RjN849l3AU/zFIxI84Wxj8QwD5A2x0VhEPgxWzfqW4ANaL
	Pmr3zscAiUjGvVW4IuiAl91SYTkNiZsvzDzWXMDfVplJXEvjoXqANXSvGfHxGBOs
	z0aXKavwHhMDf1yT56wTM6n3icNRW40aoGlxEBB7lNp2jzkcxRHoefABNi4S32jN
	c8JrQW6xB+ag+LIoeJc8uQxQo4YTXifnk+7RnL2/55ReBSS4MJSfxLlj1IIaMeIe
	BCt67MKqa+G3FwfJjFEAg7fyRXviiBoKKeBBmHeBRBtg0AbO9+Bc284f6tjvBFRP
	jFIX4w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4eqtu619-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 15:42:25 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c9d953b71so4836471cf.0
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 08:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787067745; x=1787672545; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=C82d/+UAQNXbeW8G+O9iN6tLHSBIaUfkFkI8qR5+s5k=;
        b=eR/EejB1CZXBvBkaJuLI8drFaeqqqkb8ZpvI6enSBIhO2+8cu86UpQqau1PBj35MmO
         niwdaHz0Po9QZQbMmNV75D+coirK5MRtYXswQWktlzlLEFhZjcQ45WTssQRwETwqqtrz
         qLLt7NNdR5smFNglA5k4mTQ/cYfgzIz4SrMT7EpO7a1KdOhBg7iNl3PO/AJHiQzmGCOc
         1qWE+5cTgpZZKF1WfikhXC4AxoiJthlaph4lBEL806Hh6sjDXUxLWDvcq4O0HRYe/xlT
         LzFA7BGsCqD6zx/TnGHsNHp2aYM3RNX1gM91u5ilmxHjEO8p2EMd+LDn8GazOa3+FQn0
         jAig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787067745; x=1787672545;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=C82d/+UAQNXbeW8G+O9iN6tLHSBIaUfkFkI8qR5+s5k=;
        b=k1Q8Vp8L3VMkmurgg/MScSKTMr7VSmZFCsUgMl/pJqSIQ0+LXv4fp6bAydyw0MCZ4m
         e4+1PLAujNHC+1NHNrLKZ2ANoQYQm+GN0LrGyZSk7AJeFU94vKEOKKi4G2QSAVmAwX/h
         l3yfwgqw7Y4vJag+YGv6QazCanOvWZ5WKmOk1RDWlAg3Yzk93DlMnP9LxrLAsRGqh135
         tls/QRO7o28m1yBkjmXO7rhetQKrNtupRxkCGC3L9ct4w/9qF78ButEyLZZDo+t6MBCN
         Hq9UddlDGei/IZiLRKfCXcTu06RC3J4YsUQDlO1/SzbND+U3KDPTk5/iK6BJ5+3SiTbh
         H2EA==
X-Forwarded-Encrypted: i=1; AHgh+RpIGjNMECdwuWuWXOeayS2lf+AxP8VOBIl0Hmm7kptOu+mTOHAP7WxAzJSZq5CB5+dF9V/4rh7jqSM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzY/VG0Fd/3jQonUkZmK+jF9rZqcTofPY4/4JxbbQuT6+EF8bFn
	4QgGOuDK3zGLbXw3cWnSIIe/8g2jHKWh1+GthVXNi41if6dq7qNLqYU/KrcQYBcU34ZtxFk7IU3
	79Owk2QApslDrK0SC9T5CfDDeyjXlxugEjHFo+GO3Gn6rgTppWtDNuYD8FZPLqtbHMJWD
X-Gm-Gg: AR+sD11vxji8m/FUIiYlhnARcS9fDStRwCJVoMD9ahDlvnfS54MIm/IUx28783oRd3O
	L1gdYn+RaLDvKAGbkii6J7aegdX/EyskgPtULZezp1eXNHyq48ib8oQGATwEqZ0mN8IVc7hokRh
	SnhIYvPPi+zhBPlV0+ys1O0G42i/vE/HRAJm9fFbDthC4kecSI+aHLAhpzD5X4+HH/okVmPzNRu
	wau2oEfElXj//nlgYBmgXDs1Q8ML5iDiKs0zMkSe6dcNuvkY94uwA44JwxxH0hhTUkvCE9KQwZJ
	u29/sbD/poYVyLLwVWFiKsoh/J2tsDocqC/ZyfdTQ0T9prn5oPois2e0gH8+8AxPnImxYpcJfNc
	bRp3NmAPFKWKXeTZhgKs88WOK
X-Received: by 2002:a05:622a:11c5:b0:50f:a53b:9d5 with SMTP id d75a77b69052e-52d85333bf8mr269352971cf.2.1787067744924;
        Tue, 18 Aug 2026 08:42:24 -0700 (PDT)
X-Received: by 2002:a05:622a:11c5:b0:50f:a53b:9d5 with SMTP id d75a77b69052e-52d85333bf8mr269352451cf.2.1787067744407;
        Tue, 18 Aug 2026 08:42:24 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a3f7111907sm226210a12.16.2026.08.18.08.42.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 08:42:23 -0700 (PDT)
Message-ID: <26c49938-2287-4d3e-a6d5-afb9f21d057a@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 17:42:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: phy-qcom-qmp-combo: com_aux enable fails on a DP-only instance
 with no USB half (Snapdragon X2 Elite / glymur)
To: Jesse Casco <jesse.casco@gmail.com>, Vinod Koul <vkoul@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20260808164148.123057-1-jesse.casco@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260808164148.123057-1-jesse.casco@gmail.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDExNSBTYWx0ZWRfX23eVRICJhGCN
 v8KfAwPFxprYJrueS4Mw97XZ+ziqvfa2oZ0vXZzeOQIB3f0zbMQJRz3gMS/MrltURVTqpXh3Ok+
 MhRsE5Y8Y6BKt9mzDVpPCh71aNwtgac=
X-Proofpoint-ORIG-GUID: szJ2mnIpUMiHlJEGG6hYyaCTgOOFSrd9
X-Authority-Analysis: v=2.4 cv=UfFhjqSN c=1 sm=1 tr=0 ts=6a847d61 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=koz2UQyQ733Cima-qgIA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: szJ2mnIpUMiHlJEGG6hYyaCTgOOFSrd9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDExNSBTYWx0ZWRfX2Oxkz3zVPmQh
 Gx7LneYqV/bTHjWaivSeouhQCqSnwkpAMfhqBZCRzoawvkh3g70qTW73JwWc9wTj9dqSM5eMs+6
 Bi6g5aE0F5A9rzozqfLks2jwyn8IKdj6nXvtXkry1pgu0hzUtud78d2YCU/7AyVy28CbRPbCtsJ
 8gEdvGtaWQdD8yB6F/I/ieqSFabS/G25os0KQ/78LhYXrPSopaucyLCdIXIXK6zr2e7chztNCqG
 5E1Pgi4XWLzRgClHRvY227oBazy5FSG8c5E87d7sMTsKjngRzl2I1FKcWk+x7h2UOCHpqkLaruN
 BQhENpwNNELGr0kNZy6AUWvOJq/Gu2kskoKnhI6er1YxWwgYxBdDJbeDOXAIshGmqm98Yricv6M
 3Q6H/VrRJ5BpGeY3lngf6fcY4vX45jxdoDD4RcHnZNQr5ITxoOU/uQI1DfH4/amf4ALzvA51m+Q
 OY6BA9pGEi9IHS+j5oQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-18_02,2026-08-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608180115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_084226_895746_BEB9DB79 
X-CRM114-Status: GOOD (  17.06  )
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

On 8/8/26 6:41 PM, Jesse Casco wrote:
> Hi,
> 
> On the ASUS Zenbook A16 (UX3607OA, Snapdragon X2 Elite Extreme, glymur /
> X2E94100) the internal HDMI output never produces a picture, and a second
> problem turns that into an unusable machine. I would like verification on
> the reading of both.
> 
> The failure
> 
> 	Failed to enable clk 'com_aux': -16
> 	phy phy-88e1000.phy.7: phy init failed --> -16
> 	  clk_branch_toggle <- clk_branch2_enable <- qmp_combo_com_init
> 	    <- qmp_combo_dp_init <- phy_init
> 
> Plugging a display in afterwards produces only "phy_power_on was called
> before phy_init", and the connector comes up with nothing behind it:

Seems like the display code blissfully ignores any errors that may come
from the PHY APIs.. Checking the return values and adding any unrolling
as necessary should make such failures non-fatal.

[...]

> Konrad, the merged commit lists the HDMI port as working, and it does not
> work here, so I am sure I am missing something on my side: kernel revision,
> a prerequisite, or a difference between units. One thing I can rule out --
> booting your merged DTS, the board brings up all three USB controllers
> including &usb_mp, so that is not it. Any pointer on what to check next
> would be welcome.

I carried a local hack to ignore this warning in my local tree. We're
trying to chase down the root cause of why the clock doesn't wanna
enable. I believe the DT is correct and it's a Linux problem.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
