Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94B6FC02187
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jan 2025 19:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yiDvCMS+PXV2t6eQq1EXR7z6+0sTIrW9DqVlOIKcNjA=; b=X7rYefwv9FzY+H
	+d9cc8aThywp+zZMdFOxJ7sHtes5mmrUJ/AEWz9B1aEqrfxXsSMU7pEcjMk0A6uNmIiqDOxjp1qS6
	89KQf8dm1XBQD8a/qI74aWA6yvusxUb023oEdKwYamNAeeeDFDOk4/Kj+x1DzIEWVEY64yHJuvBiR
	IoNGDQFaxdozXxvLOycWwog7GScCA8NBo5ISYDnEbQIq09kcXqbEAB773Wfwrf7rc/qdqIE/DxU7W
	Ys4IyyxTNRvoYtn6rDmJOF7C2d8k2Xh0It0Cg/LmdReLBkYaBolt2iciYiXL4f0RDQFikk5znub7D
	VYUUhii1bj8QqGW0sEqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYVao-0000000Fu8q-3Ad5;
	Thu, 16 Jan 2025 19:31:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYVaG-0000000FtxL-2681
	for linux-phy@lists.infradead.org;
	Thu, 16 Jan 2025 19:31:17 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50GD6Q80013668
	for <linux-phy@lists.infradead.org>; Thu, 16 Jan 2025 19:31:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p2oCQTDyFtzOd9uDuk0k/6IADn8jCTnEtRWIODY/B3s=; b=MXJQZwt5zFu72kpv
	RCn27+pG1vgqfm1+XSm4qU6C1/n2lf0zo8jeOY2xQ8jHveJ83l4BqhAgMkXFr+nF
	e/9CAjpd9GGjd5cXO/TLxq+pr9WRn007Pwq17aFm8yCyiHKGeuceKZdeDjyPstkC
	o2ne3SEcT/X1Jfdp6mVbpiawhx0UJtFA7a4fUHgsT0mWmp//uHPYl1AOn5szZF37
	oq6Fxka8W4IL7KhkDuNd1Vmx96slz9T8ASJBl3uU3SArVYIq4lBZf5Hjc1exmBSX
	/3aO33DY+ZEL9VaLwl1J4xpt0FKi2WDa1v+/fLPpbSfc/1/c0lw51N2Li6l4oAsK
	FKKnSg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4470p0h960-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 16 Jan 2025 19:31:03 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d8824c96cdso3460296d6.2
        for <linux-phy@lists.infradead.org>; Thu, 16 Jan 2025 11:31:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737055863; x=1737660663;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p2oCQTDyFtzOd9uDuk0k/6IADn8jCTnEtRWIODY/B3s=;
        b=O3I0IhGsgV+DAAP4/EAwrf34rNc+v5riz1o2lxmqrkyUwG+WV055avBz+daqDWWG97
         OB3y4j1zycHVm+sSQyH4WALiz81pA42FXaVU9KcG398QoLTzLEXjgK8fdHobZ0qN7jd2
         cvor+48CxPVu8Xsmj2VaHLTx7XJuXr6OdZ8QbKlXtIuvWxUvZqdRgj2BMyNdWj23nyKl
         g2+vQJOy3Wk4Jy34EkQThBdFC8wjLkdYZneA2pMsJKaugG7vtskEgkSaZs+1MZ/FNGpl
         pYHTgmNDfJedczLBD1H0sUq6nGLyJcrV5iJaTx9hNAOS7leOY7w+NZhIGA3topdLkCJP
         mTkg==
X-Forwarded-Encrypted: i=1; AJvYcCWa+88+gOEGVbdOMB9karXXmF4EJn6oQY0GXnqYqOFghYwT168tgt5wiazkNCLEvBR2+HtsLR8zBP4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3Wx+JwTBvy/31MYN0zQ8sNdGll2CqepZY9fiEt26LDwMCWGmV
	zBpWkvxXtOyaLoBHr0Opm1X+b0GH6AsPKNumpyrpB1pGeauj9T44zOhNCmST6SgtFlJLGU8E+2N
	RP47xpkDkSNozud1cktCW/iEd8sfO1Q5s6kfipsRphUsTuNm//gYFdZJEIm3IksAn
X-Gm-Gg: ASbGncup6IGAdWlh8u94RjYOUZRzLkNJtekWbf8ZzZu2AhVYYcMTUgXcKb1zaA8Grfi
	dm+Kv7Tx7Is/fuR3gJ+j9gogCFFzJrOLXD4jPbSGjfPS16O0QyUu6Bm+ziWk0SOi8h45tVDugq9
	0jzV5dqHnoP/YCgr3DodCPOhuYOve5rPvAoFCjPLjk6BasMzUnZzBYzFClJBJo5A355ACmSyJHT
	mBAvvKtz9Ld4xN3eR3e6oJUMgVJgdX2VKJBNExAAHkW8ucmhEIaQlOIwcS2LGgis9arV8Rz+L73
	8ICyznfIy82HBa/rzfB8x/YkLm9tdzE+t+c=
X-Received: by 2002:a05:6214:3016:b0:6d4:1f85:3975 with SMTP id 6a1803df08f44-6e1b21f207cmr237266d6.8.1737055863114;
        Thu, 16 Jan 2025 11:31:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEoEvs3dPfn98G/nJY/KiQsPoGomSjcKF4fvgXzqrXcQPhHh0k0bJ4l0NVlAcPX0Z3NeGEoWQ==
X-Received: by 2002:a05:6214:3016:b0:6d4:1f85:3975 with SMTP id 6a1803df08f44-6e1b21f207cmr237046d6.8.1737055862745;
        Thu, 16 Jan 2025 11:31:02 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384f86265sm37902466b.130.2025.01.16.11.30.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2025 11:31:01 -0800 (PST)
Message-ID: <e08535c5-33e4-4f9e-a234-deae4f179371@oss.qualcomm.com>
Date: Thu, 16 Jan 2025 20:30:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] dt-bindings: phy: Add the M31 based eUSB2 PHY
 bindings
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com>
 <20250113-sm8750_usb_master-v1-2-09afe1dc2524@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250113-sm8750_usb_master-v1-2-09afe1dc2524@quicinc.com>
X-Proofpoint-ORIG-GUID: ylHD6dQ6Fz43bOwyw9_9MPV6ve1f6gUZ
X-Proofpoint-GUID: ylHD6dQ6Fz43bOwyw9_9MPV6ve1f6gUZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-16_08,2025-01-16_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 mlxscore=0 impostorscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=758 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501160144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_113116_675724_6A76BB97 
X-CRM114-Status: GOOD (  11.54  )
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

On 13.01.2025 10:52 PM, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> On SM8750, the M31 eUSB2 PHY is being used to support USB2. Add the
> binding definition for the PHY driver.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

[...]


BCR>;
> +
> +        #phy-cells = <0>;
> +
> +        vdd-supply = <&vreg_l2d_0p88>;
> +        vdda12-supply = <&vreg_l3g_1p2>;
> +

stray newline

Konrad

> +    };
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
