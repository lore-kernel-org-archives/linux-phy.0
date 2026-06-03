Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AA25CD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 21:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YSNyt8YiQip5WXlG1UGaygWH9nQG3uZh67kmDWxe2GE=; b=Y7siK/egSrdbi7
	yGcrP07yaXswJfPnHOHtXNo37JK5V193lYz6uKrNEvix7qkAPznVs9mrxkWrkOK3R7YOpmoVsVwpH
	OW4DdMZK9XyISkyKF4uVaPaowo/RmbUANbXyj2pGUfpNQnF7th05ruqyHNX+pitb9PtU60sebiTHg
	tsOV0rinfX65TfTdue04P57YnizD0ZjUUci8S7/edCFY2h/G6fgll18seWEZmVvDDbLoOB0zurf2t
	OOCjygLiwzik0zRgyUOG3/G7+B0nEj6VLFsR1QCLXpOgisSvUAYp4+Qp7pftQS422A7QbqzLLE0Cr
	z2rTSQjUfzvFtD0vHGiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUtHd-0000000FrkG-3MX5;
	Wed, 03 Jun 2026 21:37:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUtHc-0000000FrjT-02dt
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 21:37:53 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653GdpFD2368043
	for <linux-phy@lists.infradead.org>; Wed, 3 Jun 2026 21:37:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8u/3tgEfqqg/P4YRpc9c8Z/hbvNV5upjexngb80EYHs=; b=Nv/bb9ghc9cikK7l
	E130v2DD27zRgpRnmm249nFZzH3yg4O+SjhjjT//gbjT7mlGDWd+jbt1FmV5gz2H
	NelIqjrSv8pS/9D1GsHzLdpDertm/chS+zI/JxskJEw8xbrnBzHq70YMyFuBqZ3u
	rr0fG4OiyptWxyj3w7xA11oV/PhWpPhyUH4YZIiYW7npDccxAxgL11rBPHxChyra
	tFTMQIonUlxhCEEB5fH6/G3Iczq4cI9OASPbNyb52a5Lek+HPG4mUt4EZhvmZt5e
	A3FnxDQqO7AZZHZmSsiz1rnX8Ri4Gy/b0nkQLbyyEyOKNdIpe6hopFSFNLW1Xh2B
	2jbSXA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejj3gjt6c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 21:37:50 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-304ea1eea05so17764973eec.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 14:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780522670; x=1781127470; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8u/3tgEfqqg/P4YRpc9c8Z/hbvNV5upjexngb80EYHs=;
        b=bdd+lzz/3w3BtNQmHIu2Hb4JxMk7Igb9uljvevoU5ZVFpFIC2ujiBqVvRVm0sIMrw9
         PztvvFSaNwHwJSIKQA9t5LL2qsLfaOsHO/3LVxBWxEYtQXw0xRD35Ux2Mjy4aYfuijMc
         yxmMbHW+SprdoNDN9nm2mkKk+0WXEB1fZqyW5HVBSNYGsIV6I/dt8JoXpmUdnf/t9F6C
         95djCCOFaonEZGsfCl+PgT8bgGjGw7PtSdhDM+vdkjZSAujWqBJ7NbhDh7VgIgVEDONA
         A7NQ0YYepWx7Y+nMUZVCfkZktKWAjhBJkHW3jTqG9TaziZL8VR/rKYNnZGAwYkmYYWZ0
         fJSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780522670; x=1781127470;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8u/3tgEfqqg/P4YRpc9c8Z/hbvNV5upjexngb80EYHs=;
        b=VuSaV21hPcipuQFGz+ucwkZ2pvIshHYIGjBLVJuP2nyOkztBTXr6sFVdBLZ45jrn9u
         3Ra3YIhAICccWsdbWnw222k89ZGacCq+Ok7RA+E+8jwXZEFvl6ZLy2f95j5kXFQSF/wi
         KL/A+iwQn4ZvXOdLnbGanr68KtEcCRGpwf2bQylA7G+nSYDzteiwq077Q8KnqUE3jOX4
         zAQYdY1daBX2zCqhzFNF2UfHzJwEIYfH/TIM0lX0KTsgAA8dN5VIpt57fdteriPwN9oX
         5PB33k2MEXauMN6H/WBuVpM4UQHVPbVriADNi62MwyOMhxICBZ4rVqhp/CnEcF/Lk1Qc
         5LNA==
X-Forwarded-Encrypted: i=1; AFNElJ+ct6kIDV5F0umqRU8ZnpahHJYSsNRwK0DAyFkM8d2lssJvc94e53kFnNdbiGRkh/isQGI7iTFOTwc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0/KmHzv4f3950xK6lbo+FW/Eotgj9ST28RiPmIm6ruOdVhsWI
	uimUfYyd6B2Zl/UDF6HE7hTcSXbX9Jb1IIPdhGMClEG8WQtaJfTQd9FS4tSD19iQSZ+NR1gWWaC
	Wsyirk3Tozvnd5Ydibh2ux3MXwgZkBhorNwmbHMfM/MGEW1OtQHBPQy8tGUHVYbRcjsJp
X-Gm-Gg: Acq92OE6w1G4UwRYEwk0FXBbDv31sh/yeYSXUq7ZJr5UJrU5I84pBbrkkE0p7qdnDFG
	pPHpmdfYWlLE3ZTeVc62BA0gZV/pWlJ06sdqhpbbNBZojcTa/YaZnNnjw89XU0ghs7rUNvZ6wOe
	DXCPAyU1WniplBiyptR2O2SESztvtoTyn22GVJQvPdi9HDQhijo9WCK2hjPMdUhcyU2bwm+mf1L
	eyy2wexrUsbz7zZfSi7BNhh9N5ISATPxK5ogGZuP3QumDpUkkE5r91oBZ31A5K/W8W3XGxGsAL1
	jOYULa8ZoYVgKe0Y2pkyzegDgxliF3aZCWD9RW+V6IRBSbtlhkOu/d2Mmv+PC1xp9TB6JzdsuPA
	B0EYoHfy3FzmG6okN6gBqhm/vPFOjiR6+8qwguVzfr1J9OyQzLuoEnihqAVeN160cnZb5IXyeJ0
	Rwukvi8Nbs33Y=
X-Received: by 2002:a05:7300:aca5:b0:2f4:3a9c:818c with SMTP id 5a478bee46e88-3074fc6ed0dmr2667474eec.29.1780522669962;
        Wed, 03 Jun 2026 14:37:49 -0700 (PDT)
X-Received: by 2002:a05:7300:aca5:b0:2f4:3a9c:818c with SMTP id 5a478bee46e88-3074fc6ed0dmr2667461eec.29.1780522669474;
        Wed, 03 Jun 2026 14:37:49 -0700 (PDT)
Received: from [10.62.37.26] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3074dcad34esm4837604eec.11.2026.06.03.14.37.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2026 14:37:49 -0700 (PDT)
Message-ID: <b6a8c860-8b47-4250-a428-5225d0e64a1c@oss.qualcomm.com>
Date: Wed, 3 Jun 2026 14:37:48 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue
 <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-2-a85668459521@linaro.org>
 <54904b61-222d-4600-ad4c-c03a9952d337@linaro.org>
 <be3e1abe-5148-4247-930b-2e23164eea73@linaro.org>
 <c6aetoiz3dcedlxwjmt5cqh2mngswtmanf6p4s2molemnviwdc@btotpaqwcsoy>
 <f6c91099-0002-4580-a5e8-5611b089024b@linaro.org>
 <v4vz7cistjb2iuzha4oykglar7duw4y2uuyhumzs33yvpwrxcu@i5tsg4uzpuwc>
 <8eb709ce-3469-4303-9c3d-8d1a221cb8de@linaro.org>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <8eb709ce-3469-4303-9c3d-8d1a221cb8de@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDIxMCBTYWx0ZWRfX7ZSjs5PCIAWR
 qTAO0cPoflVVVpDJjxidsEDc6KOMxXeu4DXl6l4swWmnIYVLQ8dSb1b9yyyz2ZQHQdfHt0NOZQz
 C+tHjqMUZWooRBB2B6FBOxr18uhDHNyEHDcG2XbuNDtgmJFNliAtOIfbrvgzRUQ1iC8EUQ3Ck3v
 3G6F9qm7ODBX+CKsHNyIp2ldPnz0egqOgvXvxUv0b/DEgcKcnGMMLDX0eZq8ggfBJXutgXrWny4
 YUw+fdrnKJgaJujVxDfcEdaxPWLG3jGVx1ahYAyx2jhEuw7bJiBwmBoyPvdJZbflUDzalQRAqXg
 JghQFo19HrcP3d3t4cfMxKej0ZRbbktEIBmgQHS3JoXkgUoOLz1TSziCyrXcNw7ZHr7LGX5pmny
 1PmC874EbartgBi8EJ/xU+jLZH90TSWsufq77ayx8osk42HA2NGRSlMCPU5h+XOh7PrSAEGXj2p
 c+4oFlQLRx09jKDkUag==
X-Proofpoint-GUID: 1YUNJUtOk1Q6YgDwYv1cWD4hWDbmgy-d
X-Proofpoint-ORIG-GUID: 1YUNJUtOk1Q6YgDwYv1cWD4hWDbmgy-d
X-Authority-Analysis: v=2.4 cv=UvhT8ewB c=1 sm=1 tr=0 ts=6a209eae cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=DMLOElT0OXlkgAQsb38A:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_06,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1015 suspectscore=0 spamscore=0 impostorscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606030210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_143752_177647_DEF6771E 
X-CRM114-Status: GOOD (  13.35  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 6/3/2026 5:57 AM, Bryan O'Donoghue wrote:
> On 03/06/2026 13:40, Dmitry Baryshkov wrote:
>>> Are you sure about that ?
>> Yes.
>>
>>> ipcat I thought designated lane 7 specifically as clk-lane i.e. named it
>>> CLK_LN of some description.
>> Split configurations explicitly use other lanes for clocks. E.g. check
>> the RB5 Navigation schematics, CAM0B connector.
> 
> Can you please check:
> 
> CSI_3PHASE_COMMON.CSI_COMMON_CTRL5
> 
> 0 LN0_PWRDN_B Lane 0
> ...
> 7 LNCK_PWRDN_B Clock Lane
> 
> ... just a badly name field
> 
> CSI_2PHASE_CTRL10
> 
> Bit[2] = IS_CLKLANE
> 
> Right so CSI_2PHASE_CTRL10 controls lane mode, indeed. Thanks for checking.
I can check this with the HW team. Although the SWI has this knob, there 
may be some limitations to use any lane as the clk lane. AFAIK, only two 
specific lanes are clk capable in DPHY mode.>
> ---
> bod
> 

Thanks,
Vijay.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
