Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7DDDEB7EAC
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 09:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9KIuL4Tk3BzdMzQdo/YVEkbeekRdk82GuJ/arvXbrkI=; b=fCf6GLNfDvQHDA
	IuJdbUn557dxceBVuH66hJrU0WLBJeig0IldMR/cWH57CVKDXxkJ9Tj8jeC40wwDuuQW4OhNC1xt+
	sKK9Ui9X05zx0gbZuC4hn0DQ/CS/NQL6OZaeaA6nwX+YB+QghpDi+6aHbSJ9NHc1jPk0Dq4jtMekZ
	WEUrGbZzG4oohBiyNyVYM2qNj98+6I8U3PcOv2TShnZJ+7mMztCHmUZVn/GD/PnKCcrSsqw45GyTA
	dwoRqTAA9kExjGpVKwB3cgAAjZyva1MpD1dbU43+NFhH/ohq73b6cCXTmN8dum8rXnpZua2ypDdpF
	6Vwr4OC9Q2mHoN09g0ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxiyt-0000000GwOG-1LQ0;
	Wed, 04 Mar 2026 09:57:27 +0000
Received: from mail.cjdns.fr ([5.135.140.105])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxiyq-0000000GwNB-3Wmm;
	Wed, 04 Mar 2026 09:57:26 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1E31A22B11A;
	Wed,  4 Mar 2026 10:57:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1772618241; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=o/J670QYTQ0TzMrMVCgmKTiKIwt4yiwKdlz7EPRMQYk=;
	b=cx2wm9L8Zb3EarEb1qJsmYPWTNlHFiJY+3jxeLhaegWPBpxQtY2wZC5W9rTt5H0/HOPauE
	+4Ys+WVETG2G7z/NSYQ/tEjReoXjeYpr3HdZHnJuh1uitABIvImydlAstEbZZyCyvWDlZo
	ejk/udhin38cNVansYiTXWX0lVhNLw1e6NQjTwlyAieqM8nbuQE2cmra9CdPdLI0gNycyv
	WXan80C5roE5RSdDw0qRiMt9vWE44HgMtK67iBe8Uzzuod79p3Fts5fsNQ1wem3zjuz5mf
	3yw4sGrcaRPwPLUL7LDZa1S3KZBc7wyHjkJp3dm9DIh6XO1uCOpvSOSWOpM0fQ==
Message-ID: <4806aee5-d324-4d62-a4e7-683a448a2623@cjdns.fr>
Date: Wed, 4 Mar 2026 10:57:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH 1/8] dt-bindings: clock, reset: Add econet EN751221
 bindings
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-mips@vger.kernel.org, naseefkm@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 tsbogend@alpha.franken.de, ryder.lee@mediatek.com,
 jianjun.wang@mediatek.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, bhelgaas@google.com, vkoul@kernel.org,
 neil.armstrong@linaro.org, p.zabel@pengutronix.de, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, nbd@nbd.name, ansuelsmth@gmail.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20260303190948.694783-1-cjd@cjdns.fr>
 <20260303190948.694783-2-cjd@cjdns.fr>
 <20260304-accomplished-helpful-orca-5d6b81@quoll>
 <7888e449-fec9-4a23-8133-ad0c9651a354@cjdns.fr>
 <419c552a-a57f-4f67-9923-5315ea43a4d9@kernel.org>
Content-Language: en-US
From: Caleb James DeLisle <cjd@cjdns.fr>
In-Reply-To: <419c552a-a57f-4f67-9923-5315ea43a4d9@kernel.org>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_015725_081868_7764328A 
X-CRM114-Status: UNSURE (   8.08  )
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


On 04/03/2026 10:46, Krzysztof Kozlowski wrote:
> On 04/03/2026 10:09, Caleb James DeLisle wrote:
>>>> +
>>>> +description:
>>>> +  The EcoNet chip-scu block provides a configuration interface for clock,
>>>> +  io-muxing and other functionalities used by multiple controllers (e.g. clock,
>>>> +  pinctrl, ecc) on EN751221 SoC.
>>>> +
>>>> +properties:
>>>> +  compatible:
>>>> +    items:
>>>> +      - const: econet,en751221-chip-scu
>>>> +      - const: syscon
>>> And it does not fit existing syscon bindings file, because ... ?
>>
>> If you're asking why it needs to be named "econet,en751221-chip-scu" and
> No, I am asking why you cannot put it with other syscon bindings - git
> grep syscon? What is missing here (we expect complete binding for given
> hardware)?

Ahh so mfd/bindings/syscon.yaml, that looks fine to me. Two reasons I 
didn't do that: 1. didn't know it existed, 2. Assumed 
arm/airoha,en7581-chip-scu.yaml was done The Best Way Possible. I'll be 
happy to re-send using syscon.yaml

Thanks,

Caleb

>
>
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
