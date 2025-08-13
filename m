Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 798E0CA0EE0
	for <linux-phy@archiver.kernel.org>; Wed, 13 Aug 2025 11:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/atoLRQOmhV9rrmS85rU4C4S956/GTb6LuTOp8HSqtA=; b=hL2R7Jbvv+3JLK
	k42R4RORyrnuzmF5OmftT3qf2Vz5i7HxRDlgHpdTystljUVBEtUD5mfm2ETJ5135y2TgRbZfxcqUv
	UaTsclpSslgNt/7SzvrwXDPgI6PcgBeXmMkZXj5d++kJ1QRmOSOiI+2yIMaG6f9CHJv5+Iq4vt05b
	WojfpYkzqE+K6t0C+s3sMbgE+CJTeomFG8aIVtUQGN/s8TpCPPcWCi6CTUtofg6d0CyXNMlmpycWc
	H9ceK7cpNntQVsI+FCkmt4wU9IPH4Epo1DPjyYJ4QrlcMRxpC+5IwV4rTYvT/XPWEYsNXE85GnSft
	b61sl4QwI3GvAfD3xHPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um9IM-0000000DTK7-0U0j;
	Wed, 13 Aug 2025 11:05:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um8UE-0000000DL3A-0cfJ
	for linux-phy@lists.infradead.org;
	Wed, 13 Aug 2025 10:13:39 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57D6mHZi003876
	for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 10:13:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4mAuvM//7ab8lA7nfM3nsq80Jt7uf9DvaJ1yiWgh/Pc=; b=pexWh4YUuah5KumH
	B2c+f5QsjfPxnqUKQKZ5BeWwH0dVmP+4OHHXZJMOld9kKbCRVrQAIipwJpu9oXLV
	/e/cv/ISsk6YO0IPccz8zZmOie8pFNqCCh6Twe6KgSiP6Td5OjhqU9HXT8GUeaRH
	pRhPNlJC63XmZxZX+MzQemi8Hwkq6/gdRU8pq6XDb87uizcMgAFzMT713MldcH9F
	zrhCY+ruQLG4FREn4yKSDOV7C4N305OBllk5VVdzHamp1coWXYraeKzrsIyk00vf
	olAEPc1LR1bSd7lie4Ccq28iEnl66x3wIs/Ldb6zV2iW2m6O78sWo7pAjF7usoZ4
	7vyFbg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fm3vpah0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 10:13:36 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-709de8eae4bso1953916d6.0
        for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 03:13:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755080015; x=1755684815;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4mAuvM//7ab8lA7nfM3nsq80Jt7uf9DvaJ1yiWgh/Pc=;
        b=aU/grzxVtskgzlRXrpp0mQ5v8d0Me4UIvod5DkKfw42JLZ2nkimJXTFSjbdv+abo46
         CR00YzyhTcEiiQ5c7isYuC6BjkNDC0VmO4NTyBrXRgI2/79LDtYc5tw+L0uNGKPd6+li
         Kf3lHknccQ2OZb5hn4AfIjrOTqdzm1Nb09KfnTaV9ieTHOvLYp6btVP18iSHSlMJDKzV
         1k+EW4BcuI3hLtAKu5rn4HfxsnkPpiRSjiW2vc+6Ho5RdunE1pTqleZ6uokU0hXiUbq/
         +9xr2cR8pS5L5NRRwOpNobOFVqx5aaRp/oZ4VbOEfITVhrrgqv5ONxEW2j/H3EQSP3MG
         P8tw==
X-Forwarded-Encrypted: i=1; AJvYcCWxHuu0cz/hroJrDjfftI1ods0iycJUbBLGaew0OzrFbpUD3GRMUnXmbvXHwOd8XuW47r4njkX3vGU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzLAsvo6bSLuBGUPF6Zg25VoMRnpfcngeQ74bohstKcsBkxG+Va
	NN9PONMcFr8/GgJ+yJSnP3kr5NafTCI4kPjRQ2B5K5oa4hu437mmusL4BYXLwr3URejQBLAVWSO
	eUNyXbPJY4nC7ed77jU6bUP0TK+uAwsTcUPSTVXwRDoLjKCiG7DN2wVNdfM3H7hdfyMoE
X-Gm-Gg: ASbGnct8/prZJgf5z1enW3ADrtRtKSmvikw+OQudLB4NToFzP4eI9zAw3nbjS0y5pKf
	/OV2AD7AwAfJpR/4Df9GStarbUSUMkIku4uUhEb+55XlFjPH5bZjwHJxhjPEFhWuGyeHYGAvdla
	GTM5H+fKo5nDQm4DCadnepYyEn9lJaHSPZtBvtlyGCClDb5m60d2sa1FBIPakuhdGVTaRkBPxbc
	KoMH0euy60ZbFR20G0EBW7cLl6uNHWxV9VyRIy1tuIui/VLT4x9HEXtzPhSWWN4X2CVtJkKgmmo
	5f5G2VXRHpgh0N9LPZ4wi2zgk80rnupFuocg4exE0Q1MmEt60+CsD4Vy4OEdYpzMiVyJZ8EhLsM
	9Kb4nYuWEBTAB2YAs3A==
X-Received: by 2002:a05:620a:2801:b0:7e6:5598:1fc6 with SMTP id af79cd13be357-7e8652e83d9mr189378285a.8.1755080015018;
        Wed, 13 Aug 2025 03:13:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnL0n2N5ORj4M8S76HtYx3BJiaVcRjdcE5RNKKoer3iqg7jRZChmT8jDI6T4L702H2p7nUmA==
X-Received: by 2002:a05:620a:2801:b0:7e6:5598:1fc6 with SMTP id af79cd13be357-7e8652e83d9mr189376885a.8.1755080014463;
        Wed, 13 Aug 2025 03:13:34 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a750253sm2374258966b.86.2025.08.13.03.13.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 03:13:33 -0700 (PDT)
Message-ID: <f44beed6-72c3-4e86-834b-ac522c786bc7@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 12:13:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: qmp-pcie: Fix PHY initialization when powered
 down by firmware
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
        Wenbin Yao <quic_wenbyao@quicinc.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250812-phy-qcom-qmp-pcie-nocsr-fix-v1-1-9a7d0a5d2b46@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250812-phy-qcom-qmp-pcie-nocsr-fix-v1-1-9a7d0a5d2b46@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDEwNyBTYWx0ZWRfX3rf/3pcKd/oJ
 BpjstwlO9IVwQgawbIvYcFPbNivkfp6PxklUGbft4ARMhi+gzTqord+hJ7ykwR5A1RFSw2YEl0g
 drGR/c/zqMJVDqkJInBui2Y7fmidFoA6OY4fC7Yxgqg/4gXcvN2mSDr2X2d0ujEoI7yixso/btF
 KO6UDVXOvkbHxeJR/XeKTJFHn8SO7WKZcl033efRSgAiYIBa5EkiPXorPSbrjT74swxb9U3pwUr
 JtwiXHXVi5CT7ohhM/NxjW/TOnVhVsNAqAgm2cpqgndxfX+ra9ua4GkMi7GNtfdjQDDpnPA9jnL
 n7y5b6GPnoH+kMEsgbKFikyq/MEtLSf39pCjBqJeP0tzLg0UeFpX7IaK/tlOmlIclFHsPKAY0HZ
 FcPnG3ps
X-Proofpoint-GUID: _R0Hz7CF6lFKeQjVBj-QseGXE-SEjIS3
X-Authority-Analysis: v=2.4 cv=A+1sP7WG c=1 sm=1 tr=0 ts=689c6550 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=t-ghYzj4duJAONndmXwA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: _R0Hz7CF6lFKeQjVBj-QseGXE-SEjIS3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_08,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508110107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_031338_308367_9F8714FF 
X-CRM114-Status: GOOD (  25.79  )
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

On 8/12/25 6:30 PM, Stephan Gerhold wrote:
> Commit 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention
> support") added support for using the "no_csr" reset to skip configuration
> of the PHY if the init sequence was already applied by the boot firmware.
> The expectation is that the PHY is only turned on/off by using the "no_csr"
> reset, instead of powering it down and re-programming it after a full
> reset.
> 
> The boot firmware on X1E does not fully conform to this expectation: If the
> PCIe3 link fails to come up (e.g. because no PCIe card is inserted), the
> firmware powers down the PHY using the QPHY_PCS_POWER_DOWN_CONTROL
> register. The QPHY_START_CTRL register is kept as-is, so the driver assumes
> the PHY is already initialized and skips the configuration/power up
> sequence. The PHY won't come up again without clearing the
> QPHY_PCS_POWER_DOWN_CONTROL, so eventually initialization fails:
> 
>   qcom-qmp-pcie-phy 1be0000.phy: phy initialization timed-out
>   phy phy-1be0000.phy.0: phy poweron failed --> -110
>   qcom-pcie 1bd0000.pcie: cannot initialize host
>   qcom-pcie 1bd0000.pcie: probe with driver qcom-pcie failed with error -110
> 
> This can be reliably reproduced on the X1E CRD, QCP and Devkit when no card
> is inserted for PCIe3.
> 
> Fix this by checking the QPHY_PCS_POWER_DOWN_CONTROL register in addition
> to QPHY_START_CTRL. If the PHY is powered down with the register, it
> doesn't conform to the expectations for using the "no_csr" reset, so we
> fully re-initialize with the normal reset sequence.
> 
> Cc: stable@vger.kernel.org
> Fixes: 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention support")
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 95830dcfdec9b1f68fd55d1cc3c102985cfafcc1..6a469a8f5ae7eba6e4d1d702efaae1c658c4321e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -4339,10 +4339,12 @@ static int qmp_pcie_init(struct phy *phy)
>  	struct qmp_pcie *qmp = phy_get_drvdata(phy);
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  	void __iomem *pcs = qmp->pcs;
> -	bool phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
>  	int ret;
>  
> -	qmp->skip_init = qmp->nocsr_reset && phy_initialized;
> +	qmp->skip_init = qmp->nocsr_reset &&
> +		readl(pcs + cfg->regs[QPHY_START_CTRL]) &&
> +		readl(pcs + cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL]);

I think it would be good to ensure the value matches platform config
expectations, i.e. !(val & cfg->pwrdn_ctrl)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
