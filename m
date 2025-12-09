Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84762D1CDC6
	for <linux-phy@archiver.kernel.org>; Tue,  9 Dec 2025 04:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AA4EhLNT1Yx17icHkq4PDkq/Xp3PXACIMOfQ2hQzndo=; b=hPwTZ7Gnxdavea
	sa+R+J2C1lYNXxkMBMWnbIaU5glE9Bje86GBf2NST6EZFIZo7TZ0hOeAAK57IE01AxaDKAEcPF7+e
	u7hfv1J8IRhdb5Vtvf62QG8la3ecYiL63MMz/zrbZvc+uPhzszNWqiyeV59aiUJzNhsSUb9Wf8W4c
	pE9M9/SicnEX5wYOsc8WEgMOWTQrsVy+/I59iNWQZZi5rNJUavqWEp9WzoPOhLbtIBJqDIp+mSUnn
	Hr1cA/gTnILx/TUKiDs/KrxtBcqVsrXQeeCvrJ823MctjeRx+o0B1GaL1wSN8gYaIBGXcyrv0FK6E
	Mnrij6e/DTsJzKZTeu6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSpSq-0000000DoVD-0Dfo;
	Tue, 09 Dec 2025 04:36:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSpSn-0000000DoUP-1aU8
	for linux-phy@lists.infradead.org;
	Tue, 09 Dec 2025 04:36:38 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B8NXu6w1501040
	for <linux-phy@lists.infradead.org>; Tue, 9 Dec 2025 04:36:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J4c0Tq/BmToaocMx8xkBZuMcN9gE+0JfPotxMOnM9Po=; b=bTMvkw99QUkbbfTv
	+xpK3imneg7y1i0Pg9HVamNOgKumnVkw5+xh/FmiLR/n2GLy76JOafau6dff648V
	dGGN5iaIcYHOCv+7Okj6CnNQcFsxu8XOt8hNPDKTXyn6Lwjk5VQKQejKe5DUPJtb
	kU3Ohz2cZjK4vaT2DITRN3V1yArsD001CzdzshpA/p2NpfpXHa+NRPVdGGGLMuUe
	wMFRisYnwWqd13oS4z+dt50PHmXw/XyDtiqIhY5coTVqkEb1fI6SRiM9ojh4gp3M
	ZjqqCTyM+JTj18thl9FRm5M+YLOa6w6Ftoxuf4DSALV6+46X5BiyrRBaPiFaL+Am
	mXNt2A==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ax57r979y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 04:36:36 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b99dc8f439bso10318908a12.2
        for <linux-phy@lists.infradead.org>; Mon, 08 Dec 2025 20:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765254996; x=1765859796; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J4c0Tq/BmToaocMx8xkBZuMcN9gE+0JfPotxMOnM9Po=;
        b=SUSJTYaJMUbaFjNSIzUHi0N3cO4KeXasRtfmnDIawNdhATms2EpEs4MZ/IrZcdpC/X
         9FF4q2M1w5+KOvFN8fKWMLIWg3y6WQAJ3G/UHFIdDBImofEBS+Tcjs+v4Oq0ZVfgWQuW
         JJ5+NCcObWtGQlia4HLejRrEt1tISoe0HMKjro2haOSGuH9EbFzDvQI/YcXllCHg3luR
         qn62eTCVEf6WY46u6AOgoRK6SQHtuSqiPGPI8lS5+gChZoF4ONFrNETrBJEoy6RddZK4
         GMqoiKqvjr1xaWZQK7Tca7h0zDljR4+9JSvXGBT5KgqKIh86S5XXFK+vuWb2S0ytoA3M
         DNHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765254996; x=1765859796;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J4c0Tq/BmToaocMx8xkBZuMcN9gE+0JfPotxMOnM9Po=;
        b=v0VBTgz02anifeK/g8XZkBXqdfQto0Wqizb/7UHqxe7Zu9Qtvo1Kx25WscsW0HNfmG
         VNTVPID0WTodbTi9liNdg1ogNUcklM0oOuWY1cDabrMka3TZPXFYRi2o8Y8ifFRdXC3h
         9LyzgwgqBEgZeUjgv/h2wZi7pDoYahYN3Aa2FWFMBOBxVu6D+6C8lvquEX9pcYViIbRV
         UorPcLcrAPoGLPHn2G01Bgdvx8mggnJFzOupfhPPKwWyv+GUAMFLo4qjCDcFktL2pGfB
         7fqEBQITKyH3XrX17cnCfxjGgKslmMm/L4urPVOxgLxaHg+sbaE0EqHgWonTqnPz/rDT
         NlsA==
X-Forwarded-Encrypted: i=1; AJvYcCWgkAAlISsqfHFXrzgrMdu05vbqFGKk1RJqnXO2j2PPgl8v5EjkNfTGC8jxnfOm16Cl7detcJN8+Hw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwBcCf3/AL00W+M9CQTFpAwTGW8OJW9b/3PdcyFSgv8/PTxMvLb
	T8T/RuPMaXvyW/XDf2pBFzV9zCDPb+wBiToXKhMoZeD/hNSyk0sR21AV4HHoOQG0NpI59iGisxu
	+r5EaQFFCI773Isggk6WrV2FZxOU2NlfSteEtZdYUw2ocTrVQmMYswqaCuKbOddtUbsbL
X-Gm-Gg: ASbGncskhDmjKuY248H+jkPnXplDEVyIfpO2EAvY/0seYw4m9HTXHnSzJlx1OeHLa3K
	DP2aKba8rNEk/XepNq/EbICFRsbdmUZmiOPcU9IYmSMpovnYFHnQSMWhSX89OjMxKSzXzg32veH
	JulFxJzaRlI8v7YhsjfT5Q+iLSoUlUUcOyYj/e4kV07Nv6kYygOxsQajtFXS3bFwz6sNMbxaqCy
	wbwkTKQYfu8pqnl238sleo91avvPkg4Z4DT4/vOZjtXQwLf4aBY4Ksx80qP51qhkDS49rBM/J7E
	DmBk933BB4DZNWVPNL3GPwDfxfknD30HfO2gcgtDYtKks0JhEmLfhGp9Bsbqf5Yd89ePQB0PI2z
	Yn/Dtc+hHUAhFxMNQjtEYEMDGTCTtHlAh6H87onCrdUTLnA==
X-Received: by 2002:a05:7301:fae:b0:2a4:3593:9698 with SMTP id 5a478bee46e88-2abc71f7ec6mr6465297eec.21.1765254995504;
        Mon, 08 Dec 2025 20:36:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGgu4aPb0+lj4MxhGBo4aAChAGZ01Kns/S/0CeavX4HExSHWEmqMwaWLLzXzoMHs39iBx8u4g==
X-Received: by 2002:a05:7301:fae:b0:2a4:3593:9698 with SMTP id 5a478bee46e88-2abc71f7ec6mr6465273eec.21.1765254994907;
        Mon, 08 Dec 2025 20:36:34 -0800 (PST)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2aba87aa5fcsm40914062eec.3.2025.12.08.20.36.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 20:36:34 -0800 (PST)
Message-ID: <db033ab1-9b5f-41e7-8048-3ae327b48ad4@oss.qualcomm.com>
Date: Tue, 9 Dec 2025 10:06:27 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 squelch param update
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-2-krishna.kurapati@oss.qualcomm.com>
 <fxf66ulont7wnmozqww2cklpp3djkzsgvc3znew4m7t47qlye7@32hxp3yze7h5>
 <20251206-efficient-tireless-dragonfly-c5d2ff@quoll>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <20251206-efficient-tireless-dragonfly-c5d2ff@quoll>
X-Authority-Analysis: v=2.4 cv=OPQqHCaB c=1 sm=1 tr=0 ts=6937a754 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=MsxH4LtXGSFWTCPOqMgA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDAzMiBTYWx0ZWRfXxV0TU638AugG
 APeqArkrJkY9xarsXObFHxNkM3rsEmRU3J4sn4L9HK1vJAbnDF0p0z9Ejp6FVhjYMdUKLn/a+op
 c+s6/JJSYe3zqPZmSws8QhrJgyBIlRECsIPzssdsvGikOhAzM6iKcJEixruKLCGUViD+UTUIoU5
 VhGyuikxBA9WcH9WIOgDxdhYrIucDFYMJ8cEX4PxDev2XmvnUoRemiEAVvh9z1B16BPGugnKYSM
 qc9JaNKwPxY21RYU3WG9EuCbQMvQ+h26Lpzg7MNkxAThpnQhCH+IvvrggOh9GWzYeK9sCj9hYtY
 SnDNy3Z8NvTMhfIEyQObSkPimLpp9a84UzpEe3hCzQbq/H8HLeK2DHM+EE4SOxR/mkReXnlaPmD
 B3mSVsv4liscpeM/hPVHNRVe0Mg3xg==
X-Proofpoint-ORIG-GUID: W4EhXwG-HmMh4eprotrExrbV_FkeRuTr
X-Proofpoint-GUID: W4EhXwG-HmMh4eprotrExrbV_FkeRuTr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-08_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 priorityscore=1501 adultscore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_203637_454572_3ABF73CE 
X-CRM114-Status: GOOD (  14.50  )
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



On 12/6/2025 4:32 PM, Krzysztof Kozlowski wrote:
> On Fri, Dec 05, 2025 at 10:55:36PM +0200, Dmitry Baryshkov wrote:
>> On Thu, Dec 04, 2025 at 10:16:42AM +0530, Krishna Kurapati wrote:
>>> Add squelch detect parameter update for synopsys eusb2 repeater.
>>>
>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>> ---
>>>   .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 8 ++++++++
>>>   1 file changed, 8 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>>> index 5bf0d6c9c025..f2afcf0e986a 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>>> @@ -59,6 +59,14 @@ properties:
>>>       minimum: 0
>>>       maximum: 7
>>>   
>>> +  qcom,squelch-detector-bp:
>>
>> -uV? -mV?
> 
> If thi sis adjustment in ratio, then bp is correct. Some sort of
> explanation in commit msg would be nice, but I don't want to stall the
> patchset for that.
> 
> Assuming this is indeed ratio without actual SI units:
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 

Thanks for the RB Krzysztof,

  Can I update the following as commit text and retain your RB when 
sending v3:

"Add squelch detect parameter update for synopsys eusb2 repeater. The
values (indicated in basis-points) depict a percentage change with
respect to the nominal value."


Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
