Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C8B2C47BF2
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 13:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQUL1ybGjIF9gRdoNiNuH18/wq2xfvMvbz8O0sK87M4=; b=roZveMkrV3egOn
	gBSOLfX80O+rqgKF08gFa1wc+2HaCEfF21Sx8K/WAyjIf+ZjOmK88MXSdqnl4gTFrkTzfnCa6GEI+
	frUwdLOxQ9jxS5gZ94ltKKel6sDr2Hczb9Q1fTROvJepAei5r95sBwIIJivkAm9RooFRxxtR9ZoDu
	dM/6aj8N2SgVRkrcf26gkXfj/cz1woFjIcF3ZZUyC/PYwcTu+KcFGaNDF9r9Iusv/tx7u9Vxgi/SG
	5zKpWK2aXBTRYpLQshOjhAmZkM7IQczeEWqdNKAvSztLwnpHuVI54USRBNC4Ql7SD4Wau6R/rM22x
	hme6KPbNm6ftoq/OYeFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7Tn-0000000DDrj-3emY;
	Tue, 06 Jan 2026 13:52:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7Th-0000000DDo5-1KQh
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 13:52:09 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606AUGL92429743
	for <linux-phy@lists.infradead.org>; Tue, 6 Jan 2026 13:52:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u6lF3KhAVrhZgm1oiHIcVh0zoeDhAavjS6Fgzafm+Xw=; b=B6YcFU3OIMcttdE4
	Zsm2Om0w/Wv7q9EPBwS2Txfli2t/fjziQUoisF+UEBH45BkDyATac99tVfF82TU5
	Xt81hl06HSijzdnCbgv+/iO95m1ZXexbFBlLlY7/hdwjJLttkeekEeucywGLGndA
	cr3kv2PTA3HiZndoW6dN3ERlarU2ryL51ZADdU0GwY2plmLviACTUraolXSvmeGP
	ToOESv7W3QqPF8DfwgErU1eS4T269JfRizr3KkfyeUmar4sktexTeqB7Y6oe4wbP
	f0etdRnLLksQhKzqY+t7s5wLaOYqc0CSltczgni0PLFe/9Jj9tj15SuHlHWyJVyl
	CZ1IFA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgr73a1hk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 13:52:04 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7aa148105a2so996186b3a.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 05:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767707524; x=1768312324; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u6lF3KhAVrhZgm1oiHIcVh0zoeDhAavjS6Fgzafm+Xw=;
        b=csuMfHu6ExrLpy3KIluQFNAI/JXaj6pU0lAlhNHouRzzDthAGVaaHVcMNi1WummGrC
         IWIMsB9skl3f6OAFRKcV1IEF7JPPj0FpHpEL8zXR3VD696DMRuzu1icbUZSJ5RX1/idU
         QwjLsfSm8y403CdCeLpttk6+tBlXHNqQ8bwNdQYeDmH3QVKsE8Q0ftB/mfLH17mraBsz
         ve9aBDESt1lOnvqQeep+tWq2wxhvEYLxkfAbTXdmfpFY2PGR766VQJu1HthNpPa+edgO
         frSFP5efTQwdRLgvS6pLOEXAwQ/mt/1D1MgNlfRq5CLTJCQ4k6ZIM0MySFU9T5/wvP6l
         tDsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767707524; x=1768312324;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u6lF3KhAVrhZgm1oiHIcVh0zoeDhAavjS6Fgzafm+Xw=;
        b=bWdVfZpFRsE5iyI8OAzMUQS1mDDirktyO0Uyv4zppq8Uwv8wAGX5e7d7BPzY24OYg8
         mas5NlbwfSANpwIad6WoxxZff6rs/AAOUUSVc6xrrX/14NSB9MOVKTD9/+JDIrXxjVnM
         88dOu4YjmzEsG6keXNm6C8/m/RbWvs3scZuX6QuwbfWWB3zuesEY+K8VbWJy4b/j4DWP
         XEcpSG9W07YLxu62LnlgwjQlC9nkMa6LUO75i4EER6CynWZV8F4J6ljZpOGIfOHgzGcq
         fuZwKrajB+R63i188KQfzN+L+rG9h76HIwXkW11u8y1nIBEmYDjZghhTW1uqzi6praWq
         OiCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoRs0uufCmTjAZQ9Ihgjf9HixKSNAw3hSrH8Xvb9ZqrUaiDRL0iOoq+8yQcDSGoeOr5syQNFgbvQY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJ3dDDpxtv4FvAF8h+P3T0pk3QAjMKzE+aA2KzT2pshJm9xYUM
	sq5drqPyUznwpyTHWmVQSuiu9GMDXwqRmZpCZGWgVpivOFWk1lDURkfu3wX2RT0FnrIbU8zwJ4v
	C0yJyjllPaKmfXTe7s0OHfRqa+e1m23rJqtAQxacdRoyJeRY7qY9rZPkas+mw+xBeO8V/
X-Gm-Gg: AY/fxX6atg4vIi+fR/V9ZPBPLWU9mxxz4UOWryoDDt8IBfXoMvnd4N7LyEzWFtLPw2T
	7TjfF5elkE2FR1yoZIurpVCea7x3s7QgceOn10oT0OUcOn0ISMwMvkYPf6k1qjhK0DkZFdH5rM3
	eL7i9gvCD3A2XRvvPOFPgnGHxmsK01IW7RObH0VdBuSJ9WpVMhuXOfbebIqJH7BAjzFUGp0rVFB
	8BzaHk9pyPoXrHnlhVvXfHzNPja+fLe1iN3XqtwhL4GxPE1Jj3MnicXzDvG84yUDAcp5hm8yvrC
	NFNiiL6aFk82g3gnI9oOU8JhveWzMxqBveOU+Cu2kt8suYP6mtGq+YasW+DnsgCNiQWI/nZ6Yw9
	Dx7+a/E2L8520JA2nR9r+76yNxkVgXgSLoJHEh2oW8C4Dv/BcEWA=
X-Received: by 2002:aa7:9a82:0:b0:7aa:8397:7754 with SMTP id d2e1a72fcca58-8187d7eaf10mr2504083b3a.2.1767707523949;
        Tue, 06 Jan 2026 05:52:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE1PLCYM3yMbIJ7mWUGjJVx1eRKVE/ZWrl57XGXEdDOj75CPBnr3pvZOxSj+KPyMyLNKexWFA==
X-Received: by 2002:aa7:9a82:0:b0:7aa:8397:7754 with SMTP id d2e1a72fcca58-8187d7eaf10mr2504049b3a.2.1767707523422;
        Tue, 06 Jan 2026 05:52:03 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c5de6405sm2343404b3a.61.2026.01.06.05.51.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 05:52:03 -0800 (PST)
Message-ID: <362fd6bd-c7a8-4c2f-8a7a-26c867848162@oss.qualcomm.com>
Date: Tue, 6 Jan 2026 19:21:55 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for
 x1e80100 SoC
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260105144643.669344-4-pradeep.pragallapati@oss.qualcomm.com>
 <7gi7sh5psh5v4y5mrbgln6j2cjeu5mogdw2n3a6znjtqyjcyuk@kxpe566v57p3>
 <e396bef2-e5bf-4e6d-98f4-37977d5d93ec@oss.qualcomm.com>
 <67fd0c34-0ea4-461c-8586-4eaca678ccb3@kernel.org>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <67fd0c34-0ea4-461c-8586-4eaca678ccb3@kernel.org>
X-Authority-Analysis: v=2.4 cv=QrxTHFyd c=1 sm=1 tr=0 ts=695d1384 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=4L7KDLdBDqiEQCf4QIgA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: wG25mAFB3_08dECaawiOCqS2vXqq4GTh
X-Proofpoint-GUID: wG25mAFB3_08dECaawiOCqS2vXqq4GTh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEyMSBTYWx0ZWRfX+GpGlsIG72ZM
 H8pkZFCLoSmqaczaCPM2XG99eUe4hdcZhq9gk3YK0w23ERnB6J3ptWsMzNpjbDooOZpqK3TEZrq
 u4vP9kEomrdXKZ4WT+0VmimwxFUBcvpQ/fG6U9S7ibOLZPIcf9pGeUq+p70Pv02CODrJHSc5+1W
 8/VFt+ku0tFAkSCFmyuvk/T3Dg/5qKfwzcYd7wUFWdv7NSMJX+C+JAwKAqrGsGISEv6XPSU8Xue
 TiL8lRwDzBs3V0lRnrcK6ph9+UWABVjQE7TRjSUukE6OKD9jDgpc7C5Oqd18SHmdkUQBaPm45gG
 Ovl0Spd2IAkVTBNa+miq4+d1IpPiAmmExjOym3H2H1BCS8f4ELStzyTvgdI+FKvWegrl2+EjmM7
 LMsyhklUEPNeAe7crWX8SZMzdhxQGGLFd8FMC7hYWAIJBuioRFDP+SdjxKvt3MvwzXz+n1kKfZz
 Ai84541byp/HF/5cERQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_055207_918742_60846B96 
X-CRM114-Status: GOOD (  11.89  )
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



On 1/6/2026 7:10 PM, Krzysztof Kozlowski wrote:
> On 06/01/2026 14:00, Pradeep Pragallapati wrote:
>>>
>>>> +			compatible = "qcom,x1e80100-ufshc",
>>>> +				     "qcom,sm8550-ufshc",
>>>> +				     "qcom,ufshc",
>>>> +				     "jedec,ufs-2.0";
>>>
>>> Drop jedec compatible as Qcom UFS controller cannot fallback to generic ufshc
>>> driver.
>> "jedec,ufs-2.0" was set to const in dt-bindings, dropping now will lead
>> to dtbs_check failures. is it ok, if i continue with it ?
> 
> No, it is not ok. You cannot have errors/warnings and I think it is
> obvious that you need to fix everything, not only DTS.
sure, i will update in my next patchset.
> 
> Best regards,
> Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
