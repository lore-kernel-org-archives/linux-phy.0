Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D1C3C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 10:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHTL/tzORm9HaHZaiF4o5gXiGCwCU7xMl3eq71muEVE=; b=d8F2Y9VfHJ/fpG
	IsrL4mUrxKk6ra83q6HY4dR1xTB6rARCJXP+l6FgdzlgHjp0xPVLsNitVOJrzVgK5PNbnMqPj7k/m
	pB8ygmvxDfvwnRuJVNvlAr1D0qKWjM3hImsGSB/uCgopoNWyvlWHaNYf/RWRCamxV3SCUu9ZNjNBm
	xhTBTGTKYFGlOHiVGRD3TY+dH5o2S8ytHlf9xzmy+AuuHqoSLzt69dmN2CbWmuF58uWy6yCTu67Sk
	EoVcBKsVS77Bh3+9OxWt7aavEaxZ+G+0yMPA8ZpDBubOD6aF4vjEiqbm4P8xZXSw5K4uOt0bBA5Ib
	uQBEr00NAwQNhQuH5dtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wesJQ-00000001K6k-3FB0;
	Wed, 01 Jul 2026 10:37:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wesJO-00000001K6J-2SvO
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 10:36:59 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 661A8u3J755504
	for <linux-phy@lists.infradead.org>; Wed, 1 Jul 2026 10:36:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fc2tkNpOohA+tSSWrN3nTCDx1S7JmvYT1YRhgM1ybfs=; b=RZx/LttbQc12SfCO
	oRxTFvMIx6vP0coIhfCZB082iAq0kiE0NVhSaPARcmKMoWCC8k5DZpoAzOLDWQyE
	vKuIqXW6GuwrrHWBVpoUccATaIrmDAgObE0+6IKr88uwlkr07Xjnozf0Vj3yP9eG
	wIMB0a/YgQqENtjiJWwkOLzPzT5gr1w7FFHad5g7KSibW7kh892FlyMZHt6m97xV
	LZrBkI5ZTisnJ7mWpjA5RyD7aStAwTmui/xGJVz5GqxQhe/QsVhkm1y1MglPyuBe
	l/WJfLbDKkVcRi8W1ES5LExN2v5Dg+fw2pnT7JrezUUb8YjWmn6V15NmC82M0EGd
	rwrEWg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f50sqr54j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 10:36:57 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c07313be5so934351cf.2
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 03:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782902217; x=1783507017; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fc2tkNpOohA+tSSWrN3nTCDx1S7JmvYT1YRhgM1ybfs=;
        b=CIhi6Fh+qjXDJgv1K/Xn+rFLOL7YW9QUFsIEoAlYpvaE/ip/z+SW9SIolI3G1BeMjF
         et7MxEhDn4tAjs4fSGmMHVUOyn82Z9JDm6GKyx55Pz31br5UQqVmm4nY6MlQxBYd+xaJ
         vfEhcpnclHHGZl+tVxd1NCHTh0iCkOc5oOsWEv1RxTnb3F3FjwWvRi8Yj4licVYKnZ7u
         RhJ/k4HJtIR/0O2Tz/L3Ptkg7A/MnFTsmEnqnKlmjj2qSaakOOTsXA0XdG27ognJoRje
         YZkxaw/bNJGMlqtPjNlzHWf4MwFHprwl8fIfAwerTO3gGsZu+M6izAdMSKFqZaE9J8tO
         28Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782902217; x=1783507017;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fc2tkNpOohA+tSSWrN3nTCDx1S7JmvYT1YRhgM1ybfs=;
        b=T8KncYljx119aq1/mSlxV0K9dyxCCzknvCIM2BGoa4ubyeihCuGzTh1ww8duHvbVOX
         z49wCEXF6QD21T923qJBpiuGc4ih5N0OqOaAaGyu8XMEW+KN5BYWh2amkvk6nTgs5Wka
         qzqSgUhBjbr/XSJ8UMdGDHorzOC1K9DcBChq8LwSZSkURQ+JGZC0CoRs3t3741Sa2xAv
         IBsRAQ28GylnFXvd3vWIHhNDWct03OH++dKCXBJ8x4/O0Pfdwe0sDRikH2Q5mOO/p+dS
         IzZyLXBDaXjLlV371uZEyPmX21V6RPjemCDSCCQBcSjzuGvAuB8L8IczDXI2fKfbfN+T
         MD6g==
X-Forwarded-Encrypted: i=1; AFNElJ9r4URb53z5RjJ5h5sUsQObr1YfHiUgECALdqs6pgEXpmMXAuLXSGaeLH8ZQ5gq/JAhBrFduv7KwV0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2+E9XzPWF6h4m23sGXUwdRjbBiq2OjltxZmgymRTSCvVQdgLx
	l5BPDkgP2OLlYx92ShfzT5i91HkJmTBdXbe4WWe+Fu7vz9r0h5Cuy1ug6yiLyicGekwV81ilMUn
	nWEAumz5e89ZV93bsDgBEu8yWXz1d4yODPbqnyo3rwKu/tSl8XMKBKg+BhTLmHafbWTwG
X-Gm-Gg: AfdE7ckIFwT4NHuGf2KPkGaUyjxhBAjJty1louuTlmPjUu2dPdXIaSm6QiC355R5ndf
	kaY4h8rGX8Z4adZim6pAhiMfk3V341pEgpUUc9OTrbqQYuvU/CvdywL7nqyffQgyK5oGYaBrmMb
	WIIjpDHNlggbiTcDac+4KTKq1dzuvPkbTMFcPXDtMJBGFB+lzfJRmjxU4fiEPZAo0lF2jgqXdxF
	jSiFUp25NquwOzAl+Nzes3vbHMkKCi4PRoO81toR7JOra+KmNqk701mxrT3SBAg6S847iJa2XLA
	l7U4pWKl6FzGS2l1iUX9AqCetV6ToPCpkN9ykpNCYrOwD97jLSRTPRkqVg79EjGRRw5TDkHeCLa
	qdWvKnIoSSdrxFKtM4H5MFsd8HvXNlBWfr3s=
X-Received: by 2002:a05:622a:14d1:b0:50b:3489:5495 with SMTP id d75a77b69052e-51c26b3920dmr7346251cf.8.1782902216877;
        Wed, 01 Jul 2026 03:36:56 -0700 (PDT)
X-Received: by 2002:a05:622a:14d1:b0:50b:3489:5495 with SMTP id d75a77b69052e-51c26b3920dmr7345971cf.8.1782902216423;
        Wed, 01 Jul 2026 03:36:56 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c128917536csm254439866b.56.2026.07.01.03.36.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 03:36:55 -0700 (PDT)
Message-ID: <6e42bc67-9a2f-4e64-bb49-30fd845263a2@oss.qualcomm.com>
Date: Wed, 1 Jul 2026 12:36:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 9/9] arm64: dts: qcom: shikra-(cqm/cqs/iqs)-evk: Enable
 PCIe PHY node
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
 <20260701-shikra-upstream-v1-9-e1a721eb8943@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260701-shikra-upstream-v1-9-e1a721eb8943@oss.qualcomm.com>
X-Proofpoint-GUID: SvUfKoihl9g3uiWSTnnVGK6GyYuGMFFG
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDExMCBTYWx0ZWRfX1EQ1rlyJPhjo
 phxtqhqVY0TLQPvVgSe0MgDZCzxRL0xHlmq1HCRcLJukxOViBzaDDCY+CI9Y2EDCgKHpjUqPx5b
 sFArM8y+NO4KmQ82ycr0h0tL9eznc3E=
X-Proofpoint-ORIG-GUID: SvUfKoihl9g3uiWSTnnVGK6GyYuGMFFG
X-Authority-Analysis: v=2.4 cv=ceHiaHDM c=1 sm=1 tr=0 ts=6a44edc9 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=-pX6LU1wS3kVf0kvi8wA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDExMCBTYWx0ZWRfX56SOo/FfgYuw
 9IpD6JsCVZ02M2dZG9lC6/4OftGa79Oo17yCvp4sepqN+/7FEbTCQIe362fobkdJXmxArxQLKOG
 OHMTfrAUU9kuehgJRmtiJlZP1WIwVTICqrxnCSOj9P80In/H38B596sBYcwsa/3MeDhRh+1VmUq
 5+R5h5345jgDDQ42gdm+jWzWBhilGpMvvU2I/FOogeO7srlEO8Up1yJi206uh5NPNnhdhQrWhmh
 kd5mJQqgRLF1gBvtjbCWsxE75wBa9TrXuyO/USvjGIIxtzko79TX88FwteBU3ehBZnRmf0vzJuN
 vBUDxGB4D4byZoSKEewjbjnjfdTzsPn9HFQJRzBD7vI5yOujlRVNhWATEbbZ0qMBZKLscFbJE+i
 fonc0NI4JWo72J+abgkw2BY9zeiYxfVWgUkaNQNSU/UypOdmmr3QxtuFpc+MbaSRIe/mnB/YK1G
 ZuTuEjXKcrGHqqJ7nsQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-01_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607010110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_033658_777839_C8D78DDA 
X-CRM114-Status: GOOD (  16.39  )
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

On 6/30/26 9:02 PM, Sushrut Shree Trivedi wrote:
> Enable the PCIe PHY for the single PCIe intance on the Shikra
> CQS, CQM and the IQS platforms.
> 
> IQS platform uses a different powergrid than CQS/CQM which explain
> the different PHY supplies for IQS variant.
> 
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 7 +++++++
>  arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 7 +++++++
>  arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 7 +++++++
>  3 files changed, 21 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
> index 683b5245923b..06ad32041546 100644
> --- a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
> @@ -60,6 +60,13 @@ vreg_pmu_ch1: ldo4 {
>  	};
>  };
>  
> +&pcie_phy {
> +	vdda-phy-supply = <&pm4125_l13>;
> +	vdda-pll-supply = <&pm4125_l9>;
> +
> +	status = "okay";
> +};

I think it makes sense to push the status=okay to the evk file
(because we already describe the PCIe switch there) and only keep
the supplies here (because they differ)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
