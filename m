Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74B01E77188
	for <linux-phy@archiver.kernel.org>; Fri, 20 Dec 2024 09:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8pnVirXdzwGW35011YOiboFjtHkQlSZUuP7ZomSq3Y=; b=kcDhb83rYzHuKt
	/RZNChHxE9g4NBK+SCE1r9rQHIephF+R88bADka554IKowhIxmkGucwjK30TwGnq7ltbSlENWTTO7
	LGTL+eX+Ca4zvgdEB8cixyOVg1tPLpU0C5ATvm6k8+VplunMN2kF25ScXkHZeONf5f3kbHwIT2iGA
	+6XE4+B9UmLhiv4xPMGLvFywJO+kzfa6sWL6WH/xQEp6fq5EEBXLgTkVuutrgXR/NPrro+awCTHiq
	omQujGJoaRGgSUHdozv0KR7nA7xu8u65Am2NMo9sKB6QWGvT74kH4LDla5cMPRNlE7hoKvp34/dgK
	S5ZBC0kLkcX9oACeUr7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOZcn-00000004SyZ-0mat;
	Fri, 20 Dec 2024 09:48:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOZck-00000004SxW-0xsJ
	for linux-phy@lists.infradead.org;
	Fri, 20 Dec 2024 09:48:47 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BK5eh2K005017
	for <linux-phy@lists.infradead.org>; Fri, 20 Dec 2024 09:48:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rVUKpvjNKYGH0d1LGTP6M2rnV3QaECUxpVoVBYXGfy8=; b=TnXttQgSCor7rJoe
	ZTBEftsaaXQeMsPvYEG6HAS4ZywCAggRUc0fj9YqhkUyaAK5MEE17GJItr7P8s+m
	oS95fkfGpPDhHflfjcPq+3lvpJVQL15DY3U/8YlscKeqKiGpdeDOOcL19dCOADRM
	cx+y4aw6AqTuRW0jdE7Mb715dmGANGaBDFjB6mOq8gJnXDMHsNDjJCMJAGR6gcF2
	bKtVe6IdhtdgVIlGrz2CdQoOT2Gtn//PsNZW2LHNQuCadDIpDXf8qcJtYezBSZhA
	a6lGQMpiSAvwu2AoEVzyIIs7KtTdwa/Y5FdTkz+Gq8+APwEacS7Q6xmKafS/U3pN
	fLjmMA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n2n5rn8d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 20 Dec 2024 09:48:45 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d8824c96cdso5240836d6.2
        for <linux-phy@lists.infradead.org>; Fri, 20 Dec 2024 01:48:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734688124; x=1735292924;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rVUKpvjNKYGH0d1LGTP6M2rnV3QaECUxpVoVBYXGfy8=;
        b=J+SZeTXaPSz1jMj6lDYjH2L6ytttv9/ddG0LSONqU9Rbo8H8F+H8yG+kPop/SoBT8f
         C73qMRIPi6kZErs8bpUeXBCKL8/n5J+HDSg8fEWBN75SA13XfCN8RzUylmx1bB0L9kaB
         SaYnMHw8wk7a+Cjah46LDq0ixi0ZYQ2SUBgbNFiJHwkcv/KcYUzTGgIA87whqtyuCkyk
         94csD9KkMuRtuZUgQLUwrCGb/pVnSSol7iuyZixzfjMQ4HBnZZqCOzuCoGuaqd4b7uwU
         Fgm7u4av/BDZC7wEbcLZnYzilRZv5bDCqVVhRtvLQMtUV4zGm38qhXuMScpjXUQXxpu2
         AiPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUApjiDMr/mrumuyaMSjkpwtn6ND+G/tpXkVJ3YB8BemTKSbeqZU1WgkV6fQgX0EoCKKGxZxjG+yDw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxQINXiY01Ylu3Jjz305UHDLdr4fbB8uaY01AOW55PNY+efrqDk
	//Ej0J9WrRe58PvUMqXkEDfUQpyyASVvM1inz3tNpkSd/d/LKe8BFJOK5nG5dwNmdDSAylhRSsL
	95+AQit/IYNr/MUuzLuqrGLMs82jhYMPk3PbTzr9698FisyGeXDAHCfwkaKLGLJv0
X-Gm-Gg: ASbGncuIihJyG+m9x/6+r8K1BH3y87IX4xr0wK/FN74bHgUcZZCjDpuxBYiOfeAYpEw
	IPrOXKJZ8UkEZAL69OMa020NBAnjE0r9wQDVk5VbiVBRz5LJ/Yd7HtHpE0aUW9siX9TF/Q1D7CP
	2wd7wm/da2X5CqPlwNK6oCvHPKCQEdBMSrmt0MPneYLneGbf5ju6z6fkz+soWWj+4dq8HEQ9hwU
	tY2BnVx3u2NGJCj15bxnSdQZdakhqYUZ0U8Jt719h3h+m7kv9/tg3JdrA3v13nLdVE4koAZt0Fx
	bWuqeDCeBo4ovNeQ/FuFrH6UUPY97hl9sSk=
X-Received: by 2002:ac8:7c56:0:b0:467:6379:8d2f with SMTP id d75a77b69052e-46a4a9a3aa9mr14362461cf.15.1734688123784;
        Fri, 20 Dec 2024 01:48:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHrggBl9ERFYcbqyZk1aIf/jeZFXwznISS8GkbxVKTIw+S69nHydV8TNBfU9FuwstBBRIOaUQ==
X-Received: by 2002:ac8:7c56:0:b0:467:6379:8d2f with SMTP id d75a77b69052e-46a4a9a3aa9mr14362341cf.15.1734688123444;
        Fri, 20 Dec 2024 01:48:43 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f011efdsm156471866b.134.2024.12.20.01.48.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 01:48:42 -0800 (PST)
Message-ID: <71d2135f-664a-465d-bc1f-051cc07c8537@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 10:48:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: ipq5424: Add PCIe PHYs and
 controller nodes
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, bhelgaas@google.com,
        lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
 <20241213134950.234946-4-quic_mmanikan@quicinc.com>
 <69dffe54-939d-47c3-b951-4a4dea11eae0@oss.qualcomm.com>
 <08fbde92-a827-4270-a143-cca56a274e6c@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <08fbde92-a827-4270-a143-cca56a274e6c@quicinc.com>
X-Proofpoint-ORIG-GUID: CIr7A7LUzJWJAeVRY5QRnddNBv7W4A32
X-Proofpoint-GUID: CIr7A7LUzJWJAeVRY5QRnddNBv7W4A32
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 mlxscore=0 mlxlogscore=999 adultscore=0 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_014846_281295_8DAE1ADE 
X-CRM114-Status: GOOD (  14.51  )
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

On 20.12.2024 7:42 AM, Manikanta Mylavarapu wrote:
> 
> 
> On 12/13/2024 8:36 PM, Konrad Dybcio wrote:
>> On 13.12.2024 2:49 PM, Manikanta Mylavarapu wrote:
>>> Add PCIe0, PCIe1, PCIe2, PCIe3 (and corresponding PHY) devices
>>> found on IPQ5424 platform. The PCIe0 & PCIe1 are 1-lane Gen3
>>> host whereas PCIe2 & PCIe3 are 2-lane Gen3 host.
>>>
>>> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
>>> ---

[...]

>>>  		tlmm: pinctrl@1000000 {
>>>  			compatible = "qcom,ipq5424-tlmm";
>>> @@ -168,11 +261,11 @@ gcc: clock-controller@1800000 {
>>>  			reg = <0 0x01800000 0 0x40000>;
>>>  			clocks = <&xo_board>,
>>>  				 <&sleep_clk>,
>>> +				 <&pcie0_phy>,
>>> +				 <&pcie1_phy>,
>>>  				 <0>,
>>
>> This leftover zero needs to be removed too, currently the wrong
>> clocks are used as parents
>>
> 
> Hi Konrad,
> 
> The '<0>' entry is for "USB PCIE wrapper pipe clock source".
> And, will update the pcie entries as follows
> 	<&pcie0_phy GCC_PCIE0_PIPE_CLK>
> 	<&pcie1_phy GCC_PCIE1_PIPE_CLK>
> 	<&pcie2_phy GCC_PCIE2_PIPE_CLK>
> 	<&pcie3_phy GCC_PCIE3_PIPE_CLK>
> 
> Please correct me if i am wrong.

The order of these is fixed by the first enum in
drivers/clk/qcom/gcc-ipq5424.c. The <0> entry must be at the end of
the clocks list for it to do what you want it to.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
