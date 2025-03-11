Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A728DC282EC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Mar 2025 11:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKCy+SJmg1RSNM7WVqdrNkfHNroOcx58Mr2OUQBRBpg=; b=dl5ZLMi35MAmTZ
	3fRkUpylsXPKM+pc9iKjnByZSstQHyBbH6oHL6J3PG7B8DdVr50AggG0SJAxHr3RUKPtQJQrBp/3L
	Zg3eDyuz+LClieoupBgRgNV4drNr/4OcjuSjGKQSX38hx2roKA/D+/4aUZs1mGaib/ZS7NR3beZdY
	X6Buzj8C0M+PCzxQMmZ3+6e3fcRRmFpb0iE0ZPHDP70D4iMASPDjZQtWAduFqgFXaTeKMqxyZk55J
	BjlqswTuoPtyF3pyXGdKkGxJ9iCoCI84HpepDX8iLIWuUAs07h5yU6eWgW2gaeithE0fwJWiC4VFU
	mvZWwd+0/OpBVv/JE+GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trxeu-00000005RxP-1lNZ;
	Tue, 11 Mar 2025 11:20:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trxdb-00000005RjO-33b5
	for linux-phy@lists.infradead.org;
	Tue, 11 Mar 2025 11:19:08 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52B7hwtl029164
	for <linux-phy@lists.infradead.org>; Tue, 11 Mar 2025 11:19:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v/zsrPomSGC1iO5LSmQ+QJBzaniKLt0k5UGEjWJYgjM=; b=ZnMDEV2blLkM1v6j
	yz+sUf2hDI0q+GO8vzhQ4koX6CWHGWxt+USTTF7vdAR8pG5Pun5GL0xLGPYlFpHm
	VCercVTpc2OZNFgq1Sll8rcPHuSEMSkeUXkTWwDIC4JETfBANvLUmqAYvzEXbNb9
	9PXbp6u4k0bNY1+uhh6mTp377KkHSGDJ7g7unANHauZe+W5vIQGOoy9wXbYSKLRB
	fo8rNQvZvA1oRQ97U1Hbp4+soJs1FaqcTKjZIGA5CB1at82gqINh9OYZ9yy/44cZ
	BHksC5VzdSSS0lnRNBQ951k31rSH+lz+RdeKhnGtQakSzCUmmd0fdXHhUehU1Q32
	ygPmEQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ah1y8nw0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 11 Mar 2025 11:19:07 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e4546f8c47so16537956d6.0
        for <linux-phy@lists.infradead.org>; Tue, 11 Mar 2025 04:19:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741691946; x=1742296746;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v/zsrPomSGC1iO5LSmQ+QJBzaniKLt0k5UGEjWJYgjM=;
        b=m/CxrmqZS3Izzye6MJMHdd8jHVC5ByXui0QFrSoZbLauAlzlgS6a7C8lZV7vbTvKiV
         M8Vs2Pm3e+fT6ozX0bj6+SlDZoFMuuvCGuyFbd6Bo6OrV1KvDhjGes2+oBk+TsOj6xvW
         I9DMxuhPGSdED8tnpHC1Glf4wsy3yqkGxcHIX0u3AoiNr75gS6KJb/11lJ0/oCyaHDSv
         KA/fiRHnrewdbGUg7ANuNGyNNuL5QB6Nx46n8QEsxt5ugNWV6bPvQ0cAGcitLvrqEslF
         p5qVSS0wcY2vZgKsvXMcc/+zLuKpeqrGP1Fr2Ixe+3ybLh36JwHSLebp064t/FroLJzA
         6TXA==
X-Forwarded-Encrypted: i=1; AJvYcCV1xmq+OpVEwAMQpWK1yhyVQI+d4Gw1F2FmuB0wnl3yvfhDfDQFkkyHIBNHb3xs11ytp9bh5c2JQpk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNdfiER7fCLPmbQ07qgcStFYECHnvS6cgkPQOgjyU/yu7PsLtg
	OSdHmhzHzcPRMFbZ75Ou7g5S5R4spI5EZ6CrMikUx7eWy546CHkwvZ2Pu0tGCT5GXSRfcIciqUH
	YBGF8SUFCfnXc1fuoHqk4eQEreY7PdT2Twp1lXj2d6B2eTLfAn9E50i1G3khvR2aE
X-Gm-Gg: ASbGncuxF0fBzEMggwYoEO18LrKu1mkS9qZs+r9vS7W+0KtWgWBmySZBNwscQcHDIk2
	bWq/fPEfQtS0PMO4ge+H8dS81JES2iOkNMfN6sY/VR/W9bNkRkyJbDzj5dXEAOwgZYWRSwtxWLX
	WbFoGOlLXVQzd62pwKwTAnH+E7/i5k/Q0ZrtV+u5MRnZm9hpbP6tuOas3l9eeig2O41Ennyx+XH
	v9pV5VGibAYm37fEZZbAbzsLtDMzmA7YQSLiRejRBhYhADGI+F399754cmq8PBMJN//QFh5EJT6
	Co5JxAZzgd1gY/PYu0lm3jBeod58Lr0zc8p8wgy+Nz5B9KtYj9AKdSkdoMtjuaBYeaVgvQ==
X-Received: by 2002:a05:620a:1d03:b0:7c5:18b7:506d with SMTP id af79cd13be357-7c53e05f9c9mr737228085a.9.1741691945872;
        Tue, 11 Mar 2025 04:19:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFMbOo9/SytOGUrUMo2XFyejsZDSP+j5JNs4kPwfKJu5yFVYu9xbBZSRIJg5VV2VeLv97QvVA==
X-Received: by 2002:a05:620a:1d03:b0:7c5:18b7:506d with SMTP id af79cd13be357-7c53e05f9c9mr737225285a.9.1741691945534;
        Tue, 11 Mar 2025 04:19:05 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2394fda1asm904961866b.78.2025.03.11.04.19.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Mar 2025 04:19:05 -0700 (PDT)
Message-ID: <69fa7f33-e957-4dac-93dc-6fd40167873c@oss.qualcomm.com>
Date: Tue, 11 Mar 2025 12:19:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/9] phy: qcom: Add M31 based eUSB2 PHY driver
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com>
 <20250304-sm8750_usb_master-v2-6-a698a2e68e06@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250304-sm8750_usb_master-v2-6-a698a2e68e06@quicinc.com>
X-Proofpoint-ORIG-GUID: k-QTaIJjHfLX-ets5eferBJ-8dA32Mql
X-Authority-Analysis: v=2.4 cv=aptICTZV c=1 sm=1 tr=0 ts=67d01c2b cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=obrcSLqBe2MPJ_po3l0A:9 a=QEXdDO2ut3YA:10
 a=T1PIRxOFuHhLvSGs3xkl:22 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: k-QTaIJjHfLX-ets5eferBJ-8dA32Mql
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-11_01,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 mlxlogscore=902
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503110075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_041907_784534_2FB33DF1 
X-CRM114-Status: GOOD (  16.08  )
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

On 3/4/25 10:56 PM, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> SM8750 utilizes an eUSB2 PHY from M31.  Add the initialization
> sequences to bring it out of reset and into an operational state.  This
> differs to the M31 USB driver, in that the M31 eUSB2 driver will
> require a connection to an eUSB2 repeater.  This PHY driver will handle
> the initialization of the associated eUSB2 repeater when required.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

[...]

> +static int msm_m31_eusb2_write_readback(void __iomem *base, u32 offset,
> +					const u32 mask, u32 val)
> +{
> +	u32 write_val;
> +	u32 tmp;
> +
> +	tmp = readl_relaxed(base + offset);
> +	tmp &= ~mask;
> +	write_val = tmp | val;
> +
> +	writel_relaxed(write_val, base + offset);
> +
> +	tmp = readl_relaxed(base + offset);
> +	tmp &= mask;
> +
> +	if (tmp != val) {
> +		pr_err("write: %x to offset: %x FAILED\n", val, offset);
> +		return -EINVAL;
> +	}
> +
> +	return 0;

Is there a reason we need to read back every write?

Does this have to do with some funny write buffering?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
