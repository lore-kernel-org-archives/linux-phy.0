Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3AA0CD98DA
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 11:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqSXIYvtylsMpufFUO/oDFJ+ypaqghjcZ17TIVnwVvE=; b=BOJNBF+IX5nkvH
	0RSDKUxIzvv5JgoWYLrOgu4TlQ73JT8IFTo17RxSIMk3600vcDhkZgW+QaHCbBGzfuOrTMOnPlDk/
	v3oVXVza7924KBG/KtiUy2JKZWHqyN4vSodx6LQ+voSFXflblw4pAKjMLmEUw+pOW1rjF0zgczuok
	CaSHljNVpBwmLL3Kc9ASlRAgkkBvdt5LdEqBurkPraCfANVwXBc90XTEm/INJTX2JlzaomMUk+Pio
	CxqCzS/dm65YSomYncZ+NASN2cUI26cU1jcU7/4CL/RQeHu8OklldMONA1wdsHwQql7Y2/K4YM8cV
	Rt5oejgzYC2TgqzlY4jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZSDy-0000000FgnM-19d0;
	Tue, 16 Jun 2026 11:44:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZSDv-0000000Fgmt-2sFJ
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 11:44:57 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65GABoAA3384206
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 11:44:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	E+dhUIYvMd/ZyhsxJD8pDE5Uwu0gXRWZLv+OMnJz01I=; b=nPReZeR/Nm21IuxS
	g15voOVsgC/IyaqAszZEKiDHXqD+No87PHZpmFoc8OR8e8oQoNpDaeb3ehXTTGXp
	89D/E7PpxBd5sCwOt0nkVWJ/KW0q17ezksDQWn4RD+4zKzLece5a7+JfcQQD2n/n
	wj3xR9XtHrBGnDtmHdfxK+i9owN1/vhQcJy3UuoWWDeHdEKj9WTisa/abkKMAifZ
	+sx6E6/EpbNEmzZRv1AxmaxU5RvxzGXIFPB686PuK7aYbcCynh8IrKIyMwlz1IcD
	oi195vbZ5s03FVpMoKke8HjH7165s2W2ZkrL58Z/eVb34lp6MSvyzdIrzCIn3nL2
	WjdLsA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eu1ep97ct-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 11:44:53 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-915a547f4b3so42975685a.3
        for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 04:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781610293; x=1782215093; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E+dhUIYvMd/ZyhsxJD8pDE5Uwu0gXRWZLv+OMnJz01I=;
        b=bnds9U5EvQlLH2onnDHgSWuL/VzpXPHIBF0cGQJ9lF42EqPpEf3SkEECAG/xq7tY0Q
         hDngOWHjbKJS1YjhinFRkA974gah13jS6UObPCZCfsKgOUC/F24XlfaP2rc4rOUEzkgq
         QPIQVSL/FJV8cISLhabM2Hfnc/5GqjGV2KsUI0GGNMVzIYwODJoFQe0RezFU5HfmVB1+
         wxEvNdEyDg7F01+GYnpy0uhVF8XARwn8uJoeQizs4tvzgxtpgrL4O2B7kaxKFazd8vYR
         3TkA6cYaY60UXVI106Jn1+suBpQArkesC0Vx3fFuFOWgKXdkiMsonMsWUGGkLBIx9uKJ
         CuDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781610293; x=1782215093;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E+dhUIYvMd/ZyhsxJD8pDE5Uwu0gXRWZLv+OMnJz01I=;
        b=fFcfWwD0TzNi/YKa9ouiWy32casGyJfPjP6rKn5aZ+t31CORdNiq+D/RjgZapjJsVi
         w4ZVkFhMKoE4IMM3xcb3T3X7mPJR/9gay/6fVe3Pzkx/J/nvY05K0StVzmPZjsrIb+X6
         QQIwMYxpV4ykfqUfVcAtSKptRqSfmmur2qk2tY4JSTNrHFvLYn9xTSpncEjFeKD5ahSA
         h3JArL6AIR+PtcczAHYFB857Cp7YYTouTf3Lb/lNF+q2Lruc3TOMa/1PCtC8dVtJgtw7
         12HR/Ny9TEetncel/G0s88UW0oHYTKxnA4F/1cj3MQm8j1MKCSHW+tCj/JlnmPFEnRzV
         j9bA==
X-Forwarded-Encrypted: i=1; AFNElJ8tqXxdjl8C+mjEMOIAD/7QJ9FiKexOTmdMCDw8dfu82IWtUo48rorREhlzcMCwFK6pn8WJZwzur3w=@lists.infradead.org
X-Gm-Message-State: AOJu0YzgoO1Rdxh3U9IwFeD11FFKcX4k7CyEBmpHZEcqaSkA4KpWumKl
	LNB6HrWVUaypJknsMKJfGwesqMP/iq8QzeySkSUgww9VhTkVT6A1wukhduHqEOBUWt2MP5u7Yw4
	PAIAHHydtwnklGkaUBzyGH1RWGD+kcnfSw6XX/l5gORG587/zHN9YVu/7e6hnEA6wbrgU
X-Gm-Gg: Acq92OG8ByMPaHVlKvyzQFxJHKLe+BJRDbDCPZhb4ytkkKSMCR7AmP9PNr5X1vO1jAT
	jiWyarCqEGaChkVgLWsycZO4vHwm9xsGAUkdliSwLYjBeKCQAfSElFvTKZbHqOnrvOVoWQDNvgL
	MeiXexMeW5y0z3wXwUfl88/pX6GcjmILYrot24hIQwiuzxLQeLzPPvPyvzIRLwWm2wLTreq/O8b
	K05i5FPKpP3j140bbTOteLyvea6LwDdTP93RC+wtN3bu9Jws7YuubpT9ZVoFChw9hm8agkvvpLH
	4tXVgz8wPa+0fXlq4HtYVO7+vtuAepLTixwyYU2RtE82wnZYxfqJ1U9tRCcE1RXtzSEsuu9bRW/
	ecR3tdshCJmTwwbobsohU9zjbHov9fo/GUz2aDwXSPbInVA==
X-Received: by 2002:a05:620a:31a8:b0:916:1a60:ee05 with SMTP id af79cd13be357-9161b94f702mr1637960785a.0.1781610293038;
        Tue, 16 Jun 2026 04:44:53 -0700 (PDT)
X-Received: by 2002:a05:620a:31a8:b0:916:1a60:ee05 with SMTP id af79cd13be357-9161b94f702mr1637958585a.0.1781610292515;
        Tue, 16 Jun 2026 04:44:52 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfdb7b6d8c2sm611669866b.38.2026.06.16.04.44.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2026 04:44:51 -0700 (PDT)
Message-ID: <3972248c-acfc-4b31-8c99-69bfdba34b8c@oss.qualcomm.com>
Date: Tue, 16 Jun 2026 13:44:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] phy: qualcomm: qmp-combo: Add preliminary USB4
 support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>
References: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
 <20260518-topic-usb4phy-v1-3-71d827c49dca@oss.qualcomm.com>
 <4nqlpu7qfptekyn77sd7sdn446stgn3v3lw2356bvizrnvjgnr@czqgivemigt5>
 <9aad8e45-b0a5-4c59-8793-8c0747d8fafa@oss.qualcomm.com>
 <uc2l2mbobmik5workhcbtry5spe2gyamx2x4yj4rjly4t3dbrh@n34fo74rctnk>
 <6fb112ae-5919-4c8f-a915-4538d14284da@oss.qualcomm.com>
 <iws2snsi3yfddich3rqqurhwt6mvi2boushkog5t5gvo2ahwmp@l2m6ays2kicf>
 <72b140a7-e95e-491d-8bae-f98a593bdbfb@oss.qualcomm.com>
 <zzs4wgr37wfptzqwgttxdubqnyudyh3am2r6i7b56kd3lwuo2e@bjcyelaxtlq3>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <zzs4wgr37wfptzqwgttxdubqnyudyh3am2r6i7b56kd3lwuo2e@bjcyelaxtlq3>
X-Authority-Analysis: v=2.4 cv=I/ZVgtgg c=1 sm=1 tr=0 ts=6a313735 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=zUi1tAqb9gt6XWnjdEwA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDExOSBTYWx0ZWRfX3IOT2p2zLa37
 Uc3a/BON6+btV04eb43EHRhx4QYmy4QFPUVtanP3uJWnBWnq3AqYr/fB/IwB+uh1051NAjiiETp
 vxIY0Er8MVJGTpwA8OroG3MMFKJy4Ww=
X-Proofpoint-ORIG-GUID: j0_JoKy9tM_zoAg7BERfHqTYnay8BezM
X-Proofpoint-GUID: j0_JoKy9tM_zoAg7BERfHqTYnay8BezM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDExOSBTYWx0ZWRfX+8swZ+TRJLyq
 NnmKogFnnP8pVD7m4oj3viIPLc5bSoeFxqedaytOGZkXrgwVNA9ZSYotJHEq67F0ER5y7/vrZb4
 7RACe+MdrHnw+wXLuuTs0pi6+Wg4n0drFqqbafywK1Fhp3RxqwgHelcBCgmO9+zaJ2sroALb1qg
 NElItkmSplQ2x0StwanALYL2fACphGhG8B8IdU/wM+D+2jXDVdPRstKeoQvjTY7lywQ949H6Euh
 AY0LgyjlvRgogImYMmYRtAtPb6NAt+VELNv6+jcAjAD4XXcPsWK9512hz7Vcrg+Es5XXqpeMPZQ
 Qn2oDosObFpGre6hho4LjRLOJgjJPfvdHMlT8cnXwLOq2I8yHyvdy+A8kaanbBR816rd6nyYdxU
 UFWx6th1Hx7CbXH+ZXjMa4+LMUKHC6sD1u4QJZFUGEh9XvNq+zTV2HAKGAe5ZzhoSSly+60+8B/
 dlyx59GOrx55uR6Ut1w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_03,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0 adultscore=0
 malwarescore=0 spamscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606160119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_044455_851887_A5D4A344 
X-CRM114-Status: GOOD (  29.19  )
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

On 5/28/26 10:00 AM, Dmitry Baryshkov wrote:
> On Fri, May 22, 2026 at 02:05:14PM +0200, Konrad Dybcio wrote:
>> On 5/20/26 5:06 PM, Dmitry Baryshkov wrote:
>>> On Tue, May 19, 2026 at 10:12:06AM +0200, Konrad Dybcio wrote:
>>>> On 5/18/26 5:38 PM, Dmitry Baryshkov wrote:
>>>>> On Mon, May 18, 2026 at 04:15:16PM +0200, Konrad Dybcio wrote:
>>>>>> On 5/18/26 3:57 PM, Dmitry Baryshkov wrote:
>>>>>>> On Mon, May 18, 2026 at 12:29:50PM +0200, Konrad Dybcio wrote:
>>>>>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>>>>>
>>>>>>>> Some Combo PHYs (so far only on SC8280XP, X1E80100 and Glymur), come in
>>>>>>>> a flavor called USB43DP, which as the name implies, features USB4, USB3
>>>>>>>> and DP signal processing capabilities. In that architecture, USB3 and
>>>>>>>> USB4 PHYs share the same USB_PLL while featuring separate logic spaces.
>>>>>>>> The DP part is roughly the same as on the instances without USB4.
>>>>>>>>
>>>>>>>> The USB4 and USB3/DP operation modes of the PHY are mutually exclusive.
>>>>>>>> Only one USB protocol (and flavor of pipe clock) can be active at a
>>>>>>>> given moment (not to be confused with USB3 not being able to be
>>>>>>>> tunneled as USB4 packets - that of course remains possible).
>>>>>>>> The DP PLL is still used for clocking tunneled DP links. It may be
>>>>>>>> turned off to save power when no tunnels are active, but that's left as
>>>>>>>> a TODO item for now.
>>>>>>>>
>>>>>>>> Due to the nature of USB4, the Type-C handling happens entirely inside
>>>>>>>> the Host Router, and as such the QMPPHY's mux_set() function is
>>>>>>>> nullified for the period when USB4 PHY remains active. This is strictly
>>>>>>>> necessary, as the Host Router driver is going to excercise manual
>>>>>>>> control over the USB4 PHY's power state, which is needed by the suspend
>>>>>>>> and resume flows. Failure to control that synchronously with other
>>>>>>>> parts of the code results in a SoC crash by unlocked access.
>>>>>>>>
>>>>>>>> Because of that, a new struct phy is spawned to expose the USB4 mode,
>>>>>>>> along with a .set_mode callback to allow toggling between USB4 and TBT3
>>>>>>>> submodes.
>>>>>>>>
>>>>>>>> Thunderbolt 3, having a number of differences vs USB4, requires a
>>>>>>>> couple specific overrides, pertaining to electrical characteristics,
>>>>>>>> which are easily accommodated for.
>>>>>>>>
>>>>>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>>>>> ---
>>>>>>>>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 392 ++++++++++++++++++++++++------
>>>>>>>>  1 file changed, 322 insertions(+), 70 deletions(-)
>>>>>>>>
>>>>>>>
>>>>>>> Overall it looks good. The major question (after looking at TODOs), do
>>>>>>> we need a separate submode for USB+DP / TBT+DP?
>>>>>>
>>>>>> The problem space is as follows:
>>>>>>
>>>>>> After a TBT (collectively TBT3+ and USB4) link has been established and
>>>>>> we have a link partner, we may (based on the HW capabilities and user
>>>>>> config, such as kernel params but not only) start or stop a DP tunnel at
>>>>>> runtime. On Qualcomm hardware, the PHY is kept in USB4 mode and its DP
>>>>>> AUX lines are not used (instead, the encapsulated DP AUX packets are r/w
>>>>>> entirely within the USB4 subsystem via a pair of FIFOs that Linux sees
>>>>>> as a separate DP AUX host)
>>>>>
>>>>> So far so good. But I still don't grok if having a DP-over-USB4 is a
>>>>> separate submode or not. I.e. I see code (and TODOs) to detect and
>>>>> handle DP going on and off. Would it be better if we specify that
>>>>> explicitly?
>>>>
>>>> I really don't want to end up in a situation like we have with:
>>>>
>>>> $ rg _USB include/linux/phy/phy.h
>>>> 29:     PHY_MODE_USB_HOST,
>>>> 30:     PHY_MODE_USB_HOST_LS,
>>>> 31:     PHY_MODE_USB_HOST_FS,
>>>> 32:     PHY_MODE_USB_HOST_HS,
>>>> 33:     PHY_MODE_USB_HOST_SS,
>>>> 34:     PHY_MODE_USB_DEVICE,
>>>> 35:     PHY_MODE_USB_DEVICE_LS,
>>>> 36:     PHY_MODE_USB_DEVICE_FS,
>>>> 37:     PHY_MODE_USB_DEVICE_HS,
>>>> 38:     PHY_MODE_USB_DEVICE_SS,
>>>> 39:     PHY_MODE_USB_OTG,
>>>>
>>>>>> Then, on hamoa/glymur specifically, any of the 3 USB4-capable DP hosts
>>>>>> can be muxed to either of the 2 DPIN ports on any of the 3 USB4 routers
>>>>>> (and each of these routers is hardwired to one of the PHYs).
>>>>>>
>>>>>> To underline, we have 3 DP producers and 6 consumers. If there's e.g. a
>>>>>> super high-res display at one of the physical ports, or a long
>>>>>> daisy-chain, we may need to use 2 DPTXes to service 1 receptacle. Then,
>>>>>> we would only need one of the PHYs (associated with the router that's
>>>>>> wired to that port) to provide a DP clock.
>>>>>>
>>>>>> This, along with the normal (logical or physical) present/absent status
>>>>>> can change at runtime. My plan is to use phy_set_opts(dp_tunelling=true)
>>>>>> or something along those lines to toggle that bit as necessary
>>>>>
>>>>> I don't see phy_set_opts(). So maybe a submode then...
>>>>
>>>> Sorry, I misremembered the name. The function is phy_configure(), and it
>>>> takes a union phy_configure_opts, hence the confusion
>>>
>>> So, phy_configure() will be called for the DP PHY to set the DP opts,
>>> but how do you plan to determine if DP is on or not? Or do you plan to
>>> add phy_tbt_configure_opts ?
>>>
>>> Another obvious option would be to set the flag if DP PHY is being tuned
>>> on / off. I don't know if that fulfills your needs.
>>
>> Either this or tbt_configure_opts. We still have the muxing question to
>> chew through.
>>
>> The bottom line is that all AUX traffic happens between the "AUX adapters"
>> within USB4SS, talking over thunderbolt to other AUX adapters on the LTTPRs
>> and the far-end device (and anything inbetween in a chained topology) meaning
>> we only need to engage the DP host itself (and therefore the PHY) after we've
>> already performed the capability negotiations
> 
> I hope you mean USB link capabilities. DP host still needs to ping LTTPRs
> and read all the DP properties on its own. I don't think we want to leak
> that to the other layers.

I must crush your hopes.

There's some preliminary TBT-layer setup (handled by the tbt driver in
Linux), followed by the expected DPCD (and alike) r/w accesses, which on
our hw must happen through the DP adapters housed inside USB4SS (again,
because the DPTX's auxbus is NOPed out). Think of it as just another
i2c_aux provider.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
