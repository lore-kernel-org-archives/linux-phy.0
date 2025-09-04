Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31997CA1012
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 19:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8QOTAQh7ruk9xBkxcpWQUZZOrUHQ1M5paIsSkWt0PY=; b=mh44SJFZAzWZ1R
	XpeZxJgVzCOEU2FuF7JEFoAHnb2Ak89kNRWX+5E8zcTHuCdwtW31of6hOxeGvkqE0zC21QATUZW9y
	0TTLXqkpmcEAsTbfL481hJkoLjnVpmxL/WE3OCeomzBDgthhR3r304Okp+jxnrBInqIrSEFFGdPcf
	YAFCaFRCQHC/695XbA7KoXN/jR/XqvT1oXLt9RdM0qG7ztvJ+6G1DaFRLGnB8FhfqSe60kXjyXG3J
	yJEyI4ItOMeaOrjCECuhJi725svsivcM6VCpftwbnTzHEHNsgxYjWVKE9PAgeNR+Qs2EI2A5QNCKo
	CAYFg1o6OAqrZxDKaOUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuG18-0000000E3aA-1pBd;
	Thu, 04 Sep 2025 19:53:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuBj4-0000000CULR-0SeG
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 15:18:15 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849XA7W007683
	for <linux-phy@lists.infradead.org>; Thu, 4 Sep 2025 15:18:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	U3ag2rCKadxvADtnF0lA84YiUUgGOpF/6W/RI0t67UU=; b=ErqVU/O2w7Aa7wpO
	0KrwlxDKAoSR+Gx0OlPo3uUYE8ed4eYx4Wim5Oyrs/ucuYVjmXuaDrCJh0NOC4Kw
	3I4oHcZbZpsL0Sh5JS9Bpjt2CWRRJPbJqnrfJff/5Eo6lKH06ln7mX6fQJAGRQOh
	h4gYMsqVzWGv1KqC4xvYb7AwnnoI0fRPjDVD2m9JrT4NHSUCVOyOTmlW/X79bnJm
	5QyfYLnvGuSjIkO+iStYl/Kvs17byD2cjB/z6OpPsFkp74Tf79tq3eel8EjUtlay
	DQ1FMP46PrUvipNzQkpHuKb/T3d/zK5dUGw45yC5hzUhp+SaSSeAavWh8L14Gakv
	okXhwA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8ytun-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 15:18:12 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b32dfb5c6fso3877871cf.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 08:18:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756999092; x=1757603892;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U3ag2rCKadxvADtnF0lA84YiUUgGOpF/6W/RI0t67UU=;
        b=jBi2pNz2WOAD0dhO2fT2uDy6QIe9U265iUvI2e4/WcI/hHEUqrOK5uXofcl34MqjAs
         aIffro3ubITQuiYHZKBgLTouOAABt0gA6LGvBb81ozzcspNIt36/j7fkfcg7XNFP79+1
         BIikOBHhMqZe3SAtf5ewxiMEEXpXz6qOohDB9TBN2v/hCV8SPctYAkcbgt/Y76ryIr7d
         xr4B4/CFhEpVwn+nOmRrii7z/RLSnC/isT8aR48Zo5m2cOsTEkSyadCu7YM9Ryw8kCmP
         XvDIKrkqTlBgDWzvD9kgZJ5pSIL2Yhgz8FXVs6jYH2AVcLkg32x9lhAe+ffTbd8CZ9n6
         p4iA==
X-Forwarded-Encrypted: i=1; AJvYcCXMDe70jc1HhGy3gJlVloB+Lksus8ooN30Ps/hWqkLX3VDqnc7dMEYicmAqWV3RXyx7uWn+/cyuQfs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzhHaxh0WqAwx+qYI6SfWh5KleTpk2e65SCS50un0lqkqIOAvfx
	aDDvcE8MUBhNXhH2AwEc4yfChq9sylVNessYhNoN48/AjI+Y8HtRMjAtFW1pF4pnj3XNiOKpin3
	4agwipai9nonJQNJrTx7np9kmeHyBxT1rucZo4FDnFsXMAuLEQGNlAqKe2kB2ws9qNPgh
X-Gm-Gg: ASbGnct+SLo50hJDMBUDP/FCcrD1zOBFH5OGP9MEU0MfrV0PqXM0uZbL87ihZujPvyj
	1gRALLKBwHBNX1xigGxsAS/J2mxdQz6I1myAoDGcYgkRtxRP+Xez3oGoe+uT7zBVsI1fw28nh5h
	yyK/k9z87VyjAP4g4y7HbOedGsjx9qLktWjguqQlo7PX619mWrKrxHFzbgMZItVUM71bIdqdO+R
	Qr+ImXDXkw0gTtmxydNYxfP5TPyYXvlaaQmzxet3Z0fouZdGjCXIwwFQKiiqP/XPkdn4QSZgL93
	CFQXUHlYRYUsu2RmnB9qxp7FdecSnm2v+EFE2l3xza9erbD4ji+rlaxleQjSkdJZN67838O/1dD
	CCaxN9FfXq/cNJJEKx8EU3g==
X-Received: by 2002:a05:622a:11c3:b0:4b4:946a:df22 with SMTP id d75a77b69052e-4b4946ae541mr50630381cf.9.1756999091666;
        Thu, 04 Sep 2025 08:18:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFT8mTyEJ4P6ECcG4IXEz9vD6IAMkUJ1fj2kQAU8IKBPOb8CPmz+XFCtvntqqARuhsoEFnLhg==
X-Received: by 2002:a05:622a:11c3:b0:4b4:946a:df22 with SMTP id d75a77b69052e-4b4946ae541mr50629731cf.9.1756999090951;
        Thu, 04 Sep 2025 08:18:10 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff0971379esm1517527966b.102.2025.09.04.08.18.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 08:18:10 -0700 (PDT)
Message-ID: <db5220ad-6153-4f04-89be-5d74838151b1@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 17:18:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp:
 Reference usb-switch.yaml to allow mode-switch
To: Rob Herring <robh@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
 <20250807-topic-4ln_dp_respin-v4-1-43272d6eca92@oss.qualcomm.com>
 <20250822212043.GA475528-robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250822212043.GA475528-robh@kernel.org>
X-Proofpoint-ORIG-GUID: rKM35p-JA0cEx7-HMJwYLloTir5toIEP
X-Proofpoint-GUID: rKM35p-JA0cEx7-HMJwYLloTir5toIEP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfXxXOBwz/xN5n5
 VmB2YwInqjsUvUKoVHlDZiHHeUcgoZT0el2C5CKQViynksDGP0ITDyKwNvQ6X/BESYnFwnvcZ20
 ABHvOkPLqt1nYVjDM1C5vKdg9maugL9UWQ05aQkUeOHXQYD6YoN3i8MBiaHrkx66dzOmcfKmeoJ
 9LoESZpuWs9GuJwX7uMaUFV5HCx6XS3F3YD8ccp1N+23039NFRLe0HARv/FkruSA/wvZZrb+wxc
 Oa8A/qh+nyuLiVDSQFYmwUz1HJf1zCDRRwp9zuT3KItRWBHgrV8dzt2nZnehLCRfzhNSfRpQcpA
 sw9J2Cxfi7w7OeSm+ZZjw8wHXsxXHgV54SK08f53ibq9YFCXtmkPZhJAKcBojKxxEKclsLi7zqc
 7H20Z6ae
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b9adb4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=uu3TWbf2t8eLHAi7i90A:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_05,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_081814_293259_2E56F410 
X-CRM114-Status: GOOD (  19.86  )
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

On 8/22/25 11:20 PM, Rob Herring wrote:
> On Thu, Aug 07, 2025 at 06:33:19PM +0200, Konrad Dybcio wrote:
>> From: Neil Armstrong <neil.armstrong@linaro.org>
>>
>> The QMP USB3/DP Combo PHY can work in 3 modes:
>> - DisplayPort Only
>> - USB3 Only
>> - USB3 + DisplayPort Combo mode
>>
>> In order to switch between those modes, the PHY needs to receive
>> Type-C events, allow marking to the phy with the mode-switch
>> property in order to allow the PHY to Type-C events.
>>
>> Reference usb-switch.yaml as a simpler way to allow the mode-switch
>> property instead of duplicating the property definition.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml     | 7 +++----
>>  1 file changed, 3 insertions(+), 4 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> index 38ce04c35d945d0d8d319191c241920810ee9005..c8bc512df08b5694c8599f475de78679a4438449 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> @@ -73,10 +73,8 @@ properties:
>>      description:
>>        See include/dt-bindings/phy/phy-qcom-qmp.h
>>  
>> -  orientation-switch:
>> -    description:
>> -      Flag the PHY as possible handler of USB Type-C orientation switching
>> -    type: boolean
>> +  mode-switch: true
>> +  orientation-switch: true
>>  
>>    ports:
>>      $ref: /schemas/graph.yaml#/properties/ports
>> @@ -106,6 +104,7 @@ required:
>>    - "#phy-cells"
>>  
>>  allOf:
>> +  - $ref: /schemas/usb/usb-switch.yaml#
> 
> As reported already in this thread, this adds a crap load of warnings as 
> it makes ports or port required. Sigh. Can QCom folks pay more attention 
> to this please. Every cycle the number goes up though that's often 
> temporary because there's no coordination of taking .dts files after 
> bindings. But generally, progress on QCom warnings has stalled.
> 
> Here's the top (bottom?) platforms in arm64. The first number is 
> total warnings. The 2nd number is unique warnings (to remove inflated 
> numbers due to lots of boards per SoC).

I'm sorry this happened, Rob.

I assumed this was a solved problem as I picked up this series, but
of course not testing always ends up biting..

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
