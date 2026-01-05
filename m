Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B8A3C2A072
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 08:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=seQjdk6wX6MW1JSj7E3ncgs1Q1UAu3qUd2Jl6K7G2Wk=; b=F6DmY9hnzYgps2
	2Ps6wEM7MkpijnssYMbce8SCbaGJTXtySdRB38BATFI0g2DL9phpJqDBm2/jEF7LXmg9RGArMs5wU
	NCAtTf19JdqQ1t7tCqZ7hKC5DDUAezG8HUE10z/7/7A6CIhwqRcTrVbG6uwXdrk/Ccl95odCtMRb1
	fxGREt+OdhYGMig0Fwi+Sre+yshcJMSUey0kENmxGcwU54iYvx3sKeo1Lb+r4pjUHsq4igBqpkKrs
	+R1WudeKzoDmFaoe0x4E9hMQcP/3xiuOdAZlQHsWVE2fTJOSJXZeFSnSHYfTGSDBUB1vaayRGOol3
	SJKeCzaJqLFCu+cg1eTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfjW-0000000Ay6a-1RBG;
	Mon, 05 Jan 2026 08:14:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfjU-0000000Ay6E-3qqk
	for linux-phy@lists.infradead.org;
	Mon, 05 Jan 2026 08:14:34 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 604MUdJ03604116
	for <linux-phy@lists.infradead.org>; Mon, 5 Jan 2026 08:14:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Knhs8IKzgA/n8eZfM4YQQbHrb2riHOCrLcAUD8rcnII=; b=AEjWzkeJnXtiuWvA
	9K7CIIeLRGgNAj4NJPQnNqUTMGdJ+nTcVMSp5R2dJUg6KqxoDADWaC2OW57IL4Nr
	VVDoS7AE4zsnoSf/gqciO8FZukcajLb5lUImBFzM++zmFYarGqIeyhP7N4N4gUHN
	CCwh81afDEcIegdWf2BoFk/slj6nP8RTkM7mxvfniEowEvJ5YIfqfTOlT/snBLAM
	9LLJ7d0tA3gPM9gDBnLT3cFlcqAJhIMtGQar5VJq71Q6/FYGZ4UJJb+dTMhAbmTx
	KXb7G4GjorRvCBWN8LZnfsa5UCXeWNCTbfOGXtHJE3lXNtGvq9qR1CAi+3GMwVRu
	Qv0dHg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4beu6t3nya-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 08:14:31 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0f0c7a06eso292965925ad.2
        for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 00:14:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767600870; x=1768205670; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Knhs8IKzgA/n8eZfM4YQQbHrb2riHOCrLcAUD8rcnII=;
        b=UeUalY1xjeyAfY19SNEe2eSM8oPYj48tggpa5LyOb5UnU6noaBdRsa+ZveIRrvavK4
         K1ZOo9Q+lzupFTaYh1h0c4hux5rWy/ZNQx/5UI/gm/rDu4AAcDFt7VWQZBc9AwnAT1cL
         DBF57XC64nbvSvbQwh5GVDGHP8dssqURHOAXK+i10a591LfZEia14wh54sNr8JSEz/Wy
         YAKHWn/ROXFfoX9qlDo1DaxypwPIKTA5Bop8U7TEpJ8PrA4Qscq04gt8xtyrj/EXT8EG
         Wgzou7esB3moh0OLs1YH6F/EElH4SiPUoDsqEGkHq/13zw1cVE9v16cNCEjJvF+++u/s
         xobQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767600870; x=1768205670;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Knhs8IKzgA/n8eZfM4YQQbHrb2riHOCrLcAUD8rcnII=;
        b=U+TsTdL4eCCV4egQSsVVV1w5OSl+HwEHiWgW8Jf8fN2iDW//k9DxLLPHZRif8kSqEI
         p4tWDc30ZUJVm+3ISinEzNuFRT2pd57c+juGW2U8QNzK+hFeERl56zh8wixmr4JZFYRA
         KyOO1MyCZsXBHBOMpje3ola5DPGR6KKFz0xXp8FKbp+MBSVRXApg9WpPtaA+LJ1h0xok
         TxY5JCpl47wbHTSXcmyDFdnVtYrFrJHdDB8icuWaRB2JgkpQhzYRHwmXYVf66Saf3yYD
         pNqTawNp+ziNPxcqajLkKByXm5RJa9ryReyU80bpvwNm0TuhN6/Y+N0pQX3UxD7/ITtc
         /kzg==
X-Forwarded-Encrypted: i=1; AJvYcCVSFyAsCvWEJuXe8KV9pZUEO1UKfd5yq80qFwjQv2iQeWE+ODSiIjnZ+6xf/ie2m6Pl7WYTEKt08rA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9AT0M7M0nAtahW0uQdvl+tPWH3R0qdY3/5u+/yoz5m1Frc8xT
	i/+/+Wp5VgxlcZC8GGR3iDl8YRSc1nD4f5zz6bV8osbnzAXyOlbAaPXdFAQy9GWAjpgVqXf/uHj
	qKU/nNgz+FsymmSQLia8FMxBbKZjGzzqKVNKL6FlfYuc0v/+JY6bhZd1zqgSKhbkFyHKnU0Xeyw
	Xz
X-Gm-Gg: AY/fxX4Pqqann0dq86kanjY9jp3Sew2EyPXb/QfNC16FSz6lq7eUFe+5ebpnPtrNYf2
	KyoW4n3ZtdUar1hGNX4ncbbDzaVm/yQZalFPrSHLYLyUHRsB4jW0zQHB+H2sObPBhhrXMT67gmL
	pKAiDvj0wEEeWJMbVDVJ6117mNYIEGqatletEgP8y2Hl/q2ohY6/GoZz7rMV3IwA5ZSQ44c5lBS
	03o3JlkQ+O0Ra4b8CLSJN9LBSbjxqGKXXotXK+Uw6Z5+4KWITk6PtDL3s6kuLr2IHunpM8b0/TC
	VOqV1a/r6ORkolgjfWqzoH3OOcSdkoTbL4hLawNIsr0sRk/eMn8b4FbeB1EN034gQLy1Cv9C3kF
	S31CQ80UHiRMcB2No/EIiq/5kmJsTOsEwirIMkl7fuqNFQ5tQpYI=
X-Received: by 2002:a17:902:ec8b:b0:2a2:c1a3:63df with SMTP id d9443c01a7336-2a2f2830da5mr499135495ad.31.1767600870434;
        Mon, 05 Jan 2026 00:14:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEZI5oU7cvHuyxSVZFYShCuld3qOUBm0+t7A94kkYYSw+mc4FnyDDkRFTHl/35PeuZ3unmeVw==
X-Received: by 2002:a17:902:ec8b:b0:2a2:c1a3:63df with SMTP id d9443c01a7336-2a2f2830da5mr499135335ad.31.1767600869960;
        Mon, 05 Jan 2026 00:14:29 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d77359sm447042285ad.95.2026.01.05.00.14.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 00:14:29 -0800 (PST)
Message-ID: <50d07f12-9a22-4120-a658-e6a462b9f8ee@oss.qualcomm.com>
Date: Mon, 5 Jan 2026 13:44:24 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/4] scsi: ufs: qcom: dt-bindings: Document UFSHC
 compatible for x1e80100
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251231101951.1026163-3-pradeep.pragallapati@oss.qualcomm.com>
 <20260102-rapid-abiding-parakeet-d0735f@quoll>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <20260102-rapid-abiding-parakeet-d0735f@quoll>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDA3MiBTYWx0ZWRfXwOp+uoFT/Gyk
 O2FA1Svb1zfKqZDgQoYbsQtr08dcWJXZzb5axyHBe/vC3OJOoTe8jZnnsaliafjCaPEUO/lZVnn
 1saI+V4BTk+9tVvMjAoJmVA+s1b+SNnkcUqxo1fDi+Cee306XeSg3n9Hh4VkAaTyw5/4timN03x
 fKy+pjK0v7Z4KpR2MAkZagJtOQd1GjZ+Xoo/clKbB9wH45E+jDY+woBEJ/x8tBdz9O+hFEL1+tc
 XzoWUQdkhlHO5s+NjV1gvq6gW6bDN16DCLDLlKRK+QF2vjM2MXm7B5IQi6WLktzPki0Bb3ePD5h
 NGl1VwJ153TBGCfc7qbjDArCa0gPWLMsBUQTRrzbZ8W+i8Ctwtw00pbpNbgsWM7YjGl8nuM4OTH
 2JsMMitErERQX5pzjuajOKMxIvKw9yyCPYSIx2SzVo/QrVWDJRfuDrVvsYN7gQU70zVQNlMXbOk
 AakTfn7LKoAUiGMs9qw==
X-Authority-Analysis: v=2.4 cv=HLbO14tv c=1 sm=1 tr=0 ts=695b72e7 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=hz69ntJn8m3YF9laBZ4A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: 0aCTCtbnnP5RZFSxNzGTLXcKjYdGVlr2
X-Proofpoint-ORIG-GUID: 0aCTCtbnnP5RZFSxNzGTLXcKjYdGVlr2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 impostorscore=0
 spamscore=0 priorityscore=1501 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_001433_078234_CA34BE14 
X-CRM114-Status: GOOD (  15.74  )
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



On 1/2/2026 4:55 PM, Krzysztof Kozlowski wrote:
> On Wed, Dec 31, 2025 at 03:49:49PM +0530, Pradeep P V K wrote:
>> Add the UFS Host Controller (UFSHC) compatible for Qualcomm x1e80100
>> SoC.  Use SM8550 as a fallback since x1e80100 shares compatibility
>> with SM8550 UFSHC, enabling reuse of existing support.
> 
> Your last sentence is redundant. "Make devices compatible because they
> are compatible". Why are they compatible? Or just say that you add a new
> device fully compatible with SM8550. Write concise and informative
> statements, not long elaborted paragraphs where only few words are the
> actual information
> 
ok, i will update in my next patchset.

>>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>> ---
>>   .../bindings/ufs/qcom,sc7180-ufshc.yaml       | 38 +++++++++++--------
>>   1 file changed, 23 insertions(+), 15 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
>> index d94ef4e6b85a..0f6ea7ca06c8 100644
>> --- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
>> +++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
>> @@ -26,26 +26,34 @@ select:
>>             - qcom,sm8350-ufshc
>>             - qcom,sm8450-ufshc
>>             - qcom,sm8550-ufshc
>> +          - qcom,x1e80100-ufshc
> 
> You don't need this.
sure, i will update in my next patchset.
> 
>>     required:
>>       - compatible
> 
> Best regards,
> Krzysztof
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
