Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25CBEC02185
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jan 2025 07:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqiNlQMAvL+NwnDL0bQhbHulTqhmhhF+gVspGQjQX/A=; b=WycJUFIJV4dTiS
	41Q4Pg4oah9ZT0EW4shBN9a9TYqCXiDZXHkiZuCq7FNcqqln4U4nO12btgrc2GJdjkhajwNezVSfx
	jnQPPF/t5UpAOOIlL2rMEOsMx/ZwjvI4jLgdvNe1LTnrZJ5iXgFZaEjIy20tmjA9YL/k5PqYsuflS
	6Eek24KXt+7BIMVGHBUq8f6MvKgq5nlb9XUhEHAIFYYfCwkMe9YM6jf4M5o7H+Ui9B+CMS7DVZYk9
	P1l7gM6unOm/NzERIAyZ1EbMJinDWKJ6iU0AijtOavhny7y4dmQd0WOPlUhyVI2CsPx8fcK3sZLx2
	USZEwthOvmXIcjTAf8Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZmgT-00000004yWk-3qYM;
	Mon, 20 Jan 2025 07:58:57 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZmgP-00000004yW8-2DLm
	for linux-phy@lists.infradead.org;
	Mon, 20 Jan 2025 07:58:55 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 80F8840007;
	Mon, 20 Jan 2025 07:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1737359923;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IrfXUXKx65Be1ucE9yzPUsyx/j7smslYJp+VGyQ1BFs=;
	b=KVZFjaB7rQHERQv+bTv9y2JtGtb1xo/5MBvIik7JQprzL7zUSKovTS3abKnWxwDYiAGM6m
	8kEeTLAvU6swsp1VmJTzuVASq92FZpCaC/cuBhDb/Un/vCxokrMomochZ25ZCvEwdwZB6M
	XzRNH+iq7qjiiN2lLN1mNfIZmxEfjeFs5Jlk+Xis2tkuLx8rqmv7vpU+37harhzaWXyMH2
	BifnI5ivue1FBgFEeJqEiZoKpEi9ISvwJtkVU9+uA8kFDc+Dl4PMJU4OYLAAcdL/i8786z
	ihzygLWEoDgXZNyTwbquGtmIJvGPyFhjppYZTds+8eejGFE5WytOhRwM8c0Ylg==
Date: Mon, 20 Jan 2025 08:58:39 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham
 I <kishon@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: interrupt-controller:
 microchip,lan966x-oic: Clarify endpoint use
Message-ID: <20250120085839.3982743c@bootlin.com>
In-Reply-To: <0f2d1bcb431827b65b2c0ba6619d9126ec97da72.1737118595.git.geert+renesas@glider.be>
References: <cover.1737118595.git.geert+renesas@glider.be>
	<0f2d1bcb431827b65b2c0ba6619d9126ec97da72.1737118595.git.geert+renesas@glider.be>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: herve.codina@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250119_235853_721316_C8C5A5F6 
X-CRM114-Status: UNSURE (   9.44  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgR2VlcnQsCgpPbiBGcmksIDE3IEphbiAyMDI1IDE0OjA0OjM2ICswMTAwCkdlZXJ0IFV5dHRl
cmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+IHdyb3RlOgoKPiBSZXdvcmQgdGhlIGRl
c2NyaXB0aW9uLCB0byBtYWtlIGl0IGNsZWFyIHRoYXQgdGhlIExBTjk2NnggT3V0Ym91bmQKPiBJ
bnRlcnJ1cHQgQ29udHJvbGxlciBpcyB1c2VkIG9ubHkgaW4gUENJIGVuZHBvaW50IG1vZGUuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRl
ci5iZT4KPiAtLS0KPiB2MjoKPiAgIC0gTmV3Lgo+IC0tLQo+ICAuLi4vYmluZGluZ3MvaW50ZXJy
dXB0LWNvbnRyb2xsZXIvbWljcm9jaGlwLGxhbjk2Nngtb2ljLnlhbWwgfCA1ICsrLS0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCgpBY2tlZC1i
eTogSGVydmUgQ29kaW5hIDxoZXJ2ZS5jb2RpbmFAYm9vdGxpbi5jb20+CgpCZXN0IHJlZ2FyZHMs
CkhlcnbDqQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
