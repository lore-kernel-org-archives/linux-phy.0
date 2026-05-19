Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21471CD4F52
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 08:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kL8sAGscaSEgck4G41lyzkQjzw+thC1C5EDsW9LQ3H4=; b=GmU3WvIIdU9XCE
	k84F1IpQ/KzrZdYt61f27pDyj76BiMAJaW6hSg17pUq/Mpmd/2PHw5mQ57Gqjxnd7rSjjS4vowI7/
	QP2QT/vTQzJlHieWIIOAs88BaRh6lo6/e3DLEnZgHYsI44lVvxObHQ9C6woBqevG+kUZtn12Z5sK/
	oRT5b9fl/mT40tih7c39c/osCGS+rkCrx9hXnKgCzKpmxgUzzS5z433ONTtNsBVSxrTs5aQ4zMJkd
	TC8kAHiK2EYhyL8B4UZZ1V98ss/aFSySiHh25XaiDJy4UBSJIkC7elzsVJd5yAIHkkl5Taomc8xSB
	+5qOwEmjEqVBzoCVf0gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPFYl-00000000d2N-324s;
	Tue, 19 May 2026 08:12:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPFYi-00000000d0b-3PYX
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 08:12:14 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64J4MVLS2482375
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 08:12:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kaprrUF8vpUjVLa4vb1XRD5DpMNQM8FYKVUvlZftX7g=; b=RV1zaUWhSzkBkfnh
	M3MpFsVnyb7EXp5C2ahi1ur4bxpISkeeZNizYSJSucLSIg6cq3qcgH8KrDVqM5X+
	RlKoy1RpAhoLidmf5H9/lRfnFQA372k0EAL1WLK7RVqneFcIE2jaOqv1yumFXcnM
	H9CDJMzZ0+qE7o0KU8XqPWPef5Qw618P3UJQLShFLT7G4kJ86XebGZOQH77oXLG4
	Xck1ju4E7Gl4RnQnX99HYV8XMLqjPuHixbfFXY75zwBCUh1RBjDD079bvF0Hyxd7
	LWezCENUJzVfJ62HBjMeoTlYVeolhmPhm4R+dXQjFanBZrrehdBCvZIoaKJ0lLCY
	n7vCkQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e81rvm743-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 08:12:11 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50fad7b0ae2so12290951cf.2
        for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 01:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779178331; x=1779783131; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kaprrUF8vpUjVLa4vb1XRD5DpMNQM8FYKVUvlZftX7g=;
        b=OftX014ZlIAAm/JDISr8jIpcg8d64qbxyTZkt8bkuw2sFV+k26tZkuFpjpumK3MZF6
         1XhXlaegSqUpE3NxOHOXK3Rh8k8NiyaSWcybE3qLa3/25UwDBBsGJigk9Tv5YxYdOE11
         QY8g4ydmqJ5PyXtBC7atj2RNsGGSEqFpRdj/SQeTZZHVFa6n4ZAXNgc6adco0+BlYrnw
         RaiwOPLJaZsYx6gHMnNOIGp5tTfiaNPQ/d04/L2DMWp4JlvyLZIo7itSM5OHKj+g9k2k
         qml+Fi87CfbTrxWuU48IXHg/jzVGP0JzoZXt8iU9mz3zm3jpCPJh5CfWXYCYJAuLw2cO
         SRIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779178331; x=1779783131;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kaprrUF8vpUjVLa4vb1XRD5DpMNQM8FYKVUvlZftX7g=;
        b=PJ9VzqtJCFgY/pys6oFhiCB0nBewOWR20TrPBe1yAtUuuCqifSZUOiUlOjZCoerq0f
         jO3KdPOmzwvyJgcVBRO4ldOkTDsELDBhQ0QJ7Q9bRGL2lJ7/ocheVPdBIEc5lVTVlJBH
         WP/9gnlo/+mcBHKnOsuKN4bxwb1nT8OD84AG39bFExobKjqZEbjA3jqT7k8655ULHwDD
         AoHnTl/O68gnnyee42lqD636HswQ276dFnh+ec5/+xp3lQ0epCZ/AMQ9JsmLPcbwQ7+3
         V5yX53Nq82/VZTFVGnN+stpc76MQAta6T2GjIO/f1QnHnHaBOm4Vah4/Jbyg0w7GqvhM
         8mNg==
X-Forwarded-Encrypted: i=1; AFNElJ//1vIBUx/BhhNybgEyPrjyod8k8QHGIaXlV8M003Ozqwnm7TwRLwJZsNCfMr5gTdaECsafXx6IC9A=@lists.infradead.org
X-Gm-Message-State: AOJu0YzWmdvHI20AW09yoFDPZPcxTB96b9J6uAcEwDyXCzteX7umSLZp
	mDKwc1YupU8c8mXxXKn+paCX2vjK/3J9Buin0M8x5V3OYHQjKl4RINzZF0rCUiSh/RVdqMb9R2N
	TjwJhiKUPRdl9/gAda4uXwYPFCcW+oY/ssCXmZvgSRqcwBnqBh9AYz63bmxGPjo9R7dtU
X-Gm-Gg: Acq92OFksoKFZ+9Uo1Fefrgz03yZTFh0/ZQXWsAcQFIyzrhxALFTKygrsjWyADAjNvo
	lZDDucUg3GvhODzcpr4NqbROaXu3q51ETlshx2DkWbKQ8WaVFdtX0rw4vxEBvLC53VnOUxz0thn
	4NTdxJZhIHEtY6uzj0UIOD9pJGqrAptICq8aUJqBAbZ14rvwC6BA38i1F+xL0b84yOTljkLCE7b
	XWzwIhuVd6JcOk9/l1fRvnFITIfDVEmCfBujeE4uAwmbijO/pLhYubgvNFx+c1bfl2/NynK/1Lt
	yvq+MwV6jdXT7RdPESna77SZ8oYQT5zVnQ78MkvdRz3VCQrtkkkp4x2yEGjgg2pTPEhaqEhpMKP
	QruyCM6mInMV78FlxuiTOyp138v7vAoFUTzNfuoqXC862McwPYhU+EBCyzqAKCjdUU4SGLTaZLv
	nelUtolneF7tbSBQ==
X-Received: by 2002:a05:622a:180d:b0:50e:5cc3:6f59 with SMTP id d75a77b69052e-5165a1db778mr201374341cf.5.1779178330929;
        Tue, 19 May 2026 01:12:10 -0700 (PDT)
X-Received: by 2002:a05:622a:180d:b0:50e:5cc3:6f59 with SMTP id d75a77b69052e-5165a1db778mr201374001cf.5.1779178330493;
        Tue, 19 May 2026 01:12:10 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bd4f4eac613sm667423166b.56.2026.05.19.01.12.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2026 01:12:09 -0700 (PDT)
Message-ID: <6fb112ae-5919-4c8f-a915-4538d14284da@oss.qualcomm.com>
Date: Tue, 19 May 2026 10:12:06 +0200
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <uc2l2mbobmik5workhcbtry5spe2gyamx2x4yj4rjly4t3dbrh@n34fo74rctnk>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDA4MCBTYWx0ZWRfX8ltesa7PA9St
 1jP1MBCtP9FKqP6oSalIFSPIxCEtbXbE10MNaIQWSzeolQ94Txq5Jkvs8NUtwzeLWD0wAwUGZbH
 X9QAyzFDHgYFHsTk5G+if7hcSobATFFI2fJY8pZuEIeaXXeIpxHpAw4gG6RPW8+Ic66MVfZKlMo
 9BZpvKYYbQ4T6bHkBCwx8W+SeB+mBj1f0/5nYUPOKQa/+NOJdmQ/z0T4LuuzaQjzyrwB15dSa+2
 uHJEJnR1+yiyWvo/TyeDXZ5wil5G5bXrkwSZ6fzBsIebxayEUGoMoS9xWu/gX0SZXINBPtA264P
 jIA9/8jQf+udHT5zdgwI6UFu4OIkMWuMso6bu1aF2K+cBskG4tIduXZ2MEAsV99l6CWEqSWR9LK
 xbUkWMGThEZkbosnQRqZ/puaa2MTbAXcumQWOh+05NJ7Yi0C0x0In3Iu4KvPDcZQtkKgBWBrvtp
 CkxGU0sbpY30Q6tPq4w==
X-Proofpoint-GUID: x7O4RW8XnrccVxonqXBfTIJVbH_u6Pz9
X-Proofpoint-ORIG-GUID: x7O4RW8XnrccVxonqXBfTIJVbH_u6Pz9
X-Authority-Analysis: v=2.4 cv=Lf0MLDfi c=1 sm=1 tr=0 ts=6a0c1b5b cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=-TPEly4Dc_bI0ZYMlfQA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605190080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_011212_987541_7F880142 
X-CRM114-Status: GOOD (  24.89  )
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

On 5/18/26 5:38 PM, Dmitry Baryshkov wrote:
> On Mon, May 18, 2026 at 04:15:16PM +0200, Konrad Dybcio wrote:
>> On 5/18/26 3:57 PM, Dmitry Baryshkov wrote:
>>> On Mon, May 18, 2026 at 12:29:50PM +0200, Konrad Dybcio wrote:
>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>
>>>> Some Combo PHYs (so far only on SC8280XP, X1E80100 and Glymur), come in
>>>> a flavor called USB43DP, which as the name implies, features USB4, USB3
>>>> and DP signal processing capabilities. In that architecture, USB3 and
>>>> USB4 PHYs share the same USB_PLL while featuring separate logic spaces.
>>>> The DP part is roughly the same as on the instances without USB4.
>>>>
>>>> The USB4 and USB3/DP operation modes of the PHY are mutually exclusive.
>>>> Only one USB protocol (and flavor of pipe clock) can be active at a
>>>> given moment (not to be confused with USB3 not being able to be
>>>> tunneled as USB4 packets - that of course remains possible).
>>>> The DP PLL is still used for clocking tunneled DP links. It may be
>>>> turned off to save power when no tunnels are active, but that's left as
>>>> a TODO item for now.
>>>>
>>>> Due to the nature of USB4, the Type-C handling happens entirely inside
>>>> the Host Router, and as such the QMPPHY's mux_set() function is
>>>> nullified for the period when USB4 PHY remains active. This is strictly
>>>> necessary, as the Host Router driver is going to excercise manual
>>>> control over the USB4 PHY's power state, which is needed by the suspend
>>>> and resume flows. Failure to control that synchronously with other
>>>> parts of the code results in a SoC crash by unlocked access.
>>>>
>>>> Because of that, a new struct phy is spawned to expose the USB4 mode,
>>>> along with a .set_mode callback to allow toggling between USB4 and TBT3
>>>> submodes.
>>>>
>>>> Thunderbolt 3, having a number of differences vs USB4, requires a
>>>> couple specific overrides, pertaining to electrical characteristics,
>>>> which are easily accommodated for.
>>>>
>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>> ---
>>>>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 392 ++++++++++++++++++++++++------
>>>>  1 file changed, 322 insertions(+), 70 deletions(-)
>>>>
>>>
>>> Overall it looks good. The major question (after looking at TODOs), do
>>> we need a separate submode for USB+DP / TBT+DP?
>>
>> The problem space is as follows:
>>
>> After a TBT (collectively TBT3+ and USB4) link has been established and
>> we have a link partner, we may (based on the HW capabilities and user
>> config, such as kernel params but not only) start or stop a DP tunnel at
>> runtime. On Qualcomm hardware, the PHY is kept in USB4 mode and its DP
>> AUX lines are not used (instead, the encapsulated DP AUX packets are r/w
>> entirely within the USB4 subsystem via a pair of FIFOs that Linux sees
>> as a separate DP AUX host)
> 
> So far so good. But I still don't grok if having a DP-over-USB4 is a
> separate submode or not. I.e. I see code (and TODOs) to detect and
> handle DP going on and off. Would it be better if we specify that
> explicitly?

I really don't want to end up in a situation like we have with:

$ rg _USB include/linux/phy/phy.h
29:     PHY_MODE_USB_HOST,
30:     PHY_MODE_USB_HOST_LS,
31:     PHY_MODE_USB_HOST_FS,
32:     PHY_MODE_USB_HOST_HS,
33:     PHY_MODE_USB_HOST_SS,
34:     PHY_MODE_USB_DEVICE,
35:     PHY_MODE_USB_DEVICE_LS,
36:     PHY_MODE_USB_DEVICE_FS,
37:     PHY_MODE_USB_DEVICE_HS,
38:     PHY_MODE_USB_DEVICE_SS,
39:     PHY_MODE_USB_OTG,

>> Then, on hamoa/glymur specifically, any of the 3 USB4-capable DP hosts
>> can be muxed to either of the 2 DPIN ports on any of the 3 USB4 routers
>> (and each of these routers is hardwired to one of the PHYs).
>>
>> To underline, we have 3 DP producers and 6 consumers. If there's e.g. a
>> super high-res display at one of the physical ports, or a long
>> daisy-chain, we may need to use 2 DPTXes to service 1 receptacle. Then,
>> we would only need one of the PHYs (associated with the router that's
>> wired to that port) to provide a DP clock.
>>
>> This, along with the normal (logical or physical) present/absent status
>> can change at runtime. My plan is to use phy_set_opts(dp_tunelling=true)
>> or something along those lines to toggle that bit as necessary
> 
> I don't see phy_set_opts(). So maybe a submode then...

Sorry, I misremembered the name. The function is phy_configure(), and it
takes a union phy_configure_opts, hence the confusion

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
