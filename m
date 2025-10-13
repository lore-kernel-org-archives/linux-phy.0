Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AE9FCCD185
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 23:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=enaS2kExm5Q1Z9Js58msx7+pYXbYbD6dVmGuqoT7bSs=; b=US0VeY2OC0GFqC
	jv1ME0P87I+nXknEinYyqBhHCHA/FcgbO9FWgn9rMQ5vFr6i1tSeqUVDGwohTGaU5PFQZo7f+7QLr
	BX4peqjcQWFDvrc13hKYcxeq2JlDZTXBUQtMGWFjQlv8ikpqQJtpcuRDWPsf1Fruo86LTj26ln/5t
	8f+2ptoCHCBXeHiAMw1saV3XKwOmU039XLO6Smdp3GrsxuludF9MIRmUMvddggCevExlsgOL2Thcv
	a1EG6k42kSBnIuo1xwfuMBQ52KeCKhAET7WmeUffOfJ9z9w+5wFydB0IoLGDmYi8fLGAGTrZgJ+6o
	WZMJ/UrKyLonS9TqRjMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8SDL-0000000Em8c-0Dkb;
	Mon, 13 Oct 2025 23:44:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8SDJ-0000000Em8E-08B7
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 23:44:26 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHDACo016401
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 23:44:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R+2pANyzcoM3DHg5TppGmIvwYCz/hBBmCZ5ALOha+JY=; b=j6w1NkH1mgOKp4/B
	VdoN/dg0uOwEnc45wHa5bk9aHMp0qBqaKGCfZ/KaWhXswW1nJu+IOo+SjYKucdzY
	hfy8ORdaHqhN4dlobKfPym3HVxRsIqZhHUFZVzLMyt9f/llBJFF5e4eZ+NCw6y99
	VbSyS31hqh7uf4vMrR4CVwqsIh9aOUVVZAHpLb7qrufRK34OrHDw4y2UP518dDKB
	hCKctlc6ArdAU7hg9MYZJX67cGooNdHvD06BIa+RdJAsgncPnDh/rh4L/nYCgMh/
	AnyFeWa4ivZxPWjyUU5aEux/7SX6TqpwgQKnSrER8nEjeKF7USAli2W+qCsv2y1A
	mgiG2g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rw1aaupc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 23:44:23 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-27356178876so60544795ad.1
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 16:44:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760399062; x=1761003862;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R+2pANyzcoM3DHg5TppGmIvwYCz/hBBmCZ5ALOha+JY=;
        b=hmja52Onr46tqPbTnjfYlJ2d1eqzu4Il6FQeN884w3KC3lfL0PMyl69pN/IPbX7Jof
         nvcShzIPLpkBBP3qGo5M4nus5Zd3W5NIDiIbLqDORsWwT7Eqf5ohqhdENdoYfvvQpWuH
         sc0HZ5TpuSVf1FB95wfRlk+aXwep5pDusBmVND+lkTl/SD4nenR3nqlfIAXB+7g5QBWZ
         1L+nae6kN71+ly9ARgS8OyBxJdr3mYDcSApARsB5/BIdGVYq/qpMC3Kb/Z/Loz1JCFBU
         +dudg/5g5clVi6TKcIM08JEATfpvf+TrH80n8F+IxnrItBqYJU4KSPLVdAI+OY2DSC6g
         EaJQ==
X-Forwarded-Encrypted: i=1; AJvYcCV07uwrnhFYbhROT2U6As+nVZgd1lQjFpJ5H4XmzzYsRp/HHnuKdGO0JROzGpP0xsqceDSBX6yhQsw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzTL8aPNkeB1dJ97QryF2Uaat/WZP1AhiPDx9hv8tnh/3vHtliq
	xdREyRTLrHOTXz/s2iKM3CbwhPqYJZetzMZ/Ucy8Igy070fXKrxkHOoIL9fO0/GE/0ckzvArZMv
	z1m9DBvOY1CiFULRtvyu0G1dP5RyrgRRd7/fV2QxwDcaIdleDGwASXxRTIuAWrXM5CemQ
X-Gm-Gg: ASbGncs5XN7U51LxwcYGpsnPxp9DmsS1YYSEPXZyomH/L9w+iJ3uP31uEVFTjrYjdgG
	28xt1e51Ynvi2pKAM1QZOZUJeAom7zhCjZVYP6MeOOe6Sg+8Q3sCmnp2eYkOXn2iTr9oh95j/6T
	wwIlrg1u6v4acAANoU3U5I6o7UNqw1bNd1oD9UTs200I5CYjHQd4NMDinrg1r3WoZ30yt1LWaNu
	L7H4VB5KaSt7UxBfvBy90LRdf66inee6mWMTtgGwX4V+sce7/GgqjSbcAk9Z6uLM1Z1Q1mBRBOQ
	arrYi854INQOgbWfAUPTkmMwJNElRB2ny4Z9GQ749e9xjWm6uKlSKym1CjZsxiUOF/T0ea9PdTu
	Dmx31Yg==
X-Received: by 2002:a17:902:cf08:b0:275:c2f:1b41 with SMTP id d9443c01a7336-290274193camr291358345ad.53.1760399062092;
        Mon, 13 Oct 2025 16:44:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtJmEqw1slbxjdy+zH5RnzE9u3uG80gq0Z6ZZBCc/1hYMquagduloVtbdhakKZwb9AVAeUjw==
X-Received: by 2002:a17:902:cf08:b0:275:c2f:1b41 with SMTP id d9443c01a7336-290274193camr291358065ad.53.1760399061633;
        Mon, 13 Oct 2025 16:44:21 -0700 (PDT)
Received: from [10.73.53.19] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034e1cc53sm144884885ad.46.2025.10.13.16.44.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 16:44:20 -0700 (PDT)
Message-ID: <00408896-2e25-2dd1-6e6e-2195317ee7fb@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 16:44:19 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB
 UNI PHY compatible
To: Krzysztof Kozlowski <krzk@kernel.org>, krzk+dt@kernel.org,
        conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <20251006222002.2182777-3-wesley.cheng@oss.qualcomm.com>
 <f5e4ae02-b8fa-4406-b2e0-3602b07b7e23@kernel.org>
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <f5e4ae02-b8fa-4406-b2e0-3602b07b7e23@kernel.org>
X-Authority-Analysis: v=2.4 cv=K88v3iWI c=1 sm=1 tr=0 ts=68ed8ed7 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=mLeorRv-Xii_F4RM4uAA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: b9cxJokcHiJ-1qIcgIcsAyicFiO6baqF
X-Proofpoint-ORIG-GUID: b9cxJokcHiJ-1qIcgIcsAyicFiO6baqF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAzNSBTYWx0ZWRfX50SY+pVHs+c8
 TLK+GEiZHasQkGTgs2r+OfUAp7I/sy/GBB+1aRDKP+AiUUP4lbHXIClGGYiLqa9UnxBVxHehWw1
 GEw1TYozudEobmiCPRf8KYkWsUGAoNzs6IV7i0FRqzKpqJh+XGnjA4b/UEgiMHoApJT7TZe5lly
 fioaYBpKpx+8Yu4sl9uxQ73DDvgkChtk3643s9mxAGoxxZdbsym9OuT4vxToVuyqqSHEjBF5qLY
 myc+z+JCsxaPtmFiiZikWDpVVWvbA+uuDX+oxa7jZMn5vtncB/6ffpOHp9gB+1sTu3xm+rV7ZLS
 dPDBJnp/aObKPNnsbeW7tibrJl0dq5GC5LzWrJbJc71HPctBqhU+kOD5SS/03EMvlSP8AMhKgsK
 4IaDUGfCsbAdHvLIc36c11tN+vMGVw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_08,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_164425_097814_A9E83478 
X-CRM114-Status: GOOD (  13.16  )
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



On 10/10/2025 5:04 PM, Krzysztof Kozlowski wrote:
> On 07/10/2025 00:19, Wesley Cheng wrote:
>> The Glymur USB subsystem contains a multiport controller, which utilizes
>> two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC, and
>> the required clkref clock name.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 35 +++++++++++++++++++
>>   1 file changed, 35 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> index a1b55168e050..b0ce803d2b49 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> @@ -16,6 +16,7 @@ description:
>>   properties:
>>     compatible:
>>       enum:
>> +      - qcom,glymur-qmp-usb3-uni-phy
>>         - qcom,ipq5424-qmp-usb3-phy
>>         - qcom,ipq6018-qmp-usb3-phy
>>         - qcom,ipq8074-qmp-usb3-phy
>> @@ -62,6 +63,8 @@ properties:
>>   
>>     vdda-pll-supply: true
>>   
>> +  refgen-supply: true
>> +
>>     "#clock-cells":
>>       const: 0
>>   
>> @@ -157,6 +160,25 @@ allOf:
>>           compatible:
>>             contains:
>>               enum:
>> +              - qcom,glymur-qmp-usb3-uni-phy
>> +    then:
>> +      properties:
>> +        clocks:
> 
> Missing minItems.
> 

Hi Krzysztof,

Won't the minItems be inherited by the base definition?

>> +          maxItems: 5
>> +        clock-names:
>> +          items:
>> +            - const: aux
>> +            - const: clkref
>> +            - const: ref
> 
> What is the difference between these two? Which block INPUTs
> (important!) they represent?
> 

clkref is the TCSR reference clock switch, and the ref is the actual CXO 
handle.

Thanks
Wesley Cheng

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
