Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12594CD98E2
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jun 2026 11:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ZLUiBNsHn8wvL1RvquwQWK7KiK8cwj/A2R05fM92hc=; b=UJKKp9ggx/4j4u
	Zd7DbgI/4SiCoQ/zbytKAKizmckxUcvtLbRsMb4o14k+ObV+N6G4hq/+gEZi+6/PRm/N6FxExUgp+
	3YwXuphFQNn8gSMN/XlWKVm8kaww2r0Rg3TnRyjP7Uc9eWr9qkPQ0lr7tTKn6wvZPInPSgCveKAQB
	LeK01WAU+xp4XPecYZHhvWiVu8YeuEPrVcLaCiWPBI9Z+4PUDBM1XRUiRSu8p4+T8SsDW8BqvwIKi
	Fz+hqC7Fo5lbE6BM9eNTGRKqC2KoiqEJWK1g5FqoSXASKxwLUOXBgfNSgERlXGTMDEoe9ehXwlbO/
	8wTzeE0P3TzYqGXkIO5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZoJK-0000000HDhO-2hjD;
	Wed, 17 Jun 2026 11:19:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZoJI-0000000HDgw-1YBe
	for linux-phy@lists.infradead.org;
	Wed, 17 Jun 2026 11:19:57 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65H8Vt5F2192068
	for <linux-phy@lists.infradead.org>; Wed, 17 Jun 2026 11:19:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n4kk4bGDUgiuSTAQ9QfRGI+PUxx2rIh17EttmS0Tp60=; b=lrdRtrR1V9NN2StA
	7MjqMLTMNbkWUcn+RLbOkFdmJNAFeUYdBTqgzCt4STG5p+4dZVsdSLlWuu1yfIrN
	GKnS6b5sDOmduH6o7/2nHnzw5ZeuwQ2mpQrKzkPr+Ac+J7APPVFWEVDbZ9b/75yk
	9fcWwihVahJcxWV1RyjcZjUNhUxUMXMdAGIqOan9t0gqqUfT5eEP05yd4PvIp8gD
	5ZiH2eZrAXSgiIoH/gf9V7GLtGHJamcQQOfYf7w6qs7GTACIlFdIn1b/4aY/Ywe4
	7pWxfZED2z6X8mw8Km8c+rrAv+N6lQqzvPkCfbuVEOoe1Ef9COuoioMuPx6DFkvl
	HtrRyA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eueesjv5b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 17 Jun 2026 11:19:54 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-9156dc90fdaso129193785a.0
        for <linux-phy@lists.infradead.org>; Wed, 17 Jun 2026 04:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781695194; x=1782299994; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n4kk4bGDUgiuSTAQ9QfRGI+PUxx2rIh17EttmS0Tp60=;
        b=a4Rd7mSo1kkF45qsa5T88TBbLVkW6WMmoPjI7pc/FXaNWx2KyU82dJ1V1sJPVkepzt
         ytRPE4UXithMC4XyUmzkdhs97W+3IxNbCevUOkArUYkltf/Cg4cwJ/iLBZzMNJ5FHXrW
         /WlNswR3m8tb7kXWB53+sHVmJQ+OU1uBCHqI5v45weaeMZWlHqsGvkLPKdxM1lbDmFf/
         SbQNqosTsj7PptugADbb+JeQaiFtY3XAhPP7HkMDDqPUE5uABGY7TG28TQE80fcqrcAw
         mjNgv/Fju8RO0MGYkn81KwvhXVcPEdOlUqW2RLgSWK0OoiRxiqBg6g2Cpx1vGhqJp8QW
         XRlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781695194; x=1782299994;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n4kk4bGDUgiuSTAQ9QfRGI+PUxx2rIh17EttmS0Tp60=;
        b=AjX3058nyvMF0YjAz/39mt9P6LBClNCzUy/2GcVWOAqJmOSfvxoZKeiOgCDJhmkBkF
         tZpIXX7YHrz7jKFI72HPyMibTRu6NCthinoL3DhseA5AuU4M80wjZzRJCgvZjTVfFc40
         Q1K3FeSQXXryT6OQpuzWMsETPkuPOhAkvGnstqGhYJaTeq/SB7oEcqNj34do7B4cO+E/
         CEkbIj2tmqmYw8VuDDlOZK3XevyHkcBci+sVZwjSDFwfsKgcozdRRO93W0V56tsElZYx
         ttkJWcmWfc56XPFv8d598nr74NAFb3f9iRsA7j39G3alTFT/P8me2i72ob5nLJxfVnWQ
         7AsA==
X-Forwarded-Encrypted: i=1; AFNElJ89N4zlxTuWlc/1aawkItFi9p54fdD3oLb9OfeRNZGJ4sfh/93MSDYIaYLzDGpwaDugN+qUAe78XSM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyXw/Yjbr+JsUnnbe0mlC0ehYIUNP9OrdURVWdzXwIVyiOdmSEM
	L44zkktU+r0pJigfRsgMJqncaHZD0iHeUor/u6Nowmc2GVsmIXfwP42F2uvwdQGUPS1G8vdnunN
	nLp+O/MWPqfPK0AuM8e4xhsHGc//qaap+LHDlQ2BYLY1iakdyp6PmtKwE8xWj1wNfkniL
X-Gm-Gg: Acq92OE2Kxlw6wrzzPlVh15kV9YKCENbFBAm3LCA6m36h3aR/J2RQxVx5BaaVmVR4dD
	9f/ZDizNPVa+fdNSCX0TSdyIoue96akQXHw5hIzJVEl4kfUV5AkbcTMAmxGnWG5ZR6FqN1kAtSv
	SiyTSyqAnRksG6JYNsBxkVv+9JAVpKuSBkcChv8gftoymGLt17oVK1kaauEAlQQ1f363qt3Dfcu
	zEnyH9poA+cKEfZGeRhlNgBzbKM6thyQO43QdgRmjVFNkoZoqxACHW0yTvFcyrnizlwAjwMZQjn
	ktpXg+rmZlgqtMHTHIBbg0fkMQ19tvv3mso/YAYV1K2+AZVj4usY9xjYy53kxrX3tVTEZneSp/7
	3dHaB+ep51g8fp0cOm30UlS4j1RcQkgHahKk=
X-Received: by 2002:a05:620a:bce:b0:8cf:d953:b4ec with SMTP id af79cd13be357-91d8acdc2e3mr370448485a.3.1781695194295;
        Wed, 17 Jun 2026 04:19:54 -0700 (PDT)
X-Received: by 2002:a05:620a:bce:b0:8cf:d953:b4ec with SMTP id af79cd13be357-91d8acdc2e3mr370445385a.3.1781695193816;
        Wed, 17 Jun 2026 04:19:53 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6937919b54asm6350689a12.3.2026.06.17.04.19.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2026 04:19:53 -0700 (PDT)
Message-ID: <ab21f1c7-f861-4961-9287-84cae280d8c1@oss.qualcomm.com>
Date: Wed, 17 Jun 2026 13:19:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v4 9/9] arm64: dts: qcom: glymur: Wire PCIe3a/3b to
 shared Gen5x8 PHY
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-9-269cd73cc5d1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260518-link_mode_0519-v4-9-269cd73cc5d1@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE3MDEwNyBTYWx0ZWRfX6uZz/4KADZz5
 SFb8H6bWKztyIMU0f/dk+8i78QNuKRjcB43ns+KI9Nc9Ug0kEtc1SU1F1vMA1ol5DWpJzEdqncf
 nJuNkODeJDd8jIfMVisaGo/fvSUcpJFkhMk9Tp6QDg6ejbGiqWiLnmbKy7lY1aYwQha1Zf9BJjJ
 HMM6lKPc1XoObeBN+UeyCY/237qU725uHFU8HJbewQ/2HAXcNMsXQ1AWn9OWrtlEkaXoUy5GxZ6
 DuHIeAjr+E6mKjM3C4pwAK8/QT/+uLPZMxoOFWCRUQVjHz73+cig651ezAIBcfQP2/i6uRoWiRa
 MUwbVVq2lFzaNKbmRQpvZmJiLiDWsdmMZ3NUF6PgnsCsMlUKckmYpJTMzDRo0Yv6YZi28vRmh19
 dBGr97+R5yBL/X5bvHTbKi9DgsVyN9L45S4rndAboIeG2zw2hUyuFm78P9B/yjvaAxz+oo3Nyrt
 X/F7kHkGrxlLWAF9gbg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE3MDEwNyBTYWx0ZWRfXzDZS9ud5fb1Z
 F+4EnwDagASHTSt/cgd6v8nbgUnz0Az6cmjJLirin6elE4SZhC40ZB0kQbs5gC7dRlTC5mdyh4B
 PrBJH2zd0BGF89um4gH8skzGvvUiViI=
X-Proofpoint-ORIG-GUID: Mqd5eYR-HmMylxkBNVCU_xJkvmytO5YG
X-Proofpoint-GUID: Mqd5eYR-HmMylxkBNVCU_xJkvmytO5YG
X-Authority-Analysis: v=2.4 cv=ePojSnp1 c=1 sm=1 tr=0 ts=6a3282da cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=yy-yr3CCGAyhAjPN4EIA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-17_01,2026-06-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 malwarescore=0 bulkscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606170107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_041956_526398_BBDF99FB 
X-CRM114-Status: GOOD (  10.94  )
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

On 5/19/26 7:47 AM, Qiang Yu wrote:
> Glymur PCIe3 uses a single shared Gen5x8 QMP PHY block. Model PCIe3a and
> PCIe3b as consumers of that shared PHY provider instead of separate PHY
> nodes.
> 
> Update the DTS wiring to:
> - point GCC PCIe3A/3B pipe parents to the shared PHY clock outputs
> - add PCIe3a controller node and route PCIe3a/PCIe3b port phys to
>   &pcie3_phy using two-cell PHY arguments
> - configure the shared PHY node with link-mode and dual pipe outputs
> 
> Use QMP_PCIE_GLYMUR_MODE_* dt-binding macros for mode selection.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---

[...]

> +		pcie3a: pci@1c10000 {
> +			device_type = "pci";
> +			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
> +			reg = <0x0 0x01c10000 0x0 0x3000>,
> +			      <0x0 0x70000000 0x0 0xf20>,
> +			      <0x0 0x70000f40 0x0 0xa8>,
> +			      <0x0 0x70001000 0x0 0x4000>,
> +			      <0x0 0x70100000 0x0 0x100000>,
> +			      <0x0 0x01c13000 0x0 0x1000>;
> +			reg-names = "parf",
> +				    "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "config",
> +				    "mhi";
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x70200000 0x0 0x100000>,
> +				 <0x02000000 0x0 0x70000000 0x0 0x70300000 0x0 0x3d00000>,
> +				 <0x03000000 0x7 0x00000000 0x7 0x00000000 0x0 0x40000000>,
> +				 <0x43000000 0x70 0x00000000 0x70 0x00000000 0x10 0x00000000>;
> +
> +			bus-range = <0 0xff>;
> +
> +			dma-coherent;
> +
> +			linux,pci-domain = <3>;
> +			num-lanes = <8>;

Is it fine to keep num-lanes 8 here even for configurations with
bifurcated PHY?

I would assume so, given essentially this is a x8 host, whose 4
lanes may simply be effectively NC 

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
