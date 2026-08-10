Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9772BC5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 07:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkij33Je++VyW4Q6o3meTVgR9nuC+SaKjIwLGVMKFW8=; b=m3GNnI0g7JTlqc
	LdpQ5ez0mgsZsoeXP5U+u1dem1MgWJR/FOw6bZua3Zr4XlwfOho6jiMWBmwpFiKQJwsHdt7J5ab8t
	ucaZQxS9kgFwr6NWrp6ZTYssUEaPXA5x+nTDV9cdv0xPCUHE+vX7OwvvqULL30GXehGCPWLuQJQb0
	TzUhcgJX/B6iYZa7sDNisDbbQZ0mkoBbHgjGLVwI41U6wpHAe1PdDSYM7ExfDD8Gw9GE19gwGo0Cp
	enJ5PxPHBw3ZNoE2An9fQxufsKLaENm6cIAbi+ByYw25n0p7zDV2tg5KuQqeRhV8VzjOLtjuavsdI
	I0M0FntYc6iUu8lmYY1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtK9w-0000000BB0U-0zpC;
	Mon, 10 Aug 2026 07:10:56 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtK9v-0000000BB0N-1Uxg
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 07:10:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0BD6D41481;
	Mon, 10 Aug 2026 07:10:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67B941F000E9;
	Mon, 10 Aug 2026 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786345854;
	bh=OT2Gjc3lqg50LfvKVjTQEq3e59PNvmKA6N+xyFJukmU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=opdBM6i09P7i83vT0NBeR9kKrY8JeAwVEEs+0ejwobo65F/fWVkxg/3mBNtaIEAfd
	 nKib2WtF4w63c5AHkmxhrzxAIZatsjTMqdfadXMKT0lD6q7F/2BdNdmxUVSPYMvu5X
	 JqXeBZglWD+6RLyolTR6I5jqfCWqb80kF3wXMGrt/9wufLYFwJGGYvBSmQ/EdZyUam
	 moiNyzgw9oBAMJGw7kntA3eHRktg7U4VcS29PEwdtGU47VKVPs9WQFOKTFsDm0cz9y
	 v5hlH0yusTQqHe+8GNYLZCT99hlSWPnHKXkhNnMFGM1Qopwos69YSo+h2qhzKDe7y7
	 AljeE5Z/Af1Dw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 10/12] clk: zte: Introduce a driver for zx297520v3
 LSP clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: devicetree@vger.kernel.org, olteanv@gmail.com, conor+dt@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, lee@kernel.org, neil.armstrong@linaro.org, mfd@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260810-zx29clk-v10-10-63846490712c@gmail.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810-zx29clk-v10-10-63846490712c@gmail.com>
Date: Mon, 10 Aug 2026 07:10:53 +0000
Message-Id: <20260810071054.67B941F000E9@smtp.kernel.org>
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
Cj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIETDtnNpbmdlciA8c3RlZmFuZG9lc2luZ2VyQGdtYWls
LmNvbT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMgcGF0Y2ggYW5kIGZvdW5kIG5vIGlzc3Vl
cy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODEwLXp4MjljbGstdjEwLTAtNjM4NDY0OTA3MTJjQGdt
YWlsLmNvbT9wYXJ0PTEwCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
