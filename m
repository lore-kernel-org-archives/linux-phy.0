Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 864E0E77170
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 17:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fcC5zIvFHy0DfQugG1rzuFUVpXJIcvRLi82KEZ8vopw=; b=HPQz8frSdXeTj8
	wdZ06R/MnmIMJwp94qDZZrWE3MvwSVAfVW+ezNhU57svgCAWA4OOcIm4dmpgIE8xofsyHsnildNK1
	Xr+VcrJENU7E1HRR/xi74qKSa0h1tj1e/sylEBP02VLoY2hNGhhHzGVVfx0x3PxYIJjd5mz+PcFO4
	N/XQwbzt3HRkGgPL2M2dpIIeGkqVm/1TAIMKX6Wn/LT7n3DYgXFFu0exMZdSIOyRp965foHulnvjj
	2j/gksOY9GSljeytOAc2fEa4PyJ9nvSJH8mUKDUKLXJ0f+xL9cKj3oVhhnzW4bLHRKi2TpMOns0A5
	j71rLi/UjmHsN1tetqng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJFr8-0000000GzOQ-1I27;
	Thu, 05 Dec 2024 17:41:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJFr5-0000000GzNi-21ZG
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 17:41:36 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5HaHIo019220
	for <linux-phy@lists.infradead.org>; Thu, 5 Dec 2024 17:41:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SXzRRGsyc/c2BUi8PcPVnuNR/0fJO0GE8qnSNFeaoZc=; b=YGBKQq3ixqo2vJNe
	8jq1scLTuRD8CCWNa/HeKAiG7hb72nhoipa+Ejo8ai9knqUZmlCAs+hbP7VesZea
	gMc1WUN64LZjb/ifCCZpw5hw8ryfR6kPaoqB8a4qYDPQZhkvlohZY6ZESTH22TA8
	knDKsigj7GsqigXLaiEpQorq9CKoRSSajiEKARohZpc7hbqy1RoqUlZhQscIeXpR
	clMa7Ylb4sSyRq8cAdNthFWhrITs1aqtKe+rApPMFV+GTRAld3bvBL67OWqfQ0Ah
	pJhBPw17seOWdYuwxb9wFUeH5mA9mM9pzh4zhgvyY3eEw2L3E5SLnCKxFgHnNUCz
	SxOUFg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439w910ee0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 17:41:34 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4667cab5e1bso2960721cf.3
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 09:41:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733420494; x=1734025294;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SXzRRGsyc/c2BUi8PcPVnuNR/0fJO0GE8qnSNFeaoZc=;
        b=N65ccXsVr7W23DpyWMIClhlz6jSFJLZA9ZzXeF8OtRSLHz3NbNZTI3zMxsLaBIYVDm
         tfVeSrV2m2EYpv3kKp0AE7L3xEeAxi2Jnvc07NbcuSmJBhUosq2ZUyKF5T4V3tlstvE/
         /6UsQ170SLPImY6SNBL3SGqsn6Dyg8eCKwkuTD+ztfci9saoaXFo7ygVm9bd0nd2rHGG
         A/DX2AFfg0Y5CGaiCOWRSDtiovoAJbr3gO6VFm8x3TYMu43kVei9x18riglD+uKklpg9
         Jd7CVnxg4DbyB9z7isHTruVh2YHOzPbV4MI8ZH9nM3GlDXwpnzqJGYgfE6CvXxbQ33C5
         BXKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfyfqjE8HeHihyQm1zpGIR7VwIF/vsxcscNnymhpnf/9Ugx6I83YjmsDF0q641+ygUvoo1TL7sr+Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy641tRITJFfqs7ydlWXpjm79iWDlkL3Gg2UAzF4wt3SKsiJZLg
	sooiq1UkOsWWA/0i/4/gV76C/4mMZjA6ohXL7oBjlFEGx39kP84mKZGmOoezlxp1jFK/uUQ69+H
	16uWPf/FWM9+tA8ZnGQf7N5z77zYq/IvT/DGQSDW0CknoJ3/N8TKUGmpkG4eco3z6
X-Gm-Gg: ASbGnctJmZcY+CuTySd5aB2BL4j42S3XxXEaOVZHXrIvWhcFYVF01O0+Soip+ffoPc9
	dxCdCp0xqI9+3MF0dd9zw536E/BrVYQagp73ngyuZQxLfb8wIFjtrzPt+AoNc1GFoK4fJ3v85mt
	pGRdwln7OFRcTowG1hj08cSHYQ90Z7p10Ma1HF2ZBuYHeLXXKp1xjXjBitnw6l/NFXkwwgTIX9c
	jgkwaImpIRxVx6aOWiAssMAR9nW15hnXfNtc31n5vZaL7FCIWagwn28lD2WRHj1DdkKdEU9W5Yp
	h8HfiqeE7hQWLfYpQczvR6n1zZmBREw=
X-Received: by 2002:a05:622a:1b0f:b0:460:e4e3:457 with SMTP id d75a77b69052e-46734eeed1emr69321cf.11.1733420493589;
        Thu, 05 Dec 2024 09:41:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE4nDHz+0THtItB3ZVRkcOhOY37nBmuqywfPU8W/DhGboRjz3vQnXgf1jXoqkNHIizg2v5WdQ==
X-Received: by 2002:a05:622a:1b0f:b0:460:e4e3:457 with SMTP id d75a77b69052e-46734eeed1emr69151cf.11.1733420493160;
        Thu, 05 Dec 2024 09:41:33 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260ebaefsm119579666b.197.2024.12.05.09.41.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 09:41:32 -0800 (PST)
Message-ID: <bccb09b9-e139-439f-9a1d-2d17265edee6@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 18:41:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 8/8] arm64: dts: qcom: qcs8300: enable pcie1 for
 qcs8300 platform
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, robh+dt@kernel.org,
        manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
        lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
        neil.armstrong@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: quic_tsoni@quicinc.com, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20241128081056.1361739-1-quic_ziyuzhan@quicinc.com>
 <20241128081056.1361739-9-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241128081056.1361739-9-quic_ziyuzhan@quicinc.com>
X-Proofpoint-ORIG-GUID: zZgz0q1Iu0q7JUowGkBDbj6XqWgj5-vI
X-Proofpoint-GUID: zZgz0q1Iu0q7JUowGkBDbj6XqWgj5-vI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=927 bulkscore=0
 impostorscore=0 phishscore=0 suspectscore=0 adultscore=0 mlxscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_094135_647012_4FE3A830 
X-CRM114-Status: GOOD (  15.24  )
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

On 28.11.2024 9:10 AM, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe1, board related gpios,
> PMIC regulators, etc.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 42 ++++++++++++++++++++++-
>  1 file changed, 41 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> index 7f97f771c44a..a83faba0252e 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -214,7 +214,7 @@ &gcc {
>  	clocks = <&rpmhcc RPMH_CXO_CLK>,
>  		 <&sleep_clk>,
>  		 <&pcie0_phy>,
> -		 <0>,
> +		 <&pcie1_phy>,
>  		 <0>,
>  		 <0>,
>  		 <0>,

This should be in the previous patch

Otherwise lgtm

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
