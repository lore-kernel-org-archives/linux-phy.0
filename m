Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07E35CD4847
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 10:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZqYjc49bodfUJAgPQBsiBRjt/TaTqnJzb1t+V6p3dw=; b=3V3ZrVBQBnCMTf
	pLPTm3PjxpJVQC8hR2kPXvhxDfNxr/LcfV9q5RKq+niURKVy64b1kZ2r/2zZ8Zz0lbgNyjMrsx185
	6ha2btDDG7GtgZc4H+jTxdG/Mjdew9qrz+R4X0Hllflx40RMZlIPPvUbpT9srxgPro8wpwIQiR+S4
	U9rgVD0tehLQeADGw/0YxTYAnvZSnJHAjaTjjdhYC6P6gVSIRdg0rFRsmR8aJCksFFhUZknNjmk65
	fMPVsrNxdC7FHzzyyWG/LU58R8Wd/6rv08rhWVEEum78V6rph+OWyV3fXfe+wb17u53aTsNx6QG8Z
	QNuaGWXW9NGd5n0/RHyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slnRY-00000003xow-2hIF;
	Wed, 04 Sep 2024 10:40:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sln6v-00000003sNZ-161n;
	Wed, 04 Sep 2024 10:19:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D7EC05C571C;
	Wed,  4 Sep 2024 10:19:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 008A9C4CEC2;
	Wed,  4 Sep 2024 10:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725445176;
	bh=zlaZcOaZM0dFAhQZuIhuVd2ZdREG27vDZ8dz/g7nXL4=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=uYVOEWkpqETakooK2/HOVDqhaXgvcvfW5LXQB7Eya90zPhhAiP61p0sjkmecSJ9H+
	 rI8LHkD2POHt8IN3KC2hR7cMqtPEeFU//AL5L1s+oMPQoKYBoCvYsIxq9TnnBXOSB+
	 Wqgy1e5kq4juehbhYYXpUfYqtwJtzVbTtmvm1IsyDLHnRTZBBk6IIHBZCJbknyoXaz
	 LndSPQao15U2+i0OT9K2Sancv4wSpgjK0ypos5OdhJ2qIYzN7tv5Eq8VTRrO8diOMQ
	 dKayNvpbInuOlBeVS33eiwEehui8PpvaQKUQDrX2A+Y6Nod7Un0g6t6hcdSaQnHzVd
	 MbOyDlWtzA1Uw==
Message-ID: <3535a897-8708-463d-b931-fa344a967f18@kernel.org>
Date: Wed, 4 Sep 2024 12:19:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/19] Add initial support for QCS8300
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Will Deacon <will@kernel.org>,
 Jingyi Wang <quic_jingyw@quicinc.com>,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Das Srinagesh
 <quic_gurus@quicinc.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Andy Gross <agross@kernel.org>,
 Bart Van Assche <bvanassche@acm.org>, linux-arm-msm@vger.kernel.org,
 Robert Marko <robimarko@gmail.com>, Joerg Roedel <joro@8bytes.org>,
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 linux-pm@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, iommu@lists.linux.dev,
 Xin Liu <quic_liuxin@quicinc.com>, Shazad Hussain
 <quic_shazhuss@quicinc.com>, Tingguo Cheng <quic_tingguoc@quicinc.com>,
 Zhenhua Huang <quic_zhenhuah@quicinc.com>,
 Kyle Deng <quic_chunkaid@quicinc.com>,
 Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>, Lee Jones
 <lee@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Avri Altman <avri.altman@wdc.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Vinod Koul <vkoul@kernel.org>
References: <20240904-qcs8300_initial_dtsi-v1-0-d0ea9afdc007@quicinc.com>
 <fcfaeed3-8544-4e98-9f95-f43346dc83e8@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <fcfaeed3-8544-4e98-9f95-f43346dc83e8@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_031937_880648_F3AC6180 
X-CRM114-Status: GOOD (  15.99  )
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

On 04/09/2024 11:34, Krzysztof Kozlowski wrote:
> On 04/09/2024 10:33, Jingyi Wang wrote:
>> Add initial support for QCS8300 SoC and QCS8300 RIDE board.
>>
>> This revision brings support for:
>> - CPUs with cpu idle
>> - interrupt-controller with PDC wakeup support
>> - gcc
>> - TLMM
>> - interconnect
>> - qup with uart
>> - smmu
>> - pmic
>> - ufs
>> - ipcc
>> - sram
>> - remoteprocs including ADSP,CDSP and GPDSP
>>
>> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
>> ---
>> patch series organized as:
>> - 1-2: remoteproc binding and driver
>> - 3-5: ufs binding and driver
>> - 6-7: rpmhpd binding and driver
>> - 8-15: bindings for other components found on the SoC
> 
> Limit your CC list. I found like 8 unnecessary addresses for already
> huge Cc list. Or organize your patches per subsystem, as we usually expect.
> 
>> - 16-19: changes to support the device tree
>>
>> dependencies:
>> tlmm: https://lore.kernel.org/linux-arm-msm/20240819064933.1778204-1-quic_jingyw@quicinc.com/
>> gcc: https://lore.kernel.org/all/20240820-qcs8300-gcc-v1-0-d81720517a82@quicinc.com/
>> interconnect: https://lore.kernel.org/linux-arm-msm/20240827151622.305-1-quic_rlaggysh@quicinc.com/
> 
> Why? UFS cannot depend on pinctrl for example.
> 
> This blocks testing and merging.
> 
> Please organize properly (so decouple) your patches, so that there is no
> fake dependency.

Let me also add here one more thought. That's like fourth or fifth
QCS/SA patchset last two weeks from Qualcomm and they repeat the same
mistakes. Not correctly organized, huge cc list, same problems with
bindings or drivers.

I am giving much more comments to fix than review/ack tags.

I am not going to review this. I will also slow down with reviewing
other Qualcomm patches. Why? Because you post simultaneously, apparently
you do not learn from other review, so I have to keep repeating the same.

I am overwhelmed with this, so please expect two week review time from me.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
