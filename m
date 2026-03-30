Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62919FB3CEB
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 09:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pbo5e8qUdWKn2GMyqde5WcDimizxtuJXdD2VhBK6Obc=; b=0IQk/3tcv/K7M4
	/LhV/a9Tj7gTkjz/XDd7foVXv7JW4gxtpn4W9BpsPbATNMFUbrIdkdeuSHAhZ37VcdOSDIHD8zBDC
	HN/hjGJBuVbWD11GvDgj7+2Q+YNcbidDSl6xEZQTz8s3tLU2BCu24T9xztWI76SOHHmyzXDLlNUYc
	XeueFpBVj7QTNMo7KH6y0UtPLemUfJWVCqhDP/JB3ubteCW7kzIlOwECYpQ6sxc2MV8F0sqXB7ThI
	8QLn4N94fuCFNcdJrSDEoW6YMIXBSiFPE81rcntGUF92b3sSQZrRups9Xhedo0oUj0dHIy8kJgvgn
	lvNmfIlHVeKMJVRq/PgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w79Cx-0000000AzaS-47s4;
	Mon, 30 Mar 2026 09:46:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w79Cv-0000000AzZx-28AN
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 09:46:54 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62U7ipA33305051
	for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 09:46:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8CWaXIOeFQ0RWw9uWV4g22gl2iDlz1fpndhsnQ8mBj8=; b=R+Rhv2IxvWE0E9Tn
	48JBIYbPLP0TS2CQ1kJfkFZwxJmO8sTDnIneTNSzj6y+RtDft31cP++mWYZWJjrR
	KNorVcX5Ecw3I2PCbZG1VJGTAST230BO3TkzXalSfYe0HtNsWtkqfGir8FbXH3MR
	OiIIF/90A4c9NgS6xJJZ3fD82FEaA9mBMHI7Ve0aWneO/CkkzuO+8In4NwEKg7UG
	H3RJu8vtxb15QYEvjMZ454xnmZoqIehzyOYJ1cPPhTYX/cPwk/iNWj4iI1kNgLCO
	dMs2Bg6DghdQSke7NZvSjOc/PUFUNtbUYtm88K1smAxEzoQwmIjxRc2Zgc6pAuYV
	coAs5w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d6ufmkmj7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 09:46:51 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb39de5c54so167361685a.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 02:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774864010; x=1775468810; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8CWaXIOeFQ0RWw9uWV4g22gl2iDlz1fpndhsnQ8mBj8=;
        b=EdzFWpe+JMpUzeSwikFSeJTEjr3x8arjatt8AZyYvB8rFNzwWd+y22skwHZjd85nHO
         lEbWfm9UOWjOg8mK5fNAN29DOVYpQnOfWKWC5R847KzKzEhTS40GfqtmHcJCyn0yTbHP
         jOflGNdDoAmQe0n7QV7t9ZQ0Qlm1rJUgctU+TTebwTjxT1yuSNNRBCT3Gd9T4yF/Rjkd
         RLb30cDqwlrKLVglSILnU9J+rIGsfXdXnDw6SAyC0jNlqXlpITRqWEswNWKUgS6kBO8G
         eHxSKyN+/SmC6Q48be5Tnte2sr+gHeZxVldnbrDs5uuIc8+Aucntzu+qca4cvzn++YbN
         6q/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774864010; x=1775468810;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8CWaXIOeFQ0RWw9uWV4g22gl2iDlz1fpndhsnQ8mBj8=;
        b=exbWX7SmHB4cAIY3qgkEqId9ay/ss0lSKMb4XYQiUOfut6lzH1Vjq4ogn+A1N3Z8av
         5V6awtFvRHyqcFHh+Mm8Wkh8WO2ZgKBTtNHoB9ucmYVMUTfeRqde6KANkNwOYg64v6qM
         dy4gXbjXbEPVgW8erKWdS83Bp53yeFLJewLwSrpUegCWzZtvfcBIu2xk4WuszIhgZj1w
         OSZDGZhyX13yL91o+WK/rFjH3SPCnqhWvOU0YBtYqnP+LjrLwhpOLVmoYufDsRyqGcnU
         n2KslbmEtK8DXz7aXqXicQVKfwgHtjlsowRIeo4LOLNOosCcD2yFwCmSBI/qY1ifKnvg
         RFtw==
X-Forwarded-Encrypted: i=1; AJvYcCVXKQFki2St9inuTfE4Vz29ahJrB/V8+TNI3aY5DuJ/APVY4sQg2B+68aSjpUlW2DlNbq9Lggzp3Cg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyw4DXa6Tksvla/CZzuUDPqhcQTebPMQOqyai9Ya4FMXeKAW2vk
	bd+2d8IMcEbh88BkS1xtCnOKRgRT7DbIuVvfyOmK29d1XbpInRcWpKk8M2MWUtTaK7roRDHAHVy
	qsa2FS7Tr8G80S76VfLEQe1Rrrger2qhbaVOMurhSszckApLqCYlcgd6GAbv3X4/mzx4JnUm9YB
	JT
X-Gm-Gg: ATEYQzznl3j+gMGfajml2nl0hhPspiQAfhRjjF+osvG20V7MSA5V2pC2i1t2AfZ/3tF
	EJOLwdJe9GUJ46u+7KlAKzyQB3c/dCWBGtrP08U/iK+R8mm98V6KHsm+GSpsKWXKjD9tEWQ5Hhb
	rxHbZBP+mH7qE0biQOgq89yDHqVLzLCVdxmKyjZb0p2njgQ1yPY3h34afPLN91mQO35pHopdJSK
	Nrhd8vMqZ2/B7CHTCyaf5f76jebJT8ZMORI4VLGuU3kWlljRxPiEg1mrb3KCCBEFHaTW+rUPpuk
	vu8uHixjQWNIXFaS97P6p2PyqMg/AMmO4dH0fa4gIzQzmio4+t9A9CrRbh8YNJudVf8gpfUBR28
	VAK35POhocfp3SdSLfI0hHLDZVctXZ3xfEW/Ocfo7k3BIbECBzc0UT+e+Vb+3sRxlrq02jWsLfQ
	TnLjo=
X-Received: by 2002:a05:620a:7109:b0:8cf:d441:c7c4 with SMTP id af79cd13be357-8d01c7f643cmr1077004785a.4.1774864010375;
        Mon, 30 Mar 2026 02:46:50 -0700 (PDT)
X-Received: by 2002:a05:620a:7109:b0:8cf:d441:c7c4 with SMTP id af79cd13be357-8d01c7f643cmr1077003085a.4.1774864009953;
        Mon, 30 Mar 2026 02:46:49 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-66b7340cae2sm2493762a12.11.2026.03.30.02.46.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2026 02:46:48 -0700 (PDT)
Message-ID: <8ac10933-0bf4-450b-a7b6-59731dfe4cd6@oss.qualcomm.com>
Date: Mon, 30 Mar 2026 11:46:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <VwCtoebjwHqLTucsrGruvBpedA4k-Melt7C0DA0aHSVld3PeotwZdtMUm3EFpvQyScrl6yejmLaK7bY1avT1zQ==@protonmail.internalid>
 <8ac55e5f-72ed-4331-bf42-92ccf97507dd@linaro.org>
 <5d7d5bf8-4420-4d75-b928-820bb9233e52@kernel.org>
 <CiKTMNVmEm3LXForJ4o-DjuXFxbKkiaLtqbFPYyA0rC-Ij0hJPmCw_LUixA-dZe2douOwy2Jxizna8qBRvUjPw==@protonmail.internalid>
 <2houacfdkozzk35ky5xtwe3utkvyx4lroyrhvibb5lg6lad2g6@56akvtqigaep>
 <556a6736-472d-4551-b5df-15e809e7e20e@kernel.org>
 <a44a0f58-11cd-4aa4-962f-a5b153e24d82@linaro.org>
 <vcj9b-49PycEnk8KeGcgXAaN09KfYZnW7g0LayiEPie9p-4krmMDfNO6Nx4DLgwoKHdKJughl7zoxvmKVkqOag==@protonmail.internalid>
 <qr6ubhjlzxenx7rswwkfu2nkc7ci5hw5tynpipa76bqsibbd3d@rw5d55vjnkbe>
 <0322e0b3-bce8-4415-90b2-d14445986e23@kernel.org>
 <r767islbwq2a3m6rf4wvl4hxzafdsw74jhev7jjz665kfymn56@vcn4p233n74f>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <r767islbwq2a3m6rf4wvl4hxzafdsw74jhev7jjz665kfymn56@vcn4p233n74f>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMwMDA3NiBTYWx0ZWRfXzmyZU9M9MaCd
 s9wwKUdEkrovr+7JzUbQthr11SFmM/qURb+4wFcEnlyGcU1ary3YspCq70dfydSWn9AbpTfK9TI
 tcf2L6IrLeK2rSMNmtgS/rr6sdfTSfSoN2e4oZs2RW9J9HULHwvja8coKQ5y+faLUr8Wzs5PEUd
 wie8dQKogTeU7R9jQTlPEjtUa9L1X8GdsrIJVkkI412zxEtr6tzL93NYRb0K+oR2oO3ZuLEqyC6
 wKpp1b40JZr5Gk8TB8R8QTf2x0QobAJUv2wpJYPm+tzkIJWv/ptYQGfiJPy5z9NWEYax7DbXBCE
 tcqR0VCh9RAjKr9Gm/PpSOxYXxbTq9Pv3tczOzH4k9fSYHVktU3LjAMvFcjfgk6GWAzYfj3jMfA
 oTCfM9OQE4E9j9oBMviZuqj4lvtobEerrbTH6ecD3+aQQz7dmJkWqSUQBGijBZTnJd+nqOO7Qf8
 TntRMiga5euRwiOPGuA==
X-Authority-Analysis: v=2.4 cv=aOT9aL9m c=1 sm=1 tr=0 ts=69ca468b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=1V8kSKjNecEwgvKTtA8A:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 8ZO55gkfP7XWPyuWm__BKvADEW09f3x9
X-Proofpoint-GUID: 8ZO55gkfP7XWPyuWm__BKvADEW09f3x9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-29_05,2026-03-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 clxscore=1015 suspectscore=0 adultscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603300076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_024653_554477_681786FB 
X-CRM114-Status: GOOD (  21.31  )
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

On 3/29/26 12:54 PM, Dmitry Baryshkov wrote:
> On Fri, Mar 27, 2026 at 11:40:51PM +0000, Bryan O'Donoghue wrote:
>> On 27/03/2026 23:23, Dmitry Baryshkov wrote:
>>> On Sat, Mar 28, 2026 at 01:12:22AM +0200, Vladimir Zapolskiy wrote:
>>>> On 3/28/26 00:29, Bryan O'Donoghue wrote:
>>>>> On 27/03/2026 20:51, Dmitry Baryshkov wrote:
>>>>>>> That's just not true. If you read the camx source code you can see
>>>>>>> split/combo mode 2+1 1+1 data/clock mode requires special programming of the
>>>>>>> PHY to support.
>>>>>> This needs to be identified from the data-lanes / clock-lanes topology.
>>>>>> And once you do that, there would be (probably) no difference in the
>>>>>> hardware definition.
>>>>>>
>>>>>>
>>>>>> In other words, I'd also ask to drop this mode from the DT. This
>>>>>> infromation can and should be deduced from other, already-defined
>>>>>> properties.
>>>>>
>>>>> It still needs to be communicated to the PHY from the controller,
>>>>> however that is not a problem I am trying to solve now.
>>>>>
>>>>> If I can't get consensus for PHY_QCOM_CSI2_MODE_SPLIT_DPHY then so be it.
>>>>>
>>>>> I'll aim for DPHY only and we can come back to this topic when someone
>>>>> actually tries to enable it.
>>>>>
>>>>
>>>> DPHY may be the only supported phy type in the driver, it does not matter
>>>> at this point, however it's totally essential to cover the called by you
>>>> 'split mode' right from the beginning in the renewed device tree binding
>>>> descriptions of CAMSS IPs to progress further.
>>>
>>> Okay. How would we describe that there are two sensors connected to the
>>> single PHY anyway? How would it be described with the current bindings?
>>>
>>> --
>>> With best wishes
>>> Dmitry
>>
>> Assuming you add endpoints to the PHY i.e. that is what Neil appears to be
>> asking for and I personally am _fine_ with that, then it should just be
>>
>> port@0
>> port@1
>>
>> if port@1 exists, you know you are in split-phy mode.
>>
>> Its actually straight forward enough, really. To be clear though I can write
>> that yaml - the _most_ support I'm willing to put into the PHY code is to
>> detect the port@1 and say "nope not supported yet", since like CPHY its not.
> 
> SGTM. But let's define the schema for those usecases.

Let's perhaps also add a short example for both a single- and dual-sensor
cases in the YAML, even if there's no plans to support the latter
configuration now

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
