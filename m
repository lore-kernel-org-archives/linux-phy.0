Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7A0DCD8C90
	for <linux-phy@archiver.kernel.org>; Sun,  7 Jun 2026 21:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPPRgWiphGlM6Z2G1aDyYOGQAu8lMQ6AieXfHOGmaZo=; b=467dVKC7nir4Fi
	vVSzbsqjbmey7q2R6JezdFiP7J4uoaL9rqhqfDxR/YcZeTSIeyljNX+XwvucFl1n8gHe7U7KQSfVw
	pnGbkTvMpEg7WuEyX2gkJZFpAoGayQv6VYjXndaL9hvRFmHuppiJWcLO5QSPsVuqej2A2pBB4HFfO
	5CBP60VFwTO4xjkz79tR7UTod6/pQI3uGOSf5VJ50PxOVUvGm6vvKnD30rmG21XNLhIHWWjJG0hlU
	eS24lJwsD3YSSYo11Z02YH1eDFHfPaLdDK9dQnX8jp6kyRxajG9PB3j5q6ez7pteDVJHj5wQ0CCAk
	9plA4mHTZXmEo0Z+Lhrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWL4F-00000002VH8-22EY;
	Sun, 07 Jun 2026 21:30:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWL4C-00000002VGS-3ROO
	for linux-phy@lists.infradead.org;
	Sun, 07 Jun 2026 21:30:01 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 657EjrWl440303
	for <linux-phy@lists.infradead.org>; Sun, 7 Jun 2026 21:30:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dAalBrR1nkmk6nGcSxQfzLgG
	KDM7xWGT9pITI41l4Q8=; b=ZMM1m8y8bzczLwvhYySpJhtNYxarPfTnt9DqerSP
	UiX6wVsGNb/UXRhNN9D6Y/sTj5yFpeOW1rgtKuOTrnhYF4hqhjkEZz4U6xE1uNsg
	LanNod7In0kn0nT+BrnNqU6QMW7BqDZ06vriFWBm63ltwsuof4eFdkbzT1NZBM97
	aUBINYIKYYDH5Fnl90+BpDe+gbAYke7HFipxBlHWHIsHqzdrvfWFM3gMk8TgAIeF
	2zfvWk04T5EMqpbOg+mNrXXckkcRq4DYwxPRPd0CqbZscR8Ekamth87Z7x+1+t/I
	TYrSVH8RTumZhONWRx1bS9WUbNOP1xc4v7Bp7DySGwKrlQ==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4em98cwa7u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 07 Jun 2026 21:29:59 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-6c6dc39a6afso2064140137.3
        for <linux-phy@lists.infradead.org>; Sun, 07 Jun 2026 14:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780867799; x=1781472599; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dAalBrR1nkmk6nGcSxQfzLgGKDM7xWGT9pITI41l4Q8=;
        b=LWtUQ0iQRhbYMlM/M56nWXn91St67L5nCM7i6m3tO5gp1S+Z8DvMefccrb3t0MmPxh
         AgSlW4Ez35tk3fUiQ/UTL1crdJgennhjNZvtFkNdjq8Ho8H1YhAeLmF8187hVDA5yfN1
         M1v05udRv8tegz55rNMhaoagJncwzxkOggsFiMLMn1XLd6Wa/ZIvPn1zyCTxT7sFhRh4
         Wghlg46I8rvS/a19OBwlMM9scf/f1GbH4Pn8H8PPcb/pStKGogLXjFr1HthqBn2/x+r7
         nIIDYBC/7qTQb5i25gyBlg4/MFjF7Efy1/v6TReU4NqhwvVM9+3bzl5CRreMjY6d0ibx
         fQEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780867799; x=1781472599;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dAalBrR1nkmk6nGcSxQfzLgGKDM7xWGT9pITI41l4Q8=;
        b=J7GxTm811WrRyTg4S7WKr83T89bBEqLkecDhhzAfAqcmeIgXnxRIaZv3b8D71rBghn
         3OPuQPKuaTt1ki/eP8oUs4VmTc9zcce6jWA8QQ4IQomFNRtMWOFXgJwG8zVbgAo2pwAK
         r2ORLj3h0qndXnEpOCGgh56naZr5zuwJ+n6Gj9ULOvWcblN+BozAWh8iCbrmsJewW5B2
         qhjKAq6EukPowD5JDzpDJgQK35gN59L6vgJ1ulBye+ch3pyIYKsi2vMlAmWgJ80H+8jp
         G9QriDy/rtN55ItmBgow0TOmUPiZg/e29gbm+ZT2F56DMMVj7cQ+e2SUXSeCMjPlp42o
         nD0Q==
X-Forwarded-Encrypted: i=1; AFNElJ9pJF/5/3v0hBGDRFTmGpgrJxdMhfNwxC6rp44HfYRjF7CJDrjPDSkvWQHghlZblQ2bdcEZuQ+xgWw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxX/HYlD3MhAVz9cN1+DFNSMAfQfo0kSNe5YI4aTiv378s6fZCY
	77Vfderbtqo4k+7wiKTxy/eiP+eife6cyKDtTYRfVryFDch80ZFiG9Z/y4La+y9dTOf6SfEPBvx
	SThUob3y9NiyCmP4gKt83uD0dYh27FyKabWFVSV66bCiA4Q7YfMRq4lP2d1sIN/AcCF07
X-Gm-Gg: Acq92OFAnnw0Jk4eDn+Fh9NHP5H1j6R0WxTkl/rKW0yCuq4D8qu7H8wy5jOWO2DRKur
	H0sPEIWsCniEuvXlgCmc6WC7WyU98zsp+HLnBwA7A3hbeyONtBHjSGN4kNrzOy82V/HH4p65Kke
	UUkHLaZNANZd4OUb4aBkdu33E5QUbRur9UdbvwxrDy/ooMwX9uVsyZa2oLzw61wcGlJvVG/yPtn
	8vmeVKdEH70CYDvX7pMlFsApUi64lW1fNaj87GyBKoWvlJVbB2S6rRffdrJTusLARhNftXCYMuY
	aYDcss59TaRWBSF38ct+prwbyOaxkVWQNfUhU337Z4ebhTuYdsfnGEs8Zko7u8Kau8wmrCS9kRl
	0ZlENLXZ12xreLoATjt1k1iZEOVw6SvBsEX1V+EVYOInURpoKRva+DpGgeEsp2JYGOIL4GFAisg
	9VJJNDH9Hbo4rekJFTFLDPlzE+dcR0XkMKizoP42n4M07MpQ==
X-Received: by 2002:a05:6102:548c:b0:612:7ddc:52ee with SMTP id ada2fe7eead31-6ff02387138mr5734771137.15.1780867798767;
        Sun, 07 Jun 2026 14:29:58 -0700 (PDT)
X-Received: by 2002:a05:6102:548c:b0:612:7ddc:52ee with SMTP id ada2fe7eead31-6ff02387138mr5734760137.15.1780867798352;
        Sun, 07 Jun 2026 14:29:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b97ac3fsm3332615e87.42.2026.06.07.14.29.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 14:29:57 -0700 (PDT)
Date: Mon, 8 Jun 2026 00:29:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Matthew Leung <matthew.leung@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 10/10] phy: qcom: qmp-pcie: Add QMP PCIe PHY support
 for Hawi
Message-ID: <h6fbnsqg3gcobkc6chzehy2ew5hczidzqulr3xh6d6u5kazjhd@ygsd26b3neyo>
References: <20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com>
 <20260604-hawi-phy-pcie-v2-10-be908d3560db@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260604-hawi-phy-pcie-v2-10-be908d3560db@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA3MDIxNiBTYWx0ZWRfX/8u9cwG13GR3
 N25ViL4BiELSHdamGociLyiZVeXYf1ocmDvg9IHup3TWH0mS42bzdJdj3DUMwAVbhYRbFDybi8s
 3TP2eSEamZCQLkzBI/1Io5yTHGUDQ5G+edpDox1u5HOkHvO+4SMSW2Yjt1/IpEDdMyivOekrlX3
 FPtTHDmpMKINITuAFWLKJSUkyXrI7o1rM1P2mtp0QqYMzdCvRRpCPs18yb8YqrPcOW/1xoHnctg
 9kcMKTRagbKFzZAMOzHgt8EuJ5n3B8bg6JXunuSwvFiGx+T1WQWqFolaq72/qM7ZnjeMkKC29os
 RHp7Pq0ve8KhO8EMpErm4O14JNR5BkTVXL8V+ArK1tZjSQbGd+b+gIEy9yz7twqK9hVQSXF4TlE
 F6LpdSdRcFEIQY0rrl8iOZYfJg/t6lfuyGCKPUBQzZdf+sT0rnRLI4ru20ViQGyGUSzso20ZZZp
 3hnzxfcy+X2xLcR8afA==
X-Proofpoint-ORIG-GUID: FVzFiAVUsnJX2ZZrAoFHE7s9dlpJ0ULr
X-Proofpoint-GUID: FVzFiAVUsnJX2ZZrAoFHE7s9dlpJ0ULr
X-Authority-Analysis: v=2.4 cv=A/pc+aWG c=1 sm=1 tr=0 ts=6a25e2d7 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=_DP_PzDrpJ8qHd2sDw8A:9 a=CjuIK1q_8ugA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-07_04,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 spamscore=0 malwarescore=0
 adultscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606070216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_143000_875094_4D7F80FD 
X-CRM114-Status: GOOD (  13.45  )
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

On Thu, Jun 04, 2026 at 01:33:04AM +0000, Matthew Leung wrote:
> Add the QMP PCIe PHY support for the Gen3 x2 and Gen4 x1 PHY found on
> the Hawi platform.
> 
> Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 380 +++++++++++++++++++++++++++++++
>  1 file changed, 380 insertions(+)
> 
>  	u16 rx2;
>  	u16 txz;
>  	u16 rxz;
> +	u16 txrx;

Can we do what we did for QHP and reuse tx instead of introducing a
separate txrx offset and data pointer, etc.

>  	u16 txrxz;
>  	u16 ln_shrd;
>  };

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
