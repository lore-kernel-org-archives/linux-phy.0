Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E61F2CFD636
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 13:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YHFTifPJaju92iHdpka99jIL4VBBbq2mip72aLoBgBk=; b=Y1y78ZeN6ou3Bg
	2KM4Sg+oi9vlACDnVCO1HqFD9hqcSBjkd4o9TK3hY0A69vVaSXgQC30Ugg1iCyjXRnTBQt2OV1nL6
	CODbJlkSiRDTZ6nOlgkfxeJyHaj+h9AkawVceiJWKdOeYTLhbTzyD5ELW9er19sb1NMkvgQ/kP9Bn
	CR6BNz1zNzSYtuN3G0rDdfyhBQfZXR0oY4C1xRjyECxBTp4hltmdBiOsv2tF1aVxXAiJj3AxdHx51
	ThygdoGX/fP1fKkdqZgZL4DJFMl/kFoKWQPnzzlExj16JhBZxE9PSBbgUOLKDgdmawFEY8Iicn0zN
	FWXX6k/tmuJ6N5fG2duw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdTsu-0000000F27w-2oT1;
	Wed, 07 Jan 2026 13:47:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdTsr-0000000F27R-3o9N
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 13:47:35 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607CsReA2239380
	for <linux-phy@lists.infradead.org>; Wed, 7 Jan 2026 13:47:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UgZSlnstuL+bWNOM3fLTFdzNQEvh4E0HKjNHVKtgJqc=; b=lWviJchNA/PsdJa2
	68HBFGAAEZATXJ31rW+2RG6l43QqyyRaxzF684XJltEXQSM/ozKObb9cw4aBVQpH
	aWTUCpkY7u9lVShSCiU8NyIbZtzl+Kb5NljkVbDKlx3x6xLL3ZME8NFKgL2XZNHz
	XWqL3dpqT74RhVzHVCJyvzBDMRPw2zZhrXr1qGLIPo04Htpt+kHmU7pzXK121ySt
	46ymjU6S0c79H1QjB4Qn33d/6CC1z1vlTugIxOV6l9O+WuApMaVjuEbkYi1VJN2d
	sLswJmRgRDpritd/ExnaDdVPkFVGh3WOHJxQD42tNFMuka43qg7ikNffbNf8XaD6
	YpCB/Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhqwg04xa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 13:47:32 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b25c5dc2c3so41956885a.3
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 05:47:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767793652; x=1768398452; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UgZSlnstuL+bWNOM3fLTFdzNQEvh4E0HKjNHVKtgJqc=;
        b=CgsdN4upwgrPtnFHeNAXWEDUzBY4eLEJA7gzuZHzPFZsU6zF9Ns49r3sltr5k14bkI
         OKaGJo5u37oZPpW00SXWfN49L+/mU72iXZHn2+fU2xWv4fYxmQa2qZcts0XQc+TyzCoW
         pIAkS//ZBiPQvXyRhURwtiNBIitFEZXchJRZ1VwiqG1IFdA8nMAhWdNHtuoySo0PJ1T6
         atulcekSflSKdX0+mLVoBhhdMH3g4F19zuYLy340QByfeJAnEQzPysL90V4cpCronQnw
         WCi/n7cP+l1GARRQu6REJ9t+8vM88plbLyePmLLFsL609JuXHja8isuPD8YHviRMe9+B
         wehA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767793652; x=1768398452;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UgZSlnstuL+bWNOM3fLTFdzNQEvh4E0HKjNHVKtgJqc=;
        b=tViMQ66n57G0UQ2AgNV0mAMvBIRhxwruVEG34qA/PlCBpXInvZVw2woip5ZcvgrXZQ
         9tSC5w85KFq2HY9kIuw9ykjihtoYzxj6Jbx0uTmDdNCAt+ylmc0s94+oxypx8iKSSbh1
         wfJL7rT52+rCk2T97/1RDdYFB6moL4nrRkqu920j4oQf7QX4pSsdbLR6pWy1DcMenpo2
         IVPtLvSF/k5+6RQU89/wK578CcNYZRajeorauF1pHxuXtsFE8AhHX7j5YSsExD9GhlM8
         GrcEPh59F+9X7PcTfaE4rTxAzswR62TStUiCteA4LieRIMH49Qoc8bqm4GHDoQ7WXyn+
         V/OQ==
X-Forwarded-Encrypted: i=1; AJvYcCWg9XJ/1RcnPfQMJpNgg3WTlKYzilk8WT8b35jY2catsrf5S7Gs41K/BykAPsmZxhF4KvTfEHB/Zb0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwtYMaJ92jt1PXEo2K3R2W/xbpU9PYZTc4cwgoRWaJ3EJmQ2CtC
	z2jS9pt1J6s2t5U/VLACNKGzSfuIcw8p31PSAh2cZBU0NEjc6HiKchQayaLBnZFeMKHAmoYKqyn
	4z99VdiJEn/qLQ3hpZbluw4CZIH99iZx0Ct1zrAHoi/knCNzZ9wYwzrqVVCCLCF9DJOOR
X-Gm-Gg: AY/fxX4S2M/MAakpEdRlBl693WUZKff3b8+j23j/94inRK8j8DTb4z9CtYLaGpMTD6T
	PQPfPmSWcdO1IHjJg01sFYa+zejJyvPRzeKQ8Svg6nc325Meqd2PKNpuw9CGxoLx90umwXeRuVP
	BKSl3BNrm9FG7smhxOk7zmnLDGR1ECSbCsyqbrTp1yjTkteOTLBHwGSfE+wZjdipnMkdU1dh73s
	74Lw82vqOj6zrSqCMbELUKdzfAeGXClNCP362kDDCWqZQkV1AgcCbaxc0mS7Y29/2G7XI+h6mAA
	iZ1Um9lJfK+KiE4K6fY/D6fWHicWD2e3xOstD97L26HUKAI3Tlf4U6LNYnVfs3KjdtHNZNOKD0Y
	UdghIPUpothcci5VbHZxXtyHpcbXSRxsgxwU4pBg1ky5drlQHhoueCwZfyIu2SPQ3KyU=
X-Received: by 2002:a05:622a:143:b0:4f1:b3c0:2ae7 with SMTP id d75a77b69052e-4ffb49a0042mr24372061cf.6.1767793652358;
        Wed, 07 Jan 2026 05:47:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEqSd85JPwhEJMYgx6YhAsjKJYD9xSuGfuAYyKuY5Za86pnaJzUy8cquRaa93zxCj87b0H2UA==
X-Received: by 2002:a05:622a:143:b0:4f1:b3c0:2ae7 with SMTP id d75a77b69052e-4ffb49a0042mr24371741cf.6.1767793651855;
        Wed, 07 Jan 2026 05:47:31 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5e0sm4665696a12.31.2026.01.07.05.47.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 05:47:31 -0800 (PST)
Message-ID: <0b27c56c-3aac-4b26-80f5-f8cc52abb66d@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 14:47:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] phy: qcom-qmp-ufs: Add Milos support
To: Luca Weiss <luca.weiss@fairphone.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-4-6982ab20d0ac@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260107-milos-ufs-v1-4-6982ab20d0ac@fairphone.com>
X-Proofpoint-GUID: PjIRgoR3cvHWUAntanZgT6qj1ewvF7Fz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDEwMyBTYWx0ZWRfXzwSVVczXEqtP
 Qd65Xqlm/fmf/lRWpYyd6q2e6lfXDOe0RVffMmJCC8esmkSBFLIO9fitTYf8XNle9yIqLghOphQ
 BzxrY9mHvjn6cEq95V1jlYkMxdldvoEr5mvCvWGDeaKhaY/enxHa8ntL7AmiQ2QLo68FuCGJqeb
 238VqaWXxXmMJ6hXTWYwpPZdfSHwWyyPtF4L0S6kqKgn2F2tdrXzlTxbcta1NQlWpXIrN9R9XZo
 c7O7w267ZiImzTclFpJKUXLcGmIv3a6xA9oN0f0Lbm58GO9b5CDB4PGogjzVHE2/JySSIN3KFDi
 q7JP0wIhuYDgVX4PQgg26HwY49Y6krJK/AAaKkRpuN2cAzErllOraKiq6M3axTInS6zV/VfzyzM
 CeA0vyafLxTioR+MvCnybsWXup6eETk15did5WWlOxX1KkQ41KzqPn41cLW8GjgRhcgiS3WurSh
 m2IKnBLFGhS+6Z7G7ZQ==
X-Authority-Analysis: v=2.4 cv=Pa7yRyhd c=1 sm=1 tr=0 ts=695e63f4 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=RTUAgidmgk2qeza8I2cA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: PjIRgoR3cvHWUAntanZgT6qj1ewvF7Fz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_054734_164199_D68407FC 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
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

On 1/7/26 9:05 AM, Luca Weiss wrote:
> Add the init sequence tables and config for the UFS QMP phy found in the
> Milos SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Matches the latest hw team recommendations!

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
