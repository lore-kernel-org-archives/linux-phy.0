Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 531E3C43602
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 13:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gFGjh9i6d9uaej6qf3npkQ0lBGyTd09nCPucWVokxI8=; b=iYHMLIVhZH0IkC
	goUANfmClEzHIEf401pGrQAgfS/QALe2vKgF2elzWtVQ5kFpvKwqnXwRew/oG+wJb5JdjbOqLXBpQ
	5VK0Zcio+tb+opv9Iarv5IWcaU6KR8J4WcjPCEBLYqV+7YU7GeCHitJBzKADB0wdod/bvstXPSTWY
	EAKnIrgL+i0n0vNhCGZ9zqyNhoBfUMYHd0KY0zD4zCp5iujFDtPemRZ8lNtfy9lB7VZ2m3xq75/yY
	Ktjcg1Z/Vfhv3yaRU/HHNSR+Bigk0rjc30d5XysHW/73FFga2u67lOYOrGUWYXCQAMRdRSDzQ1M03
	RQmS7i3Tz3EkqIbuYvvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYxK-0000000HE3Q-0Ipr;
	Tue, 30 Jun 2026 13:56:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYxH-0000000HE22-2eLT
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 13:56:52 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65U9nEtg1590709
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 13:56:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+TMcA/OjnsdSU9logLGCJgI1OcslBQgls9mCJLwsRoU=; b=pV2WMVe1L3loPsAs
	KfJkGEDW2Zdz1pCIvj154ylHL+vt/ybz7ynry38mHjJVtcjLrr5uVIdDrsB5YICR
	sekLeWXV/TP+9fQS03XfdjemuZimlCBZBUyXNh8+IR19MQmM/MVJ0rShZ8uoupLP
	Yx7BbPsrOFBjBgVY6cfEhZGv45EboeGyh7pmLzXQrvc4Yf4bhlJ6R0zy5OIZJTzu
	o96dZa+fFzqFboIMLRgm3/5PNW4MZINW2nuTEH9X2/OK2Kmae1jOPajonOfmiD+O
	2sYsmzTIWjdstcw769qaCIduQbK+4oOVYXpyMQRaIe5CxhShYGkDgl1+0jnx9JKw
	DkBuuw==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f3y9k3v27-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 13:56:50 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-96920484543so147530241.3
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 06:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782827810; x=1783432610; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+TMcA/OjnsdSU9logLGCJgI1OcslBQgls9mCJLwsRoU=;
        b=GrU08uSK7pzQgQ20pwWPXmOw1i/LBfo8LdhQeixWMhLAoXt9scgB9rKz13bbAT/2ka
         7wH1LGV9OlXUFqv/GaPco+0hUiWxt2gFyHEyYrS4XcJzAzgh12g4z9o6q3zc4/YY+gUN
         rK2oSiMzmSr5fY0IUTwcqxR8rQzkODabmzYtq/VkuvTL8idd7XKIU+d+sniv2Zfkz6PB
         wi0onM0OkCDtX9WG40quCpEKDaDto5Q5dFNjTkakCR5ABXS1S7EcE2mWO9eY8yrSNL1C
         uPaGORVS5/UhADfRyV14nOMYTg0aIsJhCtECyObiRDlPo6Kwy8jeaPPJ83D65IVhttcd
         I+Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782827810; x=1783432610;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+TMcA/OjnsdSU9logLGCJgI1OcslBQgls9mCJLwsRoU=;
        b=LuYCmZ9StaSkzJXh5m75SacQT5ZvrTx3a806xghE1gXA+Nqsot19NPsypRI3sUQHU9
         t+JUUwitZmizV4zBMX9Ec+nf9UUsCA88xqg8l8LID00IWlzLdQqueq4hS1WpIljzLWhU
         nc4ZIu0pc7xsl+7asOrbmZ2oR6ofhzxveeguK7joa2CWkmwmAYpToYWuQFzE9a5MUjdf
         eN2KMEzgB7SONSpOlEuGxtslydrWmRSdImLJMFIncRpCMiPBV72d7yBb+zfApvRHXF44
         zBwK6X+mKMxfAja0fUwWJpggF00KLBb8dCf+tHGAjlD6SDnVlGZnZEYbHdhNeH5opvcw
         Z9bg==
X-Forwarded-Encrypted: i=1; AHgh+Rplx2swI1IfghCRJfYtMOVZRTOOVPSRR5x+X01/nxV81Vr1EWi3wo5Jb7KlG0hG4TPH14+WBmcGq2w=@lists.infradead.org
X-Gm-Message-State: AOJu0YyLtx404oLHuA3WByqgr1g1QHMWSnZUPeDjheOnQAqpGEN4VeFg
	mml5GLYM2O6gukhc+TKIq6UACk7SubfIYHRltpp+SifmTNgphBLAmQYx+qo0SITTmPMCrqDQENr
	NRCRT23VN0UhPGvjYShaW2w2Pl/JnzBDhghjj5b29tI0wUmA4wfjGe7Ps8SDWOgYv/0BA
X-Gm-Gg: AfdE7cmDYA3klbt1afk7H3/7dr0LUZ82XI/3dYG9nrH4VgablScx4vIk3BeUp6Cb74U
	lbGPtggbmYBv13g/gCXnGdKPZ/QHJVInlHV7u+8Q2WzvXsHvYMto9ewMErfqx8QX1OKOvk8WZHv
	aIUhEnq9V+qDOxF7EoSErAb6V+oPqNyE0SiG2avdNq0EpySniH2zSqRTxnXGF9WqZtq7Q0Lj6pc
	akSdbrg+BXJS9QOqdvRs9sLRhjlRfLqQbyt1a6KY3URDYXvU9t4CshKp9EIftWfykBJk6SA8I4M
	nOzLqDjrqT38qpUi0cwXQzNcYPTDttJ674LKU4T+stjToNVcXC6vzta/yfRmIBPeEqsWuJaPRdi
	2894xGyBAeRr8FFdbZiDHK+abb2SXNx3tPOw=
X-Received: by 2002:a05:6102:5986:b0:739:b7cc:3ce7 with SMTP id ada2fe7eead31-73a3934de72mr602372137.7.1782827810171;
        Tue, 30 Jun 2026 06:56:50 -0700 (PDT)
X-Received: by 2002:a05:6102:5986:b0:739:b7cc:3ce7 with SMTP id ada2fe7eead31-73a3934de72mr602366137.7.1782827809802;
        Tue, 30 Jun 2026 06:56:49 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6987c93cacasm1328329a12.18.2026.06.30.06.56.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2026 06:56:48 -0700 (PDT)
Message-ID: <e29d7898-a439-4e5f-bdff-0e7daaf23c4a@oss.qualcomm.com>
Date: Tue, 30 Jun 2026 15:56:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/5] arm64: dts: qcom: Add Shikra IQ2390S SoM platform
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
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com
References: <20260527-shikra-dt-v4-0-b5ca1fa0b392@oss.qualcomm.com>
 <20260527-shikra-dt-v4-4-b5ca1fa0b392@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260527-shikra-dt-v4-4-b5ca1fa0b392@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDEzMCBTYWx0ZWRfXzS50ePv1NV1U
 +/Zvs3d0WbxQqBn7B3XAae1ECE+Ze/eNnJGNmsuTZXseeaC+bs04XQnKwpXBVzUcFwDYj5znnou
 9PRIwOT+wXRCkDY7/5X8S4FE5jHGwNY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDEzMCBTYWx0ZWRfX/UFnEiqMpurS
 xWJ2tuLxK/m5LDcrLMbIMfW/Ook7mvmUjOjYgPETrtQk+64Ge8uyP4TwznrsTGMKl/sTR9KS+GQ
 uRSVnAI6Wo7XUCQgRjojLbQ0DriIbO8bqV2JrI2LfxNMAtZMFIJsYYTLdGozo7a0ahhque1Qosw
 FuRSwXakYBWxlYPYaxlQ6u1cutnnoIrrZm535toTIhIIUjmDOjLgyd3yBu+u8WVbXfSiqLdqK+B
 3HYO7u1ijNHutPBiu7tr1w88OGGAnVlnruUZ6scOmPGIvrkUR2QWmtcwpPMWTcGR9niJsVEYv8E
 KfWUy9QVl6r7MPTBqUQ2CpVCDUHLE88p35jg0JHaAF51unqhOavccygR16VQVUs4XbBMXO8j+sh
 CtxY8hkG0mKrhouwKFqO9YYzBIakBch8QQ93e3Dcj0q4FjHpcDt2nLBz2SyC1qOzWLgZkT2f2K+
 T1kVe5U0g81VSG2Rw6w==
X-Proofpoint-ORIG-GUID: F1qw_PGHbdWa95Nh4k5T1E1fpAbFXJr5
X-Authority-Analysis: v=2.4 cv=TeqmcxQh c=1 sm=1 tr=0 ts=6a43cb22 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=MSeU50jLikp4iQrAx_QA:9 a=QEXdDO2ut3YA:10
 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-GUID: F1qw_PGHbdWa95Nh4k5T1E1fpAbFXJr5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0
 spamscore=0 adultscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_065651_814485_55F6DAD9 
X-CRM114-Status: GOOD (  10.48  )
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
> Add device tree include for the IQ2390S variant of the Shikra
> System-on-Module, an industrial compute module integrating the Shikra
> SoC and PMIC for industrial IoT applications, designed to mount on
> carrier boards.
> 
>   - shikra-iqs-som.dtsi: Industrial SoM without modem (PM8150 PMIC)
> 
> The DTSI includes the common shikra.dtsi and adds PM8150 PMIC regulator
> definitions specific to this variant.
> 
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
