Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35AF3C35FFA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Mar 2025 10:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFqUFBcfMwCByfkSpZl0DgZbFqPrhMmvutwcsb1iiKM=; b=c9ZN3uZdhg0yJC
	NfWpI2cDmuBPW1FaGKC3CY0flEo1zNad+KNPf06JN1tJfOd04uW2+7RS4V3pKwrPtqxia9Aq5N3nZ
	jrkk4Ut4XcK1Djd09dBi+D5agistUo2eeD0mvNRBa/L9y5eDnBGF5fvYVVfQ2v6bx/d+cOugErNjQ
	Wizt/EuqxoxKE7Ri3qK8Km6qAH82JplOaUbK0Uarbb0iNk+OwT/iztLFIRIXy1M/nxeThgspgSGKw
	T2HIpIAkshPKtNKJgEL1EMiqMOVFyNbK+eD2hdhu2Gu+TwL6W7ZeK7wXybtUGf8l4lCVthR0EYBX5
	3Z/uuXka2eUHCtYpJZEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuqX1-00000008djd-3zw0;
	Wed, 19 Mar 2025 10:20:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuqWz-00000008djE-1nBl
	for linux-phy@lists.infradead.org;
	Wed, 19 Mar 2025 10:20:14 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52J4loHG020878
	for <linux-phy@lists.infradead.org>; Wed, 19 Mar 2025 10:20:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zSDknMN5As4J/WBF6m6Okwmi
	u2zvdRItiGG5o6Mrxbs=; b=iLzs9K6OR5bSG4jkdExY7bPXDKJs/mlEOzokoyWC
	P58EXN8Yi+wBkeex/UzZINhNOD6uf4OJi4WkBxmPPGJhyQEbvzCfXE00kBCPQOsJ
	x3zmRoahp8FWYnYnbxnHnonLTcE1P8NqcJwzVrFkle95+hYAwyHmJ3zyVBVIVOSz
	opU5FreRapXtI1Vink1/jb7GUFmtMI6XeV7fbTa+ILHX9bx1BxsFTYp5wEEKPzmG
	fU/SG5c94kSFFj0XxuyEAf7EeLyNyTrQpL9SwoLklcnraGlBOofjUu1rLc3upfI/
	dN1CmyqCFtoVBthcMlccfirJFxZIHuANaGw4m4LKVytgvw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exxbmvfm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 19 Mar 2025 10:20:12 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-476900d10caso154148481cf.0
        for <linux-phy@lists.infradead.org>; Wed, 19 Mar 2025 03:20:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742379611; x=1742984411;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zSDknMN5As4J/WBF6m6Okwmiu2zvdRItiGG5o6Mrxbs=;
        b=avx1zxkytjbmRr6Jdo5cap329HLO3mEMuJr7u/gy01/nDodNhD8Z27fDN2153x5MZn
         sZQeJFusZtkiiOkZ6g5i0Tx/K0tuopZjfIwE5SLm9lkbvyaStf8r0UwCKQWrUFQXC2Gk
         l3JGQ2JagBLwVuVcuAIs2hc2j3mN17s3vm5kGxFwqZyMz2cndJZwt4Ez7Smp6M+SVHZY
         737t8JNpzesPWO9swjl/rnh7b1mgG27aBAQAoWiLWvl/pslgcSOx2eYH1B2qs7AJnkU6
         Awb1s8Ffw4ZKRZHYih17qxvid8uD+Kzkm2QP75HQiEY/c3Ieu9t+vCLDoo9HkrZOZXpZ
         uWsw==
X-Forwarded-Encrypted: i=1; AJvYcCV0CmqO3l8Z19+/zPnP7hxXrDhV2VUVR4nTh+zuFKAjn+9v40c4RDNNSdDlZOvu/f1MZl+N86cDkhU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyU/avCS9QqqVVlqpVjxtC06FeiPnKOZS6RHfWXV/1AjEs2I1h2
	EALjZ81kFE+hcvCHJHR5z9p6G/a8tZHkz1e8mWmxkGOp8si9aJmikJMte77zElGhWUc62qsGm8i
	SmK8+DaqqaO8FhVcI9zgXsCotxPrgBIm5Pv0m3D0xxNCLI81AsKdyROk3faDhlMg7
X-Gm-Gg: ASbGncvCT5k68lRNnWAmRhfMu3XHXyy54Dj8TvT6ZAZ8pPNRzBNsutHpTAZDP2BV9Uu
	RXECxWQTTxqC/eSP58frCyI8BmYVWN4Aa+iOmPOk+INRENq9Isyic6HLu0MDFlmRE+qk2SGdWiX
	aa5QGi0Fjja/lB4nC+RZ+ihuf6OeIfuWH1PTLp1J6l9wkPf+t/V7GvUtjkwx+JXJlOhtzRnApSD
	bWah/qL+3j6jxrYCUaDhmyv3L0mcnHF2e8l5WFa/upHNVcuRaMFK23YqIhKJqymyH8HrImlikyv
	vACNSUT2icznwo+EhIvn7yn1HNtREhGxqJyACuKj3wXeCU5qpGG3wLhpKiS0CFxoNgnjq+Ss+ZX
	W/6o=
X-Received: by 2002:a05:622a:58c6:b0:476:8fcb:9aa3 with SMTP id d75a77b69052e-4770831c5b0mr45277191cf.13.1742379611514;
        Wed, 19 Mar 2025 03:20:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9RzAEw1/ZnVam3afB+N6GWTqWyZBkCWAuOXlcPn+0/cRH8L2YZEzxU+pqqrdx3zDScY+I/A==
X-Received: by 2002:a05:622a:58c6:b0:476:8fcb:9aa3 with SMTP id d75a77b69052e-4770831c5b0mr45276621cf.13.1742379611000;
        Wed, 19 Mar 2025 03:20:11 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba7bec74sm1990650e87.59.2025.03.19.03.20.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 03:20:10 -0700 (PDT)
Date: Wed, 19 Mar 2025 12:20:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: bjorn.andersson@oss.qualcomm.com
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: qcom: phy-qcom-snps-eusb2: Make repeater
 optional
Message-ID: <6yykvszzbhonc3dkwhva55arsdvp4hv4p2fo2vv6ftwr46httm@wnofgs4jaqaa>
References: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com>
 <20250318-xps13-fingerprint-v1-1-fbb02d5a34a7@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250318-xps13-fingerprint-v1-1-fbb02d5a34a7@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=QN1oRhLL c=1 sm=1 tr=0 ts=67da9a5c cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=lyNVp9QpP5gxZ78EsksA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: suv_6f3fBYQ1LoituwL4sP9VhxcFd5Q_
X-Proofpoint-GUID: suv_6f3fBYQ1LoituwL4sP9VhxcFd5Q_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_03,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 phishscore=0 spamscore=0 impostorscore=0 suspectscore=0 mlxlogscore=985
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503190071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_032013_473334_D48AFB1F 
X-CRM114-Status: GOOD (  28.02  )
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

On Tue, Mar 18, 2025 at 10:22:56PM -0500, Bjorn Andersson via B4 Relay wrote:
> From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> 
> In a multiport configuration based on the SNPS eUSB2 PHY it's not
> necessary that all ports are connected to something.
> 
> While this is allowed by the Devicetree binding, the implementation
> current fails probing for such PHYs, which also prevents the multiport
> controller from probing.
> 
> The lack of repeater does not alter the fact that the PHY is there and
> attempts at describing only the used PHYs in Devicetree results in
> failures to initialize the USB controller.
> 
> Make the repeater optional, to allow the these PHYs to be described in
> the DeviceTree and for the associated multiport controller to operate
> the other ports.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> index 1484691a41d59a7eaf257ef44300827c668bf7e0..8897d2072ccfcaa5b4a510c17761dcdeed5bad0f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> @@ -401,9 +401,13 @@ static int qcom_snps_eusb2_hsphy_probe(struct platform_device *pdev)
>  				     "failed to get regulator supplies\n");
>  
>  	phy->repeater = devm_of_phy_get_by_index(dev, np, 0);
> -	if (IS_ERR(phy->repeater))
> -		return dev_err_probe(dev, PTR_ERR(phy->repeater),
> -				     "failed to get repeater\n");
> +	if (IS_ERR(phy->repeater)) {
> +		if (PTR_ERR(phy->repeater) == -ENODEV)
> +			phy->repeater = NULL;
> +		else
> +			return dev_err_probe(dev, PTR_ERR(phy->repeater),
> +					     "failed to get repeater\n");

Can you use devm_of_phy_optional_get() or devm_phy_optional_get()
instead?

> +	}
>  
>  	generic_phy = devm_phy_create(dev, NULL, &qcom_snps_eusb2_hsphy_ops);
>  	if (IS_ERR(generic_phy)) {
> 
> -- 
> 2.48.1
> 
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
