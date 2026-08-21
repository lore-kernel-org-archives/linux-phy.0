Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6C2EC5DF7D
	for <linux-phy@archiver.kernel.org>; Fri, 21 Aug 2026 14:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mC8jPWn5HBr8oTlOgvuGDoY9DSEXqeL0f1Es+0xAorQ=; b=tPS86lPnrr+epm
	t4yr5pNclvfpuvc+0lHDEMWiZMIKa6oQXTppGU4uaJP2FNW381szA0GwXZHx9rkQpScTyIKRnnrQa
	QvwGuuJmi1f+40G2ZZRuzcVByyQUEUv/mHtaZY2dmG+ue5F2Qn4VbVZSp86iNbqnnYk9F6xom16tb
	SD2gLQpYzXqj3nBz9oOmuxkrefieqILWx/BR9iWhTC5A0ttzdBFYRx2oA7/zYodBdSHf2s7tyjN3y
	+PtkmN3gvFpbcBb3PDIpqV2qD1xGobh9wk9L55ZhsR0nofpOhFISPNFyfZde+f3BQ5cmaDqYPBtjN
	k60NcBt/mawZGagzIHuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxPrl-0000000DUpP-2PbK;
	Fri, 21 Aug 2026 14:05:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxPrk-0000000DUoo-0MQe
	for linux-phy@lists.infradead.org;
	Fri, 21 Aug 2026 14:05:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 780A560A63;
	Fri, 21 Aug 2026 14:05:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B28F1F000E9;
	Fri, 21 Aug 2026 14:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787321103;
	bh=wFp0WQU6prZEOfxRWYb5KCCkoyC6LtJnLLnm35OLSA0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=Y7DhhTCMwyn6zebC0O86NBBhqvjmBi54mXdqf9OaS5WgNQQ8qq13rZ/0d+M1lZFPf
	 u0OQqPbcCnpIMiuO3ormf2ctISFoQG/6haFezdd3C6g86RFZe0wODK4l7KQexTFShE
	 DDENnwPOSPljVM7FtcoI7PdnX7bshlL354Rq/BfLzt9lAxksaAtg7PMfPPQJK7PR7g
	 CwtXuSyQC2pMMnYtptvcROmw8hCYDRAPiPuAhwVMHeDd4FJRvDr6x9rIPEseMzR+t/
	 fuVEXU76QbgYIaPleL3GZdsE82YGxInw69oY3VEwWFwqacBUOO1przwCZpTdKPB1Or
	 5sYEnGwHF56Yw==
Message-ID: <12b4ad0b-5323-4eee-8772-2bf07ad89a16@kernel.org>
Date: Fri, 21 Aug 2026 16:05:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] phy: apple: atc: Implement the USB4 pipehandler state
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org,
 neil.armstrong@linaro.org, olteanv@gmail.com
References: <20260821-b4-atcphy-usb4-v1-0-45c0b741e0c0@kernel.org>
 <20260821-b4-atcphy-usb4-v1-3-45c0b741e0c0@kernel.org>
 <20260821140146.0D53A1F000E9@smtp.kernel.org>
Content-Language: en-US
From: Sven Peter <sven@kernel.org>
In-Reply-To: <20260821140146.0D53A1F000E9@smtp.kernel.org>
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



On 8/21/26 16:01, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
>
> New issues:
> - [High] Missing cleanup of `PIPEHANDLER_OVERRIDE` registers on lock failure leaves link detection permanently disabled.
>
> Pre-existing issues:
> - [High] Unconditional state update of `atcphy->pipehandler_up = true` on the error path masks hardware configuration failures.
> --
>
> --- Patch [3]: [PATCH 3/3] phy: apple: atc: Implement the USB4 pipehandler state ---
> commit 6b90c04f8cd4e7a3f818a4bc0eb1057996bb1845
> Author: Sven Peter <sven@kernel.org>
>
> phy: apple: atc: Implement the USB4 pipehandler state
>
> This commit implements the USB4 pipehandler state for the Apple ATC PHY driver.
> It switches the dwc3's PIPE interface to the USB4 NHI which takes care of
> tunneling USB3 over USB4.
>
>> diff --git a/drivers/phy/apple/atc.c b/drivers/phy/apple/atc.c
>> index 96158d3486560..613bcd0ae8865 100644
>> --- a/drivers/phy/apple/atc.c
>> +++ b/drivers/phy/apple/atc.c
>> @@ -1084,6 +1084,41 @@ static int atcphy_configure_pipehandler_usb3(struct apple_atcphy *atcphy, bool h
>>   	return 0;
>>   }
>>   
>> +static int atcphy_configure_pipehandler_usb4(struct apple_atcphy *atcphy)
>> +{
>> +	int ret;
>> +
>> +	ret = atcphy_pipehandler_check(atcphy);
>> +	if (ret)
>> +		return ret;
>> +
>> +	/* Force disable link detection */
>> +	clear32(atcphy->regs.pipehandler + PIPEHANDLER_OVERRIDE_VALUES,
>> +		PIPEHANDLER_OVERRIDE_VAL_RXDETECT0 | PIPEHANDLER_OVERRIDE_VAL_RXDETECT1);
>> +	set32(atcphy->regs.pipehandler + PIPEHANDLER_OVERRIDE, PIPEHANDLER_OVERRIDE_RXVALID);
>> +	set32(atcphy->regs.pipehandler + PIPEHANDLER_OVERRIDE, PIPEHANDLER_OVERRIDE_RXDETECT);
>> +
>> +	ret = atcphy_pipehandler_lock(atcphy);
>> +	if (ret) {
>> +		dev_err(atcphy->dev, "Failed to lock pipehandler\n");
>> +		return ret;
>> +	}
> [Severity: High]
> If atcphy_pipehandler_lock() fails and returns early, the link detection
> override bits (PIPEHANDLER_OVERRIDE_RXVALID and
> PIPEHANDLER_OVERRIDE_RXDETECT) are left set.
>
> Does this permanently disable link detection on the PHY hardware for
> subsequent retries until a hard reset occurs?

No, if this fails the port will be broken until the next unplug/plug 
which resets everything anyway.
Same pattern has been working in the other paths and since we have no 
documentation for this PHY I won't touch it or do anything else here.



Sven


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
