Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CD08CD98CE
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 06:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KAE7uELxDbjPvnv/fCtEuu+5jHwjdXZQYirtnGDXRL4=; b=oOC+4NxNrA+Ou7
	cLMpOxQWUddi5z3nxp8eMpGqg9SEBXjmhWPdMUi/w+uGxZgcatuNl13h94/cCBb5Hh2OVuWkev2Q8
	LllVgvLpnJ/Uj48al03JpXQLYpuGuAZP6VdCDO4g1tSQfmhYjr35rjMEuc0hX6VJ+B8sh4PQ6pbNk
	ff+Xmugne2wutIu/UqT2kBIxslLEDH7AUxeznNtfXdI1oLDGj0ivr5Md3KfloSQA2gFCZSOXxNVF5
	sIZAr7hG6CQGnhACWLEShkufN/t9wsseDUhodQmmlXy97C+A6xVr/NSGVSKbOc/TkmRj9KiVQRcTO
	GVNPTuaPcAxvWyrSaosg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXvbp-0000000APnc-1M3d;
	Fri, 12 Jun 2026 06:43:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXvbm-0000000APmv-054M
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 06:43:16 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65C3BhSI2450818
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 06:43:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xhRQQ0HqfVlogSV46vuX6Ct/PmcPgUZ4ULZ4DIlTmCI=; b=XtH2M7oW9JPOsZWJ
	iHfSpi9vnqUy5YGyEGCXw3UU6IzJljTcb4CeJSnQmLl1IYfbE9sCanXF0/bxt/lE
	QZbEuCUXXxPCwUO2Tf1d/1moLY0MqDS/eGOOmSZvEehMkX526kmyZFIKOqeFor0J
	kyvyH/6THMVBvBbVwqc7uXNDY89ULDzrS69jE2eu8DDiUunX56UiChP3S/2MJrfd
	IQxMIwZHyH2D01w9b2S/c16DreByhIGSlTHnwf0OUbm8fHKxrwsEKrGOay0CGvSu
	oqHcJTDteHCzvQBYWD/a/ZAloBPiw0hateVQxEjzK3xx5yGRw5lhX8oz7qWnl1wa
	KRY/BA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er1xcj6vn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 06:43:12 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2bf243973c2so4700115ad.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 23:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781246592; x=1781851392; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xhRQQ0HqfVlogSV46vuX6Ct/PmcPgUZ4ULZ4DIlTmCI=;
        b=T2IAmW97ZCgyU4xRdUIvQolYlvIX4YdoO0XPZOmjS5DVEoBrrvpjlfa2huqC/h5fQm
         nMDi93WWwBvc6wsJfTr4xlL98IxRvXx+Di0HxfgxXDQKx6t4JAUfRP+kcer1L7WQf+Un
         WVHVMJTCGOdESLHETex9+z+T9MOrFqlQ6QRFLtSf/npD5r4JTIo5oXpO1b89GPH7UmuO
         W5gKOkhGsMVVlqsS1qSU4hWls1YQeylMbFV5ydmjgDG9JMOUMNgzts29VgRMVdS2ahbh
         RuDX8K87Z7pC1SrSaDldkO8o+EH5zptscBqQyO2GNuCWTgFNf5LJXI3E45WBoOLQzimn
         Wp+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781246592; x=1781851392;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xhRQQ0HqfVlogSV46vuX6Ct/PmcPgUZ4ULZ4DIlTmCI=;
        b=bD2IEffc4wIjgUpLAe+EmKGKICKEWrnrn4ppzDwK5Fhf1cjWiFnmNx6qCIwXfObLav
         fsN+iNqiT75tKG477hVULp7AlHkTSh/M7DYWqkkjyWRNZnWR1Gb/yZgiEjku9KstuW6k
         JDpZxJb8jg6CVhB+rK4KNtyRrD+uvmrOqoHWiY/uIk7DGlPbcrtkux6Lhy72UE6UTOMK
         FLulkaZk4Unlh65u2PcaEdXAD5QbC1NRFYPleQdDGrK0Lm592n6xinjkbTxL9Bq2PRl3
         0/Y/OOLw4GbHeHgIqZC7L+ikYxGbIcc369pmU8ptbD3uXXxQrwdDPiCgGs7TGlBuqdj+
         oK7g==
X-Forwarded-Encrypted: i=1; AFNElJ//tD1cCmYlKee4bduZc2kmA5tIEaytSii7dd2B/LvibNk26+4pOuYmMRcYsgcvoB3abNR9qg98QFI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWJWdZ0eiFwlhlBpHPDhb3OzFU7eeFiPCiPuroUUUBIWqFNvMF
	t+VyWtfTCOC1MB1CVG4d18FamjS4PyVlu/EZNWxHooEyevWYSoYXguW3xYh+GhNU1UolhRCZ7XT
	RsbiOmJ3LuGPriNc30gLEhbii5WACbuSzgPSynDAo3lLaZ3s7MQOPrmz+PLJP3E1SrIRI
X-Gm-Gg: Acq92OF0B5TgFaOchyJx6uB22whyG6oEjTWJou/iGrTsFnse8/C5eB2Gz1PWIJhkZX8
	ImJ8XgFGsXDLWGzZJxn30fkyy3IKcZOxkPgrgCcMfbIlqVZh7HJUFJ6jLamChPjcdkSSMVI7kSh
	OImuQJtP2uJeeIG54llCM78BYVg0q+DFYgU2m5sh6M+mLfWrTF0dQRf6fzSWI2k6rW39lfCsD6i
	n0r0HChIlpaAeZieDmk2+3v+edNqKgrFmjI/G55X227znDoaMsaxir1lBI/1O+3ctSBCQbsy+5f
	BMR+U70S+fba/9FKsNOfGRjPNyy7YWFp4RUyvvpjWI8pQddbL5NMNTtgXEpibsUp3a10Ylz97wg
	JJlv3d42/QUYmS+TTvVnTqo6pqme51mpryrhmYspjXg0xAhPqwi+nhSBeOSRwDT4=
X-Received: by 2002:a17:903:32c6:b0:2bf:1486:e6ca with SMTP id d9443c01a7336-2c41050947bmr19439275ad.12.1781246591660;
        Thu, 11 Jun 2026 23:43:11 -0700 (PDT)
X-Received: by 2002:a17:903:32c6:b0:2bf:1486:e6ca with SMTP id d9443c01a7336-2c41050947bmr19439015ad.12.1781246591074;
        Thu, 11 Jun 2026 23:43:11 -0700 (PDT)
Received: from [192.168.1.8] ([122.164.81.0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c42f7c6c5dsm9266445ad.21.2026.06.11.23.43.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2026 23:43:09 -0700 (PDT)
Message-ID: <a7952e7d-468e-4ad4-8d95-f6bfe9305170@oss.qualcomm.com>
Date: Fri, 12 Jun 2026 12:13:04 +0530
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
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <ohijjcszynmoocjarid7mo7nbtd2dqcdvqrbnzb7anjytw5m56@nguadudsz7qg>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDA1OCBTYWx0ZWRfX0RREbgOc25Os
 lNkCmMtRdw9oWtx3LQ6hs7cqGmXpyWa+Tw3VtZF3z3qzNLHrbrE6OmyY4QEEezLJFIEhrI5hdTr
 RjXZL1RlbMqU2sXrL8TuRuP9+30rWneE7+GJHgYzDzh/2V+1EZY7fLtNPYLo8UTbl7GnZsP19eQ
 7CVs19Y/fT0Rmee7Bw5/YCnxT66zdz4XjrtSe0N4jBhkLHjhEF19C0gFopHED4hqvXxvoRvqAs/
 cyDBh1Yxt6eBDs6PMLbshcvkJrZxuyTJdsXfuCEo3TjEzgCKlDYN1B4cYCmac8MPzvm/TcKVlzP
 phee5mT3Sgy9+txzNtR1rCi2cZ0GgjW/3pWbDVDCghpPROuafWcust1i68w8EKA2fCd7Q7JXjNy
 5TwAWQ6qZdcrIsNPbvPWf0Vs0/EMWpnqGvwAexHvjsmEvDa1EZPQhz0ubS8/IwLlczf2tEEI396
 f4yBFPVH3ujntDGNb+g==
X-Proofpoint-GUID: 90zbfsjGYWCfSge67hVsbVlk1JQg369N
X-Proofpoint-ORIG-GUID: 90zbfsjGYWCfSge67hVsbVlk1JQg369N
X-Authority-Analysis: v=2.4 cv=NZPWEWD4 c=1 sm=1 tr=0 ts=6a2baa80 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=DVNErGSwdtF8OHn2hLoakQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=hfAPQjwllD3DkVB7DTwA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDA1OCBTYWx0ZWRfX+MV1agM4y9le
 yiHPysZQZWHrL/2g1z7NR0wSnoepJnjOUX8IyqROpqvnfQIW0rFX5hsiwpiUzhwaQvLBgWiKmnx
 ItYsquBj5U/IDK6kks07kR+ZoPZrqJs=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_01,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 bulkscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606120058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_234314_196070_F7F5DECC 
X-CRM114-Status: GOOD (  17.06  )
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


On 6/12/2026 11:44 AM, Dmitry Baryshkov wrote:
> On Fri, Jun 12, 2026 at 08:22:02AM +0530, Kathiravan Thirumoorthy wrote:
>> On 6/12/2026 1:52 AM, Dmitry Baryshkov wrote:
>>> On Tue, Jun 09, 2026 at 03:46:56PM +0530, Kathiravan Thirumoorthy wrote:
>>>> On 6/8/2026 12:26 PM, Dmitry Baryshkov wrote:
>>>>> On Tue, Jun 02, 2026 at 02:40:18PM +0530, Kathiravan Thirumoorthy wrote:
>>>>>> The IPQ9650 platform has three Gen3 2-lane PCIe controllers and two Gen3
>>>>>> 1-lane PCIe controllers. The PHY instances also require the on-chip refgen
>>>>>> supply.
>>>>>>
>>>>>> Add the IPQ9650 Gen3 x1 and x2 QMP PCIe PHY configurations, including the
>>>>>> refgen regulator supply.
>>>>>>
>>>>>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>>>>>> ---
>>>>>>     drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 220 +++++++++++++++++++++++++++++++
>>>>>>     1 file changed, 220 insertions(+)
>>>>>>
>>>>>> @@ -3378,6 +3524,10 @@ static const char * const qmp_phy_vreg_l[] = {
>>>>>>     	"vdda-phy", "vdda-pll",
>>>>>>     };
>>>>>> +static const char * const ipq9650_qmp_phy_vreg_l[] = {
>>>>>> +	"refgen",
>>>>>> +};
>>>>> Now vdda-phy / vdda-pll supplies?
>>>> Cross checked with HW team again. Along with refgen, there is a on-chip LDO
>>>> which supplies fixed voltage to the PHYs. It is enabled upon system power on
>>>> and no SW intervention is required.
>>> What is it being powered by? MX? CX?
>> It is driven by CX.
> I assume that there is no CX collapse on IPQ9650? Is CX not scaling on
> this chip. Please provide some details on the commit message.

That's right. No CX collapse on IPQ9650. Let me rewrite the commit 
message as below. Hope its okay.

--

Add support for the IPQ9650 platform, which includes three Gen3 x2 PCIe 
controllers and two Gen3 x1 PCIe controllers. The PHY instances require 
the on-chip refgen supply.

Add the IPQ9650 Gen3 x1 and x2 QMP PCIe PHY configurations along with 
the refgen regulator supply. Note that an on-chip LDO, driven by the SoC 
CX, supplies the PHY voltages without requiring software control. Note 
that CX power collapse is not supported on IPQ9650.

--

>
>>>> regulator-fixed doesn't take the resource 'reg'. May be should I create
>>>> another regulator driver which accepts 'reg', something similar to the
>>>> qcom-refgen-regulator? Please advise.
>>> If it doesn't require control, there is no need for a separate driver or
>>> separate supply. For example, the refgen is being references only by
>>> those devices which require software votes.
>> Thanks. Then let me respin this series on top of phy-next so that Vinod can
>> pick it up.
>>
>>>>>> +
>>>>>>     static const char * const sm8550_qmp_phy_vreg_l[] = {
>>>>>>     	"vdda-phy", "vdda-pll", "vdda-qref",
>>>>>>     };
>> -- 
>> linux-phy mailing list
>> linux-phy@lists.infradead.org
>> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
