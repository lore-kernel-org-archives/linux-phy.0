Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21CB6C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 13:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7oP2FEC7mctr9iO4dAbk6ciN0Hq+97nN/VZgKTzl/Q=; b=ll6SdRdja94ybP
	pldrbBYQ+mG7b2WKir6N006GVfRNLHZ3eh2cLQ/bO+3MeyHkpLvowx+/38PKt9KDOhrsAIEIpXkoE
	PqBJs73huvlOUisMRRGltlApC090Lo2zKtAwGnYjnGR1vfyvfMZitV6jjIExJtCB4ftQXyw5SGSD4
	njP7FBJ7b53zmvuJtbsIrV++UI2boAAG7yYPTlUxnjeM6fXdwiEYj+ohk1Q2vBMJ4+Zk8OmqRPxcX
	tXNDFgXzPEFF44tefpZMC9gPAbg7WKr54Nu+oDwjtj00urKAv62qJUfZA/KYsIBydJ5tWfBAuxawV
	+7NOy+DA8j5uPn2MRzHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYx5-0000000HDz1-3bWg;
	Tue, 30 Jun 2026 13:56:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYx2-0000000HDyH-3B1E
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 13:56:38 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65U9n14Q1573350
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 13:56:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T/C4zaqYyFJx4mzZ9Z7Dko2c5OkhA0oBA3/TFBdaRUc=; b=NGGViOlPZ76GUZb8
	MKhJBB8USm6CVidhmHI+UCpzAQwlh556ekgfW+GQf6zeCcYhhWNxp98XaAfDwIMf
	7KO0I2KM1fCrNZsX8sVTm9GXFIgZejKodSsku799SpwTFdIF/MS2bN9XEkta1tnr
	yktHuMaSzvhyvxDh3vv61o17mkUfmW4ZnRlVp/M+yzMlsR4uJj2qHM1+brGwZR85
	3lCTcwtGqqUg0gFMwAyyJazBKUYdJQ9obeufv/B4c4BAhp4MPQmP5+ju6NKWuW8s
	fuZwMl7xDPVOd4/PNPdMGB7aCCoPguywFkBxis0Y3S2aPylAqBYF8+PzcBxk8qxz
	iQCgmQ==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f46862he3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 13:56:35 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-96927edf751so197174241.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 06:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782827795; x=1783432595; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=T/C4zaqYyFJx4mzZ9Z7Dko2c5OkhA0oBA3/TFBdaRUc=;
        b=cVnWg3mFxWpk3hzwNQhpjj7cnOhtITn/Rpua5QnmRYF9I8CHYJuC2ezqDCzOVBsYIV
         z8aQDUiqRiONUp00qiCVugxCeYTB3IOe8f6JeS/GhO03UhfrGQNlhVDyszaRfqdROz88
         kJJNv53ECN7TPVeEDodmv4FFhQ92atbDTScOvSxQEPRfJr+VGgSx5xNeK2b9x/EDsE9D
         QIFDYxpk01cKJFMDW5VqaO/D1bSSDKE/SnLQpbqBYVSSidlcLttUiHlkEgXZBE6rcHSC
         43BHmTHYVWmbIwzPTslSBiqMLGLBdTepO0SVQr2Bq0YVvLx6MaH+xFMfEikohChyaIKI
         BNfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782827795; x=1783432595;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=T/C4zaqYyFJx4mzZ9Z7Dko2c5OkhA0oBA3/TFBdaRUc=;
        b=BMHqwzwbo+y55TihFP3NXQFGI84OrUYQ2xI2NOYKEaU7TpdJ9zOB2JpfbiNawZQEuU
         gjFxCkz35yhrJ/yE9QEjkPcz1Dt6bv9BVH9WBUO/bYh/E+v6DH8G1RM5PohR8/Gxwxt4
         I3VzQP8lNrOWYCs18QdZ3C2jffxiVZkU+ULwiRrufuwJJJOE6s7zT3187jpfAeJ92PWs
         +6fmnPD/VmJAmfGE9SvYO5xm7eFnCvdAWcGsofhe09LcjhVXYCgkJT1JSWfXhafr03Ch
         t8ECC60+EMGkRbaAq1Sz6x4NN0WASTyLyZZWmzlKFvAxnJcnb2AhHoHqYJy9g8bg++Hw
         j3WQ==
X-Forwarded-Encrypted: i=1; AHgh+RqVg84MGrsE64LRE3kiHulIN5Ldhc6E5+D5jZ2TDtwdCiTEd3VkFU9zqwAuWAUJK2CjqTjYuyiVwqs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxQhktyYDYI0wrkQcCsfSmf/b9PGzP9MyzwIyPMLzifajQkihsN
	2QuYJqrrPWryYkjngn9qZTgqTXh3PdUhkrbQhCDtG4JJUJpJLSsAMVmXjZY7LCH0bfjm150N+gi
	NOiGjT+OcZAg8aq7fAaz3wFnP/Dgh+jI3ntjh/ABQbo7HXapMdjEYRekY/vJ0agPVtg8n
X-Gm-Gg: AfdE7cnGMdXomtK8s2Z6+Nhdw7wyDkNvkPINhrF1tc5UT4a3SJEG3EBgr/mC4WCD66s
	yQeC77Y7hP50iPgW20ZDefQBZFr9Ue6qguWX6amBwfqjNBvWnMkhsomdlD5mZLjmMmH7z3E+oDr
	MpY/KA7kmHTJ+AHVEIIcod8YEWubz7M3rxA7I+p5/HywqsCQYSL9e7sMTNya7XFWkbnamFfbjpV
	tzLRYWwbytAMMsbrA1dX57avRdSGum2BzR3HmXGBr52HFQIymmOOcsZv9gJNxarlrGSUQwR3Dm4
	+Xl7TRgYeX3bq9p4H/JSUjNkcL4uqf/iYnrKjVNCc90UNhhlBcxhLu4vueJOzxJnc4yNYDQx4j7
	hpYA/zh8Vzk0CzEPIEs5oX7uazNgNaeKGbjo=
X-Received: by 2002:a05:6102:290a:b0:738:b13a:c810 with SMTP id ada2fe7eead31-73a365ea4cbmr656461137.2.1782827795253;
        Tue, 30 Jun 2026 06:56:35 -0700 (PDT)
X-Received: by 2002:a05:6102:290a:b0:738:b13a:c810 with SMTP id ada2fe7eead31-73a365ea4cbmr656449137.2.1782827794804;
        Tue, 30 Jun 2026 06:56:34 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6987c3a3d9bsm1292012a12.4.2026.06.30.06.56.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2026 06:56:33 -0700 (PDT)
Message-ID: <f3da322d-48ed-47f1-bcc0-50161514d390@oss.qualcomm.com>
Date: Tue, 30 Jun 2026 15:56:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] arm64: dts: qcom: Add Shikra CQ2390M SoM platform
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
References: <20260527-shikra-dt-v4-0-b5ca1fa0b392@oss.qualcomm.com>
 <20260527-shikra-dt-v4-3-b5ca1fa0b392@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260527-shikra-dt-v4-3-b5ca1fa0b392@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: OzOSlTxWHx7Sc21049EPWvVaU4N8PHC3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDEzMCBTYWx0ZWRfX1D+l5VlapyLl
 ZFcTnfLpPr8QLlTwRCRkQ3mSGPbRRMxl2SaY9hjscArfSlreBuyFrVa1k9ZT0w5WRDuVL6rFSkZ
 gPBPcCQ8Or66Yfa2Etzs8x3S2SbZ46mo/gb4UCKZ4RM+HdUiZrzASW2uW3d2JjAMFMWjty2TNiY
 /m2O5NkJZR+sodrBlOosTRMaLWioVNQBkn3rlLLodWSssGm2iByU//pbw2gZE8PJoXeQYhqoqO/
 9IjSdtz6yfKTLjfk/9GxFsO/yO1LpNNSlyVboHj0R1/cVejbbX+3BhLw4AgPlxhDdtNHGI1qkD5
 3NiTr6O69eFHgZ87zvrNF+BFeo8M/yiijDJoBDBA9Z9sdcKMWYl1a8UlQrHOuw57p6bYAPYxh+V
 lVHEcuqTM+2Flor1VObnx0pNrsN0DGs2lSVQC4kpts2cFfiE/IRH9krulQKPL2SXA+GZqStNaNO
 mGpgGc/ekjOv0hY0b9Q==
X-Proofpoint-GUID: OzOSlTxWHx7Sc21049EPWvVaU4N8PHC3
X-Authority-Analysis: v=2.4 cv=FbcHAp+6 c=1 sm=1 tr=0 ts=6a43cb13 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=djcwQD5uGQ3GNs8by1sA:9 a=QEXdDO2ut3YA:10
 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDEzMCBTYWx0ZWRfX292SsrNmagYC
 o9fF7wqDsE0sYljF9SVRPwtGwOVM9hoA8VVc1pFJin7A5Bbjte1ab1ZnsLHOV9nLSlzOtFXSHKd
 zccoQ0wMpZtLtIJkvv91qFFERWx+j1U=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 adultscore=0 phishscore=0
 malwarescore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_065637_334336_4C6B10D4 
X-CRM114-Status: GOOD (  11.82  )
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

On 5/27/26 5:53 PM, Komal Bajaj wrote:
> Add device tree include for the CQ2390M variant of the Shikra
> System-on-Module, a compact compute module integrating the Shikra SoC
> and PMIC for IoT applications, designed to mount on carrier boards.
> 
>   - shikra-cqm-som.dtsi: Retail SoM with modem (PM4125 and PM8005 PMIC)
> 
> The DTSI includes the common shikra.dtsi, adds PM4125 and PM8005 PMIC
> peripheral definitions specific to this variant. Since PM8005 regulators
> are controlled by rpmpd, so disabling the pm8005 regulators.
> 
> Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> ---

I'll pretend I don't see an issue with a volume button living on the
SoM

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
