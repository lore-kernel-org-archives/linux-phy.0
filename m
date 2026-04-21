Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37594F8FA80
	for <linux-phy@archiver.kernel.org>; Tue, 21 Apr 2026 14:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45T/gDc+AIW94qSnMKeibfEJeaey57up18Qb43UdDH0=; b=bfPkZHzVrU1aD/
	20YdRM/p8zv/h9+Fa6ji2cYQ4y5vSQ4IzPtq69cS+875MP7xO74u/2EpSnQQWd5sac+JyWe5rLYw7
	mKk5goUCof0cq+xFUvtIqchoUugJsB6wCT81jLYcdwmyXcaTWduF0Uh9l11gfFk6wxBanO9LRvZRP
	XBvwaZOzm/DV7YcczgaBtiPu3zAVb6RwFqnuwV+VNWU2fZk20HrAwV6RWI8YPrF0mP34Hi/dHQKG0
	otQIQb2ksRLW02byoOXsF9erDzEN/97tolMY5qM6winNJJ+Q90V0+p9nd6h29fMV+e08qMONLvZos
	zRt3pz3jTIzs+SSahH/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFBvg-00000008j4D-3HIZ;
	Tue, 21 Apr 2026 14:18:20 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFBvg-00000008j3z-0DLV
	for linux-phy@bombadil.infradead.org;
	Tue, 21 Apr 2026 14:18:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=JWFzZQPxrFmY1oYQEgJQMMLohkTbHOrV9avCKMUNnEY=; b=aB4art9zh59i3tyhYUZCrcaLdk
	hnbmBxmGTRW32WFxryRhN4ErOboFHV0jgDLE7uQVvkfkadxuVxACr6dGC9U5nS1t0La2wJAdtAZVI
	AXg7TjLlecYdKd2uRxD/rf0/edJSp4+4EzQ8x45hOgpP1YjqO7mltf4655zCZZMh6xgZE0kGQXgHw
	8PwoJJ7h6yIxExHdBLCShW5r2o6jBVa4FKeycwoKdGVRZYnDZCwwXzjf8ZGxhelbXe6m9DRPZOPvo
	hXsP2ZQfvdSjpC4vJhTJbSFZlu7AoYDSpbkEsWJit1JWb/yGFMvLv4i/YgfEwIODOubutLw+RVU2P
	PVajMNBg==;
Received: from layka.disroot.org ([178.21.23.139])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFBvc-0000000AFEo-0mRY
	for linux-phy@lists.infradead.org;
	Tue, 21 Apr 2026 14:18:18 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 8D5C226F48;
	Tue, 21 Apr 2026 16:17:55 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BBTX5QfCKiok; Tue, 21 Apr 2026 16:17:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1776781074; bh=7wHerouNRDT13GEUBPlcd+QdullpGSqh9tq21Gx3Yjg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=KdkD3pOXadIz+zRR3DXjldDcVh2XXzOZJ7AccQvgLf3oc/ieiahgq7pUD/RTs9w4n
	 XoOfppvPSAll0r/z6LybGZ4yHjPRBfSBLvAXsTo3XB7tV/UyaNymkFpZEEsRFqkaUK
	 i21Qzwbph9Jkw43z0vj+bQ+vxARMQI8ctEGtlkZpcxL6lA/64xHSQN1aNsAtv0GQ5c
	 GL+OzZatkpnNU4DrdHiYb1b+YhXApjdRBp7T74i8iWMCGQ7viVJI6BvJ2uAm0dv8oB
	 OkqMJtIU63VdwjvXhHeiM/5r0GiZo0uJUdS3cpl4HU84nMtZ8ZEyxgbwfRHEUR2rzm
	 xxOYF13onj63g==
MIME-Version: 1.0
Date: Tue, 21 Apr 2026 14:17:54 +0000
From: Rustam Adilov <adilov@disroot.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Stanley
 Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/6] phy: realtek: usb2: support for RTL9607C USB2 PHY
In-Reply-To: <20260421-courageous-rigorous-angelfish-97a51f@quoll>
References: <20260420191941.81834-1-adilov@disroot.org>
 <20260421-courageous-rigorous-angelfish-97a51f@quoll>
Message-ID: <e4cc95ffd984ee66f2c732904b524411@disroot.org>
X-Sender: adilov@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_151816_314917_707E4A39 
X-CRM114-Status: GOOD (  15.53  )
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

On 2026-04-21 07:09, Krzysztof Kozlowski wrote:
> On Tue, Apr 21, 2026 at 12:19:35AM +0500, Rustam Adilov wrote:
>> This patch series for Realtek USB2 PHY driver adds support for RTL9607C
>> USB2 PHY.
>> 
>> RTL9607C is a big endian MIPS CPU which is quite far from RTD series SoCs
>> supported by realtek usb2 phy driver, but the phy initilization is found
>> to be very indentical in most areas.
>> 
>> Most of the code was based on the Realtek's usb driver from the GPL tarball
>> in [1] and adjusted to fit into the realtek usb2 phy driver code format.
>> 
>> The patch series was split into smaller patches that add/change something
>> in the driver that are not exactly related to RTL9607C and that also
>> helps for easier review. That also means, patch 5 depends on all the prior
>> patches that come before it.
>> 
>> USB2 PHY on RTL9607C is primarly used for its internal OHCI/EHCI controllers.
>> 
>> [1] - https://github.com/jameywine/GPL-for-GP3000/blob/main/linux-5.10.x/arch/mips/rtl9607c/usb.c
>> 
>> ---
>> Changelog in v5:
>> Mostly addressing LLM review
>> - Patch 1
>>  - changed int to u32 type for new_reg_req and vstatus_busy data fields.
>>  - changed comments in rtk_phy_read/write from PHY_NEW_REG_REQ to phy_reg->new_reg_req.
>> - Patch 2
>>  - explained readl/writel native endianess issue in more detail.
>>  - explained why vstatus register doesn't need byte swapping.
>> - Patch 4
>>  - moved reset_control_deassert to rtk_phy_init function to keep it outside of for loop.
>>  - changed msleep(5) to usleep_range(5000, 6000).
>>  - explained why reset_control_assert is not needed.
>> - Patch 5
>>  - explained readl/writel native endianess issue here as well.
>>  - explained why FORCE_DISCONNECT_REG doesn't need byte swapping.
>> - Link to v4: https://lore.kernel.org/linux-phy/20260406181228.25892-1-adilov@disroot.org/
>> 
>> Changelog in v4:
>> - Patch 2
>>  - moved the le variations of read/write functions to Patch 5 where it is actually used because
>>    otherwise, it results in unused errors when only Patch 2 is applied.
>>  - updated the commit message to to point the reason for le32 wrappers around readl/writel.
>> - Patch 3
>>  - added "Reviewed by Krzysztof Kozlowski"
> 
> Where?

Oi, it must have been lost in transmission because i added the tag manually to .patch after
format-patch command instead of adding it to commit message. So it disappeared in v5.

Sorry about that. Unintentional blunder on my part.

> Best regards,
> Krzysztof

Thanks,
Rustam

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
