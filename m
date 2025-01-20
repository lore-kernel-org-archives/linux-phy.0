Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0713EC02185
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jan 2025 07:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZKAEgRm0Rhfb6hhJtLBW0chOWlIGkSBtcKb3qR56WEU=; b=0hHsSPG62x1gRz
	k60RatY4ZxYHSiMK2Eu6Ooeiy2FYY1/XAko7B17ZVpBtNwulWrixR1I8PeLhjPRQo/Apoeo9nLGxY
	kE4MQZMlzPjybTO0r5mcJ9ssuAa4SJwnWDqyA3uShsH1TTDxGYUhwLY8CMNja6su4U47e0hDh3bLo
	83AuVganyeTz4YZtOJbPB2TPwjS6ZxoGmUB1qo0a17utOc2JMpzHglRNbW+11Lt9lpyf1YhvlDizd
	ptvmCmCqDZdoAnqPAHosGFGrWVvltvefJThDHLFGxq3tsPBccKcMayogWhuGI7A2GIh4+2Abg5nq2
	pd3g+FLJAzF7pACesWhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZmhH-00000004yeg-15wE;
	Mon, 20 Jan 2025 07:59:47 +0000
Received: from relay7-d.mail.gandi.net ([2001:4b98:dc4:8::227])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZmhE-00000004ye7-2dHg
	for linux-phy@lists.infradead.org;
	Mon, 20 Jan 2025 07:59:46 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2B5BA20004;
	Mon, 20 Jan 2025 07:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1737359981;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r93WodtBM0brBEyryxMY6tgcrQ4E84ljww2FK8nR7r8=;
	b=Nd9dX8IVi6ORv8DQftpHS2EyDhLnYWz4TpMMuLMl9r/saMiUqwOcYGG/jjtedjA9tHoWHj
	x+qA27lLMZ7cSjeugCZ1K+wOHXSQDh+7mV9QknqHJuo7IdZbSXPScqoNPxVwU/ysYcUh2/
	fQ4zZF/wFgDkOZd8yz1dcKxc6Za58CBgYP20TPf0Tnj1xv/n/XVYEQ03xaKp7GWH7jym1y
	MW8fGFs78uKFfVdP5w8GEvp3zOsJfyXVy4cFkar7L45MBr5bLTaOuW887EEFUpVS46vFgR
	R8qFPZAJGxHVgcQ9tOtguiS+rYZRe3yqj+TEVcCbbGayVX+HWWwBwPdfc54wfQ==
Date: Mon, 20 Jan 2025 08:59:39 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham
 I <kishon@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 2/3] irqchip: LAN966X_OIC should depend on
 MFD_LAN966X_PCI
Message-ID: <20250120085939.1a559304@bootlin.com>
In-Reply-To: <84393e59efa7a76b89d4164fd64ca85b8739f6ee.1737118595.git.geert+renesas@glider.be>
References: <cover.1737118595.git.geert+renesas@glider.be>
	<84393e59efa7a76b89d4164fd64ca85b8739f6ee.1737118595.git.geert+renesas@glider.be>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: herve.codina@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250119_235944_841751_B34D1B0B 
X-CRM114-Status: GOOD (  13.50  )
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

SGkgR2VlcnQsCgpPbiBGcmksIDE3IEphbiAyMDI1IDE0OjA0OjM3ICswMTAwCkdlZXJ0IFV5dHRl
cmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+IHdyb3RlOgoKPiBUaGUgTWljcm9jaGlw
IExBTjk2Nnggb3V0YmFuZCBpbnRlcnJ1cHQgY29udHJvbGxlciBpcyBvbmx5IHByZXNlbnQgb24K
PiBNaWNyb2NoaXAgTEFOOTY2eCBTb0NzLCBhbmQgb25seSB1c2VkIGluIFBDSSBlbmRwb2ludCBt
b2RlLiAgSGVuY2UgYWRkIGEKPiBkZXBlbmRlbmN5IG9uIE1DSFBfTEFOOTY2WF9QQ0ksIHRvIHBy
ZXZlbnQgYXNraW5nIHRoZSB1c2VyIGFib3V0IHRoaXMKPiBkcml2ZXIgd2hlbiBjb25maWd1cmlu
ZyBhIGtlcm5lbCB3aXRob3V0IE1pY3JvY2hpcCBMQU45NjZ4IFBDSWUgc3VwcG9ydC4KPiAKPiBG
aXhlczogM2UzYTdiMzUzMzI5MjRjOCAoImlycWNoaXA6IEFkZCBzdXBwb3J0IGZvciBMQU45NjZ4
IE9JQyIpCj4gU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2Fz
QGdsaWRlci5iZT4KPiAtLS0KPiB2MjoKPiAgIC0gRHJvcCBkZXBlbmRlbmN5IG9uIFNPQ19MQU45
NjYsIGFzIHRoZSBPSUMgaXMgdXNlZCBvbmx5IGluIExBTjk2NngKPiAgICAgUENJIGVuZHBvaW50
IG1vZGUsCj4gICAtIFJlcGxhY2UgTUZEX0xBTjk2NlhfUENJIGJ5IE1DSFBfTEFOOTY2WF9QQ0ks
IGFzIHRoZSBsYXR0ZXIgaXMgdGhlCj4gICAgIHN5bWJvbCB0aGF0IGVuZGVkIHVwc3RyZWFtLgo+
IC0tLQo+ICBkcml2ZXJzL2lycWNoaXAvS2NvbmZpZyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKykKPiAKClRoYW5rcyBmb3IgdGhpcyBwYXRjaCEKCkFja2VkLWJ5OiBIZXJ2
ZSBDb2RpbmEgPGhlcnZlLmNvZGluYUBib290bGluLmNvbT4KCkJlc3QgcmVnYXJkcywKSGVydsOp
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
