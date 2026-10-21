Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6DE606A331
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 14:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SsoUzjUh;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=di2bf290;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Ix6orTXK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jtyF5bLZ47n571WKZpB8hvRL1I75vYhln8qM+E7WZcA=; b=SsoUzjUhgxPiJy
	AAil6Zn/GN+V/V372iHjz9xPdkzw3HlUrQ8EVvHMtvq6SeOVK4nenkZfh048zH6Ks9/0ThDyHZFba
	ke560+NG1IM/ESuxfseoYPWzYhky/NfdkkhTCielcost0DZSIy5TyoafD9gUcLSFHXeItN7foTGab
	beWaWVEyzdM66QQ6dxYbCqlR/8opK8/BSSEW9ybUaQR3+TjmbQLlHvLmQmDmQyaeOKzT3h4SSoOn9
	yhifAUCLjz5O+7mbqruGvyMgUqXaCkK/jRU1ppVs+5lyAAScCY5SquuKW9/tPIMNjJ8fCvRiAFyB7
	H3ekmGH0BtuezM+7m/aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJWtd-0000000C26K-3unF;
	Wed, 21 Oct 2026 14:02:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJWta-0000000C25h-3dNa
	for linux-phy@lists.infradead.org;
	Wed, 21 Oct 2026 14:02:24 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69LBgHuJ325566
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 14:02:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HdQ2R3se5w8ic9Lfj8qGSYTbGzQ/J+m8NimOyWriIrM=; b=di2bf290CClcfrhc
	jKzh/qb1Tyb2Dez0KXF5lHo78AqpupmhKBvOqSewBsyOdqxvu8biDiIOPyNpDgNn
	d2H+AVDxpSzD6SSAi48DYV6INTM+aWRzxMRvYt7zzVaJR0YrSzKd0NqQb2s1Koxw
	khCwHPAmM+fkf3iov2OpGJ1FNwprBNQDSN5/a7u4BlRwjlXAxBBzWu0fN2Z8bRWD
	eoWHsFeawCoo70HcizOlBf/b2NwqNtygHmlwUS0W5ZZ86SFNhcWOzi15TcM8z7iL
	Fwe6fRKCa50MEhq1XertPSk1M3PByLk2NwK0C1sjzRa/I4/dAS9HCOySsLp9qVqY
	lRPUHQ==
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hed9v4a06-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 14:02:21 +0000 (GMT)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-54bc13cb2beso26691b6e.0
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 07:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792591341; x=1793196141; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HdQ2R3se5w8ic9Lfj8qGSYTbGzQ/J+m8NimOyWriIrM=;
        b=Ix6orTXKqPJpfjDv3wWSJeo+jvUBViQkQFYz7uk4KSlQVxkAioHu6tEQOJRhXm+0EF
         tBtGFgipa3WNxdKYCvqUNQ8/qWM+AwoTik9a0vE8fWS1pTTsx/hguy9F9nHJtfR/w8MG
         dNodpA9wwHY6E5srBcAIdFlwxhQjISVUUFj7J2oRR6q21RAeo0NJBQr7JL+OmgQCe00d
         kDabwaif7/mpazIG2kYC81AtZBSDVRsOas5jX1YQArjWa6o+XsiQg27/MTfH37kTHKsi
         bIRVklp9K6w17OH8KQvAHdWI/A+q6AINXrzX7fDoiBTM1UOb3UeTX7hk5/QTZX3j4b1W
         +Qsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792591341; x=1793196141;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HdQ2R3se5w8ic9Lfj8qGSYTbGzQ/J+m8NimOyWriIrM=;
        b=yghW+FH784dIo2n9zSbD+8OTGZIeIKf3nZmT+K25EYFi9YgCmEZsXcufOk43sowrHD
         e2aKhcZenxNAlzMUrE5fW9lYelungBB+kjf7k9mNnCPoAyakDNyFvCof5OGsufHHQWru
         i8rg7iQJcv5iAjT3kudlJsLnhhnBDiduYntQpCC7L9OaxUXaHNyqiQ17xMPV9wLcXDyi
         t5Mc2i6BpcZkdBXRy+LM3MmInyTmi8sWa+gcywcCpBoVVrgSiFEPcq1Qwjs8NXOm1PnV
         uzVQaisqz0Mk9UiRgjW4WmhiZdA8oXNI8iqW1sGnlHbpGOUrMjRlYLvB1LxaVseuvSzl
         klQw==
X-Gm-Message-State: AFq9FYKQoVtfiTPIyJXR5ILlrjqw9DKizajqwHIOC6or3JJnnX+gOGWa
	6U28Yp46rt3234zm8/v5CyUuztsQVRrw+e42ah7opIS6m+DbGm/3K7jVi84IWv/hlccCvut1G8f
	SG76pD5/Xw6cqBjTOnPOxee8G60IBPfL6smRJb2kHjuBargJ+t4f0CRFqwL7ZuNVNPCW4
X-Gm-Gg: AYBFou1iCDnmHKQsp3yrqM/Uy6arf8C13FjNe71l0VNA14MQsVoVriX+gp3YKqVNH5T
	KLsra4ukdoJxTpf+IZdp85DdbPNP042+4N7Ac1RvLqiBpn4EcqPBDRejPck67XqcIoMs1QHyLiX
	7tnUS42nI+pWYNasNd++ziP5cKi4QEuwL41euSRs5/QEL/Iihm7L/hqukqFchNHAnLjD0UBPRDw
	LV44YFCYMypwGwWWG9EghZTiMyAtO+FcevM0Q+rU8Ac35DChoe6k4C9fmSLZPnfxCBcGGLOiCY+
	EwY9nOCg5fTuFz//gNJfAYejlfPKFW/vHiQNBasJw1Jvm3gbWfODXOdCwQQVg4ACtlQTmx3Srpb
	mZlxMogM/eYDUHcgihZxrIA==
X-Received: by 2002:a05:6808:1914:b0:4f3:890b:5fd3 with SMTP id 5614622812f47-55362b28972mr2213764b6e.6.1792591340813;
        Wed, 21 Oct 2026 07:02:20 -0700 (PDT)
X-Received: by 2002:a05:6808:1914:b0:4f3:890b:5fd3 with SMTP id 5614622812f47-55362b28972mr2213659b6e.6.1792591340150;
        Wed, 21 Oct 2026 07:02:20 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b40316a2b3sm856108a12.35.2026.10.21.07.02.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2026 07:02:18 -0700 (PDT)
Message-ID: <92bb95d5-946e-4169-8382-487ed9ed2254@oss.qualcomm.com>
Date: Wed, 21 Oct 2026 16:02:12 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v21 14/14] arm64: dts: qcom: kaanapali-mtp-camera-s5kjn5:
 Add DT overlay
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-14-04fd28d815c6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261011-kaanapali-camss-v21-14-04fd28d815c6@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIxMDA1NSBTYWx0ZWRfXwmsYeySBdrFh
 /iLHNwxwPJSJFhRGb5OPcLtCZl1Xer2OK6nBV4yUSrHq329hk0BMS2OEVpmOBc4Kr3WamGvM/UX
 TIIoixj0IpE3/u4m6qRloTawrTxuG2o=
X-Proofpoint-ORIG-GUID: qRpBcNzx4IE8obX4dM9JF-ocQIr2wZcf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIxMDA1NSBTYWx0ZWRfX2+AhFWw5qEAy
 SBfEMxeN7Mm30l5zDlxd5X+/5pwWy78O9pSsbyHASWeVNyuB9rshlKa5xQgeL8fZwjZMeOQ7fQT
 n4FGmKak5CxbBNMaNn4/qbis/a88IWyP0Y0tRIArXy7+LWacKXdZS72dPXNxgGuzjQYGEt72yVK
 68z+XkmWqEdH6UsjfRnyzYYQuYDFE907lk4F4lyr31unN057saGSU3q/DR4ioTYWkpZ5Pyg1rYC
 6GKFMLnNZtTF++AFqJ2AMQeTgyYy+0qi2q4x9XtMiqXAspaphwu6N9mbo1KdvbHY3iU6hWbDAhf
 VzYQxeS3lNjld8dwWmvvj/uLLRo8Bkj3BvTKW+oVQCUo61kY95dgs0E8g7fJM0JbGJBhSyA/Lkq
 k3UI5hflaoOOiVaf8yv9hU8MEf1UehQgyc/2UEmZ3huxkn8JspDQxBmwDcPkMkDE48z+NnkZqQP
 ba0nTGZitA3//8soWqw==
X-Authority-Analysis: v=2.4 cv=I6zw19gg c=1 sm=1 tr=0 ts=6ad8c5ed cx=c_pps
 a=AKZTfHrQPB8q3CcvmcIuDA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=g0yJHs1RHlB3dt4QKcIA:9 a=QEXdDO2ut3YA:10
 a=pF_qn-MSjDawc0seGVz6:22
X-Proofpoint-GUID: qRpBcNzx4IE8obX4dM9JF-ocQIr2wZcf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-21_03,2026-10-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610210055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_070223_477736_32DACB9B 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/12/26 8:45 AM, Hangxiang Ma wrote:
> Enable the S5KJN5 image sensor via CCI on Kaanapali MTP board.
> 
> The Kaanapali MTP board connect S5KJN5 with QUP I2C bus by default. This
> DTBO enables S5KJN5 on CCI-0 interface connected to the CSIPHY2 in four
> lane mode on a rework camera module.
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---

[...]

> +&camss_csiphy2_in_port {
> +	camss_csiphy2_inep: endpoint {
> +		data-lanes = <1 2 3 4>;
> +		remote-endpoint = <&csiphy2_out_ep>;
> +	};
> +};

Please define the endpoint in the SoC DTSI like the glymur submission:

https://lore.kernel.org/linux-arm-msm/b5734dac-1285-452b-8107-9164e6a3e5fa@oss.qualcomm.com/T/#m55a2d04f3fe573dbbc86fe89a874514494eca345

[...]


> +&csiphy2_in_port {
> +	csiphy2_in_ep: endpoint {
> +		bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
> +		clock-lanes = <0>;
> +		data-lanes = <1 2 3 4>;
> +		remote-endpoint = <&s5kjn5_out_ep>;
> +	};
> +};
> +
> +&csiphy2_out_port {
> +	csiphy2_out_ep: endpoint {
> +		remote-endpoint = <&camss_csiphy2_inep>;
> +	};
> +};

likewise for these two

With that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
