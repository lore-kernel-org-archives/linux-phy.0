Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C10AC5AE59
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 11:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3w7YYfwLJjtdR7eguZiktaXtvgYn8Ta9ij1C6Ipc1Q4=; b=qoDWyTDk/luL+b
	Jl7yCuFTIlw1NVYhzFEQ3uWY7LwhyOJZfhR/P5VWDKEGm9+p6v2zlvlbXo+qffrzAdfA97h8abCDl
	+VogTz1v4tx9m89nCeJ+0ESxfqb+6SJZ4Zx4OL2QGDK6Erbdza8x4NOFHayMBuVI9RDg61POiEAnz
	RsYEksCgqqsiwmdkhfOc2iE0dbMHqGKO3L0j6OxMnLryDXXAzFGHlvHeL7G8WIaLngVUNACvrf2hP
	bM7RMb/HoGWtaeS0Ia3YOrS6V3uQnrDAGIjmP9c/I2IZyIRnH2IeDbLaSVlQCphqJrZgnedNgOHdG
	TLaZnvBi+YT4stnzTT7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEtl-0000000CyH1-45wX;
	Wed, 28 May 2025 11:24:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEru-0000000Cy57-1LUn
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 11:22:47 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S5xXkK002206
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 11:22:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PXrF3chhlKsYPqdRDHwS0A8uxmZl7PCZMAnk+l3O8cw=; b=ji1J4vDPrznP7Pqv
	1zdDmfOmUi/OK7mmMDtOliQ8DG1CDqh6JpJpI7y0dKCkKdBTh+6Dt5xRaB2LpzuE
	6W12J5C/vCuUxVRPh/oPeTZZjXcm+2zG7PpjH8gTObT5CIF5p5hEqLweVlbweGUC
	8o2W759pXLSm1/gpVO01S0fnlx29gM78ddfjxBgabICF7w1NLYtY+K3vC3m6uvLo
	vjaBqZxgRSWZqIcfTUhrKKX39+cLV5j8h3d/dGwLls4RvZZYPnOIdFJaNg+GyfAX
	NgeMTerok3qxMHyDdNPSX7cCYNPs2O2sf7Eez4TRQctN5EgC/g/7kpgE9bLBd2EZ
	R/zT7g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46wavkuta9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 11:22:45 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7ceec331273so136343885a.3
        for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 04:22:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748431364; x=1749036164;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PXrF3chhlKsYPqdRDHwS0A8uxmZl7PCZMAnk+l3O8cw=;
        b=q2kwTk49ymmpZn/IGsQqfMyg1GYnXjtMfEP1n+/FxYw5eJxTfAYPzY6H7fV/VKlk5I
         5qvX3vQ9YyXTcn+qG4eunoa7bmlUb7hUx1ch4puLXfzvdTXSAZOVg25eHxfutj6CiFVq
         HFmvWksREnfu3IOvMAmCSo0N4FMYyCdYmV7w3e2YYSYMbOcwaWERE8c696nQZleNxEFK
         Tni3gGLKnaXlWWvriXeVApRG4V44xHLu5IyQAgJDXc4Z4vrtKnDfSZcsUpKWZQY/72x3
         eGxXo3PV19j2Khz7thIA63dQE8E7PI8LRwW2hTqVUG7WVk4fp7YB3wkEGSj2kWj1C7xx
         VrKg==
X-Forwarded-Encrypted: i=1; AJvYcCX7TDHPybXelxqhXilEwsiq/jERXfvZitUdWaeluVBoccRa1i/u+gYO81cXLBZiVCViza4vtjyZ11g=@lists.infradead.org
X-Gm-Message-State: AOJu0YwSvF15ISumshoSO/fFwZFVmgiapd1tstLpnK2YbajruMPguxUC
	pYkkDRDRbFmRniVF+pTCoVHJOsh7gxDSiuSYrR6GJixg7qSPomSEIM0qS+MqFqarZKsi+rn7fRs
	A3GiyPjuPZqj5ZUzp5iwCQDHeFkvk7IWMENI3ssMsUnX9p4N4lkEypCZ4Q9kZfYg/YPV4
X-Gm-Gg: ASbGncv5adzbbo0KmRN1I9jcvhonHjNFqYq+PXySfZ0s7IDpQBLEGrsR3vt2ct2F+J2
	g1Y8VV2Ejc8fmK3ABEroVtVJUHmBBTRHUgu9+Azygv8FX5JlsVY40rG+LWfLiOA1t0D200/4Jbl
	Df2i1qWZW2SVANXyF5yl1wzc8bbviMiZ29mhTyoXWE93XTSVV+udXm+DX9+iL8z3DuQ/R7aH4Cs
	3gDTjzjTLjfzzrksSVG6SYRB42trkRQX4N38+eCxFhNs49nNibQ6D+n3OykUtnndl5VCrX/G5Ro
	8vd/KETxpgobfdAD1NzljMJaZk0WWwiveTSU9StKP9/QaYKh4Tvv8uvo3Gzf0Y1wUw==
X-Received: by 2002:a05:620a:2710:b0:7ca:e392:2a1b with SMTP id af79cd13be357-7cf5374ae78mr110203385a.10.1748431364553;
        Wed, 28 May 2025 04:22:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGoL3mKSALNU9U5rUvH7D3DgExdg+X+00mZ1LS8ZpHat+MX4uUZuY9EFAKe+em8TE91JP4dIQ==
X-Received: by 2002:a05:620a:2710:b0:7ca:e392:2a1b with SMTP id af79cd13be357-7cf5374ae78mr110201785a.10.1748431363985;
        Wed, 28 May 2025 04:22:43 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad8a1b47a16sm91600666b.144.2025.05.28.04.22.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 May 2025 04:22:43 -0700 (PDT)
Message-ID: <07aa740a-72f1-4d7a-aefc-437d52b8dac8@oss.qualcomm.com>
Date: Wed, 28 May 2025 13:22:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <20250527-topic-4ln_dp_respin-v3-5-f9a0763ec289@oss.qualcomm.com>
 <itmvwhcf37bmnpadcyc7kdt7wx3eljyjwyv64s24zwhbr2e45g@76uzcpjqzx22>
 <7f464eb7-469c-4350-a43a-3b99394ad689@oss.qualcomm.com>
 <7icpna4l7z63gs52oa5lqf35puib66wxxmqqul6ezdkhuziaqi@mvkf73zz2iyj>
 <8692f79f-142c-43e6-9e09-7ed4ce590b87@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <8692f79f-142c-43e6-9e09-7ed4ce590b87@oss.qualcomm.com>
X-Proofpoint-GUID: 4FXZEifhJRLmWa59rOw1m8Vyd_lJwGDj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDA5OSBTYWx0ZWRfX7XzQ+RgvyNOi
 xIdtTE1QhIzWqXp+soHgUjaQTWJ3xS/tS9sC6VMoC8owCxYbQ32JnpewVinkB8v/lP7A4JDi4dv
 F7pvtwZfzHOepLbQwHX368VS5hLQKKTFIM3tT+k6NdBmzYbioqJA3ekXkLXuh8+EmavlpaHupcd
 +WTlCE0li0IFhW2E2ihCN/H+L9Ik03zBK9LVnEkHSTO126UTywk0HziHLzYtlxm9ZgBb/cg2CSG
 pykAmSCh86wG9NIU4QvFwlxz3AuxKkDQXjQIt1yimCYdXXSRvnvbdnIVbWilnznlSl7Rql1oZUj
 tTuHy0E3XVslx53N0QmNV+p6BFEByNWYPEFvgfr4m8coG4TIcK42xWPM+zVTt05yBZnbXatOH5G
 8j7F2iQ0x+n+rkCXefXPtq7mEogwm4fmfEixI/Hp6zZ78K7nsy07w2K3C4wQW2rphKq7QdFh
X-Authority-Analysis: v=2.4 cv=fMk53Yae c=1 sm=1 tr=0 ts=6836f205 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=WE4J2M1y9a7QUu_BFKwA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 4FXZEifhJRLmWa59rOw1m8Vyd_lJwGDj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 phishscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=925 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_042246_380403_FC26E29E 
X-CRM114-Status: GOOD (  17.48  )
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

On 5/28/25 1:21 PM, Konrad Dybcio wrote:
> On 5/28/25 10:58 AM, Dmitry Baryshkov wrote:
>> On Wed, May 28, 2025 at 12:22:01AM +0200, Konrad Dybcio wrote:
>>> On 5/27/25 11:55 PM, Dmitry Baryshkov wrote:
>>>> On Tue, May 27, 2025 at 10:40:07PM +0200, Konrad Dybcio wrote:
>>>>> From: Neil Armstrong <neil.armstrong@linaro.org>
>>>>>
>>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>>
>>>>> The DisplayPort phy should be left enabled if is still powered on
>>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>>> PHY is not powered off.
>>>>>
>>>>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
>>>>> will be set in between of USB-Only, Combo and DisplayPort Only so
>>>>> this will leave enough time to the DRM DisplayPort controller to
>>>>> turn of the DisplayPort PHY.
>>>>>
>>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>>> [konrad: renaming, rewording, bug fixes]
>>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>> ---
>>>
>>> [...]
>>>
>>>>> +	} else {
>>>>> +		/* Fall back to USB3+DP mode if we're not sure it's strictly USB3-only */
>>>>
>>>> Why? if the SID is not DP, then there can't be a DP stream.
>>>>
>>>>> +		if (state->mode == TYPEC_MODE_USB3 || state->mode == TYPEC_STATE_USB)
>>>>> +			new_mode = QMPPHY_MODE_USB3_ONLY;
>>>>> +		else
>>>>> +			new_mode = QMPPHY_MODE_USB3DP;
>>>
>>> To be honest I don't really know.. Neil chose to do that, but I don't
>>> think there's a strict requirement.. Should we default to 4ln-USB3?
>>
>> Yes, QMPPHY_MODE_USB3_ONLY. Nit: there is no 4ln-USB3 (it is a special
>> mode). We handle 2ln-USB3 only.
> 
> Right, I double checked and we support SS

I clicked ctrl-z one too many times - I meant SS+ 10Gbps

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
