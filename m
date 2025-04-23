Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD950C369D1
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 13:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zQBDin3RNRT+OLQ0RuMk8vCglNUyRVMFhe7r2g8vCI=; b=EF6tX9Zo6iAbjg
	HVgbQkDIkj3jlxb+QfZGvx5isNt6YQZgtwlagvK4P5WYlKehB+jIaFgisskyQBKAfjP8nzzuNnnqI
	MzFOJr3V4ylxVR7E6+hhG8W3JZLvZ8Q9YWwCzK8rL2ap9qIMncdnDYBS3gw+VpRbItu21Dzh5Fm42
	23xuDpq9W5t7/zmkFOLuWBrwfUKPETzFYWnTQfO0A8Vw1tLJmFbV2vQ6IH8ZdTQ8nVaqXbAAZ4eKH
	hpqxOoW2BAOwfkPY3p9cSxvripbEQUrBQJ5dJTR/3oIrKJ/3PCbNZ6sgp6bHqxMoyj++G3hXPBt64
	BY/R5uqd1txs0XVYq0uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ZnM-0000000AXVg-00Xr;
	Wed, 23 Apr 2025 13:05:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7YCm-0000000AKyC-2sOx
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 11:23:53 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAYxEh007939
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 11:23:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yZ4ckw9phUjE/33TkefvnOiLJnkaspW3ubnn0WXfC08=; b=SBKh4NWSJXTdsQ/x
	R169j8ZWbp3gYKHHMSmHOzPn2rmDMTwDQWkI4cJzvCAcqAhDii1ffZXbOHQYgnMm
	Hn7wb+GpNmwkEQPqzlT/QsbH3Ef9IjmaxjLxD8llKoQY/bishKeZftBAQ/Kos7ug
	qMfljaq1Q2kstPjCwrg+1RRvJmQRpdP+Vd+hTUzPgwRFH5TVusZM2Ei+6D5e5ObQ
	F73kpc4AQfOReVoW4ZTmpK8H6izxkJOjh9eeuQDrjeflKC31xIxDMSnOlwGNoZxM
	syjhvVCQy3r3rqCRRw5WMB4e7UuqW5ocWxoz/Ok68ejDIPOzyizEKRdva2Gk2+CM
	/Vsgmg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh59xwh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 11:23:51 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c552802e9fso119903185a.0
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 04:23:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745407431; x=1746012231;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yZ4ckw9phUjE/33TkefvnOiLJnkaspW3ubnn0WXfC08=;
        b=qSSYjCyIcPZZ7vG4ET7sytwl7Q/ZO/Q8mMrG9JrH5lBLFuNER7o69Aficq/Ldyml5H
         PWWUsUFD5l6P6FHG0yY/Aevga7/pkNoG6Gmv4ldycq57gG3J9AuixLDPns5P0eoVJVzD
         CwHJ6zC5zuAgllTKP6dwEAGpa12X7L6cCa72tnE2UhMhcJ5VnCoIgvg+Stc/ezuqxOOV
         YHD2ct0gICyKURGt7Cfyr5C3fIzAnNLGO+Mg9CXggNzr5709Xn8gqOhyZSJgmhrZSian
         /sC/nA13n4vCn7Ax6zC3J5m5lNCbuiCBeNJ/ZoxFljsKsyrKO8LhTJLj3O4nMf3BRi+L
         z1Dw==
X-Forwarded-Encrypted: i=1; AJvYcCW6eKPeMadF21LcZwJP/VuzLj6vSciDqP5RjeALdQ/lRb54xa2p6rFYUFu/rAE+a6knNWFkleERsfM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzQS/WGbuYNRMEDXSQgwfgQOuZmaU5b5k/dDDTFynz8QaCOw30w
	WaXk7fLEsn4ZuSbVaLjRD+ni4rGv4tQ9DQ9evsB4Knigrqxn/bBhrSy8g4/zYXWhdC7uNjpxegs
	bcUOoTBWplfzDiAYQS3MukcaXevXbqEQpSZDbvo6AtRTO0fRkduo0bZS46WVef2xr
X-Gm-Gg: ASbGncsaKb2sI/ayJGth64rGPcsP5wPiHepTLERGuSF+XVvgPxgzDhjRdwcjYsGilH+
	uL1l2cRaLL+qAZOVTEDcs6JufHwN/UEFK2msd/S1VRMal1nuy4IRjLyA59y/mF5tnDMuMzgYsBX
	Y0O+E+I93YPfoYMC9E5hRFRGobj/jzMu+LCN/SA4xrozbzJU1FzZwIfDo+7YxZdtqjrvQr7Zn/p
	ZPajVAOq3+ip1RfNu4ZzkJDq1knr6vBOWIFwS00WbOdANi2FR3CyJeOcguQ7jHVmAg26LiUOrqV
	SwKUCeWyP0/gZqTXODvatk2VYSRMycOT9B5J7/ci4j2CLQcuzqqIRz75T+JOV34Isxk=
X-Received: by 2002:a05:620a:390b:b0:7c3:c814:591d with SMTP id af79cd13be357-7c94d243e9bmr190753085a.1.1745407430777;
        Wed, 23 Apr 2025 04:23:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdIHiXpPDkGGBJDXfBBBsFTvUdPXz6hDe/XrnRasquYh3mWBJjmxvRBRjElMM6IUIxVffCBw==
X-Received: by 2002:a05:620a:390b:b0:7c3:c814:591d with SMTP id af79cd13be357-7c94d243e9bmr190750985a.1.1745407430388;
        Wed, 23 Apr 2025 04:23:50 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ec0b1d3sm785726966b.4.2025.04.23.04.23.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 04:23:49 -0700 (PDT)
Message-ID: <fc6b1fe6-7847-4aa8-838a-dbd0ad675412@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 13:23:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sa8775p: Set max link speed to Gen4
 for PCIe EP
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com
References: <20250423-update_phy-v1-0-30eb51703bb8@oss.qualcomm.com>
 <20250423-update_phy-v1-2-30eb51703bb8@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250423-update_phy-v1-2-30eb51703bb8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA3OCBTYWx0ZWRfXwGRpuUDkndzb Z+iTxS6z80Ffqmq2HVZ3xDQy8dxaKzCGWCTqG8JHMgptPALshW36S/z3mgCZ7Xy+GtLLLDhMbdY +HknPm5Tos/gEISkUuo0BX6KbnnFQhr+wIMMa+eoa6sD8YT03Jcv7G/JG+fDhbCJV7hC20tyoVr
 Q0PAqJXNB3kJpkuxJbzzkHJVds5rlawmQrF1+bEXqQu9qytX21JE5uVfaJSZgQ3fOOmyqUHcIY8 VjnUqxASUO0aGybNTjTIxB+TRKSp9r0GNycBG66KiNZUHEG4+ofx5SQt6UuOHEoxaJqCRL5Ag9e 3paM3Wa8eoDw6vzHrw7MCVCV+Heb3Tf4mnElTJV6B34aV3WCR/bw34c8uR032chjmKWz9PZsFPR
 xIRzkg8SLiwBj+LiyOyH0wCA1Qz93OuQ4/XKpQQOk9NzBQHC0sVIwc+xWVWjiucOUOZW5D4c
X-Proofpoint-GUID: 9KF503YQEIpkJfcLrFVxBbAPQKvrBTGq
X-Authority-Analysis: v=2.4 cv=B/S50PtM c=1 sm=1 tr=0 ts=6808cdc7 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=iRih2zsw3dMuVQupJ74A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 9KF503YQEIpkJfcLrFVxBbAPQKvrBTGq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_07,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_042352_861145_77E3DEF4 
X-CRM114-Status: GOOD (  18.43  )
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

On 4/23/25 1:15 PM, Mrinmay Sarkar wrote:
> The maximum link speed was previously restricted to Gen3 due to
> the absence of Gen4 equalization support in the driver.
> 
> Add this change to set the maximum link speed to Gen4, as Gen4
> equalization support has now been added into the driver.
> 
> Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 5bd0c03476b143444543c68cd1c1d475c3302555..65d9433a298f80eb782439120ad9c3c74025b441 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -6462,7 +6462,7 @@ pcie0_ep: pcie-ep@1c00000 {
>  		power-domains = <&gcc PCIE_0_GDSC>;
>  		phys = <&pcie0_phy>;
>  		phy-names = "pciephy";
> -		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
> +		max-link-speed = <4>;

The property may now be removed, as 4 is the value read out from
the hardware

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
