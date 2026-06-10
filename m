Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C102CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 13:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rQl5MUCBYVWj9a7O7VTm7hfyFp2zL2w00E5vRTU72rs=; b=vT3Vd1ytgHQg4X
	erxUsvOakXFB/uJiN0KLGq/SVS32awjSXL8LZ/XqAFVKdYKpxzlD49wxFdjgkPicY9DyOcqw+kd/7
	sI4wxnCCr8Mps/1F93KAX+W/Oook//AzVYzSdFF7me4F3ZLeTTjpW97xdCGs3Lfl8J8HxqER83LCC
	QxfAuO4ckOF7rzvtM8HwEtG3/b1uMgFe6wa5NRpPQw4wFLgcfztTJlF9R6Bd6GmVFk/UiuhrlDCyH
	A+6UwyLctcwFGyGpCwCL3NZbeNJ4rDrxiTZgMpfSwrS7yHZ0p5SHdxMFeokXCMAtD+/HhmVlgRQ4T
	Jl/QBU0Ev9zXFyUbIeqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIst-00000007lOA-33I8;
	Wed, 10 Jun 2026 13:22:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIsq-00000007lLA-1gHU
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 13:22:17 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65ACCEcR1512026
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 13:22:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7xGelfqpYfB35fDLv15ULStO
	ev6jl3t5C08PX3tm+2Y=; b=JFGe3WbsfpL57t0BSkZsngpT5kgI6RRH05Std07A
	4FImlq9LMUdl0kNK+QacVMhN5RrAtUobwaVFzCR5Sp4uNY3gZNIxflAm6a3wh+Kg
	+y7cu/i539BMOIG4gplV6n2/3c5+gAL6D+WRJfmDDo9i9z8Pbu5is5TvXLOaq9Di
	fBfXkkWWeaL2ORdLr+DSwzGB0wFdBK2MDXXg8ikJYl5Me5mB1xZtjsTbL7qmQNZk
	F5iI0SiusAnTs18oGWK5N6fh6wO+kzvaZPT+2W7MTUSUE3RrExmHzpe6X9QdiOiv
	Qf35TbiWR9uIi+En7ffU6RqgITn39AXi6AoKkEsr+hNO5Q==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4epukeu5p0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 13:22:15 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-6cfc66167c4so2649476137.1
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 06:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781097735; x=1781702535; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7xGelfqpYfB35fDLv15ULStOev6jl3t5C08PX3tm+2Y=;
        b=jpwgWtFB6to9pPJ6A/5EuOVKp0Rgonk+tKYHk03QcF26gxJ5qdCDzg1Y3b/xZzG990
         SgxLiPmfpYoye660Psk04Cqo67M2ukKYQKRsGddc1tYcNVwSpkTK/ZCmGZLcXdJzgCq/
         WxQCbTQBXuhhHLoY4oshE28+GbyjYWbsBUfDocCt0phqBZpQVFStsnHAATBgItMbDqYk
         tfDZU6ky5oyaL4QjRBzQH1Em8s1cyn04Jo/Cq7zoNfnW9FCjmnHZnKJ37CjRjFizcYLJ
         reuzOr8+W2bzQaoEQbFVt5bE2LcZUFJ/bspkuEYUWMIUvAMhlM47qTVv4R/JnBwvO1ly
         6luQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781097735; x=1781702535;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7xGelfqpYfB35fDLv15ULStOev6jl3t5C08PX3tm+2Y=;
        b=StxE6lkOdDkmHHUqaEzVPv2A1GuJy1yUFvio6ThPKM2vApUPzVu/jjfhKLOJqybsBw
         eu2FKSLybAfFtKZhKegYCAof2K0ND6Oib4EBSWvrAki1GJecDslPY+0/hpbMHEAvdG4l
         tkW6GgahNPvF1DwDtX2Gw1A59FY69XBGFmrOrC551N28p6VDXvkrLARHpyMqZTuv+bwS
         fplaPsizOpZafLGnRAd0kCK8SSZj3OJ6BZ50OE4VxL4mpPosSUq3KFfq6TPliUtR/PEn
         xgmzCF3PDx+VqKSLY+8Z3gs1D96wo/BgrItuYhxurklXhmoz0hYQI38DzL8fbnSRll4n
         eGzg==
X-Forwarded-Encrypted: i=1; AFNElJ/tWz6dWilFinsTX/48g8vF+nSq+aVVhy62V+wHN1+zgFoxh+AiV8byQribdeF4DBhHtcPrm9LfDqk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxNzET/HGeqpR7OBnSFF2JPruZ17R1tuBN88f2TTeo7FzijacBc
	JWUO4O9wF76IIcxBllzNK43fvzWbMq/ffRfqWB1eeXJ9rB7Lf4E1zHb+keEXt/82Ow3NbVKaghN
	EFPjjjhehla/lIIlO/5hC3kXyx6mBh+wJQOtTcpwolXs76pCe5TaeDnOrFDx65ZjAXxGW
X-Gm-Gg: Acq92OE227OTEyhK5Cgt3MhrG6n3oqCWzTuzlLE/u/cln1ZgNiSAeRO2b+3IM3dtAit
	Bhd+bccfqAq5KpKaQyAQjd+nOtJw2srgoJC6dNBJF5qQNfGTPmow0IfC/ub5bpPRA2f3qa5ew21
	5tTVLJWeiWMg2TQHJFZXP6GsGvOTPq5ShJ3eB7HsyS66SDBfaMyGIeIYRHZEoRWngtS1yJqjR+0
	BwrVjMl1zODm7eok6AHgy16RlicQxb/yLrnjGmteUUueEETZHYuetNk97xZmniFBQpBFwzRZmdm
	naUqXCVjt6bJx1WaVPUkZze0zAaJLeA+ihdsRIzbOb05D8Yfq1b6QNNWCq35Z9mY8P+ZVepY/WU
	0XAtiLGfJCS83jCEdGZz4CMFSUX1ggHXN7WEy4Iuezh4J5b5ml+q1Xw392FItcjQUXsAUUTnjPd
	l625e/iOlEVKNAlaJTniOISoSyvEeJiLcdic9L61SGUhz/Xw==
X-Received: by 2002:a05:6102:8028:b0:659:3ae:e6d1 with SMTP id ada2fe7eead31-6fef194813cmr14333118137.9.1781097734659;
        Wed, 10 Jun 2026 06:22:14 -0700 (PDT)
X-Received: by 2002:a05:6102:8028:b0:659:3ae:e6d1 with SMTP id ada2fe7eead31-6fef194813cmr14333029137.9.1781097734037;
        Wed, 10 Jun 2026 06:22:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b99c2b9sm5388071e87.80.2026.06.10.06.22.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 06:22:12 -0700 (PDT)
Date: Wed, 10 Jun 2026 16:22:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: sashiko-reviews@lists.linux.dev
Cc: Konrad Dybcio <konradybcio@kernel.org>, vkoul@kernel.org,
        neil.armstrong@linaro.org, olteanv@gmail.com,
        linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: msm8996: Add VDD_MX to QUSB2 PHYs
Message-ID: <rflqwagxxbebskp6lakuqtelbxfohcfanhtqltsafcrdnyvgwk@27dnwm7y3vqo>
References: <20260610-topic-8996_61x5_qusb2phy-v1-3-d7135980e78f@oss.qualcomm.com>
 <20260610121824.111631F00893@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610121824.111631F00893@smtp.kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDEyNyBTYWx0ZWRfX0ZNCmucgQHHn
 xTlweZsyxyd1HL8J8wWWgv6+/YWCgROuJIE4yQBLgdoBvZ0OKJ3X17CzxhOTAlLXvVPwlgkz/H9
 tea3Fzby1C3PqE8yIbGsRXU6TSBU5xAeWI7Lx94U/WOtK02AvBK5nql9Y1G3ZTyvwajmO06q9Hi
 UcwqBCO3LFHcFFP/39GwZMXRCnHfiFKmU86GIt4ZoGSU0pIvIdlcqFbOKZZpZyCDRpI3npBmWfO
 dqyQhtV1Wmq1Or+4Hm+o346AQ1bnLcC9u3lhJC4JFx5RAN22uaYNoTpiNCgSDNGNdU0rmVkeokX
 S2IICKoChB2v83gaCuGlsyO/HGuAlFIfxdNJyrHLBNsYRFxNhpZ5luNPilYgutOB1kZUz5syLDr
 z7xzybT+2GRqKatPbaK6l2ERGolBdgtFnmicUTjHu2JyW5tX0yLvP6EGnDx2mf8Nv+OSbUK5lu6
 QAnEl0SwivDHmC5AUAQ==
X-Proofpoint-ORIG-GUID: K9uugkyJU1japQIdXjIcuSG2cXQZp-9J
X-Proofpoint-GUID: K9uugkyJU1japQIdXjIcuSG2cXQZp-9J
X-Authority-Analysis: v=2.4 cv=DNG/JSNb c=1 sm=1 tr=0 ts=6a296507 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=jEOOaJWfrG8VwPnPn-gA:9 a=CjuIK1q_8ugA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_03,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 phishscore=0 clxscore=1015 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606100127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_062216_609955_F08F9C7E 
X-CRM114-Status: GOOD (  19.08  )
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

On Wed, Jun 10, 2026 at 12:18:23PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] Adding the VDD_MX power domain interacts brokenly with the PHY driver's runtime PM implementation, permanently pinning the VDD_MX power rail and causing a severe battery drain regression during system idle.
> --
> 
> commit f3735b6dfcc42f0f55443d0f81c7b256532b0e25
> Author: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> arm64: dts: qcom: msm8996: Add VDD_MX to QUSB2 PHYs
> 
> This commit adds the VDD_MX power rail description to the QUSB2 PHYs in the
> msm8996 device tree. It explicitly sets the power domain and required OPPs
> for both primary and secondary PHY nodes.
> 
> > diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > index 2f67e665996f3..b7cd1928335c8 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > @@ -3192,7 +3192,12 @@ hsusb_phy1: phy@7411000 {
> >  			clock-names = "cfg_ahb", "ref";
> >  
> >  			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
> > +
> > +			power-domains = <&rpmpd MSM8996_VDDMX>;
> > +			required-opps = <&rpmpd_opp4>;
> 
> [Severity: High]
> Does adding this power domain permanently pin the VDD_MX rail?
> 
> Looking at the driver in drivers/phy/qualcomm/phy-qcom-qusb2.c,
> qusb2_phy_probe() sets up runtime PM like this:
> 
> 	pm_runtime_set_active(dev);
> 	pm_runtime_forbid(dev);
> 	ret = devm_pm_runtime_enable(dev);
> 
> Because the driver forbids runtime suspend by default, the device stays
> permanently active. 

I think it should be solved separately. For now, let's make sure that
the PHY is properly powered up.


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>




-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
