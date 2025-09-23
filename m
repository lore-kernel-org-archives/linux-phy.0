Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EC2ECAC5A5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 21:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMrX0kracqepplrdzZFWaWhGsv6AUoFtHyHNG88h9d0=; b=ndOjxtAsp5bdoL
	2GycV9NnTOQ3rjNxlBivhgULQPb3FQX+FwRDBANFxmw4K25njOPkC7MZs4ldVP6rFIV63XeOicKlx
	d8vk5N393kqRKobdudKCqqoUa3StoVHCe+d3M2imEfecdhqBGb2pXZAs7Vbkmm12xuPe8BTpYRew5
	/F28WNb8QhbMzAyS9D2Drw9jykBxjcjt52elFdFbdPL4FETQU0YHWi7PlHL1D8W35tiWzkJm1L8N4
	IIdvEVWMBrGobkQ6wVMn23zJB/8gUkFMcBjtt8rVFX/jfzKBC2gPdjqlmkOeGTAAV6Th5VOcvnqYH
	M1ZsNOBXsfULBxt/9qyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Aux-0000000F0ZK-1ToP;
	Tue, 23 Sep 2025 21:51:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Auv-0000000F0Ye-0xFG
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 21:51:22 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58NFKRFv001610
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 21:51:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aiAQHIOrW59pXHLJaujV2OHhsUSTiYkKFOKLz/FR/mI=; b=iBMX5KkTaqhWAkUg
	BRxtHF1eehWCLziLrqUynIjhqx6oYcX+abOt75b4L/d6rVjzpOHm9AeA5SvMKuyB
	PYRbcQvR3Lxuy9O54ATDejhjK7CMOh4hv7/SnP6VU8RF5Tg+2OfHhoKGOqZyyYt+
	yFackzvt5dgAIt2CB8tS6HrXmyNr/jyS+9fbXVl8CMQ+1PmtCcWmujNkibu6v+fH
	/FIAc/2hxyu0r7EhpRirzxzUSLfjLTyCkLvyyOCCKDSFUTQOxSgWR1mXYjyR6SGe
	wT5jMYkmxu01p91Cscci0WUT4hEBJHYnr8sa+vbBVyBIQyI+Z1WoxuFAdHhlAhQA
	8+kl0Q==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fj1s1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 21:51:20 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77f2f0c3e62so2082920b3a.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 14:51:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758664279; x=1759269079;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aiAQHIOrW59pXHLJaujV2OHhsUSTiYkKFOKLz/FR/mI=;
        b=oWwZy9fMQbPMGfg9bFUtHA4i0XI6FRDvWVt8dcfjdihQRgjLCuwgwTKbSXHSBBi2YW
         I/Z1iooBR9FVixQbAIrV2L8Zb6VQrkp3SGFid3CwK4pARR05R9FQjKVtiB5uRGSqu0EW
         5XzJo3JAuEOelOREttaZMQBNM3DeQlU5kUEFQmHBXISbC2fq5HEnjrpF5lQ0BAf1CSUU
         EhXt3szaVCSiPX4sZom0s3pX5GkyIwly2r9jYhEbkyIQBeyxxTsc63Dgfh5I7s1IRNTq
         YbixJ3He1muWnbYOPKoPyYPTuomq9fBe+80sqfWF9LbBV7JuNqs9EI0yMGhDb0jkAlJK
         1TdA==
X-Forwarded-Encrypted: i=1; AJvYcCWcx0WiLKfH2mnTjZH7kDWkJhlsVMm6e6OgM+eKCjnri9Q/K/x/wudf9vDtDtQ14j5emt4xIpKiPyc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwvaT0fl2nvCB0ZuIRHhJ583dUOBimhqPO3jEK80ZyO2xNiovVj
	RKg8uj17N8zxv/+u472FtSr+BdxGYmPOkP4Q/0aNOI/uWI81ZqXhRIcxbuIlkfgcXxhBHY2APrY
	N3CSSly5Ap+kFUjmWiVfu7Jyq8d2Rm77G5Bz90tnb2EbctT25Zwf4jab2Bdy64aF9nDIw
X-Gm-Gg: ASbGncun4tG6fNMHNvFc9a+GyyH+Umr1ikyQC+V67EYL70gWnOVcHytfNTStQYH5+nU
	NL2JDWk5NJAKbWdmFyZ8v4YTk3TZAc0tKVAADBtL4ze/GpJdSfAmhBEHL12/cpDgIdPn2ofOtOX
	ghwUhN+arJO93CDjx5UkeHpRarwYmYzsZHM7e3GKEHnQDlbp3xxu+5glF5cJTtWE0C/er3KDE8E
	Lb/pNSxJbBScGdMeTLxfbYBRL6uodgdXzmQGaGkkrgJk4XIAv0NxhmfPyH3MdgMjPZqkTNVWuQv
	NF/v0OyOSxZVO8fMFDoinkWUUYJNjz/AZA68m0rUxHuJJE5wGapE4wCw5ONykQHmNuzr2I+aFKn
	TnV82vw==
X-Received: by 2002:a05:6a20:258b:b0:249:d3d:a50b with SMTP id adf61e73a8af0-2cff4209b23mr5529438637.59.1758664279165;
        Tue, 23 Sep 2025 14:51:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEq5Th0MTaZw84UMrVLMwE0MdUEOMsSuPcioOUVzMEkQngd4fbtEd7mUZH6sG5VPITkCIAgJw==
X-Received: by 2002:a05:6a20:258b:b0:249:d3d:a50b with SMTP id adf61e73a8af0-2cff4209b23mr5529405637.59.1758664278734;
        Tue, 23 Sep 2025 14:51:18 -0700 (PDT)
Received: from [10.73.52.96] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b55396db81fsm9565146a12.19.2025.09.23.14.51.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Sep 2025 14:51:18 -0700 (PDT)
Message-ID: <1b51550f-90db-2ead-0ec5-93ce786ffdff@oss.qualcomm.com>
Date: Tue, 23 Sep 2025 14:51:16 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 2/9] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI
 PHY compatible
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, krzk+dt@kernel.org,
        conor+dt@kernel.org, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-3-wesley.cheng@oss.qualcomm.com>
 <7gvp6pshp4eiugk3qodg2ub3azu365loturidbkxqly6nhtgq7@bxnkxeqzarkv>
 <4116b593-d36d-df10-6101-4e3539b8b812@oss.qualcomm.com>
 <aNJL1YEXx6IabTos@hovoldconsulting.com>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <aNJL1YEXx6IabTos@hovoldconsulting.com>
X-Proofpoint-ORIG-GUID: PpFOpXwEoP8qIyR_bITq8_m1Law3RwnH
X-Proofpoint-GUID: PpFOpXwEoP8qIyR_bITq8_m1Law3RwnH
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d31658 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=zitRP-D0AAAA:8
 a=A-OFauQzm6gaq6ZTC9UA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=xwnAI6pc5liRhupp6brZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX0dM5Hs3/vB0Y
 vyWXW30masZTkhwxItH0cuUHdPWK+uyHFWkq0xChZgQNnCBjnRihecQtV4fj3ufERiWtcXXVjm+
 5dIagVxkKk8SEa1rjxG+acIkpIyxJa5HD5rqEr+sO+gRLPEZmcXqO+Hcz7dRoEmr3rx1qNpb1+a
 ff7KNryondpx7/U9fhTO/dmaoKAnYqI9O1dkIATFAx1OYyIk/kncdGS9vQ/mRLDRF62HTOo/i5U
 MTSr2B0f9CeXuUeoyy/qfihkTi9cpmK8gDwzxf2F7Su3NEcdtCMcGzGGT8EGAa3QHXiNjm/Q9S/
 R6BZTbUTMSkMSnyDXzVflBxzoi/tU9USE+PyUxQOMBoYzldGvlajHA1Hfe0Kl2J3gRJn0iSnR8N
 hwG/R1tQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_06,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_145121_277045_321CAF0E 
X-CRM114-Status: GOOD (  20.88  )
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



On 9/23/2025 12:27 AM, Johan Hovold wrote:
> On Mon, Sep 22, 2025 at 06:00:04PM -0700, Wesley Cheng wrote:
>>
>>
>> On 9/20/2025 8:22 AM, Dmitry Baryshkov wrote:
>>> On Fri, Sep 19, 2025 at 08:21:01PM -0700, Wesley Cheng wrote:
>>>> The Glymur USB subsystem contains a multiport controller, which utilizes
>>
>>> two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.
>>>> @@ -16,6 +16,7 @@ description:
>>>>    properties:
>>>>      compatible:
>>>>        enum:
>>>> +      - qcom,glymur-qmp-usb3-uni-phy
> 
> Odd indentation?
> 
>>>>          - qcom,ipq5424-qmp-usb3-phy
>>>>          - qcom,ipq6018-qmp-usb3-phy
>>>>          - qcom,ipq8074-qmp-usb3-phy
>>>> @@ -62,6 +63,8 @@ properties:
>>>>    
>>>>      vdda-pll-supply: true
>>>>    
>>>> +  refgen-supply: true
>>>
>>> You've added it, but it's not referenced as required. Why is it so?
> 
>> The refgen clock isn't always required on each and every platform unlike
>> the .9v and 1.2v rail/supply, which directly power the QMP PHY.  It only
>> really depends on how the refclk/CXO network is built for that
>> particular chipset.  The refgen ensures that we're properly voting for
>> the supply that is powering our CXO buffer.
> 
> I thought we discussed this before and concluded that this is not an
> accurate description of the hardware (even if you now call this supply
> refgen instead of qref):
Hi Johan,

refgen and qrefs are different things.  I will try to clarify as much as 
I can from the discussion you linked below.  (based on my understanding 
of the reference clock network)  The refgen is the main supply that 
controls the reference clock (CXO) into a specific branch.  Within each 
of these branches there are clock repeaters that are supplied by QREFs, 
and is basically the supply to the clkref switch controlled by the TCSR 
registers.

The way some of the tech blocks are connected, the QREFs/refgen may 
share the same regulator as some of the PHY's core supply.  Some may not 
even have QREFs at all.  One example is the QMP PHY that is associated 
to the primary controller on Glymur.  It has a refgen regulator, but no 
QREFs, hence we only need to vote the refgen accordingly.

I don't know if that helps you understand it a bit more to convince you 
of the new regulator addition.  If anything we may need to add an 
explicit QREF supply also :).

Thanks
Wesley Cheng
> 
> 	https://lore.kernel.org/lkml/aEBfV2M-ZqDF7aRz@hovoldconsulting.com/
> 
> Given your description above this still looks wrong (at least after a
> quick look).
> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
