Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B711EFCE4D
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 23:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUCEOan9Q+IXyLgpzOkBoW5vF07B2HAajea+vuwljoA=; b=QHpx0rMPHUGpnp
	iUHVEZIoja8T5fL1Do80TfofvUMdz1cqHW27ZsR8Smzw3Fkb+Mx4JnAEB33t/Pa9FRcAsOBj88K5e
	AXXjQnVQ6gbHOyQgQO4MDyie4s+4QGcKf/6oxx5iuAgtr78Lg1deFxWeYs8Kx/OP8NDEba1yjFrWh
	mXZE88nTak1k9iBXqSvgyUqONZPZaVe+kTZ7ijVfrwXlzVeNqcT2ujmA9OaeAl6lrpMY/SDGf871v
	wNbSYpTm4xth8e1YFZZxVOfMyfkt+Ut1r/AuajQWAFV8MCoUh289K66Iyxi8nWv1G03RxV7NtRvBr
	f478hrbsDKzsFV9PCCyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxw2C-00000000eTO-12Nu;
	Wed, 04 Mar 2026 23:53:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxw26-00000000eQ1-2gZj
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 23:53:43 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624HI61Z2613894
	for <linux-phy@lists.infradead.org>; Wed, 4 Mar 2026 23:53:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=V50tlCURGOSWEpUNVC/f5JBG
	lAu9WVw1+uCs3+cXy8Q=; b=bHnTZhnFYn/tiIi8J4ULThpsgbab7UrmgW5OOJJi
	m7XwaAv8gzL5i/PPJCFmKWpARNfKhBWcj2eQ98Jty0ias+PktBjqdKCkXAPaELNj
	a0Gl+BUEEowrMPAKllx/ORmbxKvdbnv06gsWNMRC4vNwMWDRsN+/Umbybcd+e88B
	r/+5sfU/Jr5rGByjhLIWV29LUZnpLgy3RQf4wS6C8MkG2aHm4Hpng0Hc/lXMymq8
	+xAymHfPQW0I/zSIuwudwEu/Xyt9EGrksONWTgra0NIIeQgGca3xHZntcQ/B1uyx
	S9yybI9F7OtwJgszxO8ID4FgfjHXJVcqqpvfDRNL7lu1yA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0w91th-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 23:53:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb37db8b79so5402298185a.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 15:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772668417; x=1773273217; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V50tlCURGOSWEpUNVC/f5JBGlAu9WVw1+uCs3+cXy8Q=;
        b=J9wd2uZWy5gz4IoBFr9hzd30sSQmVfnpABgYEshS5i7mAGrqQRmgj+AZ85/5uW4mhF
         FMhI+CuRrw3Ah1E+50Aq0Su3VVY1mcD89uueMdQibZXWG6xsybzjXoqbJANSs0dskjv4
         V9VhSUACbpxZ6lQKatwtw52qFPny3q5FxpNueabHOM5sQ6VWBDOFS2aiDNzmkD3u4mxf
         IsxLbi8wtMG3gzAPa8CgcAG0obDJeuomuCUGfbYTXS5Hac3HpvCZyknKhXZnMqo177NZ
         jtb6Tghxr41mCphqhY0jgAGrFq/CDToRWzMTo1XCTm4DHjpT4DnUAQsMy50VTxTo3dd/
         tvTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772668417; x=1773273217;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V50tlCURGOSWEpUNVC/f5JBGlAu9WVw1+uCs3+cXy8Q=;
        b=DT8pGjJuI3vZFFEJWwCK/SF0yJTuTJ2SBFSj4LqJY8sIP38uu7mHTCucV8eRA0FCB3
         ZcyOc5HmzQ27j3msCyiYvBeerH8TKDs41vTEHII6mIJb71ZGK0o/NrmddI1j8kOhiJD4
         VzGN8hoLmpHA1FAM7Vbb3c9Q2TjSrz59lasrVuj4ZCbAa40yTv0uowOH0jhES5QISfNX
         7eH8ItLQQkt4ZihSfvQw+FmNmHSGezU7BM7wgGv1vVQfkaVhtW8Hb0SrkcNA6M2R1sJS
         khSAGDt0L6F1Vxkj7y4nTuk3mki3VTRgcnTVvcy10f6CGwX6OJQdquUkAHWSMcxSImT2
         hNmg==
X-Gm-Message-State: AOJu0YzKOU/y9CJm7daI84T99IFJdqSITJ1hLbyUqLx/n2YipLcUgHCR
	zrXeY89KwzSBvO99lGWr2GVaXwEdfTj++QBX+HvlUdYHKOTrKCCcPGVUWc2Q1oiZ0/UFLb5a+Lr
	tmV07XWD+teEZqZf1U3MS9NEG1L9EqUhpnPRz0tsNwXHdLHQkdwF3zUqXq/LKYNojGSVH
X-Gm-Gg: ATEYQzzCxhn8nRaX5E2ngEn9YozYO6G9dqSwoDI6lo23AAQjbccwYRV12ivFbCWX0Ql
	zcPCOl79P1pD9DMrjdk7BUd4VlDwTQccMZZidHHbO62DTlxmzpJmrRPMFABevJRXb2KveSM5cwv
	51QxIf+SWdPbfCN7tGD6VW6KvQZJL3ZS2k4L4gq7w6beHY0idHl5tZJVVTSEno7H83GuSAm2SQ5
	YKr0IAxCFareWVNZIVA9j4s7HKwHNq+9/sgKbBQBPhpTHGoPq4W9On8FpL5+6Fn55ktkMl3ZcLg
	C5mCzY3prM/uchALZ2MifvgsQMr0OCzA8MRQAhYfyejLYKMvR+wddYJiN8KkGaHAgRloQi3cpxo
	mKXzFjyyJlMxEEWM4siVw1eeScU9bgK0RA9HadjSjyeKSPWvrgjyOlIFTR5gCH6EMQdUHu46M8t
	oD5nXpyJjEzXr5jXdhDQ96E99VqkXWZUJm204=
X-Received: by 2002:a05:620a:3727:b0:8c7:c25:9e53 with SMTP id af79cd13be357-8cd5afa6707mr498607385a.59.1772668417039;
        Wed, 04 Mar 2026 15:53:37 -0800 (PST)
X-Received: by 2002:a05:620a:3727:b0:8c7:c25:9e53 with SMTP id af79cd13be357-8cd5afa6707mr498604985a.59.1772668416537;
        Wed, 04 Mar 2026 15:53:36 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a1296993a0sm933837e87.31.2026.03.04.15.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 15:53:35 -0800 (PST)
Date: Thu, 5 Mar 2026 01:53:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
        linux-usb@vger.kernel.org, netdev@vger.kernel.org,
        spacemit@lists.linux.dev, UNGLinuxDriver@microchip.com,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Subject: Re: [PATCH phy-next 11/22] drm/msm/dp: remove debugging prints with
 internal struct phy state
Message-ID: <esbforcln7bi4e5enmgwqj7d63usdyoobxyo3hwd4paou56aoc@kjlizz3ubksd>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-12-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260304175735.2660419-12-vladimir.oltean@nxp.com>
X-Proofpoint-GUID: qWiuPKGwYdQRFACuLsDpRX_gZZ1KJzmD
X-Authority-Analysis: v=2.4 cv=BNK+bVQG c=1 sm=1 tr=0 ts=69a8c602 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=8AirrxEcAAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=tVI0ZWmoAAAA:8
 a=3ogKHO_BN1K2bhpmqR8A:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=ST-jHhOKWsTCqRlWije3:22 a=-BPWgnxRz2uhmvdm1NTO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE5NiBTYWx0ZWRfX1YOJmmp0/9rh
 O91yVdnqzM7qI3L3BQCe0A56ZjNDRJH6TghaPcePg8KSfvi4obBqljhj9N6lEKl8NDRlTGq4qvb
 yWBErFVCTC3/st+2gdEKNyDMutPE4Bwy/JQGxP7c6wcMlV3GD5de/wXN5siFUTotWF3kZh4yDPp
 2kuaa3ZnO5kad7txSW0W+c5ncGBNbhAokPcLaUhdfxQCNR1qUriNmM1vsB5syagBnGDC5Ne4ZyA
 /h9i231Gy8gLOT1ADAKYLou+vud8BsgnOpYfrtXvo2cbx7hhY6tBvUki6CJdXqT0HR/1QAMsTJl
 sExf77Q5CcFSFO72KzQHX8LMxRFaaTECRceLRl7Dc4R3th/g3KrnUqb9Q8/xEfajFmO8KOchLVb
 Q8Nv0h4QMTGUlHYL+pBKh0T915kjse3OCDpSOKi3LW9nCD13wQaAOMsvbrzd+Nxue2lj8Ou96QX
 EgTgMPGengModWsKmZg==
X-Proofpoint-ORIG-GUID: qWiuPKGwYdQRFACuLsDpRX_gZZ1KJzmD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_09,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_155338_692353_336A3919 
X-CRM114-Status: GOOD (  13.01  )
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

On Wed, Mar 04, 2026 at 07:57:24PM +0200, Vladimir Oltean wrote:
> These do not provide much value, and will become hard to maintain once
> the Generic PHY framework starts hiding the contents of struct phy from
> consumers.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> Cc: Rob Clark <robin.clark@oss.qualcomm.com>
> Cc: Dmitry Baryshkov <lumag@kernel.org>
> Cc: Abhinav Kumar <abhinav.kumar@linux.dev>
> Cc: Jessica Zhang <jesszhan0024@gmail.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Marijn Suijten <marijn.suijten@somainline.org>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Simona Vetter <simona@ffwll.ch>
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c | 18 ------------------
>  1 file changed, 18 deletions(-)
> 

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
