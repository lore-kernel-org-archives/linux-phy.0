Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38A94C71136
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 13:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PDbuhRJidYP/vP6LfQNzS4gyYb6E1UkD+l14jzUoYIU=; b=dsvCoOF0/uQu7Y
	wa+Uw5kCBHSWPHTrhxpeejDrEcVNKtCuUKACMqnDlWXrahQz6DposH/6AgsnJu0LbBMWKqNNffzVB
	HRvSoqfUHspjTpcImcop4VijlpCR+MwcwDsfsrwx9FDQlOJeeAc4W+DSdtObn83EIZif4apNFve6w
	a8ctZf8CYrtHzUw9ZnYqWUNSgkY0Nftffw2XZzZrmRovcc2Z2jJjmi2swwX021uKw0EP/V+pycoFm
	f0zh0Qe9mXQh1rcO8wH6esoWX5Zt+Lb3pFOfYRx9f7TViMdPcKz9TnNZd3rUBe2aQ2OgK4z+TwTid
	RHg/JD/cgtTjXSPkTByw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRWGG-00000007Kf9-40Di;
	Tue, 17 Jun 2025 13:22:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVri-00000007FqS-3Go5
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 12:56:40 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55H7RXIG022295
	for <linux-phy@lists.infradead.org>; Tue, 17 Jun 2025 12:56:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=reLhBblkFjKNgFgw0iZCw73Q
	eAmoIcUiJNhR7l2+5Wo=; b=gFj3/XTHwtHhusu1XkABetp6zBh6LBV2MqeT5ozg
	lVp6xUMtaqNtiiXctXE34Mlu+L1I0orf7wUl7fHGlxaIo11wTuW6MTxeGX2UDRRa
	k9YPcoTINGCD850rfQDzCYkM4Ystr7YtkDYEhhIDoI7Ec7h6MF36bWKx60IIHYui
	R6Hxdj7Q1sM/mA4peducECHxUEdTWlA/t68V1iXYEDnvcamUruNCAxZlVeOudLUM
	ySz+Njh2uN6tMhxbA7Cqzk3fRGYxQ2VuejrtgpMVQR9Em1A1V6Q0stLrpl1DxKy8
	ZG75DBs14WiwqWKXOliEGeAGaF5jhqpLbnLojYBp8R7OkQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791eng9jv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 17 Jun 2025 12:56:36 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fb50d92061so30508306d6.3
        for <linux-phy@lists.infradead.org>; Tue, 17 Jun 2025 05:56:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750164996; x=1750769796;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=reLhBblkFjKNgFgw0iZCw73QeAmoIcUiJNhR7l2+5Wo=;
        b=Jok62+XWzcBvRPMC3xYjuSfIOj4wJWN6EsUzbiMa4K8LD2Hn8vDg3pxf+MTgSDF8yz
         JYhO8n4YE+iLBA4bc6QNiMeI8lcI69JqmQlv+FXT0RvKdw4eHzYKVEfyyooae7B9EWbK
         6yMEVc2Ohsd+8kJS2qk6x2A1AiFlf7ot+csKeMKOLkzXrJtAuQokjK6UbPx9vpQfZHQ8
         vsb7prmCXneE5pHJBElyfQovoszRj9iS2ihqeBT6roWF+tuRGTaHSzHzDRNVYvF7h1np
         YOsY1i9hPKcn42B9/ouE4Afer8FuA/yTMbdUY9YZmWd+aJbN9NZwlPR0HRcOvpbcbUgD
         e7Vg==
X-Forwarded-Encrypted: i=1; AJvYcCVbfvUQwVVK8P//8c2Khp5eoL3z8xYX68LXaX9wKIWhXo7D7jUa/54ekorrghftFWPyOw6lYuGhitc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxGkiuebvbUFJWhJXhdGH6DsmuUgKNT9btWgDM409L4Q32UGD72
	aRy6O2FJsE6t+DrGnS+ZjHSw8A1JpZbOCaxcKaaQDc5UZ3NvLAzhqlA2tnyHLsfigZ9WtpeeFHV
	Kjpjmu7kDBvCsUWPA/AV7yNyoNqPPqJRQbnbURKNNqTdnZ5smTKvYtjYrzDSFURuAdsr3
X-Gm-Gg: ASbGncsLYmpWbYZgkTqB9VXdsHWLMJKnPlqQbgUI6YHMupPFZOtVUniGS3LAfxVGefd
	lya9Mg3uWBPFn8GB1q2+warJp2xwijhTyyJl5Rg8pBgCHQIrt9XF/Dk4489RCXNpt0DPXZXZSGP
	FrTe3f2FvFvV41Q/kNanvfkU/p4J2mhZq3TuHQMNGAygVhLeJD03VHR7EexjV9Jm8ZICNwNGRs6
	bQYtJRNQm1BcocE8HCOidmTDjQmc4jGR6iCuwI1YLFs6g7TqE70i7jQY/3m+7bFOKYOvRfXRrsF
	96Go30Uhe849wOXPmC1nlaYPtYLoTwrfCcnOJevRSOYHV2MNc2wNKiBuEXeoil9IafGPmT4CSO9
	nQ8ZkAfYJxx0FqAdfWdQ83fBbYIjyfxxUSwk=
X-Received: by 2002:a05:6214:810e:b0:6fb:4fdc:dd83 with SMTP id 6a1803df08f44-6fb4fdcde32mr136702686d6.40.1750164995777;
        Tue, 17 Jun 2025 05:56:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFvCoVuhabEm27A62sEPcn/Fb55CORSI3jmx2fmiprrI/xC488IzmD9JyAr83daF6LLrrsC2Q==
X-Received: by 2002:a05:6214:810e:b0:6fb:4fdc:dd83 with SMTP id 6a1803df08f44-6fb4fdcde32mr136702296d6.40.1750164995406;
        Tue, 17 Jun 2025 05:56:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553ac135c22sm1912726e87.65.2025.06.17.05.56.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 05:56:34 -0700 (PDT)
Date: Tue, 17 Jun 2025 15:56:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Don't
 zero-out registers
Message-ID: <hgtbmst73ijkfptznqh5r6usdnn2tdx4fxow53g5pyl3yagbh3@4thxrkp5zcnv>
References: <20250617-eusb2-repeater-tuning-v2-0-ed6c484f18ee@fairphone.com>
 <20250617-eusb2-repeater-tuning-v2-2-ed6c484f18ee@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250617-eusb2-repeater-tuning-v2-2-ed6c484f18ee@fairphone.com>
X-Proofpoint-ORIG-GUID: C0y_H-scI0xY7NPDqxM95wq5fWGvGGii
X-Authority-Analysis: v=2.4 cv=D6RHKuRj c=1 sm=1 tr=0 ts=68516604 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=6H0WHjuAAAAA:8
 a=cispc58g6-s63dKQH_wA:9 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=cvBusfyB2V15izCimMoJ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: C0y_H-scI0xY7NPDqxM95wq5fWGvGGii
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDEwMyBTYWx0ZWRfX3e15j7RUclHC
 H8k5tuxKjNRHjeN4JbZd+V5kN5W7LMzZHDDRZigwTyIzhDWndRzIeR4GBcXda4eHYaOYRRx9KJP
 0UzhLWbeLGJSzn9pWLBtEKv8F+fAH81xGV2l3VOh0nYlTWhAhpYsxZR8myodoDFqM681UQMlGH/
 alJV7Y6JpzrNlqQxasEHA6SfodHk5AbPPxkYZ88pQZ2icqdFdw9Co/ztL7Dr+29Sfovo34cvF9X
 cHon467iLgXeagRA8wPkEk33VyyYGCTs7y0cCp8JyD3JDOzrAMIaHTS7++/fJCs9y7bFW5bHAp4
 0m6a1+dO42pcz0vQWt2Yez6ncnNOk14fCRhKRVgwqSKLiowntR33X/eZp7UinlBIPtoRg+R/mld
 AckpwGup/aLCO2m9C3gDj+FvZWQ5aD4xqF+uKdMyAair/PY1qTDphn7tWv32m4D3ArfF4RxB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_05,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 impostorscore=0 phishscore=0 adultscore=0
 suspectscore=0 mlxlogscore=992 clxscore=1015 mlxscore=0 lowpriorityscore=0
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506170103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_055638_936932_90DAE616 
X-CRM114-Status: GOOD (  16.89  )
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

On Tue, Jun 17, 2025 at 10:26:36AM +0200, Luca Weiss wrote:
> Zeroing out registers does not happen in the downstream kernel, and will
> "tune" the repeater in surely unexpected ways since most registers don't
> have a reset value of 0x0.
> 
> Stop doing that and instead just set the registers that are in the init
> sequence (though long term I don't think there's actually PMIC-specific
> init sequences, there's board specific tuning, but that's a story for
> another day).
> 
> Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 83 ++++++++++----------------
>  1 file changed, 30 insertions(+), 53 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
