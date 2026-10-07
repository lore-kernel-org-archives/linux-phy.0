Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91243CA5FF1
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 11:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9BC1x13My0DWEK03YRR5TmjhKuXh+4uini3yvRGdHLY=; b=HMpZfVnLJs9QpE
	EZfHulHDg0MVQ6tJ8UnuOAoVHHvlZOm51wKyJHlWLLiwRbGw+4I6hCPFSOUH5l6Yu7NpPLo29VNMn
	jzMf5F3TxJvhpI4ITY0gOh+Kmdw6mzkDcb6eB0+XsgzDuinPkiIvwVqtUN28ncIUdBind3zNyj21K
	bMLR8diJ+paUBOXW3sPG2UDTCnGzE0nYezymjOhHHxmXD6OZyCIjkfhB4dHZnIZWXkq4CC6DITtP0
	B+jl3IY8oPltEo79Wy8ERXbaL1w4kodU+XvcjI0xQdOIGE2aWPZ9YYT4ElwpYqzzO3Z9eEcj55whb
	WfNP2pxmtD4W565rdXEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEQ0Q-00000002Lls-17yj;
	Wed, 07 Oct 2026 11:40:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEQ0N-00000002LlL-12tv
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 11:40:16 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 697BV6It609831
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 11:40:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jWsxroNby4qfMF5eUhWMwzBrpIDo9NyJ5QpYk6O3kDg=; b=pMcmnHyoA5U6lGin
	jgOvmzefdWqpj6lQe/3mFnQUciKpNppaaejO4+CQ0VZJgFTE2xqenoJStvujMCoB
	JRka/M3AgeV8PrDf9eE9fI7ao2Wt6t0m4jwrxaevg8mRujCCU7G1kq7a78VAYkJH
	CzSZgj637rI6UDQ5TTAonkdQGJf2zD5G8KvlmB8EASeoqD1oYjkWfTBHALEtMCiA
	4hJcaql0ksOrslHsodQTFVk9n7Y8P1aP+p7pN5wMFsX3ovbKmcjokuvk0a7IKzOG
	L0fLnQGVqOa0HkR8CRYU2jfmG2gCud+JDxtbC+Tpe7LnaklZNJiGdqxUP4u2OV7V
	LruWIA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5fc59849-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 11:40:14 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3965ba1ba3eso4905802a91.2
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 04:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791373214; x=1791978014; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jWsxroNby4qfMF5eUhWMwzBrpIDo9NyJ5QpYk6O3kDg=;
        b=HpbcbDbzU0qnWs7ht4KG6xt55Aoj/X0u+YaS2C2jzyUxnRvUyF00FL2bUCIxJ8ywB/
         idTdTcJgYL9k06ADMJlgB1pEni7FT+Q647CCKEVjHb4cQ68Ddl4EjlFEugmtsPm6y9YG
         xj7ywJWdGyVuUg6D0vwlpNMSFtzo8wQWAGkblkQF1S0dC+Vz0gAGGs5ABys1zTaiH3hm
         8ASF+LHs65wNttE85wfoOy6vnMblLEE5ze+Yzz/3UUlzG1CZuKBYfdwK7PEMpqftSAWr
         jtzpFFFWTqFS63nkR53JaFGc2RIcIFF361PTBAe26pLg6STgDNkPnHo2SuCE5/+B/gVr
         rtIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791373214; x=1791978014;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jWsxroNby4qfMF5eUhWMwzBrpIDo9NyJ5QpYk6O3kDg=;
        b=Firr1VVEOsfsTWK1ZXgdgF/y6V7YKlr2J4VPuXIuYBnKNggFDPUMX510IMnnYcegOh
         YkyqRMDf+8V6o3YQSexU5BZqpAxwTuz6X/iRwrLJFkhx4t/Xp1FTOf6Va95dZHy01I6C
         3KElU9k1cIOdKnz85XJjpfXl1Hgr1MvHHO3MDJUDCOQ3GJ82g7F1aM19Hkf73vgWUUTs
         5w3oLNW4XkE0ydvhxaV+lzNYEov+W62E416BoSL4huRLAJA4QmZdxsC9R5ZyN7in6PEG
         ZOmpmF2+QZocgW2bfEdTJPB6GSaUUGEPO7Fb2WO8pRhA1l3FjXV4r6zBWEasHipw8ZVj
         9yAg==
X-Forwarded-Encrypted: i=1; AKwUvBy6WyJpDtCQv7UV26YHSPUOOR1xHK51HOQmARTIxrSqdHQIUTlqjtUdTguZ4K82s+EZ45k9eWxNDu4=@lists.infradead.org
X-Gm-Message-State: AFq9FYKU3iJgbDrIr1E0q71ziB5cTTWZvMJyCnJofr/zOz/PWLne83nw
	MRpjXHykZFdO0CkZxSQSE8m7K8vtxlPhH7QsULV5lixiRwn9xrzVKwG2wFe4KFMaDzbjM2g0b4D
	jUXwYdg/Q4O0H9NACjfaBginsb3Z8EHdcDId6hCsYLVV0Qua7PtDpNLe3giy67ESBCxvz
X-Gm-Gg: AYBFou2KgPgcG9C/G/BqdLywsKmeyiMo/9aQoMNbncaaRbTsCeUi3DpaI6UxZgub+ml
	fDgSBnyalKOdu5gyzG0WZMCYfZlTRvtDYfjb50BirfjyfQCW697RlONOFNvtcOAy5A4TEUBpqOF
	7XzghI5VjOsQRnLPa1hB4pQQMznVQR+liMe93N8JRnX32yd9YEbz+l4PSE0NJjFFcrd5kAvOs+0
	fhKo4bDYUQlCAep5xDsGtpcJVn2ElzsjpJ1dzRWrlFEOx8kaj2wFqpu/dJRovG7Hg4aCA8vyT1D
	qrgSjStOrZgTlmKpfvlVBjxWMDeX0VAnD+UUcpCgRCNI0lcNJF6gwzfREEcL1gatu0QYF0RmehA
	D7ZYRhOqRQ4wxgIeZblvlYMtRpcBhHGVFlSiKYw==
X-Received: by 2002:a17:90b:3c85:b0:3a4:c8d2:6c0f with SMTP id 98e67ed59e1d1-3a8a1187ecamr1280990a91.45.1791373213842;
        Wed, 07 Oct 2026 04:40:13 -0700 (PDT)
X-Received: by 2002:a17:90b:3c85:b0:3a4:c8d2:6c0f with SMTP id 98e67ed59e1d1-3a8a1187ecamr1280953a91.45.1791373213360;
        Wed, 07 Oct 2026 04:40:13 -0700 (PDT)
Received: from [10.218.41.37] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a8533abe0asm9816087a91.1.2026.10.07.04.40.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Oct 2026 04:40:12 -0700 (PDT)
Message-ID: <88225357-eefd-4d44-81ba-da965b4790f6@oss.qualcomm.com>
Date: Wed, 7 Oct 2026 17:10:03 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: glymur: Add UFS nodes
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>
References: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
 <20261007-glymur_ufs_qcb_enablement-v3-3-84cf4f861415@oss.qualcomm.com>
 <a5p5gszuadvnvqcwffg6y55khdfhacwhegaxmmiwm72sfid6ex@cdwuo6sdmkgy>
 <297690cb-64d8-4e7d-9d97-66680f6a2b99@oss.qualcomm.com>
 <c5f4e404-c03c-43ae-9785-7be1d8b25fe4@oss.qualcomm.com>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <c5f4e404-c03c-43ae-9785-7be1d8b25fe4@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDA0NiBTYWx0ZWRfXxM+bi6F8CXlF
 Q1Y/ZyBSFUjhhdj9qQI99i9Nfq8JvkQd7ic7NpWkxhJIavsB4I93nmKY5I7ASib3fxOvYcmfaiu
 XVeBLO+4J012hxcd56V3B7QqxsJWmfU=
X-Proofpoint-GUID: Pu3lGKm9UmwEE8yEvE7ALcZuB3sVETq6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDA0NiBTYWx0ZWRfXy8f+9ICSJh22
 cToDz/9ZmqYvg3WPQKM9xaJJh0++uPgaAcJpUOOa2FjJR2FsB/IUmeM7A6V6cgfe69BU6jZDkmO
 JtC31dtRAXLgbQ1JrQDPgjPE17TyXysDIPt3JRXpXfLJS7NccytKh32wD9kc9dx0+4MIsZ/mi9K
 xIriSzpFfdPC0PA8wlczy5xxRkOqC1mv6y6fSseKSP9IFpES/GledXwm53+x+PvrRsrpFEyETcM
 36H7Yz/Ggd1HPQDa+ugIHaUssZ545eYE6Ew1nD093pdPi/FDVY0+iDw2IzqrOYh6m+N2MuiJC4i
 HqS/9OHWiCbTvF7+HO+XydbPq6pUk8TH18MkQiiQwtlEtsdq0+bOCFTGgbUg0v6ilTirLhKrm9b
 dWIa/i6DkY223/KLCy1ngU5uUrJbEfiNK8cEOykShIk0XIjrhLhNJOcpgZPa3IxZSdg/JCzFVmV
 JlZuZX5JrX5Bb85wE9A==
X-Proofpoint-ORIG-GUID: Pu3lGKm9UmwEE8yEvE7ALcZuB3sVETq6
X-Authority-Analysis: v=2.4 cv=a6+lZkSF c=1 sm=1 tr=0 ts=6ac62f9e cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8 a=gawzJeqBqYZ62S9bEcIA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_04,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 suspectscore=0 malwarescore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 clxscore=1015 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610070046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_044015_306283_272D58BB 
X-CRM114-Status: GOOD (  17.72  )
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



On 10/7/2026 5:05 PM, Pankaj Patil wrote:
> On 10/7/2026 4:30 PM, Pradeep Pragallapati wrote:
>>
>>
>> On 10/7/2026 1:13 PM, Dmitry Baryshkov wrote:
>>> On Wed, Oct 07, 2026 at 11:59:36AM +0530, Pradeep P V K wrote:
>>>> Add UFS PHY and UFS host controller nodes for Glymur SoC.
>>>>
>>>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>>>> ---
>>>>  arch/arm64/boot/dts/qcom/glymur.dtsi | 125 ++++++++++++++++++++++++++++++++++-
>>>>  1 file changed, 122 insertions(+), 3 deletions(-)
>>>>
>>>> @@ -4102,6 +4102,125 @@ rng: rng@10c3000 {
>>>>  			reg = <0x0 0x010c3000 0x0 0x1000>;
>>>>  		};
>>>>  
>>>> +		ufs_mem_phy: phy@1d80000 {
>>>> +			compatible = "qcom,glymur-qmp-ufs-phy";
>>>> +			reg = <0x0 0x01d80000 0x0 0x2000>;
>>>> +
>>>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
>>>> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
>>>> +				 /* UFS and PCIE4 share the same clkref */
>>>> +				 <&tcsr TCSR_PCIE_4_CLKREF_EN>;
>>>> +
>>>> +			clock-names = "ref",
>>>> +				      "ref_aux",
>>>> +				      "qref";
>>>> +
>>>> +			resets = <&ufs_mem_hc 0>;
>>>> +			reset-names = "ufsphy";
>>>
>>> power-domains = <&gcc GCC_UFS_PHY_GDSC> ? Or is there
>>> GCC_UFS_MEM_PHY_GDSC, which is simply not described in gcc?
>>>
>>> If there are none, it should be reflected in the DT bindings, together
>>> with the explanation in the commit message.
>>>
>> Yes, Glymur SoC does not support UFS PHY GDSC. Sure, i will update the DT-bindings accordingly and include the explanation in the commit of next patch series.
> 
> The support exists? I can see the gdsc in gcc-glymur.c
> https://elixir.bootlin.com/linux/v7.3-rc5/source/drivers/clk/qcom/gcc-glymur.c#L7768

This (gcc_ufs_phy_gdsc) is for UFSHC but for ufs phy (gcc_ufs_mem_phy_gdsc) the support was not present.> 
> 
>>
>>>> +
>>>> +			#clock-cells = <1>;
>>>> +			#phy-cells = <0>;
>>>> +
>>>> +			status = "disabled";
>>>> +		};
>>>> +
>>>
>>
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
