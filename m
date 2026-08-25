Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 011AFC61DBD
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 21:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HIdSHeuKC4/RvjCEFgBQrM19e2AQCG2YMrlXD0x26lE=; b=yvJO/HYTrjenK3
	6qmrcFuaXSQ/+F4VVwd9Wm+3XMfGRJ/MyU6DnwwW0esrBzS5DDguPUihHjVr/QyelOUGZy5v8xj/B
	EjwZBpYS2w6+NUyBXuiBuDrIfC8veDtGSzH3Oeg/jaePlY/YuJO/vH4jM8WGV7qJRosQWan3b5J0M
	SiE0zRzEcryKAIZZ4YAffIFmY7hqM1HaFS68DBkAAJrCQyhqJSbUBD4Y9/tBYoM8EiYpLsUm7Lq1Y
	njUu709TM1Zv1YGxWNt6Sosqkohq1qZ7oIxVcFSn1k9lwIZ00n3ef7TBrlC9klyFqFohEERxk8zvR
	7WdRpBkd56hm4Wdb2Wog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyymm-00000001XZD-35DH;
	Tue, 25 Aug 2026 21:34:24 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyymm-00000001XZ7-02hO
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 21:34:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AC59E41B6A;
	Tue, 25 Aug 2026 21:34:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31F731F000E9;
	Tue, 25 Aug 2026 21:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787693663;
	bh=8xDKKGm9wVNaCBwP5NxFRJaA5DOAbVh297mRMYHDmJg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TF5x4iyZBUqfn4mUsPKLNke5g4Z3Jc6v8pgRjMJQy2a/wbfbjGwfhs/VzypanBTzf
	 XuqT53OcA0gPyqe4XHXR/KLEzRO2cAettf6EMs/zXNsdvne+hemGpIJpNhUeENEVHH
	 xtk1zfuH+5OkYnCjr/ekzd9DHLUft5YHQYR2zqeffxhfxs/y9l7DncoW9ur8T5xosG
	 1mBalDScNBu5xeWcP7+Q5ka0Cxz4KqlPZS1TCGx/nVO6YjaMKEk3+uG5up+jlAAlX5
	 6WzTbzz6u3pHaY0l67lI8hzlgPQ3dPKXdcRIXhePkNS2NnbRh/kJ+xOsE17gKuHu4G
	 YPs39hsZvctuA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 11/12] clk: zte: Introduce a driver for zx297520v3
 LSP clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: olteanv@gmail.com, lee@kernel.org, linux-clk@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, mfd@lists.linux.dev
In-Reply-To: <20260826-zx29clk-v11-11-f8ad59c6426c@gmail.com>
References: <20260826-zx29clk-v11-0-f8ad59c6426c@gmail.com>
 <20260826-zx29clk-v11-11-f8ad59c6426c@gmail.com>
Date: Tue, 25 Aug 2026 21:34:22 +0000
Message-Id: <20260825213423.31F731F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

PiAiTFNQIiBpcyBaVEUncyB0ZXJtIGZvciB0aGlzIHBhcnQgb2YgdGhlIFNvQywgSSBzdXNwZWN0
IGl0IHN0YW5kcyBmb3IKPiAibG93IHNwZWVkIHBlcmlwaGVyYWxzIi4gVGhlIG1haW4gVUFSVCBp
cyBoZXJlLCB0b2dldGhlciB3aXRoIHRoZSBmbGFzaAo+IGNvbnRyb2xsZXIgYW5kIG1vcmUgc3Vy
cGx1cyBwcm9wcmlldGFyeSB0aW1lcnMuCj4gCj4gSXQgYWxzbyBoYXMgb25lIG1vcmUgSTJDIGNv
bnRyb2xsZXIgdGhhdCBzdXBwb3NlZGx5IGNvbm5lY3RzIHRvIGEKPiBiYXR0ZXJ5IGNoYXJnZXIs
IFNQSSBmb3IgZGlzcGxheXMgYW5kIEkyUyBmb3IgYW5hbG9nIHRlbGVwaG9uZXMuIFRoZQo+IGJv
YXJkcyBJIGhhdmUgZG9uJ3QgaGF2ZSBhbnkgb2YgdGhlc2UgY29tcG9uZW50cyB0aG91Z2guCj4g
Cj4gUmV2aWV3ZWQtYnk6IEJyaWFuIE1hc25leSA8Ym1hc25leUByZWRoYXQuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgpT
YXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxv
b2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDgyNi16eDI5Y2xrLXYxMS0wLWY4YWQ1OWM2NDI2Y0BnbWFpbC5jb20/
cGFydD0xMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
