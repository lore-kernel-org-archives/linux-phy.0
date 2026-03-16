Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D8E7F4644A
	for <linux-phy@archiver.kernel.org>; Mon, 16 Mar 2026 10:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ljesouXWcsPLS+Y1H2mdrcnmY6a4GJDDwXXs8g6QCck=; b=zAnUOB3QB9dYLc
	aoX9JvE204PsiL4fT87ZWaaluthalgL8sbo/OxEFZOCfMvBs6lgmkeer021PpmTRC9q/AItFT/8yF
	ymh8CM7YvlcTHg6bd92m1SrM2vT/sZLx+i1/am9IpM8Menfz2bCk0i8VA+E1JKdcbLJdCW4bUasxQ
	4bU0FIpsCPKvRUX9FoDiFwjcyUt7cddxvPoW/lrl5D2NuyAce7+FTS/jYVokMtjGL396+0pC9e1yu
	5doMvaQBoLEZLQ0riFtM4xrZqVctfU7+XVwfJCylNaREnAlj1osk/MGGwoPbAqAHBbSmNaeAtxu9Q
	3ShWEjYFwXOXKMTWqNMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w25WD-00000003lvF-3uad;
	Mon, 16 Mar 2026 10:49:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w25WB-00000003luj-4AIF
	for linux-phy@lists.infradead.org;
	Mon, 16 Mar 2026 10:49:53 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64t1I539830
	for <linux-phy@lists.infradead.org>; Mon, 16 Mar 2026 10:49:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1hThaOiGGglNbfqGc3fLwjm954j6A3isNL94t100F60=; b=MuFdxoCKfRrXYMvN
	TP4BeSW3bwS1ZO+JlUjyXol9xKcEQhjpDtWCFHAZm425QP1OVAJ3QtbV0R/sxSFD
	d8vdYAwhE1GNlWxqFqaHyMw+SNPfX+HJZcX8fHCz3k+ElifL/dy7gma9e952PGRw
	A+nqGv8LSIfn5kB9iNDyMkMIMxC0GwXsIw4aLew3mRMxy0bjn/ITOCFKgEOkRL7x
	oRVE8LFsLd5CJBwfCIaYhugJMGwgWGev3+n5aJlsJz9NtVVoQiagjzKAgyGDEbOA
	h2xFJk221mFR4h+xtla4hxcL3oTMdrxX6uLy0c3hQ0EzK7Dh/qK5WQ+n0O9m0ivP
	HqpzQQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyy5na5m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Mar 2026 10:49:50 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd97debc51so349140985a.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Mar 2026 03:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773658189; x=1774262989; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1hThaOiGGglNbfqGc3fLwjm954j6A3isNL94t100F60=;
        b=dhPzOQcPqT+QLVbf2iI9K9OWVgr4+EcveGSU+sSSNLwwygGNKgek1IQxNEt2cPnM2l
         R0qNk1/BAkba2W+U+Zv/5Fx27uRYfvhCiIjem8aHVaU4xqgqlvNNKcPnY1dgfKanYoag
         40Ybyrzgkam0wr59uZtcwxQS89fx2fxwEzNLoiPS8WGpKFCYLyW+foVX9+3l/mgsR6C4
         U56/SVMX/Dz4kaWAobcL4poeqrwMfPE3V7ad1sH8IC3PSfpxdW/uiiJAUVTHziQM2gbk
         6vJGP43Z/HJ/eOVpG5+S0rw6AGlFJuq6fQWWCk7k69aZj/j7ctslfshQogGIb/RyUd7J
         XgHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773658189; x=1774262989;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1hThaOiGGglNbfqGc3fLwjm954j6A3isNL94t100F60=;
        b=tZIkF133JX2OtJOTjR613M45NZX1ZRxkbiMb7aV/BK//GyrbmNGvJbqUBMOjrtgk4f
         tE5rzzZ8JOmzg6Uq0AhjmR9C5wMCu755GSsJ8v4cbBdvnO9WIpwZFSwE0wblFMtmmTXY
         gZJqxOCf+Pq7zQ/XkVRPmUt+bAmNxT0qlNXwlX74GCQEEthiDoilinH/uGDnlVkL41Yu
         dMZIwPhGUTZne4pw3VqlHvcReFqcK35pyExgJ5AyRvs4OduReKUHsh1M8JRgO4fu1MxQ
         zDCuNjbJSerX4ETcMcHskzqt/YUssThix2O61jum4hN/jrWX+fEaY50kqlVsOxFqqnUr
         KrFA==
X-Forwarded-Encrypted: i=1; AJvYcCVWYp7gqrSTCj0YUe4WriiLt8y+B5iQ9LR0ppfSwp5fQDCdTc7GA/uhwqN2JbhpnXmDprW8azyIx7E=@lists.infradead.org
X-Gm-Message-State: AOJu0YysVV6+Mub+BfEe35Z41KMwv182jT80cBtq3yNf51Ik2ZKKo/nV
	2B6yeQPUqp684iGlpL4pG/v8I/yTkESMwCIuunLY8041rpDPQ8FHKE9THreREogSig/Xm6S++ie
	YOxuJlXeZ8/geaJ27WT3fvuD69Ph6PxAPHfslSzuO0YINJJkCUVMecuCG9Y9NqwKvkCcA
X-Gm-Gg: ATEYQzxTjYUISZcCWatNO2g5n0mCSWHtnoJjxn2okg8H2NZWjvbO2gqVe3NRDZf+vv+
	F/h7cjS+WEKx0+LDLv1cYQ04JPtHqIkUzuc9LrVumPr7zw0RLo0Cg20qCgD6pRL4l11KiYfZ8nA
	ji/Z9GdAOFqBvKAfoJrzXEQJarfiDfsMeXx7Aoi6FkAKrScjb5GMYEl9WGWc4q5v/TqP50oAu/G
	uD+WVd/M/UaIoyqwRT/TtfsjSPyX/yQNNIcjvhUdwe6mOKixlbLuWgf4xQcsdFVAeAMQHc8gVe3
	jLBjcqqe00a8o05/mQCQG3LBdMfvAITQ/jKo6Z/WxiUZh55JzjEvQIe0lUNoIkFXtJyg/AooG+j
	E+8UtQCRFEMJ6U8z1J+cWuxt1sbHXc0DAvqFEq6UiZWJ777ualETwiysrwI5vQxPbn2s2b4Eqjb
	QEqJs=
X-Received: by 2002:a05:620a:444d:b0:8c6:a719:d16f with SMTP id af79cd13be357-8cdb5a83cfdmr1274075685a.4.1773658189641;
        Mon, 16 Mar 2026 03:49:49 -0700 (PDT)
X-Received: by 2002:a05:620a:444d:b0:8c6:a719:d16f with SMTP id af79cd13be357-8cdb5a83cfdmr1274073785a.4.1773658189153;
        Mon, 16 Mar 2026 03:49:49 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cf02b14sm542653166b.51.2026.03.16.03.49.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 03:49:48 -0700 (PDT)
Message-ID: <a685b880-0239-4804-adeb-c63204a91142@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 11:49:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue
 <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-1-90c09203888d@linaro.org>
 <c59f621f-23a0-4c60-b8e3-5a9082c816e2@linaro.org>
 <wjsnwdyoptrfbmdkqlcepzekfbccv6vsfop5wm37m56rtlevfk@jkbievryoo2j>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <wjsnwdyoptrfbmdkqlcepzekfbccv6vsfop5wm37m56rtlevfk@jkbievryoo2j>
X-Proofpoint-GUID: wLouYvdl_akjnEyI69WKXDd1UgZOjByq
X-Authority-Analysis: v=2.4 cv=QOxlhwLL c=1 sm=1 tr=0 ts=69b7e04e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=KKAkSRfTAAAA:8 a=Rh3If-h6mBuovSfaGQ4A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: wLouYvdl_akjnEyI69WKXDd1UgZOjByq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA4MiBTYWx0ZWRfXymuwmBalKVA7
 h9ks5gngr70v9fbHexkqs8EAsnaWUWZu5FkoIeHwzffkAv2Drdy43KPGsD1MzY09XFmVR8hp2sN
 60jxtPwc3/Nmmcvq/wMPkxrJwoDvN5Qq2rOnt4q5P0eFRThLfPyUp5B1ZWVuozdD+uKq9t0Z7Ft
 974cJLAXuQyRpB0YabuumXCll6lIfMJncu69b1wPAynVx9DE3lj1mb0SuzPierDGSeliCQCG8At
 O+qUg9foN4Ln+54jAkq3BxDq2TvhTKjT/V7JCy+3/bOGG5/7LwoeKrSXlsjBdvefxIKfJErR4YW
 YRzlV8zi519WyyDRFUyMLwyaaWpv29wDG5Tgws3y2/x7Cy7q7oHNwJfS4vCESa1gIpdF6oZvjzL
 p0vZXvS5I7z+2OchJ+ZWIKmxj5tnBKewQ9cuROTqQLCC12zqnscPYKQ7AzEydCRNlwt1KqC/E0h
 EocLD25Ub/ag6BsAFHA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_034952_083700_17647D49 
X-CRM114-Status: GOOD (  12.51  )
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

On 3/16/26 3:45 AM, Dmitry Baryshkov wrote:
> On Mon, Mar 16, 2026 at 03:58:14AM +0200, Vladimir Zapolskiy wrote:
>> On 3/16/26 01:52, Bryan O'Donoghue wrote:
>>> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
>>> PHY devices.
>>>
>>> The hardware can support both C-PHY and D-PHY modes. The CSIPHY devices
>>> have their own pinouts on the SoC as well as their own individual voltage
>>> rails.
>>>
>>> The need to model voltage rails on a per-PHY basis leads us to define
>>> CSIPHY devices as individual nodes.
>>>
>>> Two nice outcomes in terms of schema and DT arise from this change.
>>>
>>> 1. The ability to define on a per-PHY basis voltage rails.
>>> 2. The ability to require those voltage.
>>>
>>> We have had a complete bodge upstream for this where a single set of
>>> voltage rail for all CSIPHYs has been buried inside of CAMSS.
>>>
>>> Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
>>> CAMSS parlance, the CSIPHY devices should be individually modelled.
>>>
>>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> ---
>>>   .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 133 +++++++++++++++++++++
>>>   1 file changed, 133 insertions(+)
>>>
>>> +
>>> +  vdda-0p8-supply:
>>> +    description: Phandle to a 0.8V regulator supply to a PHY.
>>
>> On Hamoa the CSIPHY supply voltage is 0.88-0.92, so it is 0p9 rather than 0p8.
> 
> What is its name in the schematics or in the datasheet?

VDD_A_CSI_n_0P9

so vdda-0p9 seems fitting

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
