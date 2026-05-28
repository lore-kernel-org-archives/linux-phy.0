Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79503CD5BD5
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 08:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PiiVgdJ4J8Ibc5bS620uvM5tHnCX69+NKW4zbRmL/DA=; b=2k/1wXN18BoKxI
	NGkyF2SGWED6STdMz2pUW4cJHK9AqcXk1z+XcHokVbb0yR/B66+QAnIOfAVOw5MbxhfkgkS7/sLZb
	RYRmnGI2Sz0yk5Z4S/sGtZAat3uC0riHGPIecRQ5lUmaCIPI6JXQVgZWTknwjJiWOJCY8vrwMklaU
	1y3fIX+5b96bN5K81P1tJW8iTBQwMhmcZ5xgIzCoRh269Twn3cjcNUIPL9zvUYx4esVMk3dpxe3tg
	uZfW6snsJmFjTfk7LXw1Fj8DgjxN9P/9IyT0ZR6oT6w8GuAKGrXMEErf1RwgXVbfTTmUG1JroWP7B
	UfFT7cGBpfnS8A3fAd3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSVfZ-00000005Jto-0tzA;
	Thu, 28 May 2026 08:00:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSVfK-00000005Jlv-39Iv
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 08:00:32 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64S6rFrh1225040
	for <linux-phy@lists.infradead.org>; Thu, 28 May 2026 08:00:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=N7iMbetrrOwn6wQkhuxIddok
	2tB1wY35g7JsfGtZdak=; b=hQb0SGSr6d5nOnQPbsCqqc0XyBMozQI1cGgGMDJ0
	HuBvifkSNS56xU43f9j1SX8TrPK4gDXm6jFX69BIj4SUUSnvdgv5RSpQcBULEcdu
	EJiccDSiu0yzGLi4bofFOPIMoQtsTrCiQFjfYqRND9u9SA7uP/jo2540P9eLycXD
	r8UPzbVXdybVReSAvPvOjYz4ESqP2+DOGL5CVSSamw4GAM8OulD50DfF9z3FXBoJ
	h2orbLsRexGINodAogEXinEUSVsiMCBgtyg0An13pUczxVyvjsnem5WJ41FkxlbT
	Bftp6/7r+U4kEQZ12WyIexaxQSg73IKrXFT8Jl6oBBVFcA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ee7y1swb0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 28 May 2026 08:00:29 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-516cdd89225so136308831cf.0
        for <linux-phy@lists.infradead.org>; Thu, 28 May 2026 01:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779955229; x=1780560029; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=N7iMbetrrOwn6wQkhuxIddok2tB1wY35g7JsfGtZdak=;
        b=DJMTD8LgzpYZFQyE7J3byFrywIcMHDJ5WsQILhlvyKNkFYXYe0om8lQgrNvnHxvD1O
         Aj+uoync6Fib3qt+zsqzW5iEDzBtCtLSIS0r8gKdq7S8H1tY79U18strWXFWbMhrxq9C
         ogfzqMc6nvOHWvi3aj8ppyJfNyb0OeF9SDEdvHqzml7s/96olPM08+Dkiegz9BSsudr6
         3eBBx4lMgQ0OKKePAHmfKVOPeOM6lLr0KkTLlESUHuQO+4i/Q+hTy2RcJMUuaJ1a7vzm
         p0OhqpbQUPlKa47BCNOTdgWGbMDSvIo0Mqj1Mskwqc32sLfyF7hmwjhwyGcaA0NDvy7K
         KkLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779955229; x=1780560029;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N7iMbetrrOwn6wQkhuxIddok2tB1wY35g7JsfGtZdak=;
        b=Ycb9f9x3CSTTfM2KaGGql84O0VbPxQZv655pz6RAo4TobQHcEuML4MFrt1J4M1nlee
         cXy0kWuh80rNeekjaGv/P2I1FdoTrJpmb2sDrbbT93z+gV1TJncDFsuOgq0NxPPq6BT8
         L27DxyiixSsPPmo7TYpuOlA8TbuNwdt/Jq2s4ZoMbLn4a1fwFZ2M7XTRsAoOElfomVjd
         ODS8LnTqzLeN6isTTqMlfHqtORKfOCzybHJI69xqn1BZ1qHHtBFqMI6r3exqatSgFSty
         USWOHslZeWi1KHyt28vCWs5vL3x1U+XKD/ql24vTN6qIxe61FzIusCTMUd3YwAD4fZIt
         A2kQ==
X-Forwarded-Encrypted: i=1; AFNElJ/gAmeF5tMuqWDVizm40BAzovj7OV1unH/JcOHOJs0Ykq77H5by4iYYhOKF8+KLDAbCZ16H3lfj/lU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw696biyqlIwa22tbPHvuirdwPfG9IVy54C2Fm5is0ZLZudvxph
	DurwH+eGRBWEXfo05HgNlLAY/mu6IF47Ufihae1HBVR0IqRP2kUbacje2ZwOB5v4cgIdVJgqmh7
	usjuaKEwBkXFtcQFYqXk6RQzBkfVkWU1vi6k22krI8n+LU7K36qMf7s1Kh0itlIcoYy/O
X-Gm-Gg: Acq92OH4x5C7OeAPoSTx+jQQkg2lBSl+Hc0KBtOevrj+4VlCZwmS0kzjfDb8iz/GMIz
	aF+siRLma4YRChv7wHtOnYIBW0aJ782XbR2nGRjMQ+7rP4HxAZYVP9FXFcJaal3AX7/xzFZ9LyA
	66faNCiGdQWo9o9kCs5FkaX4lSl3JM5Co7uuAAsTGXsujCUELGLH82lhHD1TtZB3wvzRMhedRwh
	fJL7sy0Y2fDW+hDchdQMqe+tDcFdeCINsZSNPkTm9jPNnjWD9ho3PcrHOWyg9fF+3+7KC4vgip0
	eEELgPR8fD8ZN+vxFPOLjFSjoNmtk7qB0BEEikr0zquggYkMoV2xE5gKE9A4QCzCdf3zNvC411M
	6iAcosRRfsbwJoiPjCmWsWZ6lOjhJso4tZJzkD356ZoTAjNSbHkuu7UZovA0o4GgqU4GK1TTUnw
	8ic0MR3e3nXSBN0Yvee0CpkCX/Zxv2AS4VVqX27AGP8nrDnQ==
X-Received: by 2002:a05:622a:8589:b0:516:daff:7f71 with SMTP id d75a77b69052e-516daff8005mr277691281cf.56.1779955228577;
        Thu, 28 May 2026 01:00:28 -0700 (PDT)
X-Received: by 2002:a05:622a:8589:b0:516:daff:7f71 with SMTP id d75a77b69052e-516daff8005mr277690111cf.56.1779955227789;
        Thu, 28 May 2026 01:00:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa462cf284sm1739113e87.7.2026.05.28.01.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2026 01:00:26 -0700 (PDT)
Date: Thu, 28 May 2026 11:00:23 +0300
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
Message-ID: <zzs4wgr37wfptzqwgttxdubqnyudyh3am2r6i7b56kd3lwuo2e@bjcyelaxtlq3>
References: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
 <20260518-topic-usb4phy-v1-3-71d827c49dca@oss.qualcomm.com>
 <4nqlpu7qfptekyn77sd7sdn446stgn3v3lw2356bvizrnvjgnr@czqgivemigt5>
 <9aad8e45-b0a5-4c59-8793-8c0747d8fafa@oss.qualcomm.com>
 <uc2l2mbobmik5workhcbtry5spe2gyamx2x4yj4rjly4t3dbrh@n34fo74rctnk>
 <6fb112ae-5919-4c8f-a915-4538d14284da@oss.qualcomm.com>
 <iws2snsi3yfddich3rqqurhwt6mvi2boushkog5t5gvo2ahwmp@l2m6ays2kicf>
 <72b140a7-e95e-491d-8bae-f98a593bdbfb@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <72b140a7-e95e-491d-8bae-f98a593bdbfb@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=DsNmPm/+ c=1 sm=1 tr=0 ts=6a17f61d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=PDx2_Kj2Eo2xtKM_tVQA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: ZF6DItqzEg_Ms-oxsQSrp8hSeKeU8v5r
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI4MDA3OSBTYWx0ZWRfX2HBS82bnc9dV
 SE9CfEYTLnAUne8HZkhb0viM3Vr/4J8H8xD5uUo3cqqY8VqEhkP7H1ZGHsQiYI0bsEAwM+CkFkD
 5iS3hUv4S8g3IN8hElDu8B6pVIVQFyYsYR738mG2fbka5DB6dwvTJUmNJIZGuRSo9SHRRyPIdZZ
 yPD4PVHWPrspspEbupO9v49bvYz7Hg/H/M6xUve3DJH6dxgt7yhRD5HcirB2HeeDqcMxvoEdZrV
 oa0mlRK1RPU12d/Molt45RQ+lsBOQssOqW4+id7LrHZsID9TYvawQpIDKWy3RRp2K+KxeXmG3lD
 AKQJsP92Eik2oJMP89Ty5Kl89k1E9Bc36x/rGDhGAUc4S46fu3vp+MaBZ3RqJ5TQSzlNWNbiIw8
 4NRpxv2VAH0AFDkgKHcpazEVAidCyzZ0cMAolbVV9BmSY2Aiqkj3aHEn2x5UcsLj0qLraW6Y0rn
 W+iBmF8UomnozOCEdbg==
X-Proofpoint-GUID: ZF6DItqzEg_Ms-oxsQSrp8hSeKeU8v5r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-28_02,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2605280079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_010030_942017_E7F5B633 
X-CRM114-Status: GOOD (  43.33  )
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

On Fri, May 22, 2026 at 02:05:14PM +0200, Konrad Dybcio wrote:
> On 5/20/26 5:06 PM, Dmitry Baryshkov wrote:
> > On Tue, May 19, 2026 at 10:12:06AM +0200, Konrad Dybcio wrote:
> >> On 5/18/26 5:38 PM, Dmitry Baryshkov wrote:
> >>> On Mon, May 18, 2026 at 04:15:16PM +0200, Konrad Dybcio wrote:
> >>>> On 5/18/26 3:57 PM, Dmitry Baryshkov wrote:
> >>>>> On Mon, May 18, 2026 at 12:29:50PM +0200, Konrad Dybcio wrote:
> >>>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>>>>>
> >>>>>> Some Combo PHYs (so far only on SC8280XP, X1E80100 and Glymur), come in
> >>>>>> a flavor called USB43DP, which as the name implies, features USB4, USB3
> >>>>>> and DP signal processing capabilities. In that architecture, USB3 and
> >>>>>> USB4 PHYs share the same USB_PLL while featuring separate logic spaces.
> >>>>>> The DP part is roughly the same as on the instances without USB4.
> >>>>>>
> >>>>>> The USB4 and USB3/DP operation modes of the PHY are mutually exclusive.
> >>>>>> Only one USB protocol (and flavor of pipe clock) can be active at a
> >>>>>> given moment (not to be confused with USB3 not being able to be
> >>>>>> tunneled as USB4 packets - that of course remains possible).
> >>>>>> The DP PLL is still used for clocking tunneled DP links. It may be
> >>>>>> turned off to save power when no tunnels are active, but that's left as
> >>>>>> a TODO item for now.
> >>>>>>
> >>>>>> Due to the nature of USB4, the Type-C handling happens entirely inside
> >>>>>> the Host Router, and as such the QMPPHY's mux_set() function is
> >>>>>> nullified for the period when USB4 PHY remains active. This is strictly
> >>>>>> necessary, as the Host Router driver is going to excercise manual
> >>>>>> control over the USB4 PHY's power state, which is needed by the suspend
> >>>>>> and resume flows. Failure to control that synchronously with other
> >>>>>> parts of the code results in a SoC crash by unlocked access.
> >>>>>>
> >>>>>> Because of that, a new struct phy is spawned to expose the USB4 mode,
> >>>>>> along with a .set_mode callback to allow toggling between USB4 and TBT3
> >>>>>> submodes.
> >>>>>>
> >>>>>> Thunderbolt 3, having a number of differences vs USB4, requires a
> >>>>>> couple specific overrides, pertaining to electrical characteristics,
> >>>>>> which are easily accommodated for.
> >>>>>>
> >>>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>>>>> ---
> >>>>>>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 392 ++++++++++++++++++++++++------
> >>>>>>  1 file changed, 322 insertions(+), 70 deletions(-)
> >>>>>>
> >>>>>
> >>>>> Overall it looks good. The major question (after looking at TODOs), do
> >>>>> we need a separate submode for USB+DP / TBT+DP?
> >>>>
> >>>> The problem space is as follows:
> >>>>
> >>>> After a TBT (collectively TBT3+ and USB4) link has been established and
> >>>> we have a link partner, we may (based on the HW capabilities and user
> >>>> config, such as kernel params but not only) start or stop a DP tunnel at
> >>>> runtime. On Qualcomm hardware, the PHY is kept in USB4 mode and its DP
> >>>> AUX lines are not used (instead, the encapsulated DP AUX packets are r/w
> >>>> entirely within the USB4 subsystem via a pair of FIFOs that Linux sees
> >>>> as a separate DP AUX host)
> >>>
> >>> So far so good. But I still don't grok if having a DP-over-USB4 is a
> >>> separate submode or not. I.e. I see code (and TODOs) to detect and
> >>> handle DP going on and off. Would it be better if we specify that
> >>> explicitly?
> >>
> >> I really don't want to end up in a situation like we have with:
> >>
> >> $ rg _USB include/linux/phy/phy.h
> >> 29:     PHY_MODE_USB_HOST,
> >> 30:     PHY_MODE_USB_HOST_LS,
> >> 31:     PHY_MODE_USB_HOST_FS,
> >> 32:     PHY_MODE_USB_HOST_HS,
> >> 33:     PHY_MODE_USB_HOST_SS,
> >> 34:     PHY_MODE_USB_DEVICE,
> >> 35:     PHY_MODE_USB_DEVICE_LS,
> >> 36:     PHY_MODE_USB_DEVICE_FS,
> >> 37:     PHY_MODE_USB_DEVICE_HS,
> >> 38:     PHY_MODE_USB_DEVICE_SS,
> >> 39:     PHY_MODE_USB_OTG,
> >>
> >>>> Then, on hamoa/glymur specifically, any of the 3 USB4-capable DP hosts
> >>>> can be muxed to either of the 2 DPIN ports on any of the 3 USB4 routers
> >>>> (and each of these routers is hardwired to one of the PHYs).
> >>>>
> >>>> To underline, we have 3 DP producers and 6 consumers. If there's e.g. a
> >>>> super high-res display at one of the physical ports, or a long
> >>>> daisy-chain, we may need to use 2 DPTXes to service 1 receptacle. Then,
> >>>> we would only need one of the PHYs (associated with the router that's
> >>>> wired to that port) to provide a DP clock.
> >>>>
> >>>> This, along with the normal (logical or physical) present/absent status
> >>>> can change at runtime. My plan is to use phy_set_opts(dp_tunelling=true)
> >>>> or something along those lines to toggle that bit as necessary
> >>>
> >>> I don't see phy_set_opts(). So maybe a submode then...
> >>
> >> Sorry, I misremembered the name. The function is phy_configure(), and it
> >> takes a union phy_configure_opts, hence the confusion
> > 
> > So, phy_configure() will be called for the DP PHY to set the DP opts,
> > but how do you plan to determine if DP is on or not? Or do you plan to
> > add phy_tbt_configure_opts ?
> > 
> > Another obvious option would be to set the flag if DP PHY is being tuned
> > on / off. I don't know if that fulfills your needs.
> 
> Either this or tbt_configure_opts. We still have the muxing question to
> chew through.
> 
> The bottom line is that all AUX traffic happens between the "AUX adapters"
> within USB4SS, talking over thunderbolt to other AUX adapters on the LTTPRs
> and the far-end device (and anything inbetween in a chained topology) meaning
> we only need to engage the DP host itself (and therefore the PHY) after we've
> already performed the capability negotiations

I hope you mean USB link capabilities. DP host still needs to ping LTTPRs
and read all the DP properties on its own. I don't think we want to leak
that to the other layers.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
