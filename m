Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE7A2C54E90
	for <linux-phy@archiver.kernel.org>; Sun, 25 May 2025 13:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBXTLLjYvimZEFlHxmKDbP30CMStyrMmJtWIVLPiTNA=; b=kazrNq67PGZrpB
	Nxxwwm6oBvpXqh0vPxqjrWCGY2hUZtsfB2ITOTxM6488pjsIzYkRodv5xW6LTozM7Mgm9LfqHV12J
	/UmRtDLh2A4O225KWIVP7F98kuHgOISmAbVCJb6Upp0t8hOZ1VD+hacUlUqLvrFp7X5B1yES44/9A
	0JAm6mugsnb+U/jQd4OAbWndIZjfvNBPxBgzp9SkAd2svDJSmGC3vVBczbaO5aX3xX1zmv3sH27cF
	IIkkAivgUxBYUMiWwvHzwyEiFiHq37bv5FlLli7XuX6NeB3oKpEtDVzn24uJAsFhoQqLEk8+4L2fr
	yZpcw3bengldWIYCLs2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJBRT-000000077X8-1Q4Q;
	Sun, 25 May 2025 13:31:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJBQ7-000000077Q6-0BAb
	for linux-phy@lists.infradead.org;
	Sun, 25 May 2025 13:29:44 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54PATT5D024347
	for <linux-phy@lists.infradead.org>; Sun, 25 May 2025 13:29:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=U1yZVFeRJvNQcYSjRSwy1kqD
	yL4Ip5Zqm7ZTvTLywdA=; b=Rw3myj1z2bpGxApIKajHhF0wjemUDquesZZY8Z7W
	b3Ekq3g38UHOGy4fXVbGt5ddPeiyi4ssUFXil1PTsfpifM9YJZ3Lj7jxXmM+QZZ9
	BViadp18fN+m0xsQ8BRzJ55W8XdbARHKOIBmzlwJ74J8nZsU4A0cPUwCb5na4KAI
	SY1i8Tq5u2Uq3aHDRQAEbhA7HQ/S297Rh/O2mhIQkdIl6thh1ooDoSifZkK3S0XY
	4gb1f726LKF3XHsRQIZDZlGfxrPhBmUmuYPie1OQOv5n0V9LjNf2XSVbR8wHMwrd
	D4NBVzOl70LJzi8qFmFmFiiYV3ISfjOhgnFtwM4YNyNdDQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u5q1t0fx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 25 May 2025 13:29:40 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6faa53cbc74so10627166d6.0
        for <linux-phy@lists.infradead.org>; Sun, 25 May 2025 06:29:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748179779; x=1748784579;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U1yZVFeRJvNQcYSjRSwy1kqDyL4Ip5Zqm7ZTvTLywdA=;
        b=FjXseJZs8P+Gjenaptqk+fd7fBGn/plWfKvoTt+N1QUyJjMjuF97GI4MxfPDqKmhK4
         DVD6Yc2bdlWlH/P4FHs1OxLbuRsDru9K/fM6QVQs7HONGnvZTDP7+7/u2DlKwJIin6jZ
         621umntYWaeZPMXsB3GN1QvMdjVkqbokStn3/YrDrO3ZyJpgy7Vw6RHnktreE7OJJRZU
         vrOyzCRVrDXqSMtEwNnuml4j0VSf1gOMCGYSHf3kSTtfPNsYjO9jcgNNbVl+d1wrp9yc
         BNQNxS4s7CNGKxuUZA4DPrRjF9+MOqATgPRjF/IJNtrHjmrm5EG7Bu+m3Q/E+KIwqsa4
         yC6g==
X-Forwarded-Encrypted: i=1; AJvYcCXPObx3QOiZjzntm0yI3370p7BeFdJUdZQ1Xpvtatg+8EVwOIk2nNO9NRdnEV9RFSZHhpBwscgU4jQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxqL+Sw9sIglHZ0W5BgVXVPmd3wEpqVknl1TE8DQalw762dXI5j
	Dox0dFvNCVdQqJiCS94J5c5iz8l5MCujk5GGCiLCiDaWLT55dTC2fMqlTV2VCBTGBcpWX17m4ES
	xMHkiuBMVvgXHIr0x294I8kSaBCvhAg3SvYi9t89nkAcQ+253xckzvttHQNHaziRFL8+M
X-Gm-Gg: ASbGnctWVOvr81Il5okb013I/Z+nXUF21N9v1CBFSCoEzKWsqTQ2b8Z/UvP4ZPuCs/W
	NZohQqWX2q4h8uRP/HEw/xifDpv+HuzjUomH5VCmLr2EU/GtEyUZ+3WH6VXjtG/4ByyFZKmcqqk
	W34o+aqyDFomtuFJMkdvHbiBWHribhGS+tfTB9sjBuLZo78Vpp3iiE/FRXX3R2oFA5L4X2SLoLS
	5xmQ0FkS+YgMLgOdnucQQ4cDXyMrj3FyPRVS/CIlNhyLNNf7EE+MOVK1didmMYMe0T5lLteyNTR
	MSr9uMHVxMb9jf+urH+rcmdX6ImGKx0bHg2NkoXOT/bCR4ZMvjnEtOATwIV4Wg+ol/PlshGWCHo
	=
X-Received: by 2002:ad4:5b81:0:b0:6fa:9baa:facb with SMTP id 6a1803df08f44-6fa9d29d31dmr119711926d6.37.1748179779626;
        Sun, 25 May 2025 06:29:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkbpwaZtvgsmTH78n4o/WnBGy4bo/N4nIGiQ1UuOGCF+k5vRb0u19iuckAgsGqWbcLc4V0gw==
X-Received: by 2002:ad4:5b81:0:b0:6fa:9baa:facb with SMTP id 6a1803df08f44-6fa9d29d31dmr119711316d6.37.1748179779115;
        Sun, 25 May 2025 06:29:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328084dd21esm43457671fa.63.2025.05.25.06.29.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 06:29:38 -0700 (PDT)
Date: Sun, 25 May 2025 16:29:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
Message-ID: <mcmpmaapzv3vbiynlrp6sijdjvj6a5j3dxzoixz6b4cxqsvbsl@ecljexn3zg2e>
References: <20250525-update_phy-v3-0-5b315cd39993@quicinc.com>
 <20250525-update_phy-v3-2-5b315cd39993@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250525-update_phy-v3-2-5b315cd39993@quicinc.com>
X-Proofpoint-GUID: kYK_8ndoqpb-QlIVQNk_3KdX3iV3rFW-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI1MDEyNSBTYWx0ZWRfX34zrq0d8QMU/
 tAucaASheNBQs/yzrI9y2CKJf3afgQhZyu+dAuoZ3jB+xtfxEifyweyrmiKD01FEdl3SZIBCqQr
 yOFFN+MVXG1d/5fDIpPAYdVbbyiDOIqLqqI6jcbLjWuVufr1ePRSOMe4dlKtlLLx6rZ7Q9lHOC/
 hi05E0uuBKVxXqIAKj+m+Lz0E5u2AUarqiQcH4tF+N0JDjrnmKsPvkoo6oMeu048KrbAhigUdDs
 bm8W70OW4WO5UvlGQGGDkgeEvmTJgxa+IgqC3oFF8PkXx/gdMW3IVvBU0aMkTs3EyQK62OI8GQ7
 c4twrWKPDbCpnXaqHNqy3MUvw9P/POnTmLJM666cek3LYQx0uHZLkmH3oELXrkHsjGjj9Xj4Fs2
 WiWf8yHTuClAEPxP3GZCeqplnSyKyNDLUIr/H9P5H7Q8cshpOzthLCTDUexjUyOhoOQZsPur
X-Proofpoint-ORIG-GUID: kYK_8ndoqpb-QlIVQNk_3KdX3iV3rFW-
X-Authority-Analysis: v=2.4 cv=FLcbx/os c=1 sm=1 tr=0 ts=68331b44 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=wNxpgWlUGOnmd1Q9ojQA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-25_05,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 phishscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 mlxlogscore=999 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505250125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250525_062943_198549_546D5B48 
X-CRM114-Status: GOOD (  20.55  )
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

On Sun, May 25, 2025 at 11:27:18AM +0530, Mrinmay Sarkar wrote:
> From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> 
> The maximum link speed was previously restricted to Gen3 due to the
> absence of Gen4 equalization support in the driver.
> 
> Add change to remove max link speed property, Since Gen4 equalization
> support has already been added into the driver.

As Gen4 equalization is already supported by the XYZ driver remove the
max-link-speed property.

"Add change to remove" is a bit clumsy.

> 
> Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 5bd0c03476b143444543c68cd1c1d475c3302555..b001e9a30e863d8964219c8bd61bc328be71b256 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -6462,7 +6462,6 @@ pcie0_ep: pcie-ep@1c00000 {
>  		power-domains = <&gcc PCIE_0_GDSC>;
>  		phys = <&pcie0_phy>;
>  		phy-names = "pciephy";
> -		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
>  		num-lanes = <2>;
>  		linux,pci-domain = <0>;
>  
> @@ -6620,7 +6619,6 @@ pcie1_ep: pcie-ep@1c10000 {
>  		power-domains = <&gcc PCIE_1_GDSC>;
>  		phys = <&pcie1_phy>;
>  		phy-names = "pciephy";
> -		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
>  		num-lanes = <4>;
>  		linux,pci-domain = <1>;
>  
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
