Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09612C3600C
	for <linux-phy@archiver.kernel.org>; Mon, 24 Mar 2025 19:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poreTCGdtWU+rKbaMCgi+iiN+KC418Mx+Q8BwaVrnlU=; b=Jmz663b6GCaVxt
	tAc/1XFGmxU1uNlkmsQaDcljQLaq4LqOAejTFdmHECcMDltMlv9+qZrDHHHaCjxK7crBqavLJov6r
	HCGhNJIjBN9n3ivVHa8ajROdOAXM7E1941bNurq1G7x6uOPTq3i5WIuvwt40M+8IGqph5K+oPcI+k
	DxGDqLwGKd2f49lDQDqnP58pH7WTbIItagbDnFLG8cj82lKIYlPA6mjkJC7mlUZUUQDEwk0Hp5ZJ4
	9Vo0Z7oyQw5gL+3iL2CAfkRumhMZglUQ/KPn9eWk9U5kwLCKGmlHwIJkDpk7ucjKoHKIWSkX7cynY
	XQECzv+AhItidi5g4Qug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twnuW-000000047xi-2NPJ;
	Mon, 24 Mar 2025 19:56:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twndq-000000046Af-1zb2
	for linux-phy@lists.infradead.org;
	Mon, 24 Mar 2025 19:39:24 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52OCmDpc025187
	for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 19:39:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Aq9nswubh4CvJAyZ9x8Ivp0JYqniIFdvl4igqnNOPXc=; b=XU6m82Rbcvg6Iklt
	ecNNzMlshf73nEnPd22llaFTpdEtm0b7LIuMomZwEa0DtqCGp/6GeZJ7rbl3BpI8
	SL2qdSeAaSPqCuSpIhY2dSM1t77gYKJRaLIlHxArKmE/TFBoRit6ttbd2x05tSHj
	2xwOuEbvc21HcKbqtdUWB9LQKEdMmvZe9Vg1ApXT3nThHSK3atPeQPA7pG1mpCHW
	2XXM0eBk+Ed4N2BF1Kv9I9qPv4g/OleqULgOROT5E3KNyRvbkMBGNWIATQ5dPcN2
	Y2BaStsg6pvjEorTJf7DuPYRLrSKiYHs1hsP8dhztnOl3tCGTQXqetN/DVhygdL4
	ckpDjQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45k7qj91v8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 19:39:21 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4766ce9a08cso4937121cf.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 12:39:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742845160; x=1743449960;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Aq9nswubh4CvJAyZ9x8Ivp0JYqniIFdvl4igqnNOPXc=;
        b=qiR0X2XVZm35nVXPz/CGmoLzspWnVtHpKoj+N8h47USGF1Fg0OE5aP3cZlmc0SiGQs
         20BGn4PRokoKN76Bw1DVM4TCsVlf+ocWjXQc8OcemwWNdg8zOX6cIu1fKBTl7FbiItuU
         4BNGXsEVMu+bvTuKNq0UE5F+XYr8k+uH3us6k2CAAJqEQIR5ruHcNjJ+AOpVkINxI6aI
         zaD9flQOp0u7RYQyiS3eHfMeSomS8GCwDmq7TXs4SQy3MLu+ZedIjTgrGnRFQ3xGuJZV
         aAtNxV+7K9Cq3YfzA6jp1cq8HGgqIur0gMvZgOf1hVuwzWyq7sNFLfnxqKXAOjdRNPvn
         x2qw==
X-Forwarded-Encrypted: i=1; AJvYcCX3kwYcBsEmbqPisN/Xyovkq+wqmphlYRt16vkbHumIadqGN8awvuA4kOkkeU7yKSOvAnoQVlq+ulg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzujf0eeSgqW2/79W+D4bhjhIwALp7EmY2UVURH/pb+cSrI2/dI
	1NjTkEVS1Tj7GB2eLe/xsXENaiQ15DFA7cXrDCXWro92tUrezsfCUf5EQ5hCcH7tAppVl+fHLLG
	Tub64pCnF8E2ybiiGoSaTEzDYYkDmiL5ccTay4wBuoMnn7hrCIoMLH+calSGmtt7a
X-Gm-Gg: ASbGnct1iLzPopHOD1nsF3M4CBYFok3VDe1idgTE/rAH27SmiA/IllzRBSQRXazNFlx
	FU2ruA7V3DpM4UxQ//5jcphFT4pSVqMCOX1pNwtCrsBaEKCkcpGyCPH/4XcoqwOZwYnbHxAWYn7
	NnY3Q3yqPgdaivE0QMMEWOnwBpTugJU5UsEmcB+brTXM+SsU9BGennt6+rUFzk4z/pinCLQ1QRD
	NracvqCXuBMOh+gque7JEiy1d0s4LFUtxETbrhWF4Bqj11OI3alBvkw0D2EiqrHa1rq+LGBAyUI
	HnbhpTQCto0Km0chCtJZ8ZHFVZ/XD3uwNlLilPzq6utSgIClOG8whhsY5n/0EdonQGpD/A==
X-Received: by 2002:ac8:5890:0:b0:474:e664:691b with SMTP id d75a77b69052e-4771dd87882mr89906061cf.8.1742845160058;
        Mon, 24 Mar 2025 12:39:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHHviieFK1EfENsl4a9Pml/b1ejxCDE5UyK/0Ef2r/1I9kvIRSgTlksPYavU5w4Abz1YKLR2A==
X-Received: by 2002:ac8:5890:0:b0:474:e664:691b with SMTP id d75a77b69052e-4771dd87882mr89905691cf.8.1742845159499;
        Mon, 24 Mar 2025 12:39:19 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ebccf687fbsm6561703a12.4.2025.03.24.12.39.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 12:39:19 -0700 (PDT)
Message-ID: <8ed64d8e-40f7-4a2f-a758-10ac5f08254c@oss.qualcomm.com>
Date: Mon, 24 Mar 2025 20:39:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 6/6] arm64: dts: qcom: ipq5018: Enable PCIe
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        20250317100029.881286-2-quic_varada@quicinc.com,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-6-b7d659a76205@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250321-ipq5018-pcie-v6-6-b7d659a76205@outlook.com>
X-Proofpoint-ORIG-GUID: dCN824P3StLpfB5W9Wg0vaLwgv3-pfd-
X-Proofpoint-GUID: dCN824P3StLpfB5W9Wg0vaLwgv3-pfd-
X-Authority-Analysis: v=2.4 cv=feOty1QF c=1 sm=1 tr=0 ts=67e1b4e9 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=QQJSiojk9BBBe0YzEv4A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-24_06,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 mlxscore=0
 mlxlogscore=574 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503240140
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_123922_521944_90CA6DE6 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
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

On 3/21/25 1:14 PM, George Moussalem via B4 Relay wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Enable the PCIe controller and PHY nodes for RDP 432-c2.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
