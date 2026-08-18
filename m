Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F023DC5DF7E
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 03:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8QNFlOkBUjzJufviS3iTwWJtGT/vbFTBq51rYg/GaEc=; b=FiJhMpk+UzWKat
	18r91zHmh7PYCwqlpejCZ3+gWx9S0PJApxz9CVZ2F4YmtI7BuGdvbul1cqYNBt13NZFMmcC8vXhV2
	9Gk6F4D9+LMZbR36/YKKVYhzh5FD2NtpxTEsFaDobu0zBbJTzIXhETm4b5HN0vKVoXaG0KdbsmI1K
	qTMeLQWFYWbJfQgD2TKCND0MvwxSz/LmlQNTnXjyurEHWPi2H0B/4Ryw2w/wUN8FYcRv0ZMkoSg0W
	rCMFX2HtEX74wP4IcoA0200x5qAUQiujD4KizSIjZHQg+8lEdmiVT7W83OTpktEjkmLsnsWPnWevb
	vevNGsA1o6Mh88Gq+DNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwAb4-00000007CJR-13ep;
	Tue, 18 Aug 2026 03:34:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwAb1-00000007CHZ-3KRm
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 03:34:40 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67I3FwrU3833590
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 03:34:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mV4bn/E5aJAExPqBnO8XEUhQ
	tu3TYpO1M/Gy7gbSacA=; b=OV86uNgtn/v/nfjpEyytXetJUUsRMtKqvrOxjc8L
	Fr/dG1aHpOzR/OoqpWf6GzR8LRPoqMpuULDmmUU0u8VMySd2mVm3OTOIRX2KlAq1
	OnB+CZElSeSBwxwpkiuVKZ8kVNy/yxh/c1vClY9f/4FtAyQhCbTazGisJ3btLkWT
	3ax6S6DAc7YVrU1/Ri9ShVLox+mE7zvcxsBVve2w0yI8oHE8q5NtttbANNyRr+eq
	DqZiFB4bUXDJu6FDnAvKAYVR10ZaCt9mQaRa/oKhcCZqL0GpAjrRGUI090TCRh3d
	YzmyPjDwkbptOodY3SxTCqRwKp2d1ZIo2kl2kgRoRPpTsQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4fba81wq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 03:34:39 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-52827090cc5so7405861cf.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 20:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787024078; x=1787628878; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=mV4bn/E5aJAExPqBnO8XEUhQtu3TYpO1M/Gy7gbSacA=;
        b=g/5w5qdiEB0Xz8FF+sHrEd3vwqjSgx95JNrH3XI28/hjOFD7COizKSWjsx5t5jpeAJ
         f4/8vnJXRTGiSh1vz/X8qWG2WSPHRYI4ACvmds6OZE3O3SeWvprTko1hStuznonEmfKT
         IzJb6At41rySGfmUcfa5inkduxqG0qhJAoc365ebDLMz/Mo9fysizZ47LvwqqSHdDHdl
         DHuF+ZYEerLajSOE09iHuSwmxl0XZUETAI/Wk/kTBR+6CTDjHMCmrkzmwwuypOnbmq+s
         HhBE66Qv78zTU1fAx4U4chipzoEek9UAwH3SQp+JV+skNqpx3gJsfm1A+cmPj3moJ0vY
         69aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787024078; x=1787628878;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mV4bn/E5aJAExPqBnO8XEUhQtu3TYpO1M/Gy7gbSacA=;
        b=ppL+pLl94AxRt0YV75V1A9NJyG58N8q8VcyFKdsye0SL6ckbDMN3ZgAnZyb4vDM6i2
         fKvB4TnYrG+FB7vXcR2uvmTW/66jXI+bWhkmV/S0A7fBu25+Ma38auPl6y0Wh4oFaDQ9
         MP9QO7Pset0DznTHtRUWeqEN+qs8cVCEJzjam3vJsO3yaztrEvfwNatskArFKCL771Fv
         Sv4APnmrumvjd+p6WvfgD01timcaftnh22UQYVHlvjCVlYDq+gNqA4Npid51/lbwXm+a
         KXv3ZGJ96+fHDnCc5UFLzhACjvCsGQyVbxRcVor+hkvbU4yR3hPRZwKLEV3ANMFt0Y22
         8TUw==
X-Forwarded-Encrypted: i=1; AHgh+RrwPjcT54rsRopdW2mRinBfXbnN2LADPfgCcTvwbKja4hG/VmJv2YdU7m3wZVo5n5dfz18B/i3p+kg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwtR6V0uBcBvohBryOCXRmftHPGtrpDN/K9v+Kce+5ShRqFjjEz
	cZhlvrUtH7Af7Vkct4dLuB9wFtad8rptyjyBtUNnBVvffwA+DNA2zNVDP70ydb5q1fuisFBvUF8
	SEuq3GEckQ6ZgvUpUdHa5UJPgBt0Vm8Qn82TsMX0pIJM0iIZ2w+soNggL+Yh/00CAmCcuAykZys
	mCZVfHkw==
X-Gm-Gg: AR+sD10RIcBv7CPiVJ7NW1oxUX1sSF97+4UjQutcF9LAuzKOYhY1Rn+aPlhxRI2ge0T
	v02OVleVRaE4uytA+fH8eRHt93uHQj0iXa0T+LQdh/7zdc24YCpyRJy0ewR+7dBh9aZmpmQrbst
	lj9/WJ7q1LGYJqKU/DDfsp13CmuphlXX27f7xzp/kD9q2aHFFmBkEjDogIBm3kMa6Jx1Ln0CXgt
	OAHHUHcEsZr4pfZ4n9462BPuT53YyPNWM8WT30OFsp+Mhrrn9szwgIu2cv70JsnPC+ZJm5RjV0F
	6rf8FJuOY3gPEFlzlR96qSMGMxI0m/gp67pElG1z6Tkx8LYDu0ugEgHwj7E+KelxQYp/AnianG+
	FPJg2z5GY36I2xoTSkAo7fHdjC5aahcAX4Y3oH40HNbS4hO7vu540zT5U5jB2bk/1Z6O0Q5xOVd
	TpdWjMOnBwQNHv
X-Received: by 2002:a05:622a:986:b0:52d:3483:ed0a with SMTP id d75a77b69052e-52dbee3fbf7mr41573091cf.18.1787024078108;
        Mon, 17 Aug 2026 20:34:38 -0700 (PDT)
X-Received: by 2002:a05:622a:986:b0:52d:3483:ed0a with SMTP id d75a77b69052e-52dbee3fbf7mr41572851cf.18.1787024077687;
        Mon, 17 Aug 2026 20:34:37 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b46cffeacfsm837664e87.54.2026.08.17.20.34.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2026 20:34:35 -0700 (PDT)
Date: Tue, 18 Aug 2026 06:34:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: George Moussalem <george.moussalem@outlook.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Praveenkumar I <quic_ipkumar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 01/14] dt-bindings: phy: Document the Qualcomm IPQ5332
 UNIPHY USB Super-speed PHY
Message-ID: <gn43qixdtbq5iyfqvzibdtx4lmwpkt2ieahr7oqsxxjfpldb6d@xbxhbdrq4e6b>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-1-8f355d7ff0ef@outlook.com>
 <20260813-alluring-advanced-jackalope-55e5c1@quoll>
 <SN7PR19MB67369ED27F676F6197A0727A9DDB2@SN7PR19MB6736.namprd19.prod.outlook.com>
 <71cfe76b-ea84-47f8-9ff7-945d69efbdcd@kernel.org>
 <34503ae2-9c89-4773-af80-fa7b7439ff23@oss.qualcomm.com>
 <f13b0be6-bc1f-4024-9881-59f522566f64@oss.qualcomm.com>
 <SN7PR19MB6736C6F52894B351836F583D9DA72@SN7PR19MB6736.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN7PR19MB6736C6F52894B351836F583D9DA72@SN7PR19MB6736.namprd19.prod.outlook.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDAyNCBTYWx0ZWRfX4TihRju7E0qD
 lbHaJpfeWUDU2Z4+xkJTylSyhE8WEGyckY7vXKIgSmLhpH3JFejb3OATQJRJswH2TC5slrjQxMB
 plJ/FvotKBqGYDajS5JxcBx/um+MTrw=
X-Authority-Analysis: v=2.4 cv=VsITxe2n c=1 sm=1 tr=0 ts=6a83d2cf cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=vud81D5lyguAdZXVQFMA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: Pw8zqNUFXLPlt9Iba8hK5gz7YwS6hWbx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDAyNCBTYWx0ZWRfX8L10zuVS/wII
 H/hU1cJQ2d+95iuXOdinQh8+aXxfVdN+40wF3CZTeLNd3aywC9VuxO0r67SEhXEZW6loGaecSLR
 lyiD2U814EB4TjGxKNmMIe/6qTXqeZPscEUj+gTKlfYqK7Hk+8W6qR6WU9W2/6jMjSevjYm25oT
 253TIzCPiuGWAtEyeLlZqVzFFtNhZC7wx2MkLYEvkwhNe+77+nqFxTICWUoGCJf2XzT2QCM3IOQ
 jEOcj9ywVZJp0oW0X1CAfkmRr2ZykwkpZ0Ax2Vje3uE/K7b+U8UIoC3h8tkVW2hY4c+b7+6kw/F
 GeVkHPFlIa0QL9dn41p4ydXaGDRYcuqlrDGQZI/EE/3Dji/jRnmj+OtcufA9DJMmA+k+Y3Qe9v/
 LDwKjIeNIywzGCLhikJJ4BNijAXg10lMgwkn/+6M9nGIwqS6VIxptenHxp5FOMKh0Yd48/7DudX
 HdmI9i6TNscAV6k+Evw==
X-Proofpoint-GUID: Pw8zqNUFXLPlt9Iba8hK5gz7YwS6hWbx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608180024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_203439_848012_57A5DF5B 
X-CRM114-Status: GOOD (  24.38  )
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

On Mon, Aug 17, 2026 at 04:45:27PM +0400, George Moussalem wrote:
> On 8/17/26 16:38, Konrad Dybcio wrote:
> > On 8/17/26 2:37 PM, Konrad Dybcio wrote:
> >> On 8/13/26 12:48 PM, Krzysztof Kozlowski wrote:
> >>> On 13/08/2026 12:28, George Moussalem wrote:
> >>>>>> +examples:
> >>>>>> +  - |
> >>>>>> +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
> >>>>>> +
> >>>>>> +    phy@4b0000 {
> >>>>>> +        compatible = "qcom,ipq5332-uniphy-usb-ss-phy";
> >>>>>> +        reg = <0x4b0000 0x800>;
> >>>>>
> >>>>> That is the same address as PCI PHY, so you have one device, not two.
> >>>>
> >>>> yes, AFAIK they're separate PHYs (pcie-28lp vs usb-ss-22ull) sharing the
> >>>> same MMIO register space in IPQ5332. To enable USB3, the compatible
> >>>> string, clocks, resets, and related USB3 properties override the PCIe
> >>>> properties. In IPQ5018, the PHYs have different register address spaces,
> >>>> hence representing it as a new devicetree node.
> >>>>
> >>>
> >>> Same MMIO space is same device, IMO, especially that you have the same
> >>> registers (looking at the driver).
> >>
> >> It's indeed one device, fittingly named "PCIE+USB COMBO PHY"
> > 
> > so the implementation, matching prior art for similar cases should be:
> > 
> > - phy node with #phy-cells = <1>
> > - consumer takes a reference through phys = <&phy FOO_PCIE> or FOO_USB3
> > - new driver in drivers/phy/qualcomm to coordinate the two modes
> 
> Thanks for confirming it's one device. I'm already working on a new
> version using phy-cells and having the consumer select the phy type.
> 
> However: I'm adjusting the existing phy-qcom-uniphy-pcie-28lp.c as
> that's the driver currently used for PCIe only in both IPQ5018 and IPQ5332.
> So I'm adjusting it to register 2 PHYs and provide both PCIe and USB
> functionality. Any objections/concerns?

Please keep in mind that the updated driver still must support the old
DT.

> 
> > 
> > Konrad
> 
> Best regards,
> George

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
