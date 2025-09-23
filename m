Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A897CAC5AC
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 01:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kseXOQGJwZVugk4igOQM9wWsrkEj5nEM4fs038oZKPk=; b=PcoEbS0FQe708a
	wAZFdUvKDO79tbil728GqOn781h91CHayj6wr0nAwsdKwvE0Z7LKuwVmzDwtTLndb/AqRmItUm01e
	fQUmmwE6F18lkUElHg5/Novzg5OYEqBjM2zucUPlxKHmSnIHyhFGDQpA2RrbKvIaKLikbGZsulQD/
	t3K6+uLnvHm8H5FrKrD9NcIAGxFta2GUwyQyZEoBOndOcBMDsgUNsO+Q9asEdcefFWjuKxrxIsQSx
	K3lyQM3X+qz/5E/+8a0zVC6oLxN9X3+2xJpXwVLtTi0iJgMf8ijlJiF6Y0n7VNexWK8qsJyK0x5OS
	8JDv1Pa5HwSnij7vYuXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0rOA-0000000Bx7t-3O3m;
	Tue, 23 Sep 2025 01:00:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0rO6-0000000Bx7I-37jR
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 01:00:13 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MHliRj015017
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 01:00:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XWLc1VvNWjlvWYqGGxKBcg7/p+JOxI4yci5dyPnXzGo=; b=Lde4wz/TlbDmZV/d
	RoQtBSG6l4gjxMIm1vx37YEBU/427uzg/x7fhRLL/SN754dd4f8htIAaWo9oILaz
	UmxWRuJEhTqYSh7OPKE90yVEtwHNGGpY/lXrfpcaMJxBwnh9uhb4o533jeLdV41P
	d82uZrrpCnU0n2U55hH/6tnC+MMcToM+WBbv8a3hoGtKy9oRRNOa2Yx3DFheCQHS
	vfJxozcgNJM7okXNx3cMoXEn4sDHxBoPkzWkUlXbDWzk1en4sqcReln4JH0a7dGt
	l8zI6va5suuJfvrymkyz8mDQurLtM3GVLv3vYMNoM7bVaCXf9A5FH4BX3Co5/qVP
	GbxmMw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kkhpqhr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 01:00:08 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-268149e1c28so58195105ad.1
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 18:00:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758589208; x=1759194008;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XWLc1VvNWjlvWYqGGxKBcg7/p+JOxI4yci5dyPnXzGo=;
        b=vYSOyaeVUwSwskgZyGLkb0odgX7kVzazltabZD6n8TE7G1YOITF0VT9x4OFdGxGn/U
         jcdEuV2pqEANjxW5H4OD2IOqBFCmfs8EvN7jB8ct29FiNZZP7WHWc4/UzINrD+YduevY
         dOIQwM5tbsc9Fdl7+zbnoju5Q9z64FYWBsvG13eyX2gMaARR/4siPu3vxCfNOVNEeJSV
         nzz86cxoH780Fh0KZKYzIyHO8BTk+Rm97I6J1sHSPZCb9aF9YAXh+FEJUH7E5G1Qcu1g
         EZSZN3aniydnsA/cNKaKhgf5RJqqugMryY/MwoXgrHkgPrvrwUelJRVL4U3uHK0NO1pV
         2wTw==
X-Forwarded-Encrypted: i=1; AJvYcCVMwT9IM+OSwrJs5QxpjxRXMcdJ11iT4KyPXhMnhJlNAR+HSxSxAviKmHW85V2Dyd1i1Cti2EFTOgc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxnBXt+CvE1BUPT2LKiz3Esmp9XIhzZMPb+AWkFkgnP6rGH8oKI
	zS6CBQcxaaJYcFnxu+sVSoXxhQSAMCkcSlHXGkfto+XmRJL1qm4sT2T6giDlEUeZTxy/eoJyYO8
	EDwvn1d//05YMV76lLj1hKGAVV2hQn0tCOsj8Lh51husuoszgp5fInVhWX+vt+FaMyekV
X-Gm-Gg: ASbGncuCpRNnEWIcO8a1fsQhos+lLg2v3MpM6odGKGnFIgF0kMVHxRW2Wxj7B9MlJ/I
	v6HCFLDCTEJVoF0OAkidmEeNCQXBBM9Pq77wTw/i3Ld0coebms9hEEzaAiHTuDfTaFpcYOsHWJn
	jjPGhFtt1lUyu1LL9eiPW6tbyXUaV6jpggVRpTg43/nS0akBLGmJGpMtKrqyTG6aCNUIz1C1SFW
	91gRLT3LTX/mItAsUXBCwbaqmvEPPcPhbsVVKVB+ExoFCK+Pg3bJ53/UNyQPOkjr2Skee7Hb0yZ
	Snq5yS/V9YFCupVohWPX4Qdj7tneXn5tZzPPlLQ7tAhRKgcDd+qAqtz5YqbASe9zRDJdLSyQGoY
	WBTCdMtLIeuGWqj8tMBuYSJsiQHRqoT4=
X-Received: by 2002:a17:902:ebcd:b0:267:b2fc:8a2 with SMTP id d9443c01a7336-27cc28b71e4mr8498335ad.23.1758589207331;
        Mon, 22 Sep 2025 18:00:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1/GZAeFp7rCGex6eqi3pw2AUQEj40WLJVjcaoY5Pse3ZDm9IPKaBVgK/AuqXdN1xlZJyImw==
X-Received: by 2002:a17:902:ebcd:b0:267:b2fc:8a2 with SMTP id d9443c01a7336-27cc28b71e4mr8498055ad.23.1758589206880;
        Mon, 22 Sep 2025 18:00:06 -0700 (PDT)
Received: from [192.168.1.239] (syn-075-080-180-230.res.spectrum.com. [75.80.180.230])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269803661cesm145268935ad.147.2025.09.22.18.00.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 18:00:06 -0700 (PDT)
Message-ID: <4116b593-d36d-df10-6101-4e3539b8b812@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 18:00:04 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 2/9] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI
 PHY compatible
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-3-wesley.cheng@oss.qualcomm.com>
 <7gvp6pshp4eiugk3qodg2ub3azu365loturidbkxqly6nhtgq7@bxnkxeqzarkv>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <7gvp6pshp4eiugk3qodg2ub3azu365loturidbkxqly6nhtgq7@bxnkxeqzarkv>
X-Proofpoint-ORIG-GUID: _Oq9A1sUskSiGTSerQCOnJF00uocx5ZQ
X-Proofpoint-GUID: _Oq9A1sUskSiGTSerQCOnJF00uocx5ZQ
X-Authority-Analysis: v=2.4 cv=JMo7s9Kb c=1 sm=1 tr=0 ts=68d1f118 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=agQD+r7xwyS+FYqxhQjztw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8
 a=RTc6a8mmi5jc5_0K4gkA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyMiBTYWx0ZWRfX+QIMOhGlPKXZ
 j3IZQn6Ky2Y9WNlRsmh2XhyBMsWYzChzVcc1UXNio0iPmdiTnAq4JW0dgDvkZ6OQmiN3M7oZqyf
 98oYHZpQNXah2tDJDjdkh1x5UBQOKkkiR7dPhMz269ZET6ltZFANplcv0cIXXNvJ1f76JEdUXar
 kzAMBlvpBKSRvKLhwbDljUxmiZabD5Qz/uXHXRq7aXhJu3wiGqaXwbjnIZQ7r7vPh/Xvpf5QEnT
 VLeKpxuRhNyDT/BBr/9Z9YR3Yc4rNC6E/X2j7NjhpemshS/N1Vf2GaKQunb1uHg293bHepySZrc
 9MRcOlvrZKYByzO65+tstGXBn3v1Ti3qC4vZovz5bLJZvn9fSJ3TNxV16TJWR2dFg2Osu8Vis1S
 ODEsVj0V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_05,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_180010_969444_9E19D6A4 
X-CRM114-Status: GOOD (  17.61  )
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



On 9/20/2025 8:22 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 19, 2025 at 08:21:01PM -0700, Wesley Cheng wrote:
>> The Glymur USB subsystem contains a multiport controller, which utilizes
>> two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml       | 7 ++++++-
>>   1 file changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> index a1b55168e050..772a727a5462 100644
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
> 
> You've added it, but it's not referenced as required. Why is it so?
> 

Hi Dmitry,

The refgen clock isn't always required on each and every platform unlike 
the .9v and 1.2v rail/supply, which directly power the QMP PHY.  It only 
really depends on how the refclk/CXO network is built for that 
particular chipset.  The refgen ensures that we're properly voting for 
the supply that is powering our CXO buffer.

>> +
>>     "#clock-cells":
>>       const: 0
>>   
>> @@ -139,6 +142,7 @@ allOf:
>>           compatible:
>>             contains:
>>               enum:
>> +              - qcom,glymur-qmp-usb3-uni-phy
>>                 - qcom,sdm845-qmp-usb3-uni-phy
>>       then:
>>         properties:
>> @@ -147,7 +151,7 @@ allOf:
>>           clock-names:
>>             items:
>>               - const: aux
>> -            - const: cfg_ahb
>> +            - enum: [cfg_ahb, clkref]
> 
> Why is it being placed here? Please comment in the commit message.
> 

Main reason if to avoid having to define another IF/THEN block, but I 
can do that as well if using enum here is not preferred.

Thanks
Wesley Cheng

>>               - const: ref
>>               - const: com_aux
>>               - const: pipe
>> @@ -157,6 +161,7 @@ allOf:
>>           compatible:
>>             contains:
>>               enum:
>> +              - qcom,glymur-qmp-usb3-uni-phy
>>                 - qcom,sa8775p-qmp-usb3-uni-phy
>>                 - qcom,sc8180x-qmp-usb3-uni-phy
>>                 - qcom,sc8280xp-qmp-usb3-uni-phy
>>
>> -- 
>> linux-phy mailing list
>> linux-phy@lists.infradead.org
>> https://lists.infradead.org/mailman/listinfo/linux-phy
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
