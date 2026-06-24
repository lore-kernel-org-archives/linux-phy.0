Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18CCACDB481
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jun 2026 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MvJsP+9b/30o2+5j4fonuqITEfgjCgd2K2A0Neh0VY=; b=AkXEWhlXki47oh
	HYC3z6Ho9R6nyWEUX6dgLhdhS9xO1n3PoMLnZrVUIaT/01c6tMmCe1usuLjXG3+Khw0owj/v7b8lS
	35EizMX4JL2hEwrw5LeFOU02cy9Sq8FEZBnLyRfYArC/sCEXfwooZU5q5PEWQu3OZCeoAbw+Sx+aL
	7D+f1VzY/UJTvf/W4SVPEOW8BVbgQPtmU0LcxwJ57/49E7KNgZDmWwaURaWs1YDdnbDkEZsgAwsfC
	iTuLK96+UilBVCK5vmU/c2DCcyxdwsgUSA0YaFJqFgeoNjGlMfINdO0NKSuZ62jDGXNK/4yJ1oXdp
	5VJMxBPHrziJNuElpvzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcNhM-00000007pIB-1wxa;
	Wed, 24 Jun 2026 13:31:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcNhH-00000007pHm-2Hto
	for linux-phy@lists.infradead.org;
	Wed, 24 Jun 2026 13:31:23 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65OANa5v3069827
	for <linux-phy@lists.infradead.org>; Wed, 24 Jun 2026 13:31:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QmgxxMOLKanyQxux/RLrDVM/FIMyBx8HNKmxCp6pXzY=; b=lcYJtdRy8wHjEc65
	RK1n5W8oPVuYhdZH1msntOIjVtmEYMo7OzVjD3mrAL/Lg4a1NkxOdZl36VF03p8H
	4tvePZiRglHbFO77KW3N6LV8wKwrEF6fqSwERlIPwbybxtrCbacFaSsW1Dn0x+UC
	FP5Sv2g3WmW6gIQuGRmANrBivHoI5inGaE/HX+tUT/NsijWhRYLTqxONq+/p6bln
	KCTK/YQmR6qDmTs0XupZ7KrlCP5uULNrywYk2McqqWyFc9/Uhw+/+K1GefbKAi6d
	2F28MD0U4Nsd3odxC3mLLLcd23OrHOlguTeQlzL38AN/U7FQnQkMSrIORa0SGlAZ
	S5bBUw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f0d5g0rw9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Jun 2026 13:31:15 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2c7c7fdca0cso12440195ad.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Jun 2026 06:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782307875; x=1782912675; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QmgxxMOLKanyQxux/RLrDVM/FIMyBx8HNKmxCp6pXzY=;
        b=Oc4XfbIyoPeGE59i0M5bSX4dHIjMQ9LTZI/qJXm61F9PaxA1BbQ9K0kWp9WOIlpeBz
         XDyvBTp4O3DIhVO+UOw5hrjXRNISQlVeX2RRsbUuRpZ0zi2e0xy5tit/Xx2HApNu5EP7
         Wly9gPlCvPfnlLd6vFDsIXjyh0uQQ8bhpt3aGrWIV4GrFm3dDbhcL2nKd7r1P7RDB9hB
         4UVQd3/w07BaPycgnvqssXKytlIChqzMx+2mph5nYfakjw1vkx5o5Yq2u/1jpT/gRLoo
         ln+bKFcQiaD0DdUIerd056y7jeHzkWMa1QmXuEbzOXK1EvG/Os9ODJQK1u3OD/mar1iG
         0pPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782307875; x=1782912675;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QmgxxMOLKanyQxux/RLrDVM/FIMyBx8HNKmxCp6pXzY=;
        b=X2tBRr9M5r4LhfV/7TM5D/9evyWaBh1Lzk1wj2IJ3iOesiFFWWLUgxpKlNVoW4eEA5
         9beYDPJFQ+DCzBzxwFxkrP4MtJbeqCfzw90N/HhvkTycgkc2jU4z9+UzrAHUGMsoTXZW
         0S0pXhAYpK+DF/L00Tem+F7yOCaIYsDju5CU8mIIKrmCNzNndcaqHEJa91pTfIgf/W4W
         gaVno7JDd6kpjB6x4aIBjNyNtBRkqpXrW6JV+dUpesmsHLTNBpcX447QUOT5CrV3S5H4
         Iu/YYSmKSTfb7xSvn+f1C5DguP40VL/ZMq8hRjazFmaTjfcDQ0JMYB2W9aV16kI6nbrJ
         NUFQ==
X-Gm-Message-State: AOJu0Yzhzdhv3Vmc8yanrd9aiI2zw/IK+CoaqLUmlWgYuQOVbjyABqjV
	Rbh0p6shwXEIQugcBcqeSMThZFnpD+nYQocHj2CqnMFWOR3RpGm8UtUzEKjEf68Ab53aBJl6EpU
	DYCni2o3/L7HP1h3N6QW4jCMCcUtIx8v47AYOeSv+6lc7IwN2bu/9H+wsYTXeTsiFyZst
X-Gm-Gg: AfdE7ckr/43zKvz/NoQsfyQuYEwRIrTZHKebkU18yaGA/LDDHglI7zxe8meMkEmEHWT
	Pwu3RsXhk6Rb9XdQbch0UXAqDwqubnnOHm0hKqjrC3Wfc6m5FekmVniZdI9dn9roYqfFRPP9QFq
	CxxbajA6s4YbeDBMuMCtXNA7aqqarcr2zlVe3f8sf3AwDwRr3Qj9m11CmCZxaKLHBrlYkexVaPq
	6LG+EY6yBPCobuBdcDjQp9BkjCddC1VqDkn88nUMcb64lF2Me1/PknFSuMQW8lsd7e4YfEmVl4Z
	eRdafiQAXsHtJxw0IYokjAZzbqJ7G6RuAhOlJ+l6Z0KqfhtfJD7I0n6QijwOEoPIrM3XeQnjqeu
	odB1upx/v/Vs6qQ0vw0j9xKVtRoxq6JVDACwf1YMPCmM=
X-Received: by 2002:a17:902:d2c2:b0:2c0:db23:4c1 with SMTP id d9443c01a7336-2c7e1458148mr35429375ad.5.1782307874994;
        Wed, 24 Jun 2026 06:31:14 -0700 (PDT)
X-Received: by 2002:a17:902:d2c2:b0:2c0:db23:4c1 with SMTP id d9443c01a7336-2c7e1458148mr35428915ad.5.1782307874569;
        Wed, 24 Jun 2026 06:31:14 -0700 (PDT)
Received: from [10.218.35.45] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c7437002aesm137894045ad.37.2026.06.24.06.31.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2026 06:31:14 -0700 (PDT)
Message-ID: <39e14aa9-28dc-44b0-87fa-0ca74a3fcd6d@oss.qualcomm.com>
Date: Wed, 24 Jun 2026 19:01:09 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] phy: qcom: qmp-pcie: Skip PHY reset if already up
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, linux-pci@vger.kernel.org,
        neil.armstrong@linaro.org, olteanv@gmail.com
References: <20260521-link_retain-v2-1-08ed448b081c@oss.qualcomm.com>
 <20260521132311.4DE411F000E9@smtp.kernel.org>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20260521132311.4DE411F000E9@smtp.kernel.org>
X-Authority-Analysis: v=2.4 cv=LdMMLDfi c=1 sm=1 tr=0 ts=6a3bdc23 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=brcwVlbegnbOBPMMvKAA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: _-w0o-waaR9RPj6ENfedI3NPyisZJoTH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI0MDExMiBTYWx0ZWRfX5WVP1YAEAy9m
 sPU7sxEqsnMUFgwuLLg5mcGrYW7QWGoIunxnQysgaIJyfeTSiTC+HlHVXkZ4ROJvNn2x+eAC14a
 pQx7ZPIJO0/9cAnArHUPEAmi40Jx3z3pR/9B4YbTcWid8I1eX1BE80juFKfTxL4emPMuFTV2Gzs
 7/IDc4AJP7GgqHOrtBMVtd98FauJyCoyJkg0ftpS4VLq2b2B/ZOjN24zENh0JuzVASzzZJ1zFKz
 uuuhIIT03Anj4g7I1ZX60kMoghcEadWxBwaHtjluc9Xp6xfcHPLSRsUK3bGpaXrsUZnvl5MOGyj
 Oo3R3wXmfqkZ9riBul2AmMEGnr4X9jh7ssGmz93oFryW6eAF6f2DPXTBorp0x7V1/DZZKXVEk5X
 A7CqipHYJoBJdgj/NbTmJOC4H+izXA==
X-Proofpoint-GUID: _-w0o-waaR9RPj6ENfedI3NPyisZJoTH
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI0MDExMiBTYWx0ZWRfX1XHK2Q1vfez1
 bI/dbBm7YVY6xCgUMSk5tBSVK7MlwVBnhsCj75fNm1r8ACX6p1U3SC9LRclM+7j9ENQyzvz0dcB
 jG/vnfvOQ34WYKaAHEDAhNRQRE1P2T8=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-24_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 suspectscore=0 classifier=typeunknown authscore=0 authtc=
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2606150000 definitions=main-2606240112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_063119_729065_445600FC 
X-CRM114-Status: GOOD (  22.37  )
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



On 5/21/2026 6:53 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] The `skip_reset` condition is evaluated twice using a live hardware register, risking unbalanced reset operations if the PHY status changes between init and power_on.
> --
>
> commit 7deef03fab352fea4d882c35e253738b3fad392c
> Author: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>
> phy: qcom: qmp-pcie: Skip PHY reset if already up
>
> This patch skips the nocsr reset during initialization if the bootloader
> has already powered up the PCIe PHY and its status indicates it is up.
> This avoids redundant initialization and link retraining delays during
> boot.
>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> index fed2fc9bb3110..1458ac1478c7e 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> [ ... ]
>
>> @@ -4744,6 +4745,9 @@ static int qmp_pcie_init(struct phy *phy)
>>  		qphy_checkbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START) &&
>>  		qphy_checkbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], cfg->pwrdn_ctrl);
>>  
>> +	skip_reset = qmp->skip_init && !qphy_checkbits(pcs, cfg->regs[QPHY_PCS_STATUS],
>> +							    cfg->phy_status);
>> +
>>  	if (!qmp->skip_init && !cfg->tbls.serdes_num) {
>>  		dev_err(qmp->dev, "Init sequence not available\n");
>>  		return -ENODATA;
> [ ... ]
>
>> @@ -4823,8 +4829,11 @@ static int qmp_pcie_power_on(struct phy *phy)
>>  	void __iomem *pcs = qmp->pcs;
>>  	void __iomem *status;
>>  	unsigned int mask, val;
>> +	bool skip_reset;
>>  	int ret;
>>  
>> +	skip_reset = qmp->skip_init && !qphy_checkbits(pcs, cfg->regs[QPHY_PCS_STATUS],
>> +							    cfg->phy_status);
> [Severity: High]
> Since skip_reset is evaluated dynamically in both qmp_pcie_init() and
> qmp_pcie_power_on() by reading the live QPHY_PCS_STATUS hardware register,
> could this lead to an unbalanced reset?
>
> If qmp->skip_init is true but the PHY status bit indicates initialization is
> not complete, skip_reset will be false in qmp_pcie_init(), causing
> nocsr_reset to be asserted.
>
> Once the reset is asserted, the hardware state changes. When
> qmp_pcie_power_on() later re-evaluates skip_reset, reading the status
> register of a PHY held in reset might return 0. This would make skip_reset
> evaluate to true here, skipping the reset_control_deassert() call and leaving
> the PHY permanently stuck in reset.
>
> Should the decision to skip the reset be evaluated exactly once and cached in
> the device context instead of reading the live register twice?
All the resources are voted by this time, so this situation might not happen
at all.

- Krishna Chaitanya.
>>  	/*
>>  	 * Write CSR register for PHY that doesn't support no_csr reset or has not
>>  	 * been initialized.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
