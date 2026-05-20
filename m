Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D993ECD4F3D
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 15:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVHp6auqqwKP0bdG+AtUW2BKUPkm994OjnBgWjvkDmM=; b=fePwJ0rTCHkzgJ
	8BObEV5f5an5kMPOOApSTGEfOFcWp5NewqN8A7nc441KH5IVaDxQy9+z6gy+ynLaJ6cnmd7HLNP5O
	wotwwbRF1qsDf38bm16IbrVtDPGDQPYTDFhqM17178x2CvJFqwhUgLwcP5dvUkPXuNZzAJkQamh8P
	0H00nDpRExyj4KfXppQ1QZ/C9G/jykkSp4qFkfLQqqIPEinZ68p50S29QtBtIJj+0S+OUaTiUMWHu
	uybmwsySGGvD6/rvLGnK5zoOahEEaEw/di2Ya6Ekt0gyA5NlTy3pRdL8ZhDE9ZXCwGusaPM69jwCv
	B6GcW8z59YEiuX/8aJgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPiUy-00000004uqH-2fBt;
	Wed, 20 May 2026 15:06:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPiUv-00000004upi-258o
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 15:06:14 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64KEFYfg963696
	for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 15:06:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ucp0jQG/I87lDUm5pF1K1vCe
	SDfAsNpNDdsrqtrG8ck=; b=NbftYt2AnGAsdRAYG/RP6oSSbGXqghAnrkPyW7yo
	ODKly3absVdYcR5lUccwxOQbg2DQURdbvfB28aKa8OQN8JnNJv6bZzG7nQFaQdhu
	nSMAbAbHY7QMxbQNX08l2kyjZnmuiyYSWuxhFhbEsw5WcaHgm7NFsfAvfw0nFcGU
	NavdtmBQcqaKCEjUuPY87zobfIPEzoADgEkGPn+1nhogFX+X+/qIYldP5BpXSUDa
	qQvWxQIbI1Q3k14h2mLkyJ63mzTuaw127gM67mA7BX2dxnMIRrLGtqD2wzPx9nGB
	RvgY4OR8vOLJ66GAH6av4oVNy44CLPSfJp9ixIjKDt4wNg==
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9ejh07gm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 15:06:12 +0000 (GMT)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-439ba95ef42so11228526fac.1
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 08:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779289572; x=1779894372; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ucp0jQG/I87lDUm5pF1K1vCeSDfAsNpNDdsrqtrG8ck=;
        b=Jpip6wOR0Im92bxzc1wr7rZuNov0ERXvw7ALqZpv6whdtpf2oFyVV0I1ATjCFCgVS2
         5zCLkF7v2nFEsVt//Nhj7IJ/l4WgMYYiJI9G2SGvx+5e6sjdP6FQuvOJ1c5gYobuGfSw
         M41kOjxqhBz3reAw8BfdItxX37xhnSvH4z0lGISUCcnOvrU051mleLSkj64nL7kJ3+sn
         YdNq3nhKXeq3pBPx7UZjvBc2yLp1JSYqcqj+9So0xj2OTe469l1fmjZO2n1H1YLLUDBW
         qaMamJ/nDQcm9cGb3IrwuHjSPwdFw9ZTM4DhKD67tUAHWm+6uqo+lBglTtI2TatHJXQL
         gLMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779289572; x=1779894372;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ucp0jQG/I87lDUm5pF1K1vCeSDfAsNpNDdsrqtrG8ck=;
        b=BuVomi1VMbZVvQ/E27/5/GS4zyU+zEfjL0Zvz5j4jqgASAyMQwxyJpe1P5pqBk3L7y
         rfTGBfwFvKBKGzCKlF4GPtYQNEeeaA5Y8LjtTzdTYHEtqh8Zxg1/Ky9zCE24iyZse8NA
         /ogSW2H7f4dssQgNo3OVvHlvnAouRacVeN9RtnEo4Cp4bc3SAEolyWKUCvI3HZt0P1Lm
         dhWwFabkNHigu2mQMjJFOjmgBg6njidnmzo+k72Xob6D+IHNXfAq1DP0zlMkZQrFw64d
         gbhMY+qSd71B56/g0hC+cWrU8O+m/6yYwLyvwPMm++wg1ucQUctdigNxzMChyMrwPEhL
         LeIQ==
X-Forwarded-Encrypted: i=1; AFNElJ/8ckdqehiyFPmeqRKS2M3snmJwHp+f9rQYuWKpW8Zifgr2r8EH4D7egHVVe3UO9atb+1pBHa2F/Bc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9pLjIPR8xi8jurI+S7qbzGbQupHhaCAiJPuo2D+KNv1+2+L6h
	xIoL0Ynvlk/8oDXQt3NPCF1vspVBrVfId6NE1tSugGevTc/53YNB4D3FIkjTkDzDlFAZNe6LeLl
	/8yFyIkXE3uGIRjksFiWTVlZoThTbywlLTLNrkdoHMk4EHEbB2BaZ0EXWK2AHFGMg83Dx
X-Gm-Gg: Acq92OGnYeDIlzrZZExlQNXSt+HOayfxKBTFdOfeOrA4rvSSmYhVOmcBK+1w59KZAu0
	qunWN4goN3+KRf343I9mFlQCwf1ySTyjW3efNQuboTrb6B4dMJiDR3Jt5BbRIzhUo1pxTeubyt1
	v7sJ2QtnduRFNDjzqnpq1K1aj5JPWaqLQsVLyW6vhnotl1bMlSPpYGxzvzYu6kmjiNArN/W7TvG
	z+tjImoXNum4l6Ubj/7V2fWXRbbIcTr5Hrlqpe71X/CXznncl00X3xrO4zQdARPV7XHwFxBDJUj
	hWiws4w2Hoah3gW7Oz7Dx0n21xEc/VZa6V+pcH2l3NlLmNfvFpw0S1vOZQ0au8uk7AqHUju+xe1
	h3gxUPGqQAnQXzgd4f02RxJ/74Zo8k5sr6up1cmZbL2KFZH2oZ59OFj7ZH9/hXNtzIPqP5lNG+8
	1lRQS7SUBMjDg/AkLC1b7rp7W49+Grtdsq2yE=
X-Received: by 2002:a05:6830:d0e:b0:7dc:67:8c9b with SMTP id 46e09a7af769-7e4ea020074mr17292023a34.4.1779289571675;
        Wed, 20 May 2026 08:06:11 -0700 (PDT)
X-Received: by 2002:a05:6830:d0e:b0:7dc:67:8c9b with SMTP id 46e09a7af769-7e4ea020074mr17291981a34.4.1779289571165;
        Wed, 20 May 2026 08:06:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a9164bc0ccsm5056179e87.41.2026.05.20.08.06.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 08:06:09 -0700 (PDT)
Date: Wed, 20 May 2026 18:06:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>
Subject: Re: [PATCH 3/5] phy: qualcomm: qmp-combo: Add preliminary USB4
 support
Message-ID: <iws2snsi3yfddich3rqqurhwt6mvi2boushkog5t5gvo2ahwmp@l2m6ays2kicf>
References: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
 <20260518-topic-usb4phy-v1-3-71d827c49dca@oss.qualcomm.com>
 <4nqlpu7qfptekyn77sd7sdn446stgn3v3lw2356bvizrnvjgnr@czqgivemigt5>
 <9aad8e45-b0a5-4c59-8793-8c0747d8fafa@oss.qualcomm.com>
 <uc2l2mbobmik5workhcbtry5spe2gyamx2x4yj4rjly4t3dbrh@n34fo74rctnk>
 <6fb112ae-5919-4c8f-a915-4538d14284da@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6fb112ae-5919-4c8f-a915-4538d14284da@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=QptuG1yd c=1 sm=1 tr=0 ts=6a0dcde4 cx=c_pps
 a=CWtnpBpaoqyeOyNyJ5EW7Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=3AD8K0hoVNDCmrBz8twA:9 a=CjuIK1q_8ugA:10 a=vh23qwtRXIYOdz9xvnmn:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIwMDE0NiBTYWx0ZWRfX+s8rkasdQtTP
 aqCAZtayDtaDwPwJVllJnE4b6QIy0POSBAn6omtQiGagcAfjpTcjbY3Bg2NdS7E6ovkgjyZXc8O
 7iBxMoPWccwOtG2WPeGgPH4vJqpFSdljNInc1Q6lg18devxpbsAnZ4Qs8WR4xIo9VwpLmysjtZL
 WHrWP33uBkPSDPQLl2reffIJ9sYgXDa9Tb+sF5/4jLWq0gg+yYk7ovsGwPyFod7uoZO++H/oEJk
 fG/oiYV2a7XXxA3N60ut93q0shYAR3anTJq5W0A8EVZtRbNTIxzeehkRn2RRU5+7BVmg4Y7BQ3w
 LCG7Ofa23Pl1CwPdqXH1rN6BE3QdRhCtcs0WKiYe/6OMGiKWwVFasoxPSLmUJfub1G2s40WxddF
 dX0TpE8IBop70fT2rLEHi98J7X4CVMDkg0hP5DTnm3v9WCIqZEhcnOHKWBwPw6ARmQET1+JtqOD
 x8qJKSlHDyfpMnYyUgg==
X-Proofpoint-GUID: dQihQmmyRws50ggmA0YfZTbbuzFjWP5B
X-Proofpoint-ORIG-GUID: dQihQmmyRws50ggmA0YfZTbbuzFjWP5B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 phishscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605200146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_080613_658067_D554AE69 
X-CRM114-Status: GOOD (  41.01  )
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

On Tue, May 19, 2026 at 10:12:06AM +0200, Konrad Dybcio wrote:
> On 5/18/26 5:38 PM, Dmitry Baryshkov wrote:
> > On Mon, May 18, 2026 at 04:15:16PM +0200, Konrad Dybcio wrote:
> >> On 5/18/26 3:57 PM, Dmitry Baryshkov wrote:
> >>> On Mon, May 18, 2026 at 12:29:50PM +0200, Konrad Dybcio wrote:
> >>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>>>
> >>>> Some Combo PHYs (so far only on SC8280XP, X1E80100 and Glymur), come in
> >>>> a flavor called USB43DP, which as the name implies, features USB4, USB3
> >>>> and DP signal processing capabilities. In that architecture, USB3 and
> >>>> USB4 PHYs share the same USB_PLL while featuring separate logic spaces.
> >>>> The DP part is roughly the same as on the instances without USB4.
> >>>>
> >>>> The USB4 and USB3/DP operation modes of the PHY are mutually exclusive.
> >>>> Only one USB protocol (and flavor of pipe clock) can be active at a
> >>>> given moment (not to be confused with USB3 not being able to be
> >>>> tunneled as USB4 packets - that of course remains possible).
> >>>> The DP PLL is still used for clocking tunneled DP links. It may be
> >>>> turned off to save power when no tunnels are active, but that's left as
> >>>> a TODO item for now.
> >>>>
> >>>> Due to the nature of USB4, the Type-C handling happens entirely inside
> >>>> the Host Router, and as such the QMPPHY's mux_set() function is
> >>>> nullified for the period when USB4 PHY remains active. This is strictly
> >>>> necessary, as the Host Router driver is going to excercise manual
> >>>> control over the USB4 PHY's power state, which is needed by the suspend
> >>>> and resume flows. Failure to control that synchronously with other
> >>>> parts of the code results in a SoC crash by unlocked access.
> >>>>
> >>>> Because of that, a new struct phy is spawned to expose the USB4 mode,
> >>>> along with a .set_mode callback to allow toggling between USB4 and TBT3
> >>>> submodes.
> >>>>
> >>>> Thunderbolt 3, having a number of differences vs USB4, requires a
> >>>> couple specific overrides, pertaining to electrical characteristics,
> >>>> which are easily accommodated for.
> >>>>
> >>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>>> ---
> >>>>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 392 ++++++++++++++++++++++++------
> >>>>  1 file changed, 322 insertions(+), 70 deletions(-)
> >>>>
> >>>
> >>> Overall it looks good. The major question (after looking at TODOs), do
> >>> we need a separate submode for USB+DP / TBT+DP?
> >>
> >> The problem space is as follows:
> >>
> >> After a TBT (collectively TBT3+ and USB4) link has been established and
> >> we have a link partner, we may (based on the HW capabilities and user
> >> config, such as kernel params but not only) start or stop a DP tunnel at
> >> runtime. On Qualcomm hardware, the PHY is kept in USB4 mode and its DP
> >> AUX lines are not used (instead, the encapsulated DP AUX packets are r/w
> >> entirely within the USB4 subsystem via a pair of FIFOs that Linux sees
> >> as a separate DP AUX host)
> > 
> > So far so good. But I still don't grok if having a DP-over-USB4 is a
> > separate submode or not. I.e. I see code (and TODOs) to detect and
> > handle DP going on and off. Would it be better if we specify that
> > explicitly?
> 
> I really don't want to end up in a situation like we have with:
> 
> $ rg _USB include/linux/phy/phy.h
> 29:     PHY_MODE_USB_HOST,
> 30:     PHY_MODE_USB_HOST_LS,
> 31:     PHY_MODE_USB_HOST_FS,
> 32:     PHY_MODE_USB_HOST_HS,
> 33:     PHY_MODE_USB_HOST_SS,
> 34:     PHY_MODE_USB_DEVICE,
> 35:     PHY_MODE_USB_DEVICE_LS,
> 36:     PHY_MODE_USB_DEVICE_FS,
> 37:     PHY_MODE_USB_DEVICE_HS,
> 38:     PHY_MODE_USB_DEVICE_SS,
> 39:     PHY_MODE_USB_OTG,
> 
> >> Then, on hamoa/glymur specifically, any of the 3 USB4-capable DP hosts
> >> can be muxed to either of the 2 DPIN ports on any of the 3 USB4 routers
> >> (and each of these routers is hardwired to one of the PHYs).
> >>
> >> To underline, we have 3 DP producers and 6 consumers. If there's e.g. a
> >> super high-res display at one of the physical ports, or a long
> >> daisy-chain, we may need to use 2 DPTXes to service 1 receptacle. Then,
> >> we would only need one of the PHYs (associated with the router that's
> >> wired to that port) to provide a DP clock.
> >>
> >> This, along with the normal (logical or physical) present/absent status
> >> can change at runtime. My plan is to use phy_set_opts(dp_tunelling=true)
> >> or something along those lines to toggle that bit as necessary
> > 
> > I don't see phy_set_opts(). So maybe a submode then...
> 
> Sorry, I misremembered the name. The function is phy_configure(), and it
> takes a union phy_configure_opts, hence the confusion

So, phy_configure() will be called for the DP PHY to set the DP opts,
but how do you plan to determine if DP is on or not? Or do you plan to
add phy_tbt_configure_opts ?

Another obvious option would be to set the flag if DP PHY is being tuned
on / off. I don't know if that fulfills your needs.

> 
> Konrad

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
