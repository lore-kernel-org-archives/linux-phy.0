Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C02CEF9B5FC
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 09:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ziKRGpEEnhykE3Us8uPTuGTbRsEdKifUslk8s/plpHs=; b=AWwUBagcJHAjAQ
	irrxjOLjWFmtX9fce14v4Crq46Pp/W9UaFlpeTZUKTUBpbdyrTGQlIOnYrMZKKPxxO+AQ4a/+taWh
	tKPBOrRz4RS+BcRE14Mv4JH8NLmMqOc21/EhznBslSY+7QNDq5/WwvsbEUfjcGb4d9pYZwLhUnSN/
	9CMeb+3NFhyiHfwD4+frVmy1CQW+p+cH9UVAnh3JlJIXqtmgcxIvrLa0uTtWJ2ckCV0VNSQBkQVK8
	7csGqexbdBDaPxurjTsUKY50T/w+tQvvGAbCFFydXt/cCQ/YGn5HTDqzOC8ckWpgC7T59ag4nyGJF
	M8ESvh93KJD8KTEEw7hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFU11-00000009rv1-11ce;
	Wed, 22 Apr 2026 09:37:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFU0y-00000009ruf-336X
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 09:37:01 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63M96E95664048
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 09:37:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ejxmbc3pCj/J84KsedCUn+567n5vQQYG8MwogqE8brM=; b=nPdlqKbJ/fOSPDAr
	DIn0NMDa1GFZW77RzzK954tsTqcVQqWHteMGbMHN+dSjB6OgowoVEE91k+m4WMrt
	4Kf8buR+w8JtKpGDj5jKKJtra+hIsS1y731ktQYAL8yso18Jwj4Nup0iO41DFrAC
	cI7VM8Z3sjeNWFnYZ3R5TDl0tQlzMZpNByR7NDOAF9JMM5PtYpIYiJIIwym7ao3t
	y4nwZnQZ+8KJX8OKbv5aMW03KGtDSjt3f2CKJX8vuTimfwMRVdTVVDY1UmQ4/pxa
	SNC3u9T/tdp/phhtS2/lReGAuRe0sNQe+OB8affq/wKMSYKeOhICE/Wvi2LUntSf
	TcfEXA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dpudgr4ub-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 09:37:00 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8eb04e1b499so38784085a.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 02:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776850619; x=1777455419; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ejxmbc3pCj/J84KsedCUn+567n5vQQYG8MwogqE8brM=;
        b=X3JxXVf2nzMyj6mw85dfY++qxy4dzNYF92ncpX5/3fvzTHYLqcOKFustSPnFMweQ3z
         NoSr/Z1cE1V+iQxIC2xueBxs7ynhVEfhM8visL7aEA90XgosCR3rZOyEkyYuwxSQx0sz
         vpv+GRHgkrNzxjgyJSfKNvxba0QShRFeJU6JUEfhW76U1iyNh/Bmr956g8hAsaHlnFZr
         QP1Fw6D3ngVdYHYlmj7r6/AMZDIKFCAbUFIoyNJ9FQYC0ue3aQ5R5xdBgvdO3I5c2htK
         q+bcO1I4BrQbPaXsZnNyj2Q1tXJOwsmywOjcV3EOFKOMgsUuot68xFktSZUUZAPeF0fU
         BQDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776850619; x=1777455419;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ejxmbc3pCj/J84KsedCUn+567n5vQQYG8MwogqE8brM=;
        b=i589T8ZyfJVYc/A8EbXMwwof47LI54GmwNqJQXxq0nfO5s1oaoN7M/g7gAq/tBhPml
         x4FR/E49oosel4K0mo54hxKPSHQRK0HVROKaBLFzVNohl5OgD3fry+xSw2RiUQROixjN
         L7cV73lV8NYlECNZfmmbOwZYjh4ab0n95XRjQibf/paBZ0BJCHcYNDY12IV/y81a93r9
         dUpENXZUb06wjdIJkF8Vtlz3Oi09VQR7PdHcWR84q4aOaOkQkcTERz8JWSkfOdmLtQ7L
         6mQJItr6cXiUMof991fAcanOsqTAHCBH21uZZXQhk0NNplzcRyA38X1t8SCrQ1erPy7A
         QEwA==
X-Forwarded-Encrypted: i=1; AFNElJ/46qu36OH2LqdS3dZB7K5xKAsDI8mOASp9FFTkw3jidOdCKBSKRDdyY+mKsd9L/BQwfrYDH+v1c0c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yze6N9WNtA1Yoh8l5ditb0s1VQT12LyzzAED8af18DUgXTYkxig
	uRaXeleV5pABNqtdlBxKGFO1/RqVBmyBynRAEJKmz6F86kAgSa6BcaqKq+Xc/06pR43OzayJM47
	05eKAfxrdPRahX7QwPJ5+Z1CVFO0pSi69BTs9OvpAQpnqSCLTUMDhoioLYOq8t83sRV/Q6KicIB
	CT
X-Gm-Gg: AeBDieu+zVMvKLMyY6rljT677guh+VJXcJQG4Bjdm0YaN5Ygyd2AXG+S/B8SkdkxIer
	HoM2nuWeWCjWP1wNFQ2K9wXi9gTGxgcWc4CZI1s8CWzlz0ZMCNxlK48xe3laNUjzmO2z0neFiHH
	9LElUhVObY6Kupx7eArVIgoX28mAEZz6A8cV6LbZHN/6IWiaDeR12INFZN1EVptOwRxWPU/J22v
	B1Jfz4QhVpHJKWQrim5ylp5GO27ULDdRTIDr1j7F1bKkH9Yy2rgcxctUEy1SmIGCjySGJ8umqzv
	Xi95XST3iKWdhSrik9YGF9PHXyTvJaK7YYHloXVOb0TZahdMzNiqhd/zCdfP4ZavEydQJFT7xiU
	KosST5mTJf6hKmeXUisw3Gk26sN0W3JtmO2qT+tUKy1WPn+fasS0MvxnmhvuaRpE97lW07P1Lj+
	N0XNxtrby7egaaIg==
X-Received: by 2002:a05:620a:178f:b0:8ed:d6df:c768 with SMTP id af79cd13be357-8edd6ef1bc9mr844034985a.7.1776850619089;
        Wed, 22 Apr 2026 02:36:59 -0700 (PDT)
X-Received: by 2002:a05:620a:178f:b0:8ed:d6df:c768 with SMTP id af79cd13be357-8edd6ef1bc9mr844033685a.7.1776850618562;
        Wed, 22 Apr 2026 02:36:58 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-672c4d5de13sm3245083a12.26.2026.04.22.02.36.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2026 02:36:56 -0700 (PDT)
Message-ID: <d66d3163-202e-46a4-8e7e-c61eec4122b7@oss.qualcomm.com>
Date: Wed, 22 Apr 2026 11:36:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: qmp-combo: update DP PHY PLL programming
 on Glymur
To: Mahadevan P <mahadevan.p@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa
 <abelvesa@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
References: <20260419-glymur_dp-v1-1-ad1067a8e8ae@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260419-glymur_dp-v1-1-ad1067a8e8ae@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: TGHoPApiiPDhdXrr2EBrSUtAEX2MelHW
X-Authority-Analysis: v=2.4 cv=c5ibhx9l c=1 sm=1 tr=0 ts=69e896bc cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=OVYcTxqJx27R85M3AYkA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: TGHoPApiiPDhdXrr2EBrSUtAEX2MelHW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDA5MSBTYWx0ZWRfX2ZdgcUpy/bPu
 OSW9IQcX6xtOufsRbiTWrJonpZhyJMRG/N6UEPTBPH0HqncmJ9FCaTiDLN3pKI5UdLZj1IqVaZJ
 fPUc+pXIVGZFU/X5/WX/236S0pSp0w1qTjoBqIIj9KaRyPQQHXhSJJzxP9Mg04EsFkUGFKYHr65
 NTybVDPCGIWaIgavsW4ktJXm2Rtm6OBeANKD4+xEwB4h7v9yGn6F/dB+f+x4Y8NPPPqfIP1p4ak
 oYAg0OlDz+VP6PzICnN2Vyridi8kAfBimM4NgJ+J3qJJ5bcJM3mWcv9n7wSEgFnIIQ5ivLwPXsa
 LyFzJncG3PJYUG8LvmTqiCIs+IPbD6wp65Pw0NmU6SQ1pxSJhAYo6+yo25rjsuqJI8GYCXNQJdR
 YIQbMElZN5luchHhY7u9Kc5/eYGJ+nWc2pSf3yN4NFg/MuF8RWu5liTuOoQFCfam1xHuGZ+u5Pz
 4N5z/QsNGjRoOhTixHA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-22_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 adultscore=0 impostorscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604220091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_023700_770353_2E701243 
X-CRM114-Status: GOOD (  10.76  )
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

On 4/19/26 12:15 PM, Mahadevan P wrote:
> The existing DP PHY PLL and AUX configuration for the Glymur platform
> does not fully follow the Hardware Programming Guide requirements for
> DP over Type-C, which results in DP link bring-up failures.
> 
> Update the DP PHY programming sequence and PLL-related register
> settings to align with the latest HPG recommendations. With this
> change, DP link training completes successfully on Glymur-based
> platforms.
> 
> Fixes: d10736db98d2 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>

The tag chain is invalid as-is.
Should this patch have "Author: Ritesh Kumar"?

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
