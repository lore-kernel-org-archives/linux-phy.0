Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5F7DCCA476
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 10:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T78/i8X43LP6hvXfF2AeeIS6ba9Msf53VIaXDY4w/sg=; b=URJo95hArmULg/
	Mp++LF0omgYexQe4SchQ++lwiHPn7/LE8+DlrLGSvoY2vacxLLvmMDb6lGhaziCt62/WQDP2lmSIU
	hKuf2KxoAkg4hvmbk8pe+1Jbz8QjEwTLsL2k1j5ojVp+wbM9s7oyUax8yTyCk4+e4DtMtuaXLUg1R
	6TiZZ14yNMBW4iYBSIkignIXCK4EFHQfskMW5bIKOHiBzRcFjhjzWfHODSCbw6Ox4zqOvtoUno0nt
	aKm9htVFT4gpjZXqHlUI0yQ8L8tRD+C+B3AbIqRnnWdNFhX1D3iw928qhYBgUCCNMUpRo0pHhADy3
	jc63zQphTq6QBlwtZ+sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v64z7-00000001nxj-1u8Q;
	Tue, 07 Oct 2025 10:31:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v64z4-00000001nwo-0R1g
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 10:31:55 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59723sEv024045
	for <linux-phy@lists.infradead.org>; Tue, 7 Oct 2025 10:31:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6pMruL4RrOD8Ab3ncsU6klJP2YjjkGCkq0lz1ZS5k+o=; b=feEnouAMg6bHP8eH
	NEPUNji/ZPht1l93C6vEPCNXhEgScd+hLzrG1RZannJfhEPkrDy9cH477OUSLpMl
	5MCSG8f6W5RV86VQ5nhwPsnc3W8EAmm5Isu+vEHkeFYEswyNQGVuV3y4r7wtIVqy
	odBfM06KeA6/icfOQJwQVZEx1szCcEIAOYkI29v34wRiC8WsC4P4QZ4AqPHGUYAS
	cj2hEgiUr+5kjlGxZfMOlRQRpxCfecMNoqSy0yCys7KNp4vw9A+HZCDXae0isZXA
	8p5eAyHIUoPNph5khyDmdfq+HJNefSHwFKim5qZWSmKxHqNT0D5aIZA1ow/7yzmi
	4vJYqA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jvrhpr2a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Oct 2025 10:31:53 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e015898547so11156491cf.3
        for <linux-phy@lists.infradead.org>; Tue, 07 Oct 2025 03:31:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759833112; x=1760437912;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6pMruL4RrOD8Ab3ncsU6klJP2YjjkGCkq0lz1ZS5k+o=;
        b=EiH7mDoBVG1E8L8oB4B5oaPG4DQ1nQd2BxxarRsRynUYjNHLIfXcc16ozlaOp+BLy/
         7OudBovVa6vms8WEMSSIHp1O3W1RPkOVKhhHXL/u56cMREx9MDPKfMUzsPwOa/anCu7G
         W6K7yMgBMkBmgl91HsYMOuZW9LHKwKBqzs1BfBjeiaFFGz+j5p4ig1F8SZ5xCwXsmeet
         ZSaLhiSUTjekC7kNTAc76/3UDRZpfavaF7/E+A6jJtJeyQ9DUedzECzmQV+EgcB0AyTE
         T29SLnpch7ipOQiQJLb/+b55jBE2k0oBG6sc2cHuITTlggPz/HJgL6f/cN//FB0FZU/2
         Ee7g==
X-Forwarded-Encrypted: i=1; AJvYcCWNAvJFCpRoxC7VqPTsoolbMWBilMqYZwEw6TReAH5rXYp2Oc7kWPSJ7iAN9djnI73Ao8onS82Fmmk=@lists.infradead.org
X-Gm-Message-State: AOJu0YylO07M8JfJBgj7204mwTOb2d/2x/tkThgn1caeILlzLRovyLJU
	r29iXAly/WsyXhRO6KvUvX6vVllIGjnY1cPP04PP6c6GRvK3UCiI558q7/NoPQvHBXtNi5/wD2S
	gkAyNamUj8K2JzrdN1w5YYGUnYPP0KICt8hxEYEgMBAWx7Sl+24GRUPMObRDFOVwfczUD
X-Gm-Gg: ASbGncsXYCoOlQXJSJC0WOaWqIxPMiYNyTjOmAEdtbAL/diXj2xtGVPKyk9V2YWqLCr
	1CvP67/woN3QWU4cNRSjNR8sDE5HJznJu30W9+q/YgmIwRFETNCbUNTbY9GjIAhTaillPdRKde+
	E9ONYTkQBPhi/KXpiK913CXwwUH2bSrtpLZT6sMA05cunX3ADH8Z4x7AgDkacc0GGi3RVyDDF+d
	PlEmGb1MSTwsBuija/ihV6Hpx4h3rC3PJ6MlUEACl7gsdB5P9x3Jg9T+JoIu0oAFu/XY1NwGVjf
	SWqOWaXBiRIkwdTX19gK63AMi4l2n5mW1bPnLZl/I9b83Ol15rqJDKb6qfbEpwSa4G9uTGQ5Bzm
	uUU7yKDRVh94mhZHNjkksF7tKX2w=
X-Received: by 2002:ac8:5890:0:b0:4d7:e0ed:421f with SMTP id d75a77b69052e-4e576a2e554mr139971221cf.3.1759833112023;
        Tue, 07 Oct 2025 03:31:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF49wJdpC9RNWjrZh/mjq2BnFEU9JH6SZhV7KcMqbJZ1IBEcWUiuSsdgRT5R07pr15Mpi9GiQ==
X-Received: by 2002:ac8:5890:0:b0:4d7:e0ed:421f with SMTP id d75a77b69052e-4e576a2e554mr139970751cf.3.1759833111321;
        Tue, 07 Oct 2025 03:31:51 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b503c779df2sm33444766b.34.2025.10.07.03.31.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 03:31:50 -0700 (PDT)
Message-ID: <085dbb83-d805-45c7-962c-2cf40a93a31a@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 12:31:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: qmp-combo: Move pipe_clk on/off to common
To: Val Packett <val@packett.cool>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20250927093915.45124-2-val@packett.cool>
 <e6754738-76c9-4080-bbed-17f02e6535bf@oss.qualcomm.com>
 <2564cdec-9726-4efa-ba07-a2f2646168c6@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <2564cdec-9726-4efa-ba07-a2f2646168c6@packett.cool>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAzNiBTYWx0ZWRfXzA3F+CJY2zS0
 /xlsKbj365DLm6RZ/Q4kzGriX5gHXaU82LduDEtLzdGpj5frr4TDYDpbQGLQ6rgqntG1fuYH/MI
 savL8L64lleFTLLKGfTe0OfosG1AbbYlq5/v6WI9U3B3DkXsAi0LqaGA36i3G23UfnOsdArA9ht
 QYPAWSAIgnsvepyl5U8OGCIrw0J9hHNbgF3o0Xe4MkPbfuI9OZDuFDYHnHJOATfBNUWklVzZ2lX
 g/baUfBmmMhFoZSL/e3FcXH1QbrkT/YiOWdAP15azrCr+D64+smeHXj9zU+1LLpOVCdEpLtt/Q6
 b0vlpTqP7fBzlKmzNKu7H8+RK407NoM7CLM5++5dsBkXxF/rArm+M1kz6QXL0ogyyvaCFXOUeuo
 nIdfjuUVdsl6yxYyv/aRSLJBXDWMIA==
X-Proofpoint-GUID: QNZWR82RhERp-iA_lUG-Qdrek-xGRZby
X-Authority-Analysis: v=2.4 cv=XIQ9iAhE c=1 sm=1 tr=0 ts=68e4ec19 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=p0WdMEafAAAA:8 a=IIrk0cfXZlyaRavtHIIA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=poXaRoVlC6wW9_mwW8W4:22
 a=pHzHmUro8NiASowvMSCR:22 a=n87TN5wuljxrRezIQYnT:22
X-Proofpoint-ORIG-GUID: QNZWR82RhERp-iA_lUG-Qdrek-xGRZby
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_07,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_033154_153661_9FBA26D2 
X-CRM114-Status: GOOD (  29.50  )
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

On 10/6/25 6:13 PM, Val Packett wrote:
> 
> On 10/6/25 11:44 AM, Konrad Dybcio wrote:
>> On 9/27/25 11:17 AM, Val Packett wrote:
>>> Keep the USB pipe clock working when the phy is in DP-only mode, because
>>> the dwc controller still needs it for USB 2.0 over the same Type-C port.
>>> [..]
>>>
>>> In [1] Konrad mentioned that "the hardware disagrees" with keeping the USB
>>> PLL always on. I'm not sure what exactly was meant by disagreement there,
>>> and I didn't find any specific code that touches that PLL in the driver,
>>> so I decided to just try it anyway.
>> So what I did was playing around with the RESET_OVRD settings, which
>> dictate what parts of the PHY (and their associated PLLs) are kept online..
>> but I totally forgot that there is a branch/gate clock in GCC that sits
>> inbetween!
>>
>>> [..]
>>> I'm sure it might not be that simple but from my limited and uninformed
>>> understanding without any internal knowledge, the "sneaky workaround"
>>> might actually be the intended way to do things?
>> Normally the clock which you're enabling is sourced from the QMPPHY.
>> The other option (bar some debug outputs) is for it to be driven by
>> the 19.2 MHz always-on crystal (instead of $lots_of_mhz from the PHY).
>>
>> For USB hosts without a USB3 phy connected to them, there's an option
>> to mux the controller's PIPE clock to be sourced from the UTMI clock
>> input. In those cases, the UTMI (and therefore PIPE) clock runs at..
>> well, 19.2 MHz!
>>
>> (you can actually do that on USB3-phy-connected hosts too, at the cost
>> of.. USB3, probably)
>>
>> So I'm not sure how much of that is well thought-out design and how
>> much is luck, but this ends up working for us anyway, with seemingly
>> no downsides.
>>
>> At least that's my understanding of the situation.
> 
> I wonder how Windows drivers handle this.
> 
> The ability to use the UTMI clock sounds more appropriate for when only a legacy USB2 device is plugged in and the entirety of QMPPHY is unnecessary and can be shut down to save power.

How would you hotplug a USB3 device then?

> BTW I'm still seeing USB2 functionality die if I boot with the monitor cable *already* plugged in, but that sounds like a very different issue (the host controller starting to touch the bus before the PIPE clock is up? something something probe order?)

Unclocked accesses would result in immediate restarts

We've had some coldplug woes in the past due to the ADSP Type-C handling..
does replugging (maybe more than once, maybe in a different orientation)
fix it for you?

>> The suspend logic is broken and unused anyway, but that's a nice catch,
>> the PIPE clock in question is even conveniently called "usb3_pipe" in DT
> 
> Hmm. Is it unused? Oh, you mean the pm_runtime_forbid(), right.
> 
> Do you have any pointers about what exactly is broken there? I've been poking at the runtime PM stuff too (https://gitlab.com/Linaro/arm64-laptops/linux/-/issues/14 for USB), the PHYs are the biggest missing piece there overall..

The PHYs likely sip power compared to other things.. (but of course fixing
this would be welcome as every drop counts)

I am not sure what needs fixing, but there exists a chance that because
of the relationship that we're talking about in this thread, the xhci
suspend could use some love first.. I think there was some work on that,
somewhere?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
