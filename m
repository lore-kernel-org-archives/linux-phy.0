Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE224CD5BB0
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 12:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pebqyq/rgsl91C3kDYOGcykkE3JpfNr4ahIi1aaMGBI=; b=ifgSt8labONPy8
	Kt98CJ9zx4PLxN6GDPnrctUiXU96j++l7QX/UGAzuSsAnZtQrD70d0NY58Z6VDqMxx439K5PpRpti
	ZutYUBz89/c7C1RqzeydMfD+qCIUPEVeArmVhsWyiJY/vL6QJtAUY+BlDdfYG6sJsga01CWPYB5dd
	/qONf4gKw6va1ae58ELgQFSHcORzhm4Xsg3HSY2Quyz5+QKlAC0OwboNFz7OLFZtBekhTzo5eLIEu
	1oyJV5QraqBYW04G0VNj2wnkuMjdjpLgrVpvXm3wOcRGGyjTwIpMhH5jy8CKediTmdg6ZSlC4kwVU
	qmyfXmJSugd+fYhmzw4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQOd3-0000000AjCE-1ybX;
	Fri, 22 May 2026 12:05:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQOd0-0000000AjBf-0YtT
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 12:05:23 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64M9F15g1816126
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 12:05:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/W7eQg2v0CxxDHZFA3msI98q1SBsWDCGz6iSHghls+k=; b=Ptexrnz+2y96YXX5
	jBcQwa2Ms7HXs/z7bUm/Ivh6W0CKprff2xeL4OLdUJ/VAYZQXlrATdmtYkSAA/8A
	iheCTTbWfmp9i0n/JogQtOMEW9m/KQYrGhVaZHpyAvDXUqQz1ZgRy481ZaLJCJDO
	0ASZcW+7J/jX+rEuwftvD2xOVMI8NvFy6C3uI7bUq7vWDCBZ/qIkbC8iAwi+uv0u
	sYzMo3tIi39F/o27GmXeWoHEFH5bGD4ZGUauTcz0TmYMLan5FRUJTDkVEpH6EjJs
	bW0HEaltIs60T3FD5BHNrXR7+t+R+/mynPvN7oB+gZGXplUZya5JBJ+CqoW+tqda
	kvy5tw==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eafrm1ufh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 12:05:20 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-56f71af9dddso483289e0c.1
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 05:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779451520; x=1780056320; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/W7eQg2v0CxxDHZFA3msI98q1SBsWDCGz6iSHghls+k=;
        b=RiG/rNNcwzeK0AkFEjBRaMwKIFH3CswW1pRGRYbshj1n7503fAeaaVPGxb74lYXc+x
         Esa0bWbdxaR0WRW4XPISuhF89u7aE3dhSuce8PTSOGuC/EyLbLdCjRG8bj8sFlPppoIg
         MSpxXpCaij6RXB1JlMRpJQnT703dzxQ79S7NpUeXVrxSZg4F4g3rRV01dLh5kr9MNCaY
         11JYuV7uunlEOcohquXK4vhwlLWG5cLudQO3emSqYWwsZQ3Utvj+sCNhgfBOHybWix6H
         6AogbxFG8MykfLHmyr3P/Pi5YAbxMM46QQDKpXEkUXXBMbUbpQ3BF6GNMRm2+tXL5eSh
         mRFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779451520; x=1780056320;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/W7eQg2v0CxxDHZFA3msI98q1SBsWDCGz6iSHghls+k=;
        b=sfvPaTYs6sl2UZMVmXX8lXdRJqb7y/P0Q7Thft8R6p3uRRqoE+OqJbyhV7jm43bG8y
         PbJnPd+YQcllF+edq1egfVZK4PJd2cdRogoA9Xw3f706qCIBgDo0sRAkg+l+Jz1Yo90m
         S7Cjjm2dC+XZ3c8Ccgqhtqk+//81OUsNT7lmGcZ4WDiH4L8czYI9X6t/jshOS77ydMTc
         V7XJKb2g5IniFBZUUUp9i/E/wkmC9P4tXxd5uoVtXeZRqeyUgrsx6P+3qYxTbImVFUqf
         4++VWcWLvgQgmaK9f3g5Q0JHQdYLzaJ5dHXRXJLObal/lsjlHRATipYu7Co047UstNIj
         iC3A==
X-Forwarded-Encrypted: i=1; AFNElJ+rKCpnpGtr7A2+v4VPCPFuTnDou9UCdt7TsallhFCNQUowAOnu9ORnSSW0Ru4/olvq0TAWMk/pUa0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwTj6POLpt3LlR9Hq6xdICBLuddR2u4/9GhchLLhiR2Easmb8XX
	XVLCU72HQkH+4396YKCJoyuo9X0NHxE+77lIBOfINKirdnvBP9myAYHoGnnIAVOiSmxvdJUs8xE
	RGjgCJ7fB+4Q0Xt4NOmEuQTlZ1Q94UxmvjFpINNf4JlCyK2vhg+k2bic9utUBPp3iQcem
X-Gm-Gg: Acq92OHxiVl5yhBRAJ8cPRBxlkFHA//a8O+IIQlSYyurlFo42fCa5OdTuPJI8kqZvb1
	5oBKldle+paGIAKb9NdGguGuIfwGLuVviwJjw/gNi5Qllw/l8EN9RCl5qJhyV96JLLyXkuXnpE+
	UpE0/Fk9Fho4wo0T+54R1eGwbJo4I4JwBHys5vLiOkKE+39D8ioGNaLGY3cXp5Kq6eh+boiFOdz
	NKfP011BP3tOGRpPpCcZInKrO7C0ONDe2KIY4IB16R1270UeYqWnyENof9RTPjKX5g0C20m7rzz
	keg6wQXHotaJAOZ43ussh/193PRoolWomFbZR4M8gEmY5Wjz+3lgCkQ1tEz4GrjriqO/chnqUY7
	rNrzkUPsazImMUq3BJ+L43yHvL0y87ZNV8LjrRQizA7Flfw==
X-Received: by 2002:a05:6122:c2d6:20b0:575:99d9:cd15 with SMTP id 71dfb90a1353d-5865e98ed72mr580084e0c.1.1779451519571;
        Fri, 22 May 2026 05:05:19 -0700 (PDT)
X-Received: by 2002:a05:6122:c2d6:20b0:575:99d9:cd15 with SMTP id 71dfb90a1353d-5865e98ed72mr580040e0c.1.1779451519025;
        Fri, 22 May 2026 05:05:19 -0700 (PDT)
Received: from [192.168.119.254] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-688b9b6d023sm612312a12.5.2026.05.22.05.05.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2026 05:05:17 -0700 (PDT)
Message-ID: <72b140a7-e95e-491d-8bae-f98a593bdbfb@oss.qualcomm.com>
Date: Fri, 22 May 2026 14:05:14 +0200
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <iws2snsi3yfddich3rqqurhwt6mvi2boushkog5t5gvo2ahwmp@l2m6ays2kicf>
X-Proofpoint-ORIG-GUID: 3av83kH8EWd_waHliN2q4gjJSgt0OVWJ
X-Authority-Analysis: v=2.4 cv=Zekt8MVA c=1 sm=1 tr=0 ts=6a104680 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=ATWgodkRvw0t6Ni2IuoA:9 a=QEXdDO2ut3YA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDEyMCBTYWx0ZWRfX52jVfQ0uzjHx
 Q84QqS7naPfZ/fgfiSnF83JFHay5X3yB1qNw4pPtbT721IRTK8f3hGskuyfx5PTFjyL6p505p2U
 UT9w2DBEkc8w/qppj+LLkTea+hV/r19sBTcFHYnGe6cMb7HmXLAs2tsfdaEOITk/WtT5tRaENeg
 o+cNZLZBQs0fUNq3X+hM6C4u4cuAe1CfTkZ8JC2f3CNRYyG1o1CODE653o5rvR2HGU92PJCktNm
 Ap4tRFs7/ORDXHjsVWcUUuFSSlGlIjh73tCa14u3glTyYEJbD1pJh+ir7soBe4VNbleGnmmqTsV
 q4CCU9p09hsCQSZ8b5lEyrz7yX7Tqj3mW6hGE1Y8A/YX+eDfWndafACG2rcSNYHiyQ/OGjAYeE2
 ckh7tL5C/bb4x/yxTUk3ysJFra+a8/Q6+M6mj52PjBPilGasHkEjKCiVQIzVq4A/Ge7/lL4EE5G
 9ysP+hlpbiMUnp7Jy2w==
X-Proofpoint-GUID: 3av83kH8EWd_waHliN2q4gjJSgt0OVWJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 suspectscore=0 spamscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_050522_300259_A8ED2029 
X-CRM114-Status: GOOD (  26.48  )
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

On 5/20/26 5:06 PM, Dmitry Baryshkov wrote:
> On Tue, May 19, 2026 at 10:12:06AM +0200, Konrad Dybcio wrote:
>> On 5/18/26 5:38 PM, Dmitry Baryshkov wrote:
>>> On Mon, May 18, 2026 at 04:15:16PM +0200, Konrad Dybcio wrote:
>>>> On 5/18/26 3:57 PM, Dmitry Baryshkov wrote:
>>>>> On Mon, May 18, 2026 at 12:29:50PM +0200, Konrad Dybcio wrote:
>>>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>>>
>>>>>> Some Combo PHYs (so far only on SC8280XP, X1E80100 and Glymur), come in
>>>>>> a flavor called USB43DP, which as the name implies, features USB4, USB3
>>>>>> and DP signal processing capabilities. In that architecture, USB3 and
>>>>>> USB4 PHYs share the same USB_PLL while featuring separate logic spaces.
>>>>>> The DP part is roughly the same as on the instances without USB4.
>>>>>>
>>>>>> The USB4 and USB3/DP operation modes of the PHY are mutually exclusive.
>>>>>> Only one USB protocol (and flavor of pipe clock) can be active at a
>>>>>> given moment (not to be confused with USB3 not being able to be
>>>>>> tunneled as USB4 packets - that of course remains possible).
>>>>>> The DP PLL is still used for clocking tunneled DP links. It may be
>>>>>> turned off to save power when no tunnels are active, but that's left as
>>>>>> a TODO item for now.
>>>>>>
>>>>>> Due to the nature of USB4, the Type-C handling happens entirely inside
>>>>>> the Host Router, and as such the QMPPHY's mux_set() function is
>>>>>> nullified for the period when USB4 PHY remains active. This is strictly
>>>>>> necessary, as the Host Router driver is going to excercise manual
>>>>>> control over the USB4 PHY's power state, which is needed by the suspend
>>>>>> and resume flows. Failure to control that synchronously with other
>>>>>> parts of the code results in a SoC crash by unlocked access.
>>>>>>
>>>>>> Because of that, a new struct phy is spawned to expose the USB4 mode,
>>>>>> along with a .set_mode callback to allow toggling between USB4 and TBT3
>>>>>> submodes.
>>>>>>
>>>>>> Thunderbolt 3, having a number of differences vs USB4, requires a
>>>>>> couple specific overrides, pertaining to electrical characteristics,
>>>>>> which are easily accommodated for.
>>>>>>
>>>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>>> ---
>>>>>>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 392 ++++++++++++++++++++++++------
>>>>>>  1 file changed, 322 insertions(+), 70 deletions(-)
>>>>>>
>>>>>
>>>>> Overall it looks good. The major question (after looking at TODOs), do
>>>>> we need a separate submode for USB+DP / TBT+DP?
>>>>
>>>> The problem space is as follows:
>>>>
>>>> After a TBT (collectively TBT3+ and USB4) link has been established and
>>>> we have a link partner, we may (based on the HW capabilities and user
>>>> config, such as kernel params but not only) start or stop a DP tunnel at
>>>> runtime. On Qualcomm hardware, the PHY is kept in USB4 mode and its DP
>>>> AUX lines are not used (instead, the encapsulated DP AUX packets are r/w
>>>> entirely within the USB4 subsystem via a pair of FIFOs that Linux sees
>>>> as a separate DP AUX host)
>>>
>>> So far so good. But I still don't grok if having a DP-over-USB4 is a
>>> separate submode or not. I.e. I see code (and TODOs) to detect and
>>> handle DP going on and off. Would it be better if we specify that
>>> explicitly?
>>
>> I really don't want to end up in a situation like we have with:
>>
>> $ rg _USB include/linux/phy/phy.h
>> 29:     PHY_MODE_USB_HOST,
>> 30:     PHY_MODE_USB_HOST_LS,
>> 31:     PHY_MODE_USB_HOST_FS,
>> 32:     PHY_MODE_USB_HOST_HS,
>> 33:     PHY_MODE_USB_HOST_SS,
>> 34:     PHY_MODE_USB_DEVICE,
>> 35:     PHY_MODE_USB_DEVICE_LS,
>> 36:     PHY_MODE_USB_DEVICE_FS,
>> 37:     PHY_MODE_USB_DEVICE_HS,
>> 38:     PHY_MODE_USB_DEVICE_SS,
>> 39:     PHY_MODE_USB_OTG,
>>
>>>> Then, on hamoa/glymur specifically, any of the 3 USB4-capable DP hosts
>>>> can be muxed to either of the 2 DPIN ports on any of the 3 USB4 routers
>>>> (and each of these routers is hardwired to one of the PHYs).
>>>>
>>>> To underline, we have 3 DP producers and 6 consumers. If there's e.g. a
>>>> super high-res display at one of the physical ports, or a long
>>>> daisy-chain, we may need to use 2 DPTXes to service 1 receptacle. Then,
>>>> we would only need one of the PHYs (associated with the router that's
>>>> wired to that port) to provide a DP clock.
>>>>
>>>> This, along with the normal (logical or physical) present/absent status
>>>> can change at runtime. My plan is to use phy_set_opts(dp_tunelling=true)
>>>> or something along those lines to toggle that bit as necessary
>>>
>>> I don't see phy_set_opts(). So maybe a submode then...
>>
>> Sorry, I misremembered the name. The function is phy_configure(), and it
>> takes a union phy_configure_opts, hence the confusion
> 
> So, phy_configure() will be called for the DP PHY to set the DP opts,
> but how do you plan to determine if DP is on or not? Or do you plan to
> add phy_tbt_configure_opts ?
> 
> Another obvious option would be to set the flag if DP PHY is being tuned
> on / off. I don't know if that fulfills your needs.

Either this or tbt_configure_opts. We still have the muxing question to
chew through.

The bottom line is that all AUX traffic happens between the "AUX adapters"
within USB4SS, talking over thunderbolt to other AUX adapters on the LTTPRs
and the far-end device (and anything inbetween in a chained topology) meaning
we only need to engage the DP host itself (and therefore the PHY) after we've
already performed the capability negotiations

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
