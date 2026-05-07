Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61F0CCD37A7
	for <linux-phy@archiver.kernel.org>; Thu,  7 May 2026 11:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjEd71vFcFRXCq1AhzP6++y1Brv7MpzLd6fUpQyN3DY=; b=XuxHFYXJ5bi/py
	OQAfi9sVLdRZPZ+C3PyBVNFTxdw0pQzUv4rJTAiynLna/JWoc3yBB8T1VxuaYjNGRi8nJs7Sw9V1S
	/4n6SCHuMK/WOsf1d81wjzbBMmrJ5YfdfMG8q0Vc1cO3a2AiEBTGchRgcf31ldPuxZ0Lr/ZJq2Zzd
	Ga6LQUHqXyBMcXrrAoaBIuNePOYIAYMZqCptkPr/+uyLYB8b7Qiz1UVh9dCPm84l3y0l+6VwjZn0o
	5LTohz1c9JzY+nDUFmPzeQ4T1BgItQoIIaL5cb0dTMbJmkt8ZnxV1UL+YrwhbhRWIkw8qj/jiF0lL
	tJ7e3VpUudZEnGuKWG9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKx34-00000003f4e-0RO4;
	Thu, 07 May 2026 11:37:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKx30-00000003ex9-3o2w
	for linux-phy@lists.infradead.org;
	Thu, 07 May 2026 11:37:44 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 647BTrd7682778
	for <linux-phy@lists.infradead.org>; Thu, 7 May 2026 11:37:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8JnRlnTWGXxyb1HgHFAalzj22t+riOMBzLLstI6x+Uo=; b=Zp96ixLFcPDZ8D4w
	ZUhgkINhacK9H8tgGL5YGvpe4aEFevF7MT87dGI3ECo84BJk55K6+X3LOj1CgdYT
	FQRAOg4wkDPiDotJfoQwz0DTD8DtsxpWsLBtV+1kzHeFI9Pp6htdJ5rnwuPeiILP
	lrVPpJmpg1+IfqBUcwdTHY9d4oihyMp/qg1fzlSzAhJMr486JXFtcOfb8UwWlmRn
	vqDNGbYnvwRZy+wgDUWBpb+rFdwoVFgI5wI8onJ7u0rJzJmi8WJ5J937Wg8IGmE7
	C5f4fHKQ81oykMCgY9is1OyCeFzQ94GRiQmd4EPghAZvCgezouqRnu0NFTS90KYi
	AFCnWg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e0mhasbyj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 07 May 2026 11:37:41 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-837cc5bc6deso506805b3a.3
        for <linux-phy@lists.infradead.org>; Thu, 07 May 2026 04:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778153861; x=1778758661; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8JnRlnTWGXxyb1HgHFAalzj22t+riOMBzLLstI6x+Uo=;
        b=BoP/EYgpXEfEwNhDjWBaKjfkQgJyax+H90s7ndTvmeEnej8puSSjJ7e91jA6mqfQsJ
         1J3PPWj+9MEeWVmvzuSPhDSOntQXGEpn0xuwu+c0MBZLhLFjR8T+DF9dE6/q3amSc43w
         otxMpT4T85L5b/pOYWcI1LxbevFwwe8Qovdu3zKcLmQAOG1ru1emhlPwNa8lVUikh1J0
         NjM9n9dr/SPU8Kt26UkNiRZ1kaKSuKYTcG3s6+soFCYMAIPIdIf40pLoDTRiinYgp2H5
         3NlS/ileRJJBib2a9HnwTBn5oOSa/CjsiL1tju7mDx8o2LU6kXTgGf8uYJVupXk9UXhY
         XBvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778153861; x=1778758661;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8JnRlnTWGXxyb1HgHFAalzj22t+riOMBzLLstI6x+Uo=;
        b=iY/FzacnrrNs7KpW4SVTWpIW5gWqZwBF+UFqK2UWGmfRv8hNZy8M1eaTpZ3PeGyDlN
         U4C7dlpooKcs8uOEoLYXxNl8wyb07CKWor10bKuskOQKWDttG/DsXZYM4b2Cv03KtLXa
         WOjU+S75KDXcss6XlROIma/BI5iIOb7QWhkpdttuY7QRtMz/ssp0DzmF+7VgH+pu9ykr
         PeoswjY1etef7yRFWaCppZsfXL6n8a71W0NbbkvNkV+qTQywMPAakbYuemFsRjy2HK0U
         lNU2eOVd5oSgtueOGY+t1NX6HAZH5WzD/RyWrFR9DsPCS8gVnu/wtzmssqOMbIuyNLse
         DVFQ==
X-Forwarded-Encrypted: i=1; AFNElJ+ZVIKE7Z+14oFe80dmHgKnT1DB7C4+b8NGCDW3TkQthN0mmmkxPiVqDZB88GB7TBshInEnvHbC1ZI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4IO0aLH974DHuOwVcikDXB/uIYBirpIDBMkqF3RBqxVcUeElN
	DyGO97kdEbl7A9D2AT2OosZvNorQFK7sTmh3rWXLEFnsfLAdnhyZcXeRB30fmGjTBarnbx7LgbS
	8Q+S3isciC465CBQJPeoBH+uyEho06ERn0qdInvDgdgpd9KOkeF4uOlYSMVcYhGT3LLup
X-Gm-Gg: AeBDieuFOT7xVkrUejiCTcKpVEtHUmEcO9vIp0HRkrJQ1Xz7vBceJjqpC5CB9hfxLu8
	9ZcXPnEXB745vZ4XSpgAntPm/2scfdM99O5/aUHPFvhRJ0kAIZsPtdAxBKcLAYJIym8rPQyVbBI
	kKC+7UYn2nGqPOQNd7Q8Or56oDG6Dm3jgP23Ak7EpPaKE4dzHVXCn4M6+qPa7mo1TaGqMEB66DW
	R3Hq3ks4NKgBEr40UkOq1upe6x4aljlt4w6zLF8GxkAJRdJ+4k440xNignHRUDmt4T6ZpUW9rgz
	Vc0/WyMTNpUzCj6FTFybHR8riIFxFAXjT/P6d5myA6ICMwzRXtD8dVvb45DYvyJXW9U30HSFiKW
	ahnqa/Y/puzPMG/kc2tbs1Ik7aSJ5sG2Xbme32jyDDOyN4cxz1HbXWQXMH2Fd0WInnWpZJ/1c6S
	rc9WARXkQQphl5CM8IacCPMCuh
X-Received: by 2002:aa7:88d6:0:b0:82a:6852:559e with SMTP id d2e1a72fcca58-83a5b8d8905mr7194238b3a.12.1778153860797;
        Thu, 07 May 2026 04:37:40 -0700 (PDT)
X-Received: by 2002:aa7:88d6:0:b0:82a:6852:559e with SMTP id d2e1a72fcca58-83a5b8d8905mr7194187b3a.12.1778153860232;
        Thu, 07 May 2026 04:37:40 -0700 (PDT)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83965d35b3bsm7936426b3a.24.2026.05.07.04.37.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2026 04:37:39 -0700 (PDT)
Message-ID: <d52c5039-9431-44ed-9f3b-bb00d03ae176@oss.qualcomm.com>
Date: Thu, 7 May 2026 17:07:33 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add
 support for Shikra
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
 <20260504170659.282532-3-krishna.kurapati@oss.qualcomm.com>
 <20260505-gifted-salamander-of-prowess-5107a6@quoll>
 <8cd564af-9646-40c5-a8ef-c7197fb3cfe9@kernel.org>
 <95b567cc-b83c-4154-9520-e624555f1882@oss.qualcomm.com>
 <29571bdd-23bf-42a7-a9e3-918a28c79700@kernel.org>
 <62161822-2365-4ec7-80f7-8660bdadb177@oss.qualcomm.com>
 <40b5e0f6-bc61-4750-9560-bdcc268f0fe3@kernel.org>
Content-Language: en-US
In-Reply-To: <40b5e0f6-bc61-4750-9560-bdcc268f0fe3@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA3MDExNSBTYWx0ZWRfX5azEJNCsjoMk
 2VueDRC1LF9fRJuCrADV1sABDfpG6ZkAuv0TRHFEmStrEyuWMWPaVSxfgDLkwUYWsAq8y7y7MlE
 Ofs+LvBOHSEnApfhyhr/eqWI9/FXp8imf2V8sIRxDeHOg5DPkJkkSIrgBiBDDAMYQ8D9ir36F5i
 F4OlWAnqHLuwzU+Qmr4NZAoIsPiTkLbFSUeDBxf93TQWoF8ib4OwbCulISWJGhoMN3M1VhsGGvI
 OjUqBMCLEp3EbrqjdHsTbjZDk7Wd9IuIgqW433XmzJEPJwzoOutlplNfi5lmrcn/6gTffLvTbIc
 rAMS2U/sPSA9Gs/eykAaUvnuVsi7Z8TFWrLJiqLjUcdgKkm5N7lWizOAxUfiAlCVlHtq/Hr86sw
 fuNKSF5Vtt44y3KcP5oXnIp/ROwvfb+ZCrO3t7TJUwQ+EROoGyeUw7D50zFc7qXK1RrAepV157M
 R0pvQC5RfL8hK46yngQ==
X-Proofpoint-ORIG-GUID: _2ScTIlPo_qAsIo4T5UBDfiWg_aSk8se
X-Proofpoint-GUID: _2ScTIlPo_qAsIo4T5UBDfiWg_aSk8se
X-Authority-Analysis: v=2.4 cv=ReWgzVtv c=1 sm=1 tr=0 ts=69fc7985 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=ivPPdQWlR8-s9s951hMA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-06_02,2026-05-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2605070115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_043742_960243_806D56DC 
X-CRM114-Status: GOOD (  18.81  )
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



On 5/5/2026 7:30 PM, Krzysztof Kozlowski wrote:
> On 05/05/2026 15:57, Krishna Kurapati wrote:
>>
>>
>> On 5/5/2026 6:59 PM, Krzysztof Kozlowski wrote:
>>> On 05/05/2026 15:27, Krishna Kurapati wrote:
>>>>
>>>>
>>>> On 5/5/2026 4:22 PM, Krzysztof Kozlowski wrote:
>>>>> On 05/05/2026 12:49, Krzysztof Kozlowski wrote:
>>>>>> On Mon, May 04, 2026 at 10:36:57PM +0530, Krishna Kurapati wrote:
>>>>>>> Declare the USB-C QMP PHY present on the Qualcomm Shikra platform.
>>>>>>>
>>>>>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>>>>>> ---
>>>>>>>     .../devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml      | 2 ++
>>>>>>>     1 file changed, 2 insertions(+)
>>>>>>
>>>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>>>>
>>>>> ... and then I looked at the driver. So un-reviewed. Devices are clearly
>>>>> compatible. If not, explain what is not compatible.
>>>>>
>>>> Talos uses GCC_USB3_PRIM_PHY_AUX_CLK.
>>>>
>>>> In Shikra, we are using GCC_USB3_PRIM_PHY_COM_AUX_CLK. We don't have
>>>> GCC_USB3_PRIM_PHY_AUX_CLK.
>>>>
>>>> Hence, I didn't use a fallback compatible.
>>>
>>> This still explains nothing. How different clock makes interface for SW
>>> incompatible exactly?
>>>
>> So I went by the naming. AUX vs COM_AUX.
> 
> The naming does not matter. If the clock is called
> "no_one_expects_spanish_inquisition", does that make software
> incompatible? Why would the name itself matter?
> 
>>
>> Can I use a fallback compatible and in DT vote for "COM_AUX" clock with
>> clock-names mentioning "aux" ?
> 
> I don't know, I asked what is different in software interface.
> 

Hi Krzysztof,

  I checked with the hw team here and found out two things.

  1. Shikra is a spinoff of Agatti and its sw interface (clocks used and 
regulators used) is the same as agatti.

  2. I thought we could use qcm2290 as a fallback since the phy register 
init sequence is the same for Talos/Shikra/Agatti. The difference 
between Talos and agatti when checked in the driver was the init load 
settings. I checked with the hw team and they suggested using the init 
load settings which talos was using.

  Hence both these compatibles (qcm2290 and qcs615) cannot be used as 
fallback for Shikra.

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
