Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F610C5AD49
	for <linux-phy@archiver.kernel.org>; Tue,  3 Jun 2025 13:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wCbX7jSoY9zXCypfPlNGqo7KV2Tc4fHUvaLCyRJq+dM=; b=lK4x+a8RwntlmJ
	kgNhzE8GM1wxkJNhYdxHFzga+DXk9s+jtBG4FZAwZePWmgB/jr5ObbmnRQ5i2NRGN54GotthNLV9u
	+01OL5Q9xN0eVh1vQkT8fY844tQwZ28Ckw/FDNN1YyhotyMQ6KN6JYAry+t6SHShfG08n7//z5lFg
	Ymf0LX9HdZqwaKFmhIAPjOvmXrpFdRicpe0OxJMA7Y8QtArOmeEq5VQCdsfABIHtseO8Ow7n1ZAX7
	ji27IB6xi37goixTefgJclQ+spDCUxYzKWneJsHHD8Miwr4al+DsKbhqedbbuRxM68DZf/kox+YM9
	j5WNb4yOa0nqwN/3i+yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMRRF-0000000B09Z-0Fwb;
	Tue, 03 Jun 2025 13:12:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMRQb-0000000B02F-1KIL
	for linux-phy@lists.infradead.org;
	Tue, 03 Jun 2025 13:11:42 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5539JcWA007808
	for <linux-phy@lists.infradead.org>; Tue, 3 Jun 2025 13:11:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hkowjwQkIBoerXsoTVXb43GI
	N60uMuMxhmK0iRDbVQQ=; b=Rufqe/D8kes8A+oWpf1AyhIj2j2I3Ay5OjESE69n
	aNjJpAklteOXnWpFTb4qravFc2D9X4A8JTG+kvPtG4Vx3XYwWDDCNX3lskS90cVU
	nWa3tuQPkQIq6gMLFJUIMTIFYyK8+r3Oz/GoaTJtKx/K8+8Se2IKn9nvVXX/sc89
	Wx9Vt0Zr/Of7fB7JOg1rDHi9mYE6d2/YeJoQSQqE++R7lSfW58iUcjT52QBX8ZjK
	p47geWL1PLqV4T9pSSOizefyYhOIHeqHjDh2JOy3tCJNGMNRdNJRNsyKpOjhnZno
	kO1gPlrEuIGAzKEG7aIkBlOydGNo5+I4i2mAd3peXdNhyg==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8stmgd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Jun 2025 13:11:40 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-72e90e6e171so1667237a34.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Jun 2025 06:11:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748956299; x=1749561099;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hkowjwQkIBoerXsoTVXb43GIN60uMuMxhmK0iRDbVQQ=;
        b=onJ9ZlmtZ6eRsvuWEZzacuVLZvul5yqRub6HCmIEzicMG6IF9OXFuuV5yJEQi1+MYj
         FA+OFqxJMoXyyhmWBIe4MY2g/iWuTIlDsmBO/2tgcVbuIT3RRATlDDVIWNSVBIi6O2hu
         YpD0YvXELb+RTrhKqZN6wkBbB+Ar2tJFKvE0CnU9au4et34QT+yXEUBrnk6zEh1izmj6
         1at89ocGqp2o1e6OwBbLvu5WEaP9SUkCn1SG0fCYi8kWOoqXP2v+wQP6fxmgTBD+rToc
         NRMJ4jD2B5XVRwIbza46qrxcuRHOBZAV48oPBhM0fguHjlgzIAPJWjia8YoUnnUcTFDM
         TKDQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwUUv0z32nsQZdh3FbqSxC28JtMWiu3kEI2YqKx31yIyPb+TjCkZuKKv5CzdTq1rsFGC6GvODNGCo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxqcGEFoh1MHawiD1/h2TtoIrALqPUA6Nk/neH0s7p6ZaD3pgP3
	VBdhvdPDDt5asVVDpMPDq2ROsR32Na8LLgJr7YzLwCCuiJ6yofxcxDU0i7wLGwV+OxEzPuB7ouR
	ac4Ie3xXDeQ1tfqmr++c6bl8EX8T788UVX/Hx/F8G8v70mWV7TIoB7HvNmK/NikNAjGtS
X-Gm-Gg: ASbGncvxCkn8KTirXS3LZSTcQjBEcdt5bcgifTd5If9xa+IWvP+aGgyDhktR1TqVRJj
	44ewYSRWPv5Q1anSJVD+fqU23//OxkamRpSQAfRE2R0pyYbNo6FejMGvb5VYodvqwtMAdUkHEk3
	chHCsrauoC4jRhWvmUIB7QN0JdPvWW+V4YHR9JwCHkCWrve+X0NYgoOfwrmVHWIgvxHEYCrzQay
	ozDXnYVFnPfy7w6YTV+aBnltQiqvGzZvQsewLTrkGv+Io0V4xuqoptIb6AHdg03dEB10kqyuZfz
	RHIIatkfDz5nvg7O8GwrrzehUt20WACGPp0fy/ARvHuNz2JbqgdLQw9NIS4QjbEzurqw54hi26w
	=
X-Received: by 2002:a05:6830:3c8c:b0:72b:8297:e988 with SMTP id 46e09a7af769-736ecf38198mr9861957a34.25.1748956299373;
        Tue, 03 Jun 2025 06:11:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrv6xy9Z9gKos6U7bwZdGI8uQ9F+7hgkYBjMqaT3/DoXyQAJAhoI0Awytxg6+zEQ8YdBqDPw==
X-Received: by 2002:a05:6830:3c8c:b0:72b:8297:e988 with SMTP id 46e09a7af769-736ecf38198mr9861924a34.25.1748956298927;
        Tue, 03 Jun 2025 06:11:38 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55337910f91sm1920796e87.157.2025.06.03.06.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 06:11:38 -0700 (PDT)
Date: Tue, 3 Jun 2025 16:11:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org,
        manivannan.sadhasivam@linaro.org, robh@kernel.org, bhelgaas@google.com,
        krzk+dt@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v1 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document
 link_down reset
Message-ID: <drr7cngryldptgzbmac7l2xpryugbrnydke3alq5da2mfvmgm5@nwjsqkef7ypc>
References: <20250529035416.4159963-1-quic_ziyuzhan@quicinc.com>
 <20250529035416.4159963-3-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250529035416.4159963-3-quic_ziyuzhan@quicinc.com>
X-Authority-Analysis: v=2.4 cv=RMizH5i+ c=1 sm=1 tr=0 ts=683ef48c cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=JfrnYn6hAAAA:8 a=COk6AnOGAAAA:8 a=MMspel2jwrA65jTUX34A:9
 a=CjuIK1q_8ugA:10 a=EyFUmsFV_t8cxB2kMr4A:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDExNCBTYWx0ZWRfX1N2WcPXbjdC5
 pb99hqMljSvSou55tOplyV+dj/VzAhT2mvG0+7hV5wx3+5ozCyfbkdbpaOAM9I2Ph8DR3495Hhh
 ckjF+mUxeyFx8NXq92YTQno/4BKpNqsiRM6g5bm252qBNxaTSH9nd6RPh/uY5uWc7heBUpfxOsj
 zw7Rb+qwzmfhX59at5F+OVNmY4vppllCsM2m/fHlph8tYVkHpkZihOYenbwcC525ZVYgFOPRlU3
 kH9VwAZpi+xeNRixqG02bgIFGhTlm69D4VCzRrEJNgeZf3YnqdeqZi7qJBieviIaBuuXHRPzP4p
 7cyRcKczPOx9NAr/VH7rIdN+JZypxBPfYc0UR9RqyTZtelADL7LIxCRu1GlDJ6XAZpv3/gl6K3V
 FUPPTQM09XJYpSee4yc8vNTXilfD8ZJqDO23ltQT47hqr0UFxnTkA7JVjg2W7lydSqaUdcnU
X-Proofpoint-GUID: mCcCHJc5NozX7Qo5O5gmWYP37F0Ornzv
X-Proofpoint-ORIG-GUID: mCcCHJc5NozX7Qo5O5gmWYP37F0Ornzv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 adultscore=0 mlxlogscore=999 mlxscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506030114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_061141_361233_71046E75 
X-CRM114-Status: GOOD (  20.71  )
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

On Thu, May 29, 2025 at 11:54:14AM +0800, Ziyue Zhang wrote:
> Each PCIe controller on sa8775p supports 'link_down'reset on hardware,
> document it.

I don't think it's possible to "support" reset in hardware. Either it
exists and is routed, or it is not.

> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie-sa8775p.yaml  | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> index e3fa232da2ca..805258cbcf2f 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> @@ -61,11 +61,14 @@ properties:
>        - const: global
>  
>    resets:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2

Shouldn't we just update this to maxItems:2 / minItems:2 and drop
minItems:1 from the next clause?

>  
>    reset-names:
> +    minItems: 1
>      items:
> -      - const: pci
> +      - const: pci # PCIe core reset
> +      - const: link_down # PCIe link down reset
>  
>  required:
>    - interconnects
> @@ -161,8 +164,10 @@ examples:
>  
>              power-domains = <&gcc PCIE_0_GDSC>;
>  
> -            resets = <&gcc GCC_PCIE_0_BCR>;
> -            reset-names = "pci";
> +            resets = <&gcc GCC_PCIE_0_BCR>,
> +                     <&gcc GCC_PCIE_0_LINK_DOWN_BCR>;
> +            reset-names = "pci",
> +                          "link_down";
>  
>              perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
>              wake-gpios = <&tlmm 0 GPIO_ACTIVE_HIGH>;
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
