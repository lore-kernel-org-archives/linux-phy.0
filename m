Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC8DCC5AD5A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 04:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1tactOfc8MUfAtx16sWzp0FUigNW602erwm2qCrX3Q=; b=vhwtDvco+eMWl/
	Y+krqzboSqf4XIjbkDNCXx7LRvTdVWDQlnxA6MrU4s5g/pWR2zzVKeHgWHKM1lA4G0LgWp7s8gXkK
	QiIDy17lL7wD8YoyOG6Fnl3lAG1HHS8Z51hSFnSfS/WnS+BVr7GHZTaHgn9JRPJnb/S7L3duzP0yp
	2KGzsqRiBSTzxXBP15nUlN8dqmRYJaCobXYwLMt57ryFsbY3ZF2vjsl4MPqdMhWplRcVJLj7pMM9L
	WFqyOe9q/dvsKoVHsvvVCSxQYu4Eb6t7MUjZcps26HDrtFApTJtdQurAXHKrQtFfLjESfR1tj37ml
	7aUmPlmwUCW1Ad/bc5ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu0Ih-0000000FO8H-1jmq;
	Wed, 12 Aug 2026 04:10:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu0Id-0000000FO7n-3Em8
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 04:10:45 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67C48jPl2701733
	for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 04:10:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ycqNmOINwoVyj/6s4hroIe44DSPjnnHA0sh0w16wSIg=; b=ov/79yIKXvAbl7rM
	gYND3eTjFUs+JZgPzkNFHZ2Zh6NcHTr2VVuN4Fk/ceLVedJVotBANBVQbk+nafNH
	FpP74DPcK+eZGYkhzyvdTLaA5tkiENpE2Q8oF2BaXL9pf5rtJygxsqijGYWxVfKc
	swTUTIyxfm8TifjW4txS4Jx3VPu5rZEE8J/Ejt7GX6zshvbOlE2s8SJNKEm9i3Fg
	LkRmu1EQLPwlx0HLxXtu2TV7+i6SmN1u1MGjkdXEcfLYR7WR86O2lByCWA7Cg/1G
	Wf5jE0XDF0SoiWhxPMekbJqytfdkuWQQBuDkYBR51iOqUIK1d64bXxio37sy/LQm
	XhWFmw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g0hj2r06e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 04:10:34 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cb7d6ba548eso573464a12.1
        for <linux-phy@lists.infradead.org>; Tue, 11 Aug 2026 21:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786507833; x=1787112633; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ycqNmOINwoVyj/6s4hroIe44DSPjnnHA0sh0w16wSIg=;
        b=XHuN9ZZICk9YOu3kG6+aEUSo46GVEhzq/xMsV9cLJlz/xI7cBO6X7F8TRdTAqL2kou
         qp68RTEpS3r2P0v0n2RO00yFejjnP5Wz9On565Qznqza3iFEwXDCJXgdbzFTROrHp645
         HL41doEnGOWGZMmElzUqtYNa69IoKXiBdH9jfqmIGWrQxin7BNSilTmkA7Ox9rAjEgfK
         ae0giwDrIXEwd8mciWTP/Q/xO0g2f+w1kWPuil/ooMeCm6HZ7MD+MR1eKPSXCxUDqaaT
         SkXi9C/rNVnQMzGOFufyyTyUVpEpuGRAopISUdroqXqIts7+iFjdaBxAWE/RF/Xy/pak
         ZK/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786507833; x=1787112633;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ycqNmOINwoVyj/6s4hroIe44DSPjnnHA0sh0w16wSIg=;
        b=JGcFrQcqkPqwTZC8lUh9mkzw5S+7hP2IfGeMuMBiMqDijdTymcMqToqWPrXtReu7Hp
         Pf5MkW69TD8wvyiYlxRFmtQGZuT9HRZJxO16+D1tyxa2kFqfSzkJLPBrulHjurE2HCDh
         LfmPFP8kyKtxAaJdXNDwYHgUpWtImDbJCLxE2KJorw0uL6xzFs+HTKZgZt3jAQbYjs+Z
         QPiDNJO0Nr8X8rbu5OYc7eqEqevEzKUxholjE5fdyDTPmSWug2/PLg0Qd5DPOvyLsff/
         l8ZQd898LG5koTqe7yo5j7KPNc60tImhg9WK+PBO8Flve0LAHqQ/DvoNo2FcDuIGZHt5
         J0xQ==
X-Forwarded-Encrypted: i=1; AHgh+RpqWJ/M9BtXyyr417FzewAKoB8ALy4z2iyUQEPbNXWHB2xOZkvo0VUfhqnPO7qbbS0nqy0llhg3AHs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYtQkJfQqMLXf5TaehLefL9scOuVb73twIpGA1Km/S+xsBIV1F
	0Xz1k2SbBGYIkRDLsVvjxdnmScLc2t9gFuKpmoxOvnOBHlu9oMCwSctjZdgUMU02znBd7ZwBeAW
	IeiFMxuMyHEL9eQk2E/dFxy9yD+P388/wDgeAtFidxYxr5euYbP2PmPMjR+wZTFOGfjVs
X-Gm-Gg: AR+sD13e1nHMiMMwGeFDiQ5xRk9xQr71bl21QpIhqtDAWHsVgMi6WWPcn1M3qXftaGZ
	QIgGcFIuCOlPdiTA1XBsE8HdZ4GTornZtCQy8mICKcPQnbG7IANAwey/dJE5R8GFAX6c99a16ZG
	s3Yk3mooJ7aHogaOymYNNytib8JA2YupNe0afuHk3jG+la/FZHjWmhyy99ULDWTAtuB/L9aGJjX
	zUGScIBubLJpQVpWMC9B1QPleU62PYMIIJUUJ6iLacEEQwjq8+w96NvJAZtUxTWZ9VI2Vc+HFDW
	YzW7efXIgb2JLNjSFJZn4XZQTScB6sqQvn3DF+8PkcfkV5qv2fHe2vs+Wx881o1ygm+YKM+oA0u
	s8ZvfLB+NYpZjif9nbDqud/I64ozDJx1fvQ==
X-Received: by 2002:a05:6a20:da14:b0:3c4:3112:33 with SMTP id adf61e73a8af0-3cc3f51c7a5mr2557880637.6.1786507833542;
        Tue, 11 Aug 2026 21:10:33 -0700 (PDT)
X-Received: by 2002:a05:6a20:da14:b0:3c4:3112:33 with SMTP id adf61e73a8af0-3cc3f51c7a5mr2557821637.6.1786507833113;
        Tue, 11 Aug 2026 21:10:33 -0700 (PDT)
Received: from [10.218.18.194] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31cf628e0edsm5538714eec.18.2026.08.11.21.10.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2026 21:10:32 -0700 (PDT)
Message-ID: <3f2cb2e9-d242-468e-8582-26caabba7832@oss.qualcomm.com>
Date: Wed, 12 Aug 2026 09:40:25 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] PCI: qcom: Add PCIe support for Shikra SoC
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio
 <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
 <e2inl7k5gsjj6oomv2k5ximuzpb3gfiz66ufet3b4hvov7zqt4@qz4pifbos7yf>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <e2inl7k5gsjj6oomv2k5ximuzpb3gfiz66ufet3b4hvov7zqt4@qz4pifbos7yf>
X-Authority-Analysis: v=2.4 cv=a8EAM0SF c=1 sm=1 tr=0 ts=6a7bf23a cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=ee_2aqc6AAAA:8 a=EUspDBNiAAAA:8 a=clU37HkR2gB4O1HD2CAA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22 a=VOpmJXOdbJOWo2YY3GeN:22
X-Proofpoint-ORIG-GUID: pLZ_Esns1gZzYHrl__rhFTL0Rm9Euktu
X-Proofpoint-GUID: pLZ_Esns1gZzYHrl__rhFTL0Rm9Euktu
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEyMDAyOSBTYWx0ZWRfX0sjBha+l3jZu
 U31YtT1XF1MPGTHLBBJ1KBZZ/4XbCqEAyO3v5vSEWPBfbOYCkIWCx0ahgaQDSdCIYtb2xVoYY/4
 sIPwM6jMESGieoOVltQEnx3+KQ5RdCk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEyMDAyOSBTYWx0ZWRfX0TZMFhGVR+tB
 uGnep2iNMky1t9kUZRBlEqJwCIX+awaJmovmNISSw7+Cc5JTWyBAqjckOv2OGMJJ8HRFWQRDsTg
 ZlNNi+jT1wONm9jos2ND1mPYukzcMV63gOAc1Rh9e4QBWZKyya96heDVuryiOiDcqDA98rkZ44h
 8G6ifUwrRvDi5ev/AjZBu3q1jygUkCtoPLVKQYnL+wJ6L/Lgw44cV8KbetP0B3co5lQNUPm8nU+
 1c8pnuMeHrOQJVXqArJ+6VJo4AAXCC+SimJjecgjet6YEBrPHea3x0bEnnOCPkVPYfZHgVxd7r8
 IE6fSwJEt9OgsF8VBRbqu0TFEjiAqG2nmyowI5G4RrowRhGujsLXZn8eaXVDB3FpnlvnGysgK2n
 q9ZhggbzUH+wE19r/dFM7aoalNuDUMH+h1u4DDCcDNTJakvTJg4B77rmXjIs48V7mr7Fnyr4e8N
 XmPwxbzd6d25SlCc2Tw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-12_01,2026-08-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608120029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_211044_430489_4CEDD409 
X-CRM114-Status: GOOD (  18.86  )
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


On 7/8/2026 1:32 PM, Manivannan Sadhasivam wrote:
> On Wed, Jul 01, 2026 at 12:32:42AM +0530, Sushrut Shree Trivedi wrote:
>> Add PCIe support for Shikra target, by adding dt-bindings for phy,
>> controller and corresponding phy & controller drivers/device-tree
>> changes.
>>
>> Shikra RC is connected to TC9563 PCIe switch on all three
>> EVK variants: CQS, CQM and IQS. The individual downstream ports
>> of TC9563 connect like below:
>>
>> DSP1: M.2 B-Key for 5G Modem
>> DSP2: M.2 M-Key for NVMe
>> DSP3: Embedded ethernet device
>>
>> Power and reset to M.2 B and M.2 M slot are controlled via
>> TC9563 GPIO's. Hence, add DT nodes to enable TC9563 switch
>> and include corresponding changes to configure power/reset
>> to TC9563 endpoints as part of power on sequence.
>>
>> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
>> ---
>> Sushrut Shree Trivedi (9):
>>        dt-bindings: phy: sc8280xp-qmp-pcie: Document Shikra PCIe phy
>>        dt-bindings: PCI: qcom: Document the Shikra PCIe Controller
>>        dt-bindings: PCI: Add bindings for endpoint gpios
>>        PCI: qcom: Add support for Shikra
>>        phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Shikra
>>        PCI/pwrctrl: tc9563: Add API to control endpoint power and reset
> TC9563 should be modeled as a GPIO controller to drive the PERST# and power-on
> GPIOs. There is a patch series under review [1] that adds this support. So it
> doesn't make sense to duplicate the effort here (which itself is hackish). So
> please drop all the switch related patches from this series and resubmit them
> once the above mentioned series from Alex gets merged.
>
> But you can continue with the Shikra PCIe RC/PHY patches.
>
> - Mani
>
> [1] https://lore.kernel.org/all/20260605010022.968612-1-elder@riscstar.com
ACK'd
>
>>        arm64: dts: qcom: shikra: Add PCIe PHY and controller nodes
>>        arm64: dts: qcom: shikra-evk: Add TC9563 PCIe switch node for PCIe
>>        arm64: dts: qcom: shikra-(cqm/cqs/iqs)-evk: Enable PCIe PHY node
>>
>>   .../devicetree/bindings/pci/qcom,shikra-pcie.yaml  | 211 +++++++++++++++++++++
>>   .../devicetree/bindings/pci/toshiba,tc9563.yaml    |  22 ++-
>>   .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   2 +
>>   arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts        |   7 +
>>   arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts        |   7 +
>>   arch/arm64/boot/dts/qcom/shikra-evk.dtsi           | 152 +++++++++++++++
>>   arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts        |   7 +
>>   arch/arm64/boot/dts/qcom/shikra.dtsi               | 154 +++++++++++++++
>>   drivers/pci/controller/dwc/pcie-qcom.c             |   1 +
>>   drivers/pci/pwrctrl/pci-pwrctrl-tc9563.c           | 152 ++++++++++++---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           |  73 +++++++
>>   11 files changed, 764 insertions(+), 24 deletions(-)
>> ---
>> base-commit: 565fa02f75448ce1ddd18bda6b31ad985cf75411
>> change-id: 20260701-shikra-upstream-14b8668f1001
>>
>> Best regards,
>> -- 
>> Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
>>
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
