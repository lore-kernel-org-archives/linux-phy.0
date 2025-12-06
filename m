Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF396D339BC
	for <linux-phy@archiver.kernel.org>; Sat,  6 Dec 2025 16:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=erEUaDT7FCdF7a6wmV6MziadF7J3jvboTSsu+goO2Pg=; b=V3Hz5nibycSuiu
	wRVm2OVOOqzHo9J+FN6dOfmzaGjtMfxakh/R0KRDnLSgaNzH1JIGKyhJmQgC3IGo8VfFDmI+8WQ6w
	ay0Na7uNqlRDSivnJTqb+yMAau1iOfXMwkTfsr1PpVEqgAYvd1HBiDJV6ge3sgEtnzYkfs1WdxK5W
	mQ5vWdqNtjoXEZ2eDbT/O/+lFUq68ETwYKsSME9gwiL34VhQ3grf6LjXMWdZIjvbqwI9E9ILJ28Kz
	LHVEL4oXBJrqNbWh9uQS7K77nZAnvIXPBGpKb6RmTP1OqnebVWauUf2ujrKEm6vwZujNWxI9CEapJ
	poryo8SVG5nBu8XZPb/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRury-0000000B3Xz-1VyA;
	Sat, 06 Dec 2025 16:10:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRurw-0000000B3Xf-0n8M
	for linux-phy@lists.infradead.org;
	Sat, 06 Dec 2025 16:10:49 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B6DgDBQ2852298
	for <linux-phy@lists.infradead.org>; Sat, 6 Dec 2025 16:10:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o6sTSmYnZ12jK2IzQcfjxY9zJ9YOdaK/5r5QyG9+/88=; b=Zesh350tHTRUSRQx
	C7DwTh+Da6FpRwodhJVF/lTnPHmAqnIVCy2RRIpf33/3aDE/0UPn728b2aHFblJk
	GsIVuqTZTdSOeTR7554aS32s+bSU1or0zTEhZF5c1TUEV5eHTxIqJbEilKK2DJrE
	qCPvbOjHTn9vVaAIpD+0OjW/pvtFQl5S5jMtoqXF0iWi3e1igpScxh9wAgr3o2sI
	BRW06oQocrk2Ew9XtKjChRy8h3sWS1dognp69PuIG1qEQKOS7Rs493WRNBGSQb13
	kd0LFGBE6q+b0bym7alAIXMuPZC41RLv7srnMrxdhvbwM4Jyp9EFCQ69Ed0gx5wE
	ShUrEg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4avds98vq2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 06 Dec 2025 16:10:47 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b969f3f5bb1so5145548a12.0
        for <linux-phy@lists.infradead.org>; Sat, 06 Dec 2025 08:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765037447; x=1765642247; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=o6sTSmYnZ12jK2IzQcfjxY9zJ9YOdaK/5r5QyG9+/88=;
        b=dGHp66omBfg5XF/AVObB6Vc1x7rL0IJOc/5w9WVSRFrm+K0kqFM2V5bhFKLsxuxFpW
         nTPGiuHM5mdzLCGqVQH/KO2MWu1NpCNxC7y/UY8CP1HPudWuCy/McYTF8j9rDochKPmW
         an33YIUB0JzWzuv0cA4fkW2pGID1Bne1CZwjhvWQAqPuJIcg2FubjcaIFq3jITG3pfz5
         lnnruxvLYupFyZ/iS3d2NpkZvboNS2GZiNv5jmPaEhA9r1tE3sqIJd5+42DDMfgh+RDM
         cPnaKvAx2wNEPJx7LP9i3qtc5RvLaEupcDG4KgcGjenUPoiT2zQTMfWGrHZr85paeEc3
         WlpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765037447; x=1765642247;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o6sTSmYnZ12jK2IzQcfjxY9zJ9YOdaK/5r5QyG9+/88=;
        b=sKqEvBzmUHqADdYwpBGlGBuBT3wVHTGaRw/rdzzUtOa8mLOL/QI4BOikcHvFYvU8ZC
         c1NtdikT6IXJJ2opn8JNmbLkaNti4LZ367l55vT/+uYePtl7VbjbG55K+mW76XmX7J7p
         RGnN817vrUyZcNMQD88pr0vqjED7l+GYUz9Eo04eMfvYREsL/NMw40kBmpVceDCtTZgr
         PbvDNM1GcXJlzZiWvT7RIhQ8mNeRj24PtJrTPNpGWocuotWeE0U0BiJwOZtq7c2kBE7b
         /QFqGArfUDqGS8lIaon354UxKLJUdUy6zWewyPyFMyr2jy3KR9Q9+3i15hdRVu6jhwVF
         YB1g==
X-Forwarded-Encrypted: i=1; AJvYcCWSi+BUCuGDwpdHy/EuOX/jpixXMUr8QiV4qGSJZXpiOxN4uKxG17TvUSLUlLGB298FV1CGWw7T1io=@lists.infradead.org
X-Gm-Message-State: AOJu0YziTFv+a5BuqwfxVRxw6b+l9YTkud10Qm+lVt1owpq8K4nm3ujE
	aczH18QmAFb4n+QM05UVvJxkPf1IeBaZLl49JL8vlMgUDVehtoCyI+AV6Y8Mk1Og1BQrhF2BP7J
	IKN83b+eOXg1G0kDFOa4kLnh2Xo+sGRZTtAtSnRnXDWC09GU4mbp5KBhGw2jYe51CxW6I
X-Gm-Gg: ASbGncvHftY2fJicQPB12DGmy65KcAoMkBxamU54yRLczRDuJakUxfHxjFWSEOpwa7q
	hCpeaRMCvRxfRPCbt6EfayWxjatSR1X9iBf4rrG5Xhqdi0v5OMRFuDzjyJpqHuBLD7pWyh0L2cR
	7Jq/7V/ic39rymmw2C4Y7xS/2MiGfhcsymKjy2hA8rAlJlko6/tya4nG28QRXjy77kibnIwiJEC
	IDVmr96cShmHjONfNfh5PXCE55VqiGJltNfEqHFQWhnZamyNKsQHgo8eeAP1EdpRawZPGZwfEzF
	4r5WflfRJtllXsRSbgoa8zrX3spiJnL2Jewg/pExYb6PLoSm4/bsE6vvuoLlCn8YOEl12iRBhL0
	7upi2m2393SKR/pNh3yPM5W1S0GTmiBeTolhvoiKS6sp6+g==
X-Received: by 2002:a05:7300:b0a8:b0:2a9:97bd:a844 with SMTP id 5a478bee46e88-2abc71cfb2bmr1896741eec.21.1765037446803;
        Sat, 06 Dec 2025 08:10:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGBUiVy9ceq0w+zFGZdt77CsGP9QUEEwN6v+h/m5a6bGx9ZanfK8WOLASaDYz7J6zGfR424/A==
X-Received: by 2002:a05:7300:b0a8:b0:2a9:97bd:a844 with SMTP id 5a478bee46e88-2abc71cfb2bmr1896723eec.21.1765037446284;
        Sat, 06 Dec 2025 08:10:46 -0800 (PST)
Received: from [192.168.1.3] ([122.177.243.159])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2aba8395d99sm35322770eec.1.2025.12.06.08.10.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Dec 2025 08:10:45 -0800 (PST)
Message-ID: <377a0412-e49d-435d-8136-ebcd9fac9e7a@oss.qualcomm.com>
Date: Sat, 6 Dec 2025 21:40:39 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
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
In-Reply-To: <20251206-efficient-tireless-dragonfly-c5d2ff@quoll>
X-Proofpoint-ORIG-GUID: Tgypp54XtHhhjLPGrNhEdI7TBpolld2y
X-Authority-Analysis: v=2.4 cv=P+83RyAu c=1 sm=1 tr=0 ts=69345587 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=mGeNq4HQZpM0LKVKY7z1pw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=MsxH4LtXGSFWTCPOqMgA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: Tgypp54XtHhhjLPGrNhEdI7TBpolld2y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDEzMiBTYWx0ZWRfXwLr5e+75CInR
 aS5q36K2kyfRbLQ9tGedEDyWvAPBD0ivzckol6dmIj/PBCYS/Nvq30kfshztqL2v146PGNiuyFZ
 ARCtEEl0g+yhKUknKieZ7fIyz+qNwvye1u1V2TXfJJB6JhmNFra1u8sYg2Q7lUuiIwHPKM5KEDr
 KP97KhDDhzm7E2NPFrjTWoU1jTD5G3qp6b/5cUONRklSFx103HA9VYiNmu1NMy/37/kCxuUn+fA
 4+wm+R10xfcHuh1Cco1eKwX6+4WC3KITY6XrwyRDHaQ0siQamZ8vqDFbWE3XrnXTcV4f6dlloim
 wp5nALAudA1Zv983o/iW/+++wacznme9QxZx2nIZOTZuQ/69EQ4Z9U7ckcivHfGkXEL3cDm0twE
 2bCtMSw5IU/3+iI1+zjhLVOuXdMlZw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512060132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251206_081048_233317_C0BDF86F 
X-CRM114-Status: GOOD (  13.93  )
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

Yes, this register values indicates % change in squelch limit. Hence I 
used basis points instead of uV or mV. Will update commit text accordingly.

Regards,
Krishna,

> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> Best regards,
> Krzysztof
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
