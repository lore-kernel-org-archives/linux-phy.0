Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99104CAC5B0
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 09:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WuCWccGh/wWfadec/YZGnn/8BYEbRiSDxTWzgo/bhOQ=; b=Gl0tIe9rUnXVcC
	V8p9RGOQhjcJWgoggI9R6ZuB+artzVJi7AWCxWpiSrCeo4ZD+Jd9muEMoPG801+nje2Ha8clFJIqr
	XH1DbHaPPoREOcA68YdBViga42QHpEjgCiDRmeA2CIrynle+nO4P8/MYJFExhKDvgzbma/4/gWpiX
	0gngGjiiwB1EBTCd9VuNJcxhzePwwYSzVXCPzQibABD/vZ1L/rDgE0gFYHB79encLWkTWYDAQEoOU
	MfnGtoDrR+vXT18Rj2cts5TuPa0VlRogt6McP2RuQ+fJE/UEVOvE/+mZyvIWPU4dY7VHhGyitaus8
	0KH0MeWCsSukSolAS/Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iGc-00000007bR0-1cKL;
	Thu, 25 Sep 2025 09:27:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iGa-00000007bPg-0DBr
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 09:27:57 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P12kUj002657
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 09:27:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WUqki5AzViBdF4eWTm2k5POhswMbNALIQr455o+v3LE=; b=RXKzxbACfU6aYseM
	WS/frB2kdxl9qtA/ZbXY6GHtrmGzwQ8xlO4nhwcH+IsJZL1MRxwlXv0Mj1SozAeC
	I0Tz5tKQ5EtLrofZi1ph7Y95gJ2Jm/7Er8Ngny/QDvIGAcxHwfwvMuq27BMP3mZx
	PfkFRWNSjxxQd/jVQLu4a/4M0wNZqt7/6n8n62bC5t2Ds4E7K3q8mrUoqgOxOVS3
	4YI+Psb27Icecc6jEQSytulRebFtycuo4rvkBuTgTtYWvkh3MydV3/WH+1FDGHIC
	+xwUd0LnCRNzA6/F0/shoWQz7T6HQtuoxDH+Xb/q3eVjXHbCLTT8sck5WYMrkyPQ
	qWNYug==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf23t9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 09:27:55 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a9f5a43b6so1641736d6.2
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:27:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758792474; x=1759397274;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WUqki5AzViBdF4eWTm2k5POhswMbNALIQr455o+v3LE=;
        b=Xlgq0Qa+M0Y7IAAsz8UEx8LqVhQzwIHGVXxcbtzpQvgFnV2GBmKvlJB8SLWLfZEOCB
         arAUwwynYn/V5ajhVZaDWcIWxlDaGWFLlYLVM3Vfsru2gwSTJ4Gjyw7kr9NIUyWNAArk
         jkIWtTq7SKXS7p7hEM3CtQrzY7ALtlmU3hW9SlSN/6jqtlCUFk4F1GhpEydL73x1MY4u
         7a0gVRffJH/72QfhemO00WUAW6krWnlTxziz+b6mXpphAJktdbl0nX66W4zGOnaWeZE7
         MzomewVdKvZY8J6GgDgjBJHfDnQr7xI8Cry/mArHLCg17H2kGsLos0ZUu3hQhtXcawzR
         9zGA==
X-Forwarded-Encrypted: i=1; AJvYcCV3bi0lR7Y5QSCNaK4xMWz4dyglnMMiQiIIORNTIipIrGxh9gWMO0BWy8YfUEeYOR9JE9BlOe2++YA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxwpgeTC7hKkgVpGV8N1KGJgWeVqy/LNrw2zMrtkVo0kM3cssZk
	xyf8uu0MfsLnO9DzSsjLs6VXxyiyef5zSd1UvJyoQmQh17fuT782gPF1CCSCfmRTofzBKYizXrL
	4Mmp1EEcHeWV16EeqOrgencrDdW6TNVMHmlb+rpG4nujj1oLMdpBKjFREyKRpOsdduBUA
X-Gm-Gg: ASbGnctEKgqaQlvTa1ux0wz15fRJ6EZiqhakjXmWTe/n1yk+jQ+6uuUXAy53MNEtPCx
	J9AGLnsLTTCdAvY+Percv92Q50B+9ledCGFImqUxtbXQMAhbigUC7uKmHEuOE4d+pHz8wMTsf9h
	mf8GbklmWTYFxB3tytun0PX3skknTjahpGYQbAFIoTTAshz1n02sy5nzVKchG9Eu9KtqdrAcnZZ
	1XYS7n+cyDnreJXAJUMN9y3hImuFuLz7pGgzTQMoaYWCiDQndgMMFcrArYhB2ziyNxPkUud8tHk
	d17ljEnuGpwaWLPPuY6eym4yORN+XPb3TpqTbNla4/lucdCDBv83qEpjpsTKOqNIqGFopL8Gevp
	+0G/zPl5L2i1Oz2vjg9OH7g==
X-Received: by 2002:a05:6214:ac2:b0:798:f061:66bb with SMTP id 6a1803df08f44-7fc27ca1971mr29184316d6.1.1758792474034;
        Thu, 25 Sep 2025 02:27:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNXr6Gkp6aLTf5IZJgLqxFdi09mSj1x0yLj1wpVf5n029+3a2r9XtLvmqiNW/o5lBQYVn2jA==
X-Received: by 2002:a05:6214:ac2:b0:798:f061:66bb with SMTP id 6a1803df08f44-7fc27ca1971mr29184116d6.1.1758792473575;
        Thu, 25 Sep 2025 02:27:53 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a366116esm914520a12.21.2025.09.25.02.27.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 02:27:53 -0700 (PDT)
Message-ID: <6626df48-bfaa-48a5-ab50-91422d252e86@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:27:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 09/10] phy: qualcomm: m31-eusb2: Make clkref an
 optional resource
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-10-wesley.cheng@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925022850.4133013-10-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-GUID: LSzFrWNDj2ZfuQallc7Nvs-crfJ7dZXM
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d50b1b cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=rA21lKwlbNzYapJBHGwA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX4t0P2h9KZLKb
 r9729pjuAJSkGIsuXUTZw7yTPVIySdC3ariFUi0vcnWvCEmvtXHK3N197hwmcLjYKwkg8+2vny5
 SOiCnPqRor0+17izcejbfl4J1kTlOTkSCWPlkBTtFGfwDw2BQ4lHiTX+1e+UdV0zkzEIg4f3fib
 ji3dQGQcJwxc4aMBOFR7aTyOPFzIrl/gjHksjAtsFWITSnm0PlltkAQRPWn25oQvssEp0gzNHxD
 Vv0jZsjcu92TovJ+wfm5PeDaNHk4xVOIrYcBXroMeSA5Z2FbpukngwaHr+xnSJChRhcu7B9sbse
 2X20V58BKZknz1w6vX0nFoUFmmHNEYzcwsxUEXdnsd9yfHr6DN6I9GnavVnSkgG90T4uyfxDbzc
 54DQStFv
X-Proofpoint-ORIG-GUID: LSzFrWNDj2ZfuQallc7Nvs-crfJ7dZXM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_022756_104673_9AED7AB0 
X-CRM114-Status: GOOD (  18.86  )
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

On 9/25/25 4:28 AM, Wesley Cheng wrote:
> Some USB subsystems that utlize the M31 eUSB2 PHY doesn't require a clkref.

This is more likely "doesn't include a software-controllable" ref clock

but that's "fine"

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

> One example is the Glymur platform, which contains 4 USB controllers that
> all utilize the M31 eUSB2 PHY.  However, PHYs associated to the primary
> and secondary controllers do not require a clkref resource.  Due to this,
> mark this as an optional clock.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> index 95cd3175926d..f8a00962f937 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> @@ -267,7 +267,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
>  	if (IS_ERR(phy->reset))
>  		return PTR_ERR(phy->reset);
>  
> -	phy->clk = devm_clk_get(dev, NULL);
> +	phy->clk = devm_clk_get_optional(dev, NULL);
>  	if (IS_ERR(phy->clk))
>  		return dev_err_probe(dev, PTR_ERR(phy->clk),
>  				     "failed to get clk\n");
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
