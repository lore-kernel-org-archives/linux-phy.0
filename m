Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08D21CAC5AA
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 01:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCJPGdkW9R8Diehvz9DZsk3vL925CYXZLrU391FvR5o=; b=tKnzVUP8d3Rd0p
	GwktiZ0h9MD1S+NnNaBvjyLJYIyeM8bjtnSDRfyAeyE8nSPpLcLH1IubI3BIJLEyXksVH9+VeizgU
	3GyHLV6h8ic0oHD+FtAEIRngO+DQ+/A04D3iT1o21NytcadsGwD1Hd+mcjQTh8V+Ph5c6Lw0LlOyp
	G44bGVvd9tVoeiPhcQVUUVP0GlQ8FXfYJSgoOFMrdr2RoFtK94q7KWaRGOV5EJgUOgn9ZcL+IcBYs
	ngISv6Q8nW1TLR7aycH8VHffCNUDpvkcZw8XjsGcWf2YZjLiXkVM3l0bCGnIka9+AUxXhzsBK+Jd8
	6hW9FNhmbXCVWWgC+UJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0rQj-0000000BxVA-3FtW;
	Tue, 23 Sep 2025 01:02:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0rQg-0000000BxUn-2UzF
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 01:02:52 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MI0uvk029344
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 01:02:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jO1Hn2IrqcZtq+1Jj6/zX+hsmwYf9XJSmw5T569R8N0=; b=K6mgVDc3DjcU/uHP
	6mQIORxFavj9i6bOju/Mzbgwqv+69i6VDoRmGyevoK6uL9zeZwc/FhEDtQfMryKe
	Lt16E+a9MBDInSgAGjGgID2c03l+ALXkEvsLuCkZzhWznsc6xg+8X11hG833Plxq
	ghkE5JZ8cpE3gtXTsftZHtGjMsPwB0YnS3wYPGBbmKo1s8U+j2ZnmrV/ZDFbScmW
	hhPin1o9sD+Dpjg+YCKl+AiZcVWEEt/VKIcsycnD7H2K1QoeV8Ec37Zo2q0XgdI3
	6j4Y4jKWirvKp7bDFrQSKe648K3PPIwLyr+JMgzQ2jUn4hwnk2USDCH5vhdsKQwk
	rRaFIw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kk2h4x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 01:02:49 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32e09eaf85dso6149735a91.1
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 18:02:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758589368; x=1759194168;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jO1Hn2IrqcZtq+1Jj6/zX+hsmwYf9XJSmw5T569R8N0=;
        b=FPCTptTemdNpDJiRTznijjKe/UkmmckXI9RqoVlsXjRANZKnvIwarQpKBwrEO3BG88
         EAnt7s5sjEyR7/llDLp4PhqsYlxdcnfLl1ryrv940E1/wORY4QpHI9ISgN9MmcPc4LSp
         d/6MxlrLf8vK7IyOC1EeREpQ9/UW0ImBNzPex8h0RbpuML8gJ6cChMhlVmlKM+nQlS0V
         geBEmlLnCAlkKKimRPfb3M6pZjihg5Z/R5RQ+c7dgjKz8SoGGwgzcs4SNMBduawDd84I
         X/v5bWMtEcMHf+SdTlEXp6c2vcGpb+lrIbXUftG8hQWiC/oZge6xNY6+4p8E5HJkpwr7
         l9Cw==
X-Forwarded-Encrypted: i=1; AJvYcCXKqe03DcEZH6CMy9hNQuad5lkd0npOcoMK1LsQtPq8BM9Pqr+qq4u53/gja7KiXql03chdu6YHJGg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzrtLvcAFv6sAdonI/V3D5dwCWpScd2vLpNwI5h7gATkr2V52pv
	3fO99ieiK6S30d5YrOLT5npcQwp9EZEqU2tHnTubjmrYqBPFuJuKWLmw1whZfA2gFvqtTO5Q6SE
	C1mGr8GLwIM5BaUeCS3YdPY8ta5qYy8uBk0xQgpg6YrdHMKlDooBAcGGjau1LPBPwVkWp
X-Gm-Gg: ASbGncsmk09qvPHFiGiY1/kgtolfyE5Vh6ik7K2DaX2q0/lxrjqoSXlobnuCDeLZHSO
	V8l8s99OYMP3S/OWsPJjmXXv2+DZfisHGM6Td6BOAD20QF2yQla2LKKFgdJBRlpdKJV48jTpbeY
	KX3/U20ad4be43dUlT5SFQAqE5Vld7Tfoa0R0bErC4GVVjoahH7zmRhs0JNM8C0yFzuquCBXLan
	5nOhVWvg6OHz5RM5618UExi/ZOQIlGQAGhGWe+qbcd4joI3eBU3y+FFkkSSWUO0JiaDk7ImguBB
	S5/+TSTVyZtVH1Oc9Grod7JZ928evrfIbwTY2OP70TnlQPCz8uVrENLKBF5xuoyr8ulxNUf68VK
	anI9XAAJeihcTQjbmKUyyh23ihYNQZK4=
X-Received: by 2002:a17:90b:4cc6:b0:32e:a60d:93e2 with SMTP id 98e67ed59e1d1-332a950f0e8mr897284a91.11.1758589368200;
        Mon, 22 Sep 2025 18:02:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlSOwvGDc4ZNG/GFMoIc8OAWT84NHpnX1KIVGYK3J2uWpSVJtvuEHH3EjH2XRE1NcabBx9jA==
X-Received: by 2002:a17:90b:4cc6:b0:32e:a60d:93e2 with SMTP id 98e67ed59e1d1-332a950f0e8mr897240a91.11.1758589367782;
        Mon, 22 Sep 2025 18:02:47 -0700 (PDT)
Received: from [192.168.1.239] (syn-075-080-180-230.res.spectrum.com. [75.80.180.230])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77cfbb7b9e0sm13852534b3a.6.2025.09.22.18.02.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 18:02:47 -0700 (PDT)
Message-ID: <554cd2ce-a617-9387-7379-a3c2b9de843c@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 18:02:45 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 3/9] dt-bindings: phy: qcom-m31-eusb2: Add Glymur
 compatible
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-4-wesley.cheng@oss.qualcomm.com>
 <20250922201449.GA1235521-robh@kernel.org>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <20250922201449.GA1235521-robh@kernel.org>
X-Proofpoint-GUID: TKkewM3f1e4mQxTj6tLPZ_1rm5b48fuv
X-Proofpoint-ORIG-GUID: TKkewM3f1e4mQxTj6tLPZ_1rm5b48fuv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfXypBoSx468bUV
 SZztZUIH2NgVotNnmZbVre2pCv8Ptg6S+c0xbp4nTM5w9KQ65T4NMQZiEAdoTPpq8hXlECqT7Bz
 o8St+oD3JnZRPJsDeO7fM3tKm+++t0ICe60mu5m+9uPgCn0r4u3xpxkB5bqx+OrnjXnDPRvFQrO
 0mNHaPuW/oLODYyu1BO/NewSJozrPY6Ul0Rmf+0WkSS9hxClaU7LSFFaRy02mpleTOCmafusD2t
 pQMXgZZ70jNcI54HZg+UIL8lzOjzJl4Cht3KAmM2JPDazioQUkn18URnmDTcPwjyNVpQPSnmlIf
 VYfO8bLZJhR+7w2rFNc2s0RvZD8e2ivGClY/3J2g6VKiUJKPiLGqjpGQMC5dow+RloI5e+HCKKM
 Mt5rjcu0
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d1f1b9 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=agQD+r7xwyS+FYqxhQjztw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=O8CPnEiu1cSv67x46V8A:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_05,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_180250_764501_C2FE0E5A 
X-CRM114-Status: GOOD (  16.49  )
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



On 9/22/2025 1:14 PM, Rob Herring wrote:
> On Fri, Sep 19, 2025 at 08:21:02PM -0700, Wesley Cheng wrote:
>> Add the Glymur compatible to the M31 eUSB2 PHY, and use the SM8750 as
>> the fallback.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml   | 11 ++++++-----
>>   1 file changed, 6 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> index c84c62d0e8cb..b96b1ee80257 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> @@ -15,9 +15,12 @@ description:
>>   
>>   properties:
>>     compatible:
>> -    items:
>> -      - enum:
>> -          - qcom,sm8750-m31-eusb2-phy
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - qcom,glymur-m31-eusb2-phy
>> +          - const: qcom,sm8750-m31-eusb2-phy
>> +      - const: qcom,sm8750-m31-eusb2-phy
>>   
>>     reg:
>>       maxItems: 1
>> @@ -53,8 +56,6 @@ required:
>>     - compatible
>>     - reg
>>     - "#phy-cells"
>> -  - clocks
>> -  - clock-names
> 
> How is it compatible if clocks aren't required now? And clocks are
> suddenly no longer required on sm8750?
> 

Hi Rob,

It depends on the clock subsystem.  On SM8750, we still need the clock 
entry, because we need to control the output of our CXO/reference clock 
to our HS PHY.  However, on chipsets like Glymur, some HS PHYs in our 
USB subsystem doesn't have this refclk output control.

Thanks
Wesley Cheng

>>     - resets
>>     - vdd-supply
>>     - vdda12-supply

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
