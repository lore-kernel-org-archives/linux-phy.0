Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7F57CD98F0
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jun 2026 12:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nR5wKHremRV093ZA3hzIHvtpRTL4CS572Pkt++ZIxYA=; b=N2ShFRuhIrB30e
	o1Jyj1OKp2WNdgD+h0W2LCZMycEQk/e5IQbMCJBl9MV38To+q6WfouGILwSn/KljGBesmWIjjEvaz
	iVJANo5g10HUuEQeu0dI+qZj7ZVSZx7ssKDSlHJLUUet20uaV2BU26wEk8fIVOzfoq8/Cw+zbhQl2
	5++MSe2UaIVN+gY7x20pgqwpa6lHg5zuzrkBqWusL61wbhzeol2ozX7Y6zbb2HxwwQIPTHjQYqRh/
	n73POnE97NxJ+hmXfWZhqxqVb1tRihcehvmIIqZj/s/iTz88/7MnBrWRgI7ITK8EdqDeBPAo9MCD1
	Lt7d3RtFojx8l6x76Aww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZphB-0000000HMrv-2MAf;
	Wed, 17 Jun 2026 12:48:41 +0000
Received: from sendmail.purelymail.com ([34.202.193.197])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZph8-0000000HMrT-3Bby
	for linux-phy@lists.infradead.org;
	Wed, 17 Jun 2026 12:48:40 +0000
DKIM-Signature: a=rsa-sha256; b=Br5n1L8zTSyIEtVdzzSEju2xCdw1ifNZMaIe4245T3cRenB64taFUdfTOilSqq0iaTtnoQoTc2b23crdRSqv0yRzeiZQqCxr2L9/2VwgPesTUd005nLp+uTuL25TLI3/VYxerFe8eg7ypzFqIrLX0/DQdeJ/tW2FlXUN3+Zo5DNQdkBbzw4YaRGuLBxv4rxmj4SWIdnXPYZBsoKKWjkOFOwpgPMM7+rTiVSL6AiyYFvW73+h9m3wjEj+Z6x0TsQizua9q17FsOcpujq2/P2oQ1cg7qtkV8yUxFNUy+eVlnCvEhuGpGaLk8v40f2Nn/AyApHv2cUyjZ3IRYAsuc7caw==; s=purelymail3; d=iskren.info; v=1; bh=Wcnnt81igeR23gl0HETOgBYsKQ7MkE0Y/7XdPKxYN7E=; h=Received:Date:From:Subject:To;
DKIM-Signature: a=rsa-sha256; b=WSgxuR5xr6ynPCp9bQSBEpXmt7q45KXrjjifhUrL3md54PanE8UGZxOVgva7jkE6WhQSCWVVEA2lT5BLkQwnM2z0SF478fGZMBONp/It4gdy1BPJGqdjOEp0kmYaaHmss2NlbzaK9dlkndBC3nMgGiaI+EUpUJdzGX33Y1C+YEOB1CGIDUIuYsQbJ8plKSQbde0DBUAafL68M34aiN5oEiIqtQV5YayNfgiFS6MxFx0pSozkHI5TaXsp2lYEv1NayUX4Xz9vWyTmLGoZNma+kkYIo2eit0QbTBxbwl2u7fvPLSTiZk3V/3S4bGWs5ffgt8KuX0eXN36rSt13gfDPug==; s=purelymail3; d=purelymail.com; v=1; bh=Wcnnt81igeR23gl0HETOgBYsKQ7MkE0Y/7XdPKxYN7E=; h=Feedback-ID:Received:Date:From:Subject:To;
Feedback-ID: 10275:2339:null:purelymail
X-Pm-Original-To: linux-phy@lists.infradead.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 967961925;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Wed, 17 Jun 2026 12:48:05 +0000 (UTC)
Message-ID: <6fb6f805-aea1-47e7-bb7c-bc5ecb2201ae@iskren.info>
Date: Wed, 17 Jun 2026 15:48:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Iskren Chernev <me@iskren.info>
Subject: Re: [PATCH 2/4] phy: qcom-qusb2: Fix SM6115 init sequence
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
 <20260610-topic-8996_61x5_qusb2phy-v1-2-d7135980e78f@oss.qualcomm.com>
 <5b474af3-f651-4a64-a5b9-c18136e589eb@iskren.info>
 <a51b6333-cd5a-4a38-b748-b6623c6a1078@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <a51b6333-cd5a-4a38-b748-b6623c6a1078@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_054838_906747_2CC338EC 
X-CRM114-Status: GOOD (  13.67  )
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



On 6/15/26 1:44 PM, Konrad Dybcio wrote:
> On 6/14/26 2:29 PM, Iskren Chernev wrote:
>>
>>
>> On 6/10/26 3:04 PM, Konrad Dybcio wrote:
>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>
>>> I don't know where the existing one came from, but it's apparently
>>> wrong, according to both docs and a downstream DT [1]. Fix it up.
>>
>> They came from DTB extracted from a running billie2 (OnePlus Nord N100):
>> [1] https://mainlining.dev/wp-content/uploads/2021/02/03_dtbdump_Qualcomm_Technologies_Inc._Bengal_SoC.dts
>>
>> The phone was bough early after launch, so it could have been wrong/updated later.
>
> Good to see you're still around!
>
> Looks like vendor tuning. I see that even the initial commit for
> 6115 had the init sequence I posted. And the OnePlus sources have
> what seems like a project-specific local copy of the DTSI:
>
> https://github.com/OnePlusOSS/android_kernel_oneplus_sm4250/blob/oneplus/SM4250_Q_10.0/arch/arm64/boot/dts/vendor/qcom/bengal-usb.dtsi#L145
> https://github.com/OnePlusOSS/android_kernel_oneplus_sm4250/blob/oneplus/SM4250_Q_10.0/arch/arm64/boot/dts/vendor/20882/bengal-usb.dtsi#L148
>
> To support that, we should add a new property to override the TUNEx
> registers - like e.g. qcom,hstx-trim-value that's already consumed

My 2 cents - I never understood why init sequences are taboo in mainline
and widely used in downstream. I guess if it doesn't change (but across
what and who decides) it should be in code, but if it's "tuning"
- whatever that means, possibly depends on other components around, it
should be "configurable" via DT.

> Would you like to look into that, or should I take this?

You can take it, the other option is to mark a TODO, and if somebody
feels strongly about the binary value in a usb tune register s/he can
take up the task.

I just wanted to point out that the number didn't come from a random
number generator (or AI).

> Konrad

Iskren

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
