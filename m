Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BF89CD4F54
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 11:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9kBEzLQ9jL+rHXHq2SOzgOlU+OJ2FrzIhpBH5WCXT4=; b=n+5c1b+OxVfgsT
	flSrh50Wl7mD3p+8Pt0rYFLlM/vQcXS9JKsmny81s/ZKukk+v5j9IO3qbDBef1zQtq3x3oEhjZgC/
	jQNHr4AUhLJIXwzlcVL0PDEHRy44X+ZvacSL8pM0QG/ToDMbNwFCP7KoyKDaSAXFHWt38FDNNfqun
	KjaSeX2gNwZI2w7SBABsD7za43oqeLffK4Nt9bNK267yLadBGt+htGMCyCUYR3F0R0HGaEdG9VRPN
	j+psb1zuQXLmh5bjQzBXPk4rFDHbez/yzWYwV3/kSM3TniW+KfIotFj6nGN1NzfUX5MSrCHQ0DJ/t
	814p2zq+uwC5opqa0mQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPfSZ-00000004UBy-2T9F;
	Wed, 20 May 2026 11:51:35 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPfSY-00000004UBd-2RrM
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 11:51:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0D73F60120;
	Wed, 20 May 2026 11:51:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 444501F000E9;
	Wed, 20 May 2026 11:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779277893;
	bh=JHA2T/KyUeaBszSGfgww6SPBWhnX3PZMY/vXvIO6sQc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=kqkK6DFHrI8lgimdoKWRSBJpYDypKrZ11ISNayuMGXE6iWMc7LxnQkf8Q8y8HcYHI
	 +k9IDkqra3CjHM4DH4+mOidsDa//dmww5hvFw0vZ+kvtnrcAtFYyTw6J43K0h/UZNY
	 1cS4X6zc6XW3hYTQOhmWVcz7pvUB6d/5V3RP5bMIvAZIy4uAvG5aVSBMBSYTltwXWw
	 50GGFIDp2VNPRtHt4GIporwT4lCCCdMub6AXmOVGIxnP0Y7gfaKZAqx4/Regu9VUkZ
	 rOayFPcPqZd1+rCtmFnKLBeEtXqYUgW4RoCYJiodvWMmEp1R5XFp8ED2KG0MZAZQYC
	 n+ksabzXuBIDw==
Message-ID: <07739437-4720-4a15-87cc-40f6f92f3759@kernel.org>
Date: Wed, 20 May 2026 13:51:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v8 00/10] SPMI: Implement sub-devices and migrate
 drivers
To: Jonathan Cameron <jic23@kernel.org>
Cc: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, srini@kernel.org,
 vkoul@kernel.org, neil.armstrong@linaro.org, sre@kernel.org,
 sboyd@kernel.org, krzk@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
 quic_wcheng@quicinc.com, melody.olvera@oss.qualcomm.com,
 quic_nsekar@quicinc.com, ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org,
 luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com,
 mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com,
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org, kernel@collabora.com
References: <20260511100805.121432-1-angelogioacchino.delregno@collabora.com>
 <20260511141743.251a47e4@jic23-huawei>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@kernel.org>
Content-Language: en-US
In-Reply-To: <20260511141743.251a47e4@jic23-huawei>
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

On 5/11/26 15:17, Jonathan Cameron wrote:
> On Mon, 11 May 2026 12:07:55 +0200
> AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> wrote:
> 
> Hi Angelo,
> 
> Why the resend?  If marking a series with that I expect to see it
> called out as first thing in the cover letter.
> 

Right, forgot to mention why.

The v8 was sent on January 2026, I pinged maintainers to pick it on
March 2026, even if this was fully reviewed by multiple people nobody
picked anything here.

....and I've resent it because pinging multiple times didn't work, and
because the series got old all that much. :-)

Regards,
Angelo

> Jonathan
> 
>> Changes in v8:
>>   - Renamed *res to *sub_sdev in devm_spmi_subdevice_remove() (Andy)
>>   - Changed kerneldoc wording to "error pointer" for function
>>     spmi_subdevice_alloc_and_add() (Andy)
>>   - Shuffled around some assignments in spmi_subdevice_alloc_and_add() (Andy)
>>   - Used device_property_read_u32() instead of of_property_read_u32()
>>     in all of the migrated drivers (Andy)
>>   - Changed .max_register field in all of the migrated drivers from
>>     0x100 to 0xff (Andy)
>>   - Kept `sta1` declaration in reversed xmas tree order in function
>>     iadc_poll_wait_eoc() of qcom-spmi-iadc.c (Andy)



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
