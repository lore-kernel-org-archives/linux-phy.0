Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A71AC35FFA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Mar 2025 11:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XrW8dqYNqFsgPICkI1bP0eNw7va3DN1sx4yS4Dm+ttI=; b=2ZeolgGBHWkl0G
	40StI/1U4+9gDI5ZTt77avXJ3xke0lSNPBNUYNOqSpD0Wuhx8CLltnSYDcyayE5ePtApspUuRZ69j
	Lno2GMAaFYjUs+53VdGvKH+JUraZ9xaiAlHxJvXhOBvvsP5jg6aQwM9C0cSOQ8usePK2I8/92RvuH
	mv9Kt66IRRYDFD1KFGzEyCbeXb100whySlrSFormtiy4C0ETTq5sC60gzT7LRWc1h8xGYlekzYAIF
	FZWTCdJCR0huiI43e30BeIMmCaXgrH7BRjiPTIu/CzZz9TmRT0QWgozEm+f2ZvAH9tcL1StYIT10n
	AXFznwC9hoiPe717jIpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1turJp-00000008lYE-1JVn;
	Wed, 19 Mar 2025 11:10:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1turI0-00000008kzm-0Lof
	for linux-phy@lists.infradead.org;
	Wed, 19 Mar 2025 11:08:49 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52J4m0ud016554
	for <linux-phy@lists.infradead.org>; Wed, 19 Mar 2025 11:08:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WzyptaVYzzRiiqOe580gou9y
	L5Xd/cRhnh+9PDrH8JE=; b=a+2BTofQxHcdNpEBdZY25rpiValaCN5Ck0hEsoDN
	7Sp9HN/LZYdY3nxuL9e9qiQ3dTFCh3eRiUyvjMQnlknVkikcOrOId0Jeng7OHVYG
	TZgx15kJvxNXIFVh7t3a1qPsepi2b3jV4aa6dQQa5SDt2k7X2TjxCcZF2rWtfSa+
	n1G644PvPuqe0AgbIVdio2W4kt7vRpAau/DnpkLGiKa/aYlcn21GFkJQ4pzaMb4z
	c8vrrK9RRelTkYLkgFAsbEJWZY/01y/PZbScZ/gVTb12/kh9A4pYtlCbu64CB4ed
	yfWlYtiR+EtpCnGsIn19tdDmWiytNvFgPnBn26ERnvEbMQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45fd1djc55-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 19 Mar 2025 11:08:46 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c544d2c34fso1028839885a.1
        for <linux-phy@lists.infradead.org>; Wed, 19 Mar 2025 04:08:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742382526; x=1742987326;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WzyptaVYzzRiiqOe580gou9yL5Xd/cRhnh+9PDrH8JE=;
        b=VUQGJzMQ61id5OBWfFPH4s8kQT95WfPd7GKGQC/ujCy2RRk3rbcBLkRcNDDAIF5s8r
         YfZf71cZJ1lsysbSyVp9hP//xWFNn1W7CfUq/rbRIQCi7clNWz9daiNQIQo/SHW72oFp
         wpC2dtJfbl56K06PIDxYnhHDVp1G+he8y6R3bsbQaRIYFDHop2dO1Rz+SI9KTSl8IdFf
         rvNqc7iKTh+4N1zOFrpxZa5VB0808ZZ64GMvmh9OUxTKQOGFueNf9+GD93OgqAo5DUlt
         xOxWNE5YEYlVwDJf0Wq7jTzOOUtSe8zg9nTat+W/w9h8KvEyN1Q87h0DuHs1llZH9OyO
         l+8g==
X-Forwarded-Encrypted: i=1; AJvYcCUjUhHGHUrNec2ytuSrqtFeV9nIYC63XLuXstxKK9hL0S1w+xUpuZRVL1F9r8xl1wGf52erg58zyZI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyS93eiP4i5B8Oa1GKR+bPjyBn0Tf6AdcpTPaxt088LREMSas0x
	x9ffqWQwUUIw9I0dKvwhX2EqHUEltZkGkSe5oEqVSpEApA1Bn09LQiTrC8e/HENDuAm+JSYIeF7
	l6S4LxSZnQcS0+AmI2pl00Qq0Q5IhbKkHBX1l7UBi/LrCjkC4pLYN5+YHTE4Tbtjy
X-Gm-Gg: ASbGncvxi+rzYfiFbxszkq6wOxXhdSVS/7JTQrNga7/1wdGmFAuKKzOfd8eqbFjneOY
	M6l1fCH2sXC6ufqsgL7Zwvl1J+WEEX347N7MP5iWtHLs4u0jEs+8DTHZIb7+CFntBKrSW+RJCgb
	HhFhs6zw+NhTRLcHYHSQ3au5Ywx0UEjNcioMvbjvMFq9cXf0L1Kohgz7U8INTC7N09oHtW98Pr7
	35T3UeCCzzQhbqXXB4UHE91aB9QEfPGKvCq+ydxePFYKg33+Q64LCms1Db0TxommQpp7bs2LyNo
	tGzsx2UbwhryQGoedCJeOHp+ZcyXv7H/4ZKAcKCVV/RG8rPIrFsR5XeS/8kuF996ppubbTxbmtR
	w5o8=
X-Received: by 2002:a05:620a:2a02:b0:7c5:5cc4:ca5c with SMTP id af79cd13be357-7c5a838ec42mr250545885a.14.1742382526265;
        Wed, 19 Mar 2025 04:08:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZcIi2ghP6ESmSAMRKD4aGrSgNmlI2K/vEMqdFO+ac+ilM5F3UbWyPluESd1UDuKYaE54d9w==
X-Received: by 2002:a05:620a:2a02:b0:7c5:5cc4:ca5c with SMTP id af79cd13be357-7c5a838ec42mr250541485a.14.1742382525800;
        Wed, 19 Mar 2025 04:08:45 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba864c12sm1988818e87.157.2025.03.19.04.08.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 04:08:43 -0700 (PDT)
Date: Wed, 19 Mar 2025 13:08:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/8] phy: phy-snps-eusb2: make repeater optional
Message-ID: <sxrae5pmykx6ul2y7uc24fss2kdeezkkom7ev7mavt3fbc6ckv@tghyp3whuxnu>
References: <20250223122227.725233-1-ivo.ivanov.ivanov1@gmail.com>
 <20250223122227.725233-6-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250223122227.725233-6-ivo.ivanov.ivanov1@gmail.com>
X-Proofpoint-ORIG-GUID: 4mkXD4be1lXjjoUA3CW-OVeYOIqBG2Bz
X-Proofpoint-GUID: 4mkXD4be1lXjjoUA3CW-OVeYOIqBG2Bz
X-Authority-Analysis: v=2.4 cv=T52MT+KQ c=1 sm=1 tr=0 ts=67daa5bf cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=pGLkceISAAAA:8 a=XJ2MQsQTle-X_OudA-YA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_03,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 mlxscore=0 clxscore=1015
 mlxlogscore=861 lowpriorityscore=0 phishscore=0 spamscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503190077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_040848_245720_AFBFFA47 
X-CRM114-Status: GOOD (  21.65  )
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

On Sun, Feb 23, 2025 at 02:22:24PM +0200, Ivaylo Ivanov wrote:
> Some platforms initialize their eUSB2 to USB repeater in the previous
> stage bootloader and leave it in a working state for linux. Make the
> repeater optional in order to allow for reusing that state until
> proper repeater drivers are introduced.

Generally "works as it is setup by the bootloader" is a very invalid
justification. Please don't do that. We should not be depending on the
way the bootlader sets up the devices, unless that _really_ makes sense.

> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---
>  drivers/phy/phy-snps-eusb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index 4e5914a76..dcc69c00a 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -461,7 +461,7 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
>  		return dev_err_probe(dev, ret,
>  				     "failed to get regulator supplies\n");
>  
> -	phy->repeater = devm_of_phy_get_by_index(dev, np, 0);
> +	phy->repeater = devm_of_phy_optional_get(dev, np, 0);
>  	if (IS_ERR(phy->repeater))
>  		return dev_err_probe(dev, PTR_ERR(phy->repeater),
>  				     "failed to get repeater\n");
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
