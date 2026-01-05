Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 770C0C79FB4
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 18:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbgcqgAoW9C2RfmTtEtPf3+jY+A+CxSWkiAwy1RrtDc=; b=n5b+Met0FBfCSU
	9zn0B2E9JhKIUiv+zHlZQr9zpq2aEHJ3XXLyo3WQamaM2/sru4p+NVts/Hn/qS92ioV1wV6hjk5u+
	JYyqsRpjkZl+geOkiDLguIIHOeLXF1aSGbZ4CDL+9smCqO/uc1j3Pa3QjdRUTVHkp9xnWYRAUvkDa
	nRLdlfzafnAJ6glD21bTE/GIRKYMiPpHfS//kSra0DJxV9gq2+6EKSAa95roN+CwD+uU+QMtKvyOw
	qXzVquVkI4w75E3jelP/jkmW9Pudxw0pZJGjiteZargM4f2pavnNjs7DO9dD5i8LD1F7sgLPiPDVA
	d7zPQuQAAdM8ljgy2dNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcp56-0000000BusW-10Ve;
	Mon, 05 Jan 2026 18:13:28 +0000
Received: from mout-p-202.mailbox.org ([80.241.56.172])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcp52-0000000Burh-29uh;
	Mon, 05 Jan 2026 18:13:26 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4dlMqN0VM4z9t0J;
	Mon,  5 Jan 2026 19:13:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1767636800;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qCMOp1uSSjiusbPyZHPXfp34jTJvXcna7CZDIpBdvmg=;
	b=TsAelbYn+3JjsTUrqsvLMfeoItA/WGqEd2lREeonf93hQ89eJ95AhG1c62XnVIDYkK+vXl
	QzDBWDGsppXj1GteYAVtwJJH3/uWC4W3K1hdIqKDfYK/ozTg68UJliaLptw1zB0p27bquL
	ZjYNZcs7E7yU/Kt6QA9csTFf5RTn5KiqVNQogdShJ1NwxK6aB5ODfwR2c7Jlb8pUMx18yY
	Vjlo/sfyKngik67KwzQyHw5ITtyTyyA+zZSCWFfZcNDpTRCP60TdMfVjrruLjFkyH+XojY
	oPNTWyFj6i2SVoHj02M+9IV0gSghq6B+xXmm4PnBg2L2gmNK/PYaeHwpmIBwuw==
Message-ID: <f0fdbe83-a06a-430d-b41b-7f63ad31509e@mailbox.org>
Date: Mon, 5 Jan 2026 19:13:16 +0100
MIME-Version: 1.0
Subject: Re: [PATCH 01/11] dt-bindings: phy: renesas: usb3-phy: add r8a77990
 support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm
 <magnus.damm@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org
References: <20260101203938.159161-1-marek.vasut+renesas@mailbox.org>
 <20260101203938.159161-2-marek.vasut+renesas@mailbox.org>
 <20260105-beneficial-seal-of-swiftness-1c5eeb@quoll>
Content-Language: en-US
From: Marek Vasut <marek.vasut@mailbox.org>
In-Reply-To: <20260105-beneficial-seal-of-swiftness-1c5eeb@quoll>
X-MBO-RS-META: a8iay7694du7guekapi7cikz73b85xu7
X-MBO-RS-ID: ecc22de2e5196f6c24d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_101325_373283_E15536AC 
X-CRM114-Status: GOOD (  10.55  )
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

On 1/5/26 9:31 AM, Krzysztof Kozlowski wrote:
> On Thu, Jan 01, 2026 at 09:35:48PM +0100, Marek Vasut wrote:
>> This patch adds support for r8a77990 (R-Car E3).
> 
> Please do not use "This commit/patch/change", but imperative mood. See
> longer explanation here:
> https://elixir.bootlin.com/linux/v6.16/source/Documentation/process/submitting-patches.rst#L94
> 
> Also, you cannot add support in bindings. You either document hardware
> or you add bindings for or simply you add hardware.

I'll reword it this way for V2, I hope this works ?

"
dt-bindings: phy: renesas: usb3-phy: Document R-Car E3 R8A77990 USB 3.0 PHY

Document USB 3.0 PHY present in Renesas R-Car E3 R8A77990 .
The PHY is compatible with R-Car H3/M3-W/M3-N PHY.
"

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
