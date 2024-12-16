Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EDA3E7717F
	for <linux-phy@archiver.kernel.org>; Mon, 16 Dec 2024 12:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r9Rz80pdh3OU9KGS/30ZjV4asqTQEtMtOkwrGnVmMp8=; b=NHex3WWY5Pp+kX
	X8PrxPqcYpBByWeIHbbWoP27xuJpARhMxNLP11ULgviHVWDtLLcf4GtYQoDzyvsMEGyr3+HbIBmTl
	UtlAqGM609kuZF3aZAQCu/1YTD7igXNz369xeoxJMcR7dPCMwlaX99KIJhu8HE/M+OyTJYnn9MxSy
	Oe+M/Pd29O+YoKLK96Dxx6LUU6g93ZHtac6Yi4H98XRxjlCp8jUIjlQyBivRJShAoqR/xtci562o6
	0cUlc7Scmv9UoFZatTncA22rgA8kY2GOasv674IEKK2knjKoDJim72tAR5PafNzJTZJuNtlDbI/8T
	K7fNB+6Fu6+k2hdWtj9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAMW-00000009z57-16Pk;
	Mon, 16 Dec 2024 12:38:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAMU-00000009z4l-20d8
	for linux-phy@lists.infradead.org;
	Mon, 16 Dec 2024 12:38:11 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BG7Sdqw025421
	for <linux-phy@lists.infradead.org>; Mon, 16 Dec 2024 12:38:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pdnRoC01OFV41wLMXSS0ru37AeoKmw/OKRkPEM9jyW4=; b=Onqa4AYK2QDV++uT
	4AozVd46bZAyIYtEspwQst6eg4hJGOir5KYvf0fLpeSgZlsV1LlzEAJIDPTlyGsq
	8anMWI6Z0NPZPRTmcBwQjjoVqFO+88RwpbjOSojQ/oh9k/VTD8LREx6mSW7Akpy0
	j7KosvP0X/gl/7jYnxK9gqfuaojGUnoKbSonMmZVu4DlGqef9odV0H8cybxPbuEz
	7LEGXlJSPFfTEYl3WXVTj3daxgr/oWqXMFMOurQKpjbJSdMMg3tD613dT2tZSYjQ
	pCRiS9/L05b/piOivmeY1cvcqPzYC8hQWwR0rg1IZSygVvfwh4VUmsTf+yMq4nGl
	5kswKQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43jfus0u5d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Dec 2024 12:38:08 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-467a97dec51so4102621cf.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Dec 2024 04:38:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734352688; x=1734957488;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pdnRoC01OFV41wLMXSS0ru37AeoKmw/OKRkPEM9jyW4=;
        b=D8ZtdOSlM3iah62J0bIksUOtX2rQlQtEiuWONMpj+fHqofEv7po8GJh+86CMcTWDkG
         SnNEYFmh5ZyJfx4pXthvHGDaBNoHG/Ji1ekGuUinUaZTZp8+E/K1yug6igV6xfpfG7U1
         BMGbploVunMc6ipBkHjAh6CCPKHKa4DoROOspEk66bLMzxGtX0Gp5VfQSJXj/ruJZzOQ
         mG8ZvtT0Hx31rGQ6Ni2hTOHj1VRVSD8aufdTY4hlcJLMWOOhXJmy1OsBZG2KQWbuMf+X
         Z9ZpstKetK55BtoqhrHNFuomoeWyeLQAVxn0eYgR+bm1lWSpFQY+XIZVr7h1ORvQ8wK0
         KaEg==
X-Forwarded-Encrypted: i=1; AJvYcCUeq9/q7rzxc9BPyoAWfS0fkUtzwMiPS9Ij3shhnkQMyVj1guEXKRjZKmF/Q6H3wV6R90GBd7VazBc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyzvNIbNVmZpghLdo0TgEx19/CeowMzlBu8xWaQM5925R/kQFkX
	9FEgQ3MEJKYT3XiE3r3uV61mWFq4ycmi33uB2HRhnciQkBSgzPWViBztiI0VKvSYYdNIc3yBSvf
	PexaagnK4Dlvn6Etwhofu0eZ0OumZhU6HwvcztfzqHqpHYOhQPqaYpIHvAEdmNnBy
X-Gm-Gg: ASbGnctQnWitLqt/V4a4YF9H80w1/o4bVp6aK8fa1VbNgJCs5qVvby9q3/XwaVb75kA
	sWsxLVOl2gMnkbW3rG1NBB2/viGkse9i5YgelHeAOGQI1VrIH7tVHmdy8q0R6cxJ/QIcO8D/9em
	RZqpcjiD2ARNtcJzdN395CnCz5IQBXYkxWL7bShr8r1brUK0hTYUGhTDEfm3bL7TQsMWxNBx4u9
	2v39F/rt0Ar0TlrzGL6P46xa9F306lZ40kmZmxCQPaa/2O5BReS3qMLLp6JO4DGWtIfOmtcofyR
	3t4Cq1ZR59idH8blrI9a9Ex8OWY5Xif/5GM=
X-Received: by 2002:ac8:5790:0:b0:467:5931:f6a8 with SMTP id d75a77b69052e-467a586e7c4mr68200131cf.16.1734352688094;
        Mon, 16 Dec 2024 04:38:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHBZq+xdirGGlvXjXKLslR6dJXMeyFlRPNL9zK3PD5HijaosBXr9Pya5+Lx8++owoZlIykajA==
X-Received: by 2002:ac8:5790:0:b0:467:5931:f6a8 with SMTP id d75a77b69052e-467a586e7c4mr68200011cf.16.1734352687718;
        Mon, 16 Dec 2024 04:38:07 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab9638ec48sm327517966b.147.2024.12.16.04.38.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2024 04:38:07 -0800 (PST)
Message-ID: <14b1d2f7-0c0e-4976-b4c6-fe3b76b55d9f@oss.qualcomm.com>
Date: Mon, 16 Dec 2024 13:38:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: qcs615: add UFS node
To: Xin Liu <quic_liuxin@quicinc.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, quic_jiegan@quicinc.com,
        quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com,
        quic_sayalil@quicinc.com
References: <20241216095439.531357-1-quic_liuxin@quicinc.com>
 <20241216095439.531357-3-quic_liuxin@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241216095439.531357-3-quic_liuxin@quicinc.com>
X-Proofpoint-ORIG-GUID: L5YaHOK55rieZQeg4ZW8RKFHQT5gzD9r
X-Proofpoint-GUID: L5YaHOK55rieZQeg4ZW8RKFHQT5gzD9r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 suspectscore=0 impostorscore=0 adultscore=0
 phishscore=0 mlxlogscore=791 bulkscore=0 mlxscore=0 lowpriorityscore=0
 spamscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412160107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_043810_640966_1D5C15D7 
X-CRM114-Status: UNSURE (   9.25  )
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

On 16.12.2024 10:54 AM, Xin Liu wrote:
> From: Sayali Lokhande <quic_sayalil@quicinc.com>
> 
> Add the UFS Host Controller node and its PHY for QCS615 SoC.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
