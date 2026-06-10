Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96974CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 13:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tnYiP5Giaxcr2/iQB15OhDUdJ9X7rSJOvtJaamPPcX4=; b=Z2kkyKwPRCj+dD
	mN6lLu8doxNkherM4XM5sUTXh7zwRsAmGLPVNpbeZOzt304FCMKP120NzEo4rkgxe4kNOWN6FHhJ2
	qCREs4q3TfOuG5JCiWMUEjo3Em3ijNcGARcHW0Re38DysABhNeHL6usDFBuIsyiWX8Ih7ZXqwkmlr
	YV9oVYa7XgYrG876j9jktTigOz8wmJdI4OzPIA5Mk159k6yxsf6kMGD9v6JWn+bdLw6m9xiz91+Qv
	D8Hh2LUD5UjaLRwJpTaLJWiluImzp50+cW9QL8zKKbDo9vX4C0nfJ8NMmYMD73BFjlkbZbtopyMam
	yRenkHeft1Fx2/+WpGEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIaS-00000007h3Z-0m7m;
	Wed, 10 Jun 2026 13:03:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIaP-00000007h33-2Jk1
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 13:03:14 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65ACBnKB1137860
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 13:03:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Jwn/wa90BPOcIqKLN5Sq1R2L
	JRfJe6BD4fgYbgN+wq4=; b=RwA4RDxe8USf5AbERFO6GipNWIo6GIdpPvSKgULV
	imCOzEEMGKH/5smQHlyJfR4KHXRLqMvEJ1C01Y6Be1xwPku2ObvyfsUSSqu4dP5D
	b2pHiA9J31rpyB4P89U3mtBvC24KpjPBVYVk2crNuGMVoyfsEo4s8ZKU6eakr6l+
	gGLHcq531ED5oZ5Unwqxw15jOwFzUFboIH9+buE/c1a+levSFyoPfvm4h71kztOO
	S75HbQbH1KXiTGciQucWUuJ486Pnd6tg8yEwKhol9XcTF42BscA9ulEwAUTMZiqh
	wZqjZ3MSvftDvPZ+7IwUOxR6Foe55cNPoPihWGGyiRDVIA==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4epwnh2k2q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 13:03:12 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7e6cea6ada5so11102171a34.1
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 06:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781096592; x=1781701392; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Jwn/wa90BPOcIqKLN5Sq1R2LJRfJe6BD4fgYbgN+wq4=;
        b=SBM2o05NzU4yt//Ss6uoKt5xon3HLwNZpzPTIPQOVUGs7RCqhGKik01a7/pi+sj2KK
         xTe1hhg92TQNNizZNQyYGUI8dtGmTdSD3ocwftwYTcfBBLQZsQXRmBAtF8Z62LaHe7ze
         ZTLc/M+9fidKrKQNFcjvW5dNNSflUy5Ldt0YCryRszQrxpMsM4b6CC4iEIWzqj4MZ9Aq
         Ag8Fa65yXuNHUYrN8yT6o3UfKFT9rnpEk4l8/po6Um7/ip5CSTV3pUNm1K7YHtJSWAnC
         Uih/+D/na/DfSVY5wXtkikksYdQn6xE2HAnzWnGkGCWqNhQI9CvTS2I0Dl3tyxCONHNV
         2qMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781096592; x=1781701392;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jwn/wa90BPOcIqKLN5Sq1R2LJRfJe6BD4fgYbgN+wq4=;
        b=PlywYToEXR5zVYrGIKqAghSVJzssqJcwfhkgGC26dUPJBMcsVa1x/e7S8tww2v4hDw
         UFDogfLdx038cK1AlMk/U5LZyTs16obqRGGbpHgUdMjIr5d7+OtTQglP9nZf+XLYqxEW
         PU+3sA4fAo3mLOZFLAv9gDWa/LyUWs1I/dfAj6WORSz51vqj/nLEUYuCgzPBYWT4Y6Ms
         zrYBfu+zBrPMrJRiUaf04NmBpOMZh3/FrYld1EN5EeI1B4P9OhmAE5Hj3Ro6y8ijj1VN
         42hVwwcInLREz5VWB+UxC4BFgHV7hw6HYAmgA+FdFpZnmHGP1Sgw904CS6p47/ulWVDW
         x32w==
X-Forwarded-Encrypted: i=1; AFNElJ9ZXDU69sirR7cYcRySD2KqYetM1uk8IAxxPOhOljypCzobtotbi9PSYs0xgIZQwFjEPuiDZtMMDM0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwsEOB2rM55YD17h1Riq8FUtqY5Ry431VWFlj+wscUDFxLptFKA
	RXpR7qnpBEIoLrTnNWiV+PlPdcfqyfFbPiN90yB5ZN6DGwqFzOePsBU9ojS2+AJ8QgKPKocEb6W
	fuG6Wi2ANv94Wpn+d1OhFa/+37dK2IsyL1HAevHSbA1rd03rT8GKCJa6ODw+EslhtULeg
X-Gm-Gg: Acq92OEEhnN5eTgzenQnvAccJWvgPSePB6ckLJchBa/egvzunpH76DnGlfHsTdPV9gy
	lQ9mn1UdHlbRn/q+A3AzX1QPeCOvKrs2BFcMFthGSanZpMfovHDsEn/QYZQBmj92nrMouTVnkPz
	tsp2r9lz/OZa1COapYud8ZqeQA+Np1x/2X8uSJbXaiN5okfv8NbqfsREo8kOyNEz8NmcysOcqZr
	LOi3fn9DCfDDuF1RNclgpln+8K0KspUPsNVp3bP4I3XKXs77MwuYy/qKvqMCXubfdM/+GyiWWRO
	ggnF9vJ9w/b8jplCq6HXVKAsbLih83dn2JB4bzu1N47n3Cvar+Z57aONFKh9Z+MGm+2AvIEJlFY
	2z+qXURfA/N74x4YO353fnyPdiLj3upkTo8sXkRf4zlutkkLyxCv7rP5WAHYhfojFXl/df3OHcy
	+EzMc5hNfTUQeVEsca0qmrhGR2c18WCFO71tv5Yc9a3JoHbQ==
X-Received: by 2002:a05:6830:6d2d:b0:7e7:623:80d5 with SMTP id 46e09a7af769-7e70ca0beafmr15853443a34.19.1781096592165;
        Wed, 10 Jun 2026 06:03:12 -0700 (PDT)
X-Received: by 2002:a05:6830:6d2d:b0:7e7:623:80d5 with SMTP id 46e09a7af769-7e70ca0beafmr15853395a34.19.1781096591635;
        Wed, 10 Jun 2026 06:03:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b8ed684sm5372422e87.8.2026.06.10.06.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 06:03:10 -0700 (PDT)
Date: Wed, 10 Jun 2026 16:03:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Iskren Chernev <me@iskren.info>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/4] Fix up QUSB2 PHY description for MSM8996/SM61[12]5
Message-ID: <cnyhnyoce6v4d5roijrceuzd3ujvvw7ozklulaxkibptvjancm@cqbqu2aa7bz6>
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
 <b05e860e-ace5-4399-bbd9-493f7bbfe74d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b05e860e-ace5-4399-bbd9-493f7bbfe74d@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDEyNCBTYWx0ZWRfXzAZzRjCqAZPm
 YGK+iSRiSSusi3ws7hKwf1veVFhJcFpmZwDwNGi909dmdFBCT2AeZDBS9PZnKtsEjoQ84PxfBm/
 Jkhn1qOdRAWYpmBzCUiq1d6QOiwLdBC+xTgVYqh57kpAmtmtXqIXWKZc4tv7Tx2hm0RRSCvWuuQ
 uqRxXw1awxq5rxAHAtVw3wpakYGxLNkfbRSrwB9bFKVeWTgZuUGjCMOZ7x4Nu39DLT2hSG/j0X9
 qeOfBRKlx3VDh0k0OB8uu+FIo0NVvsV1GoPA9i+oKv+o6hPuuIEhhdkmPxB9h1Ose8s1wo6TLBa
 HkFw9PhNzZIS3489G81WRsVKmpnLQxG3bbicNnuocxeLsWB2at6JyICpCrR4BMkDUwFdV/zm9Q7
 CerveDgG7DJUHR2C1hKRcQwWzRDlpluoQ+76ONVleiEPT/WwnvQ+4U5Y+NoShFnhThSRJqWb1u9
 c1dNTTg1lBzTy6EmwAw==
X-Authority-Analysis: v=2.4 cv=Xce5Co55 c=1 sm=1 tr=0 ts=6a296090 cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=eJTdUu5jCtrkvInlvksA:9 a=CjuIK1q_8ugA:10 a=Z1Yy7GAxqfX1iEi80vsk:22
X-Proofpoint-ORIG-GUID: 0AaAF9nmM8I0CdXgLM1TJM8E24-fQvQP
X-Proofpoint-GUID: 0AaAF9nmM8I0CdXgLM1TJM8E24-fQvQP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_03,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606100124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_060313_594549_500B51DA 
X-CRM114-Status: GOOD (  19.49  )
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

On Wed, Jun 10, 2026 at 02:49:31PM +0200, Konrad Dybcio wrote:
> On 6/10/26 2:04 PM, Konrad Dybcio wrote:
> > The MSM8996 QUSB2PHY was not being guaranteed a power source.
> > The SM6125's QUSB2PHY was believed to be idential as the 96 one. It
> > wasn't. This series tackles that, freeing us of some dt checker
> > errors about vdd-supply not found on MSM8996 boards.
> > 
> > Compile-tested only, but docs confirm my findings..
> > 
> > Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > ---
> > Konrad Dybcio (4):
> >       dt-bindings: phy: qcom,qusb2: Straighten out SM6125 and MSM8996
> >       phy: qcom-qusb2: Fix SM6115 init sequence
> >       arm64: dts: qcom: msm8996: Add VDD_MX to QUSB2 PHYs
> >       arm64: dts: qcom: sm6125: Fix QUSB2 compatible
> > 
> >  .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    | 31 ++++++++++++++++++++--
> >  arch/arm64/boot/dts/qcom/msm8996.dtsi              | 10 +++++++
> >  arch/arm64/boot/dts/qcom/sm6125.dtsi               |  3 ++-
> >  drivers/phy/qualcomm/phy-qcom-qusb2.c              |  4 +--
> >  4 files changed, 43 insertions(+), 5 deletions(-)
> > ---
> 
> Note that msm8996pro may need even more looking into, but that's a
> story for another day

JFYI, MSM8996 Pro is being used in the DRM / Mesa CI. If there is an
important difference, it would be nice to get it sorted out too.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
