Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A677BCCF9E5
	for <linux-phy@archiver.kernel.org>; Mon, 27 Oct 2025 13:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MP4wZSFr6WxFITYwGN0YI+aYeitrXTybyVj9MnHQFzk=; b=VIxTUSmrHQG5ge
	atgu1jVELth9BE+vLzP+8diRYHBtw72RM/qFJDxnYudEuFECHiOpcvAVOyf2KfUJMY/JKXzBndVB3
	MMrd1oYUTHv6BmheU+HWfzsDejeV103ewTIKCSqLWEDDWsK4X6iyKIUr7GNCftPFfnxTX3H/Wuw8f
	8L1vxL8KdJP/As2PO6N7M1w8ALg+hWK1A+F47s7ImCi3exkjtJYOIOGluBC+Rfe2gk0dQ5vCyg61e
	ckpHM6H2NED6zoepuG/5fM/b3bpQR9rJ2cwLGhQ+J3jSouaY0PQgRpDWlIlGIlwQHUz9w34bjuhkq
	1VWnpC93vwluhnnpcWhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDNBC-0000000E0Xz-1aOt;
	Mon, 27 Oct 2025 13:22:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDNB9-0000000E0Xb-0LNV
	for linux-phy@lists.infradead.org;
	Mon, 27 Oct 2025 13:22:32 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R8u1Qw852402
	for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 13:22:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bOamnVJjm+3duRsX5YWXJXmZ4fYfBcBJKOdsubpmAGE=; b=JK7xfJJmIhsARo/h
	+zlqzqH+epJrohpGrugMsbmErn3Q+xnKQ/nHTu910A8MbmhSSmQ+McAUTWAqO6Jj
	GfS8mnPh2q7hT6nOJnXYNz5he+KkokLYwSylPopuSHr5vnX8Vv3n3vZTzAZ5qWug
	Ln34lsRMWGa6mvC8UgiAovtS0+dCUOjvM/ka5ojng6z81c0MEWn8SM0yporgkY2m
	/GC8E18WGCwh1NoJ+XKnX6xVYsLcpZJlZSyaPM7kXUYfEZGh1pWP86QsYDxKSKfI
	sRUAGGhgDdTs8JL0p9QdLKMpxpiOt6t4j4eSdf/xBP28K6j8gOFr3pquAxSZ5VRg
	p+iJvA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a1ud1t353-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 13:22:30 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-826b30ed087so14118996d6.2
        for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 06:22:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761571349; x=1762176149;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bOamnVJjm+3duRsX5YWXJXmZ4fYfBcBJKOdsubpmAGE=;
        b=JY6Y24z2D4Q19CCqedA/M3Mzsm4i+baKk0oOVEI6dEwcDyD1c25OzENN5ey+LhCwJf
         +mQi1AcyAwXC+a6HwLYQ5+XUwXOX+i0Lu31OKY7L5NO0lEDJdWdjaVovFgX9iYd1AdMT
         CAmOLTV9OXbqEqeFLajU5/9HpOr0mAxLHLIFDzXLvQgFqgKcxsj03N/56yELoiRYoP6v
         vu8Gy2bS6s/HmpggTXnj5+mB3BHP/wtY9qep0x3N9ncG+0QnZwOwz8AVO/n76q1j4bB1
         Fg4BvyrGJ+lu4G6H5U2bJtZ6ula1tWGDvMfVGVr49T5gDJL5r4ADPs0bTKF9txI5pqnO
         23bQ==
X-Forwarded-Encrypted: i=1; AJvYcCWkl8qRwPAEIRDGxTcbiDvLYjPm38HtPVir1pL/ctOisKkOVxbu5SvvH3ztIuPhYlz2j8mN8MZ7gNc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwnnOjdzOT4qlwLzMZMuovPTYY5dcJ0rvqSvnSGuQHJXRueMDVg
	PBl72b99miRa0mDblYk5XAhyGunc2Y+h9LvlGjX4KFB2GJHAeBfCcSfFESG4z4kQ4l8d87j8UmH
	4cTVL1+/7YweAUko8IXzcW23Lde5Pj8UFlrKrXZzn2g6vNIQuTk2d52Q7OIuCv8S7gim6
X-Gm-Gg: ASbGnct4Hp/H/i00U/TlkMXJJuc3N7beOLlTvTnFiPSpzBbQgLaVWY7WlYNbUoLkM8r
	137cirQxyBH+37g56tKGjDG3TLPa9MABM6uAHD5nmnhogm82Zb9oxPrlxUn16bf89eszm0vAAc5
	zSoMCgXS1w+OsnDdPUmArOjjvqNdz/XzRVHO/zwFCLMf4rG0ol4yIUrYnGcVu38qxqgoX/S6GYY
	v6erw4eOrl4rN8f0yKsRT8RKXDNg2v2S0NNT9v57ASHf01y4gD+JQ0V73iFW4kCY49K6/AzScGw
	kGvSjAPu4V8Tj2tyMCa6xaad0tgpOax5wZwyjbGrLiGIAANEly43Ee3A6Iv2PPs4lLuI5I/fh9o
	gdubHfeTPkcKW76TcLtN9gnYLy7ueZzNNUWFPnLM+RwVzcPriQ764W26W
X-Received: by 2002:ad4:5de6:0:b0:87c:19b6:398e with SMTP id 6a1803df08f44-87de70b4724mr204621316d6.2.1761571349365;
        Mon, 27 Oct 2025 06:22:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERE9vYsDZcoNA0WsLgwk+/4zZa5M1BCBMWIBkdBse7SWtg/6ZU8mEslR7ufn5BKT+zPKuiFA==
X-Received: by 2002:ad4:5de6:0:b0:87c:19b6:398e with SMTP id 6a1803df08f44-87de70b4724mr204620706d6.2.1761571348570;
        Mon, 27 Oct 2025 06:22:28 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7ef6c129sm6430632a12.3.2025.10.27.06.22.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 06:22:28 -0700 (PDT)
Message-ID: <b16872b5-e497-484d-bba5-7c4ec590cfc2@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 14:22:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/6] Add PCIe support for Kaanapali
To: Manivannan Sadhasivam <mani@kernel.org>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
 <o4o6tthwz4vz5uqqjv5c4cld6qhhrfa7xzotjd3qyz7gpoab5s@ki4nwe6us4zc>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <o4o6tthwz4vz5uqqjv5c4cld6qhhrfa7xzotjd3qyz7gpoab5s@ki4nwe6us4zc>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDEyNSBTYWx0ZWRfX8ePkA0ocB3K2
 jTCoLtlS2qf1A4SYg3xvqsxJAGThhhXwDbrVq12ffDWmPiI6w/JqfsMPQHSLxEV97x0ZAUrAiZk
 Uox9iEgYLVWEOly9BjFmMYFgxrHVIyHWht/0LeeMNRtRiBBysBZV4r/7I89fXH9SMkZhtrd338Q
 RgeAoUSrJ0P0sRwFys7870coZBGTVL5vaLigXK4Uu3SleURMGTrR1XJpe1C8KdBAApAQGIK0vSW
 U9huS1Fem0hPRiFu9FNfDrw7ykDN1cV5kxaqw2W4eb0YWXKjOuAb+iXjaVEhtWpbXXw0/72Cs2X
 EGqNB83MvFqCZFguQXT7vix5rlnXPI0R5O0Bf7Cp78MG9dJBp5ODDSWQoBs5QTCcp6KCH6S4YN3
 XaN5ESaN88QjI7zrTpYXix4xODbmAA==
X-Proofpoint-GUID: Vq3SjmL2JtXtPQphyXOmKyNx0FZs9iT2
X-Proofpoint-ORIG-GUID: Vq3SjmL2JtXtPQphyXOmKyNx0FZs9iT2
X-Authority-Analysis: v=2.4 cv=UqNu9uwB c=1 sm=1 tr=0 ts=68ff7216 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ceeQHXABJUnddBcZNCUA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510020000
 definitions=main-2510270125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_062231_132126_331B3BF5 
X-CRM114-Status: GOOD (  12.76  )
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

On 10/27/25 2:21 PM, Manivannan Sadhasivam wrote:
> On Wed, Oct 15, 2025 at 03:27:30AM -0700, Qiang Yu wrote:
>> Describe PCIe controller and PHY. Also add required system resources like
>> regulators, clocks, interrupts and registers configuration for PCIe.
>>
>> Changes in v2:
>> - Rewrite commit msg for PATCH[3/6]
>> - Keep keep pcs-pcie reigster definitions sorted.
>> - Add Reviewed-by tag.
>> - Keep qmp_pcie_of_match_table sorted.
>> - Link to v1: https://lore.kernel.org/all/20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com/
>>
>> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
>> ---
>> Qiang Yu (6):
>>       dt-bindings: PCI: qcom,pcie-sm8550: Add Kaanapali compatible
>>       dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Kaanapali compatible
>>       phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe PHY v8 register offsets
>>       phy: qcom-qmp: pcs-pcie: Add v8 register offsets
>>       phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
>>       phy: qcom: qmp-pcie: add QMP PCIe PHY tables for Kaanapali
> 
> So this platform doesn't support nocsr PHY reset?

There's a reset, but the UEFI doesn't program the sequences on mobile..

I raised that point internally, maybe next gen > 
> - Mani
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
