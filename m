Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12F01D29C2E
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jan 2026 15:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cr1O2Ds8ElOi18F2beGDLoJ67zi+b3tbOZXep7uyJFs=; b=vJ4BgpwD4JRL4M
	ibio9v3rK5HDx15Lgs9rywJoMXs9j4wRdu6slzqvlQg2gMnmcWloyHnWTnN4EeFznU3yGK1eFHDLq
	kNQa4wcIuvvT1NSnxIXJnXi4N3dnAzdTkWNHiTD8VtKwmnqlGwLhDo582jHKIYQLL5q9fL+FRsuO1
	ky5pppi1vb0l/Cu3hT7TuZtr/lFaktjqjgFiLq6JJyGhdI+Osas3J4kFIWh8n6RgdnhxaJKkX+21v
	NYSdZ76DhKNHo7twmJRGFa8omig5/r1Lg5gET5Jl0qIYEll3qo9p0J+/OuzmIFe0DuPzw0/pR+znd
	G9wOOzeHjOJLiTTrRF+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhqy8-00000002KGO-2ixC;
	Mon, 19 Jan 2026 15:15:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhqy5-00000002KFp-0ulf
	for linux-phy@lists.infradead.org;
	Mon, 19 Jan 2026 15:15:02 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JAJjUX1531255
	for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 15:15:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RgfcSAgwHvJnYt7WupVTbKfbhUvgAda4QTEtoBlpMAY=; b=CRciG0ibo/b7wt7x
	ukUWBxGnno9TCx5/e9oTXRBMtiLGLyRJq1Suh5YsO+ATUJAP45RxDkC81PSWPxFG
	f/gYvQLl4L2uwieNRsmnuRwb9vKItWrHBjolZfvkkvlBPxQZOQeB47P1rNud9yKw
	PWIcqwtLtVmMe0Jx4w3RIKNbuLtsKJM8mbued3BN4nuaKRbN3hQI5PRQsE6EgRXx
	gyEX3VNI+Z0tPn9IqQt0YRkkKThw4gxCcIvzU1ZyXSprIyEZ8Gv9l7bSQ+clCjWi
	9jExrXqc3lmp9sWQCPYg7pO6cLjQWqlLkRio/bBFMIOfBjrk+DGekJ/cU54bpshU
	RR29cw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsjrxrtnx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 15:15:00 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c532029e50so155145385a.1
        for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 07:15:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768835699; x=1769440499; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RgfcSAgwHvJnYt7WupVTbKfbhUvgAda4QTEtoBlpMAY=;
        b=Np0qww965iKit4BJvPB3Q9jQz+133QGCV80SWzKgAAb/qeMQcSvYCuYQz5wWYHPub1
         8INc53ymBTrmYsJMKRKGhgQVIMST9L6qYKU8JvzktDnOy85S97gi9T9zzLMN6TY2iX6U
         lvgf8YFWAu2BBqpa/Fq7/T98HTM+shy7rhWZuvJKKT9XIPaV2cCa642eHUKxIGPIIEYM
         JM8XcqdVW45npdKsOgTYs4LEiIctfbp26w3WL6+WnL2wZ/hJWfeOt/LROdppjKUqeotY
         it05cNYl66DgCKv6bTSZJHtZUpFnLr2KMXyOqNV0bocRYL2bNkZBlDX+jUfZ5cIfojfw
         Uh7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768835699; x=1769440499;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RgfcSAgwHvJnYt7WupVTbKfbhUvgAda4QTEtoBlpMAY=;
        b=EGi6m7MRURpfOy2aJoNJUscoQCxZYaxWy6Q4btFoiYrjnw7xFpmk94Rq0F12aB/w5c
         pV8JN4IbendpPDEDzMOTrpAHd5H0TrZssVCISjCpciObZ/XEnjCy2gRTK6+7dGwgFyOJ
         2J0KyykWGZOVSUQu7z23dRYzvzexQrCj22EupxHYBHYUQQrqX5ixx64/5dEdnqw5CaA5
         IA3aCAgJBefZ5oQLlE3yFqqOygW62QVhw4hWwgeMDZVSbTGi3i0PFVMbsBO0T+Oj3cXA
         T0lJbFsaCsHVwTM53Kb2dnqzW4OpJMdGI+0GtVtqHhmUub5XKAHDAHA3UQvG8VFak32b
         QM4w==
X-Forwarded-Encrypted: i=1; AJvYcCX9TOCjfEXs4LGPFJ8uKW0qT97P9jgwVow/KMgbtvaYYNpED/MfN4RfVoq2cECf+/jFuk7g7se15lk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzc1OPWTmhfdoNe3XjFDwva5EiC6VJrlBqW0mRLj/GqFQhEHl/l
	4bPuXayHMC9I4yQUABt2KYIb6MxxzSGP069GLqSlaUPV8rA+KSyTAWnMPaPOU4O7+ozLfQ2DDM/
	evChCoxFghxm/pWYWPX0E63KkhrVUO6hVo3LRcxYIP4Fq8YM+ngsRxBDxluYod/9aaCpQ
X-Gm-Gg: AY/fxX7tWqgee2fD7xU8fjI97McJwi06SkCWu4RldYOCisD3U/nHFXDLFgA+xw8Vqgw
	Gj9yRn1XuUAwacSF7t39ooJ7T9+E9qyw9AbXxxMUC9tDKJF9L9aB38MMhYilPAl8UPYSyLgvHBL
	TkiWwf52lryVMJ0sx8euGvktCNcmqfKdQEToPq1Vv6bWxnM7zhBzL+JXsDWzcY04rBRtGwDcNFg
	lFccjm5vIywTOOugA9MNaYPMx3qphUKvN3nXng7K4PAGXo1/BH0lcBnQAzLALXfYESWnpch9ki7
	/FzADlIMLID46gfwOviZ0IPU4JIDQIaVBrpd9QnT/bXQk3WcgpAJMy1Uzi3nDAG/RiNfXtpwhbR
	EM5UYxGQ8IhMWcBy+1shJyp4LKx7yCaroeQaI8ucm2B/Z9u2X6/SS2sQ+4biOqra6hus=
X-Received: by 2002:a05:620a:a215:b0:8c6:a719:d16f with SMTP id af79cd13be357-8c6a719d1a9mr1078660285a.4.1768835699474;
        Mon, 19 Jan 2026 07:14:59 -0800 (PST)
X-Received: by 2002:a05:620a:a215:b0:8c6:a719:d16f with SMTP id af79cd13be357-8c6a719d1a9mr1078657885a.4.1768835699020;
        Mon, 19 Jan 2026 07:14:59 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795168ca9sm1118682166b.15.2026.01.19.07.14.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 07:14:58 -0800 (PST)
Message-ID: <ede201f5-fd27-4ac0-b524-638df7c412ad@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 16:14:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: phy: sc8280xp-qmp-pcie: Disallow bifurcation
 register on Purwa
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        YijieYang <yijie.yang@oss.qualcomm.com>
References: <20260119-topic-purwa_phy_shutup_warning-v1-1-997a692b31c6@oss.qualcomm.com>
 <8ea2358b-00e9-44b2-acce-777863e8688e@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <8ea2358b-00e9-44b2-acce-777863e8688e@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDEyNyBTYWx0ZWRfXwjQ4a7lOx8G8
 ZPfK/U1eqADwWfteWf8S8NSeVDG1T8Yl4xcqhbJFdhojIa4aYpc2CPW5HaTVTFms11ioEYsBLbv
 63iol8wYwvYtZGYYcQO+oEJcYRv7E25Pa6RvKJhrjWA2RoXfQayLMOc895HNgkRs+gl0VB7bd0P
 pRYkaDaNQjdHeo24dM3JGTXf5+yAJAhGlfH26BzeXTklICasG0AVPH8FknJS7gmX9cGkK+txosA
 zuEHgdE0z5/eB8dNYTZxecTqPHfcvEdOwF9xaZCByb0C9Jft7l/dVhaI3Yo2Ffo607ENZRmWf9p
 I4us9zEZJQqX+NJCViUUdnpvxif6HFqd0uoMNRJaAt+ZkckjPQA3FMCwo6Jd3C0emWEAjedyNjJ
 XBM9XZ9msCxoBd5rjNUJGkmBiNAE/9jNl9nKssLKBweqD7PApP+m9HNI2ZwJkD0xf9nC8eC+ZBd
 L83OzXxgmSHPzDbK4pQ==
X-Proofpoint-GUID: 6zenhhY4mbTBKx9mrkAs-N1mWywf_NOD
X-Authority-Analysis: v=2.4 cv=PPUCOPqC c=1 sm=1 tr=0 ts=696e4a74 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=TK7EAqwxfNejasLwrscA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 6zenhhY4mbTBKx9mrkAs-N1mWywf_NOD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_03,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 impostorscore=0
 adultscore=0 spamscore=0 bulkscore=0 suspectscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601190127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_071501_273930_4A5A8230 
X-CRM114-Status: GOOD (  11.37  )
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

On 1/19/26 3:50 PM, Krzysztof Kozlowski wrote:
> On 19/01/2026 12:48, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Neither of the two Gen4x4 PHYs found on Purwa supports bifurcation.
>> The PHY is however physically laid out as if it were to, since there
>> are two separate ports (A/B).
>>
>> Split out a new if-then block to un-require the bifurcation register
>> handle to squash this warning:
>>
>> purwa-iot-evk.dtb: phy@1bd4000 (qcom,x1p42100-qmp-gen4x4-pcie-phy): 'qcom,4ln-config-sel' is a required property
> 
> Warning does not exist in the kernel, so please do not reference it.

Only because no Purwa-based device enables it, so I think it's valid

If you really want to, I can resend with that mention removed

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
