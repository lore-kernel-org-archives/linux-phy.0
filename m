Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00FE0D4A5F4
	for <linux-phy@archiver.kernel.org>; Sun, 18 Jan 2026 13:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hPEUl5Xuw36ighjwiAdq+rkaEmNbfyJZg4z9w1E/+RM=; b=IxRMvgyZS1jJ7R
	57jUMPZfa6Q1FCAAnzfCWNubU0cxPRHyonjJaO+MtfTJF1RwHlHtXVcSFNEcjjZTOgPeecPqGqpl5
	7zL9h/BmW3sJNmeNHNYGbbXYsyB9namojYs0hhOv7ArQ1RVo4D5nnfbmrspjnu6OE6P35EpqKpseZ
	J3he++lWIdcuEr2VwTapQmkJCGmMZLZmhqC0oebc6CtGSR5vv9bwrdUnIZGsh0NxTzbLCVBgp4Jcx
	zmrfLsmg0zHCntw9Q2jNUPWHWPMdI7a0x+VbsaF7lNmkmyJA+7RUCwr5+DDIqCwuxw+jjLRX6CS52
	bGA+CPBpdvimPjo8V1kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhTF9-00000000Aoa-26An;
	Sun, 18 Jan 2026 13:55:03 +0000
Received: from mout-p-101.mailbox.org ([80.241.56.151])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhTF5-00000000AnE-3oJV;
	Sun, 18 Jan 2026 13:55:01 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4dvFTC4SJ6z9tdy;
	Sun, 18 Jan 2026 14:54:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1768744496;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=w74ArzlzjcPgIlfF59OMXGcYRU6Ba0ymJHHl+heNzkI=;
	b=B/wLK2CiI0lKZqJ4DWQ55I6ThcIUjD3f710b7R6jJ3FtMesJqMEj9CmXpw7cPrix3LVA0r
	mWbGEDWKhGEE4hGDc+szxP3zZcNHBS93AIQKCpWDN6IuVdaZlYw4BmlbziacetPXldc1Uj
	589yyJOpxCSbeBRTrbBXYFY0stF94eFl/hKMisjFVnW+6njpxsxK72Ry0t40q5uVZTJpq8
	QtYi6wwnnuWpISoBFXo1UhdnP0g9k0OChC1SKCOGoM7qLtQsyrAEH7XlM8ucuI6S3tyt3m
	FbjU2voER87RPx10ZYTaA2ZDgB3n/zTmRaQkZUNsB9AQOvCqxZ5dSuhS5jQJWg==
Message-ID: <2b6f19f3-aaf9-4fb7-bef7-f38e19f94351@mailbox.org>
Date: Sun, 18 Jan 2026 14:54:53 +0100
MIME-Version: 1.0
Subject: Re: [PATCH 00/11] Describe PCIe/USB3.0 clock generator on R-Car Gen3
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm
 <magnus.damm@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org
References: <20260101203938.159161-1-marek.vasut+renesas@mailbox.org>
 <CAMuHMdVyQpOBT+Ho+mXY07fndFN9bKJdaaWGn91WOFnnYErLyg@mail.gmail.com>
Content-Language: en-US
From: Marek Vasut <marek.vasut@mailbox.org>
In-Reply-To: <CAMuHMdVyQpOBT+Ho+mXY07fndFN9bKJdaaWGn91WOFnnYErLyg@mail.gmail.com>
X-MBO-RS-META: 1cc39rfaycx644jqxqkndht8u7hjy46g
X-MBO-RS-ID: f7f2d39d9d798953f4c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_055500_151144_76FCFD69 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
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

On 1/13/26 3:19 PM, Geert Uytterhoeven wrote:

Hello Geert,

> I do not know what is the actual issue.  Adding debug prints to
> rs9_suspend() and rs9_resume() shows these functions are not called,
> while adding 'status = "disabled"' to the renesas,9fgv0841 clock node
> in arch/arm64/boot/dts/renesas/salvator-common.dtsi does fix the issue.
> 
> Perhaps you have pending patches for the rs9 or PCIe drivers?
> Do you have a clue?
I believe this one should address the problem:

[PATCH] clk: rs9: Reserve 8 struct clk_hw slots for for 9FGV0841

https://lore.kernel.org/linux-clk/20260118025756.96377-1-marek.vasut+renesas@mailbox.org/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
