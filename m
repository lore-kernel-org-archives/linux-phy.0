Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 893D7D3EE66
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 13:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4EKSO6ZH9UZ7G7IeeRN7xb5GGApZWsQQJ/IQ62hGIc=; b=am01810gYeGTav
	krW+jwyvXpuRz2dCRUhG+tLncDkT1kCbfQFn/249s7CA+eacsNZwS08atdJfnb7dYvQ3hJQJ3EoNI
	QmT1OXC7CZsUf9lAr2GYJHHi0SW9/AvN3b6vD7lex4Gpjuk2VnC7d1edW0PHot82rl6lJaZH3A5Tt
	0SiLmJ3pyp+tDWFGVElMxI7LuLuHtooqEOLF5w79bO+ZjXQHHdx52/S0DEHyjltXWXqsjZM6zzN8Q
	jfs7KBK9UopJOjAw+CdCAoiA7NAFe4Ri0YLiKwmxMbWctFEzmUPjvxIoupn2AIH+93GfTJo97pV+h
	ey3v1H2dRn2KN4ETgj/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viukW-000000079Ru-0gA3;
	Thu, 22 Jan 2026 13:29:24 +0000
Received: from mout-p-202.mailbox.org ([80.241.56.172])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viukS-000000079Qz-2zLb;
	Thu, 22 Jan 2026 13:29:22 +0000
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4dxhjk6tRnz9tSr;
	Thu, 22 Jan 2026 14:29:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1769088555;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qkXDurj6QKj5E3C55M4uNbxmil0lbV8rtP0fhoCy6LQ=;
	b=q9Wk0t1u1XPJNBO9SXrYKdYBt5X6c8SFwWGYF5O0qc8XUF8iTNz1rByWOSQxlmYUiVvB5w
	21+RfUKCHViICtY6bZd4FjsNmRqXXxKJh8/cDrqjUj35wcpYYgtRO24IrTfZdZCPNkCGOx
	VC+DYIMpH0d/xd/sQgQvTmkCw7akVymaEL0UFx0gIS4a94ZYJCDHfdw5EAvRjh8cGICBuN
	BH3eMNwjFwSiGiJMifCroRrGRhhkvB05FrCpYxZZ3feiaAjpu2EqxjqWwm2ZB0Cx8fYVBE
	fPDls95XPk1pEW42syvEupExkh8qxCxpTQ5wx+GscR9ozRdoR0Zcooaabrmg1g==
Message-ID: <f577f6a3-0239-4f73-9d4a-60d4dea64955@mailbox.org>
Date: Thu, 22 Jan 2026 11:56:48 +0100
MIME-Version: 1.0
Subject: Re: [PATCH v2 9/9] arm64: dts: renesas: ebisu: Describe PCIe/USB3.0
 clock generator
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org>
 <20260118135038.8033-10-marek.vasut+renesas@mailbox.org>
 <CAMuHMdWfkHMQFvUzaHpso-fMFAS5u8ABHpEA9ZXq1fxcR-oN6Q@mail.gmail.com>
 <6f817993-1b4a-4600-a771-d6c25efc668b@mailbox.org>
 <CAMuHMdX0iuyUhGRPFf4x==e_ZEMjaB_dP6mrM81F+yxqwam0FA@mail.gmail.com>
Content-Language: en-US
From: Marek Vasut <marek.vasut@mailbox.org>
In-Reply-To: <CAMuHMdX0iuyUhGRPFf4x==e_ZEMjaB_dP6mrM81F+yxqwam0FA@mail.gmail.com>
X-MBO-RS-META: dg9gzba7xrdauthxgmgzntyeydxxorzn
X-MBO-RS-ID: 29de373016d6a85001a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_052920_898448_A0D34A84 
X-CRM114-Status: GOOD (  10.73  )
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

On 1/22/26 11:24 AM, Geert Uytterhoeven wrote:

Hello Geert,

>> This piece of code in drivers/usb/phy/phy-generic.c [1] shouldn't fail
>> the probe if "vbus-supply" property is not present in DT. If
>> "vbus-supply" property is not present in DT, then
>> PTR_ERR(nop->vbus_draw) == -ENODEV is true, nop->vbus_draw will be set
>> to NULL, but won't encode error, so the dev_err_probe() won't trigger.
>>
>> "
>> 259         nop->vbus_draw = devm_regulator_get_exclusive(dev, "vbus");
>> 260         if (PTR_ERR(nop->vbus_draw) == -ENODEV)
>> 261                 nop->vbus_draw = NULL;
>> 262         if (IS_ERR(nop->vbus_draw))
>> 263                 return dev_err_probe(dev, PTR_ERR(nop->vbus_draw),
>> 264                                      "could not get vbus regulator\n");
>> "
>>
>> [1]
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/usb/phy/phy-generic.c#n259
> 
> Sorry, you are right. I missed the PHY driver ignores the error and
> probes successfully, and thus didn't bother doing "echo ee000000.usb >
> /sys/bus/platform/drivers/xhci-renesas-hcd/bind" after /lib/firmware
> became available.

Is any change needed to this series then ?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
