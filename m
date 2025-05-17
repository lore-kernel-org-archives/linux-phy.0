Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37608C2D0CD
	for <linux-phy@archiver.kernel.org>; Sat, 17 May 2025 18:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I10s6KjF7Iqb2rsqLTIQZaDRbo9T73LY0p4EYFrNsSI=; b=LzvByM+5WIPFtB
	CgUyEgMMg349Zuj7avC/7UxH3PSv6DF9SYQzgn1dR878gGJySGypUCxfbW4In9Lg+LbRHjYTNjuo7
	+RRbLTsJ3iv1VjH/0aXzxXoo+L+ljuAdV+XE+W/tml6y/OOyemyOoboxIDM0sC2gOn/deWJJawCIk
	5esZGgEMUCQJKGD6LiIZtA5LtX1PnyjKT+TcwlxLvmdcHDoJT0n74UdTq8/CjCYLLvhe9mWGdEIoJ
	PHaxrGDvPeGC7kWqKbNa/BjqKgRAa1P1ceoFBxL0wOmAZTPSm+e8mVxPjt3OyB/vMbVU20aBPFur3
	Ajb5W3uggwDJUP2zPH7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGM5T-000000066RT-2vRw;
	Sat, 17 May 2025 18:16:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGM5Q-000000066Qb-2Jc2
	for linux-phy@lists.infradead.org;
	Sat, 17 May 2025 18:16:41 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54HCSTme023079
	for <linux-phy@lists.infradead.org>; Sat, 17 May 2025 18:16:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bnBJCA42Fcz95KKCL7XfwOVPDCEaWi9lJaJ6xnj8QNE=; b=MeklBNUOJk+gzfaT
	wZOEtq9X+JzyiZ2sdefk+IEyy0yww3R5/vMXagzzRsh7QTuyzqDatRKqR9YEPWfw
	yX2Yiw9p/4k/pMGfKyXZHeAs6n9oQ+C4ubruy/bCBIZhQupUnTv2FdnELWCw9u7T
	w+LacuW1M0vCQ7mXsPs5cU3nVFiRrs/9GWFb28YnuSbRodLkdLh+ifSECm5K3f9T
	JEnVDzn63WgmHtuyjd586e2v+x076w1uTF+KqacytWqfxHiHPhdKYV4AR7Jmzifr
	UwT2qEJKbDAX52lR6J7xwo48TkrPkQV+SCuEGN1P0V4cWKPdcwf5xzdRPYuQVzT4
	i7Hspw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjjsrytc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 17 May 2025 18:16:37 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f8c263ba30so2342856d6.0
        for <linux-phy@lists.infradead.org>; Sat, 17 May 2025 11:16:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747505797; x=1748110597;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bnBJCA42Fcz95KKCL7XfwOVPDCEaWi9lJaJ6xnj8QNE=;
        b=pUsSwN3v8tG/J7SNxhkN25UdslJKk73POLuoR/MjV060YBOoHkccjH3E9Du3KoFj9Y
         s+InfeZYa/LdE2VlkI1D+2/s0EXIhXWTESoNHv1DG+CDtC4c0lYxt36y7TnIwc75XsR2
         /WmVKyZThdfhQrIvV+ci6BeQC+/yCS6y3FnJaBAWmZGWfBuuy5DbEYqv6LWalXSURK7B
         OW3PCMcixVLHodJI9PUE++4Knj+3HPxsX7Coe79Y5fgaWNxRJj8U8VyMZpRfSEsVNuBE
         GuV58xy0Y1vq0rOZEdMyG8+OtTkR2wKurAQOnlg5RA2ED3gBS8g3RAxLMz6MPdqQMKoa
         uwsg==
X-Forwarded-Encrypted: i=1; AJvYcCXgxkKAQfdOPbND73oLjMTZDMyX/kUB9jC7dtfaMZ+4vT29jK3N1J9quEETEG725zFy+kC1SJJzz20=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx36S92jGtcwS8Wxow0Rbnb8xQqauaLT/qt6mDW5N9zbEeoxHSi
	pGNU6kYjYbP1wxYsfFhztlCeqsXrEqHrO6X0wis70YX49KNTH+0poFeYR9LUqY2zhH1+Gygl0qH
	O0RWQ0yPSsi+RUxfQXfGaireZI0s8/QjkzWO8brU7BbH7gH/rcg1MH2tALeXs9GHWDjpd
X-Gm-Gg: ASbGncs3sp+Ub7jDhIDdJDuMb040hcQ1bXSBxByD0HJfPsnX0l6eswmD7CXnTO7zD3f
	eJv4zsBZfpeHh3b4WT34rhHh/i6Biv8PVH1FuwsJH9S3Jzg1ZBGUt5vAaqccOzL0BxoI5xqyQBq
	eynDpSSaxvHfi6hw8qTAUKqargoatAnl+bE0Ue1iBDF3fWm8TgigQGq39ATJ6eftbJCdiZ/tlYI
	8aYeGIDO47l+rh+9Xak/jMWUUv3BR8Ea5nvmMEtdPXQbmLNgL7ltdmxuCgefu0Vvlp3SNxPixfW
	C2Q8Uf0+D/ZqyQjjXKOwbLJRh+gHDQlK9c1TZ4SWzcLeJkCnrClbt0E34vCQuGeOqg==
X-Received: by 2002:a05:6214:e66:b0:6f8:c773:367 with SMTP id 6a1803df08f44-6f8c773156emr16309026d6.10.1747505797147;
        Sat, 17 May 2025 11:16:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPPQtbYciftNueP6WNh9ccRSDo+w+J7+XKx+nyCa4V5rw6SiuDQB/u7qA1Xq3T2ePW05WFQw==
X-Received: by 2002:a05:6214:e66:b0:6f8:c773:367 with SMTP id 6a1803df08f44-6f8c773156emr16307526d6.10.1747505791887;
        Sat, 17 May 2025 11:16:31 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d441fe5sm324919266b.111.2025.05.17.11.16.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 May 2025 11:16:31 -0700 (PDT)
Message-ID: <8e900d20-009b-4cc7-ba1d-52582e414402@oss.qualcomm.com>
Date: Sat, 17 May 2025 20:16:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] phy: qcom: qmp-pcie: Update PHY settings for
 SA8775P
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
        quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>
References: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
 <20250514-update_phy-v2-1-d4f319221474@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250514-update_phy-v2-1-d4f319221474@quicinc.com>
X-Proofpoint-ORIG-GUID: EYX8VWyQ_j3XSWA0eoq0K8d8SoQV-3RG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE3MDE4MCBTYWx0ZWRfX7kTPBszEd3q8
 P+i688qpUgvKX+qqE/+D25vZv36RTt9QMQ4UaKnmvjyJywJCU6FqeRim05m7h2CYDRUdXQzlCO8
 wFzukTGzkX3bPMd7dEA+/vakK6LlyqfprOpqUNHyOVnwwmaD5U/cj4I/Px2HmPVK9iLdqMONGIn
 s0EKVqK6O3iIy7xgHPNRPh068+jfxLSQobidjrP5ttoeryr27+J3J4AfVHuGbPrWiiFifV1eyp2
 YpvzyB0NyqbcWaAU/lBVPhxCZRftchWSh3YBCxQlgk0EvOh5qCBUeRP/pFvXM5D3EqjQoM6aHJz
 7O1IXv8fqmBqUwszG6t03a65BNgBb6+QqU/eEN6Kkvov6SZZCWo9y4TzNPWIKEhwuD1oCW/HZSr
 B/N/Bv9LPjp0Sgji+Z5+z2qOl8UoAIK9FJFjYyiUNYWTEzmGD/R4udRtlKz3g1EfpOXhni9j
X-Authority-Analysis: v=2.4 cv=K4giHzWI c=1 sm=1 tr=0 ts=6828d285 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=9rkGdShBa9mjovGmxRoA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: EYX8VWyQ_j3XSWA0eoq0K8d8SoQV-3RG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-17_08,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 mlxlogscore=571 suspectscore=0 phishscore=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505170180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250517_111640_749951_1D79DE62 
X-CRM114-Status: GOOD (  12.07  )
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

On 5/14/25 1:37 PM, Mrinmay Sarkar wrote:
> From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> 
> Make changes to update the PHY settings to align with the latest
> PCIe PHY Hardware Programming Guide for both PCIe controllers
> on the SA8775P platform.
> 
> Add the ln_shrd region for SA8775P, incorporating new register
> writes as specified in the updated Hardware Programming Guide.
> 
> Update pcs table for QCS8300, since both QCS8300 and SA8775P are
> closely related and share same pcs settings.
> 
> Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> ---

So I took a closer look and please re-validate the changes, I
checked one write randomly and it turned out to be inconsistent

[...]


> -	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_VGA_CAL_MAN_VAL, 0x08),
> -	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0b),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_VGA_CAL_MAN_VAL, 0x03),

^ this should be 0x0a according to reference v1.19 for RC mode

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
