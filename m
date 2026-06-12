Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F39ACD4F2C
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 07:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YEW2ta17xTA9TPaJFyQrAVwuR1Mdhv7dem3Tr6AH8Q=; b=Vb6wWLXI7ayWoP
	FuGlqTcsiAMMbavtlBELWTfwkL1h8qnDjf9NIply22NarJfyKsMjWa8vdEjNBt/BEjAnla5yp0KZk
	6fpprHjBmkPeJMSy51uOQqRw/SUbylVGy/0cq5gXB0xI+iC4ZVxIgS79+Eoi73pjSpFjxqTa7SaAb
	UFPFkqwEISIxG6ei/fo65IO0cXBZwojlMnkiCV7+MY3qZecQ4y8f2WyJytTMQ1HLjaB/o7s5o9yhu
	fUmNHPWCIh2rokva27Qo6DoxqkuSCsi0+K4nqppenBsqmQzo0w9f7yfTdFrYtO8YAXp+C+Zem9Hai
	ZOCcZOM0TCS8VscawfLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXwhB-0000000AVYC-48Q4;
	Fri, 12 Jun 2026 07:52:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXwh9-0000000AVXp-21YQ
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 07:52:52 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65C39Rld2502671
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:52:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a49osnQfcj9w4HVmREpyuKU5kKi7D4S5O5AvEnVyiYc=; b=N1hhYGfN087nnCv2
	g6jnyIm89Onb8pnui3FDoJwzyXV8i1yUTW2A+TIpu/JqbZzJr2Y2N4STUktdt7YB
	BcubpqAvkKHe1LeZLegVNM3iP8Maiwk4zLRQMQSlvX8S3OXfv5nkY9Govh16drzh
	BJwN16xnLKG7LkFDp0u+NTI3eiRhLIhYBXNJDCQ2aXJYncx+Vj48bS/XWBx9TPwR
	uwSSRiGo2JJ0+goixJIPCza7uTtBptCmygBk9NdhPB+qXt2pjgmHC/GZT4wQQ1Ue
	0JrX8Fk1LEFHfu0VqT4/WAh8j1jHao9u6cecBE7lEeRLCZ1s6MK7qVvKzGRZR+ro
	0x6PJA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er0xd2rqj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:52:50 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8423efbfb61so582571b3a.0
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 00:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781250770; x=1781855570; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a49osnQfcj9w4HVmREpyuKU5kKi7D4S5O5AvEnVyiYc=;
        b=aXntjmUbWAXday1DTeJa0BA9Bqx8X07NVd40L/9Ju5DFTIq+ASpi+9X3jrWE9GOXLk
         BHg5fE+urog2/BcNw7omkSnfDco8Q1h254U9xqDlVRDjlhFB4+rZV2iBgYDsWmXSFIpp
         EqK20Gxf5wdM8jdFshCwM11zYlC9bgbweX64rIARB+Ay1D9OtL0iREDNit84HmbrzklZ
         KEt9Ltc0eF+GtzabhgJ5OEEDvuMiMPSn7YVATtDtfYEt3dInA1c4hncgDfH9sjLRzefY
         +yrUQXSSURemxothMzPjNzmdqQdhXI/HV24Tave6EYvX2GqvHLIFiSn5Y55tBkz1l+dP
         I6pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781250770; x=1781855570;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a49osnQfcj9w4HVmREpyuKU5kKi7D4S5O5AvEnVyiYc=;
        b=B8LBSNzLOgvTLH3E87LDsOlDY9ZtntlaCkA04FCjlOcbhauKqc/xEsHyxDLkGHsPCH
         K42zqZE7GSA/CUvMloC96B3/vDg9PcgeZ8CPiKx5sfpK2NfUDZKSWR0AQ+xvIHy2KYYb
         gtGinETBKqQ0ddVVDx/uUcW04CfcLJlElrb4kHRQ3nKcyGYy/LR4h6gy9qKyqN5eSsmG
         edMdsPqTQLo1cK2VIm0C/NDELiLQUZeNQKWdQ26MmUOQ/iFSw4/lfP50sZgqxPRDLtPN
         XGoIZ3EydCj+RC0IkYmIM9SjzbiF6PrtzyjanE6Z48zo/brNOA8JdxbHegagPZN3/uDr
         Zw1g==
X-Forwarded-Encrypted: i=1; AFNElJ+yC/+BqQLO/1zTM9iqoEnCkXTZXYkkPLX8jJqtPGKyBLuXOwik++IdavEzcNyyhsZF5eRNsDQUYzA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx11zLsCukx3tViLoyKy4GbZSUCclMGWq7bgpjl42dA+mzh6UeO
	h0GVqsMvyqoP7O2EvC/nSRDBs9pgXyMNuvmhCbRKCunwu8wnBDueKCJaZw49zXm51KffPm5+tIT
	lMJ7bL64ANbEqns6L5D221pzCziiYBHhFfJF34gedb28aErF0Gt4UKQVI+33m08KCgrsH
X-Gm-Gg: Acq92OGWccf/R49lLu1GeA+tciWnC8jF7OVJD4DDOgPzAnVM9kRF/KYoI+08arCOvpv
	F2mDOpPxanAzK0HUjygTu10jkznP9aAoo7tOWkHMmxRBQxT+5WHf60q8rrmyCEBTdcK8RQXrmwm
	Phx9FfC2Zv2uuo/KUPK3yVreDhhoHdSJPlmne2UrQaDbjf5t4XBaE6osPpL25ZL/sq5VyCUUn95
	hSKTX9PHsLC45jFhh7pIvxu/B5BgbueM0uFdceS8rEDyakniAlWMWENLfwgP+D48Eq4rhV+3W6w
	+1MFtGjeRw1hZBLZczkQrosAd7yGWxmd6mzMXTbWkdRFFx5KAQm46w3QRT9Kyr9cPrsf4GyWW/U
	XTBwSCkO77fKKwcTE4ublcGTkamj1ZKLN0DiFg2ki69M1B39I+7jS8JNor+Wi5Z0=
X-Received: by 2002:a05:6a00:35cc:b0:842:5634:3c1d with SMTP id d2e1a72fcca58-8434cdac1dbmr2028649b3a.19.1781250770197;
        Fri, 12 Jun 2026 00:52:50 -0700 (PDT)
X-Received: by 2002:a05:6a00:35cc:b0:842:5634:3c1d with SMTP id d2e1a72fcca58-8434cdac1dbmr2028614b3a.19.1781250769717;
        Fri, 12 Jun 2026 00:52:49 -0700 (PDT)
Received: from [192.168.1.8] ([122.164.81.0])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8434ac9df57sm1393519b3a.7.2026.06.12.00.52.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2026 00:52:49 -0700 (PDT)
Message-ID: <787c6ee5-e7e0-4884-9efc-b7b4692f1877@oss.qualcomm.com>
Date: Fri, 12 Jun 2026 13:22:44 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add IPQ9650 PCIe PHY support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com>
 <20260602-ipq9650_pcie_phy-v1-2-d8c32a36dbd9@oss.qualcomm.com>
 <56zkq7bwrt5smmmum6jckzrekkkqrych2gntx3obnrmamwumtv@espahwe6pc3v>
 <7def2ccd-0319-4f85-8275-73fd254d887d@oss.qualcomm.com>
 <fbtghwjrokuijatssy7xn2hwkp34p5fjyn3ndr5t2w67fkz2na@3izdh7uk4hst>
 <602e893c-d346-486d-86b3-50d0f01990bf@oss.qualcomm.com>
 <ohijjcszynmoocjarid7mo7nbtd2dqcdvqrbnzb7anjytw5m56@nguadudsz7qg>
 <a7952e7d-468e-4ad4-8d95-f6bfe9305170@oss.qualcomm.com>
 <epxrpj52vst4zjigsn6ghaiajyzkwdtji2dvgrf7euag4indvf@wzhhy7wtuhhi>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <epxrpj52vst4zjigsn6ghaiajyzkwdtji2dvgrf7euag4indvf@wzhhy7wtuhhi>
X-Proofpoint-ORIG-GUID: JaT35vu3ymLbXshGdeUjA-Wu6qJ1Rc4u
X-Proofpoint-GUID: JaT35vu3ymLbXshGdeUjA-Wu6qJ1Rc4u
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDA2OSBTYWx0ZWRfX8KezZcALUwB+
 lFfurL8uoF3eQyIpWYgcR+yzpRaG1qaiCQEkiDXG+kHBAFoxXquNHWQRONIpROICZtxyMlezQo4
 Q3DVWhNGt6ZGW+84A/LOhA+UqbiR7czKH6Os2byDlASo8DoCCYPgOe3nXxhBa7mrW80bJu6L/Nm
 qYkvqlMx/b9CTO9BABtIWNxRZ+CyVf0dRu03N2jR2HA3SECApBD7m8FRbRN5+lp0QfvbacaU+a+
 FZ4H0Fd+e8YUTfoEt7N6bhCoR5t7gQzaUVGhnW1/IN3ma2cppLcT5msQcLugaD8d7qWIFrvj8+S
 8dTdKBwRTtvl4QA/hOku5X3rgSjokS5qN6U1UEp8X0/GoD7N5UuQ8y1n2Y9ZQNYgHvP7tqTCDOU
 j5+tNHjOL1KA452eyeBALPrVHE3eZGOdgtU9o58uDOgsOodH0LUHev9nLAv6ileEVd9dJEybSv4
 HJfaFQDtzZg/Y4jy9nw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDA2OSBTYWx0ZWRfX6J3/kDnoEdhZ
 0TVCpFLBViJz53IbB2IXnAQ9rplWU0mTJMHefSiHF5HsnZgQEYLVm3wuDeL0aH2fqg3jnE84E/u
 HqptU0rt8+86dWbyXWeW/vEaAaMlnv8=
X-Authority-Analysis: v=2.4 cv=O6UJeh9W c=1 sm=1 tr=0 ts=6a2bbad2 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=DVNErGSwdtF8OHn2hLoakQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=xnaJPCCZ8mv5B4GoDGgA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_01,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606120069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_005251_528699_F785C04B 
X-CRM114-Status: GOOD (  15.69  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 6/12/2026 12:54 PM, Dmitry Baryshkov wrote:
> On Fri, Jun 12, 2026 at 12:13:04PM +0530, Kathiravan Thirumoorthy wrote:
>> On 6/12/2026 11:44 AM, Dmitry Baryshkov wrote:
>>> On Fri, Jun 12, 2026 at 08:22:02AM +0530, Kathiravan Thirumoorthy wrote:
>>>> On 6/12/2026 1:52 AM, Dmitry Baryshkov wrote:
>>>>> On Tue, Jun 09, 2026 at 03:46:56PM +0530, Kathiravan Thirumoorthy wrote:
>>>>>> On 6/8/2026 12:26 PM, Dmitry Baryshkov wrote:
>>>>>>> On Tue, Jun 02, 2026 at 02:40:18PM +0530, Kathiravan Thirumoorthy wrote:
>>>>>>>> The IPQ9650 platform has three Gen3 2-lane PCIe controllers and two Gen3
>>>>>>>> 1-lane PCIe controllers. The PHY instances also require the on-chip refgen
>>>>>>>> supply.
>>>>>>>>
>>>>>>>> Add the IPQ9650 Gen3 x1 and x2 QMP PCIe PHY configurations, including the
>>>>>>>> refgen regulator supply.
>>>>>>>>
>>>>>>>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>>>>>>>> ---
>>>>>>>>      drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 220 +++++++++++++++++++++++++++++++
>>>>>>>>      1 file changed, 220 insertions(+)
>>>>>>>>
>>>>>>>> @@ -3378,6 +3524,10 @@ static const char * const qmp_phy_vreg_l[] = {
>>>>>>>>      	"vdda-phy", "vdda-pll",
>>>>>>>>      };
>>>>>>>> +static const char * const ipq9650_qmp_phy_vreg_l[] = {
>>>>>>>> +	"refgen",
>>>>>>>> +};
>>>>>>> Now vdda-phy / vdda-pll supplies?
>>>>>> Cross checked with HW team again. Along with refgen, there is a on-chip LDO
>>>>>> which supplies fixed voltage to the PHYs. It is enabled upon system power on
>>>>>> and no SW intervention is required.
>>>>> What is it being powered by? MX? CX?
>>>> It is driven by CX.
>>> I assume that there is no CX collapse on IPQ9650? Is CX not scaling on
>>> this chip. Please provide some details on the commit message.
>> That's right. No CX collapse on IPQ9650. Let me rewrite the commit message
>> as below. Hope its okay.
>>
>> --
>>
>> Add support for the IPQ9650 platform, which includes three Gen3 x2 PCIe
>> controllers and two Gen3 x1 PCIe controllers. The PHY instances require the
>> on-chip refgen supply.
>>
>> Add the IPQ9650 Gen3 x1 and x2 QMP PCIe PHY configurations along with the
>> refgen regulator supply. Note that an on-chip LDO, driven by the SoC CX,
>> supplies the PHY voltages without requiring software control. Note that CX
>> power collapse is not supported on IPQ9650.
> ...neither CX power collapse nor rail scaling...
>
> LGTM.

Thanks much. Have sent V2. Please have a look.

>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
