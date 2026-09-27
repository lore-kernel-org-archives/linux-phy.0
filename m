Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F26D7C98338
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 20:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TDC0kGhkltgdaEcT0QHMNEPuC4Vx5f7vimO3PbkNYlQ=; b=LsAyYLuO7sG6oe
	+pJD8smCFxj34uoTMIsCchAcXv92ojk/5FM7RgXAVuHLGg19B64p3zAy1r9zPo+iU5qVBkoL7Cf9o
	mEGhOY9QuBCHQbfvhBqzJdGvtwDHnRzxpFQFhZanYKTzDd8PjXAkGZi2fO2NW0rUV9Oey0mO70pcF
	l0c+jDIcXzLfqk1sFY86A6w6/cB5qgdM5B/3ft4TWisr2Xs6ZyPaU7I5Y/Gc/s1vEsMd/4gyqdEkE
	oiCtWhuaOXyapZ+VnpS+5WYSRtc4Q0U90hNb7STqojajrVHd0L0csr1ph1BZbMAR7k2Cv6QtHqppY
	zHLnVlWK6BeUOye/fFBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvxU-0000000GrGn-2oXF;
	Sun, 27 Sep 2026 20:58:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvxS-0000000GrGf-41LX
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 20:58:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 45B554380B;
	Sun, 27 Sep 2026 20:58:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93BE61F000FF;
	Sun, 27 Sep 2026 20:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790542730;
	bh=iXbcC/Cf4LHMX6pHrQF6Lxpp8Q7lOS9FY/DTUB0VYYE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Jb1B7jCwzDQRZHmt5xcGDQsJgTccU8OT+DHFjTP3kSTqjmvBTy51UttuxOeq96UwP
	 GDDZ3dTLAJbxOvs674caYRoxPs0ruMTtxzSACEHuqGOuEewC0qPeLKh83svTuloLHp
	 +ZZ9tEzGHUDYuIXmL+r6gapJGb1D07tPGDbjAGxcnlbZC8D4GBJkKtpcsru0m7YBan
	 9ujMh20/Nho0jrLx3SAeM2MrXQQFF1OBQicA76MYqiqdMpUNpgaVOK144m3m7mIfe+
	 0Lg22js+sBpondVU8DLmqNWeEJF3//d6wXJQSyvZa5lw1tpwYcvAV4pGbWNfAcdAD5
	 N49DBJixpY8+A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 11/13] clk: zte: Introduce a driver for zx297520v3
 LSP clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: conor+dt@kernel.org, vkoul@kernel.org, lee@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, mfd@lists.linux.dev, neil.armstrong@linaro.org
In-Reply-To: <20260927-zx29clk-v13-11-70d8f673386c@gmail.com>
References: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
 <20260927-zx29clk-v13-11-70d8f673386c@gmail.com>
Date: Sun, 27 Sep 2026 20:58:49 +0000
Message-Id: <20260927205849.93BE61F000FF@smtp.kernel.org>
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
Iy9wYXRjaHNldC8yMDI2MDkyNy16eDI5Y2xrLXYxMy0wLTcwZDhmNjczMzg2Y0BnbWFpbC5jb20/
cGFydD0xMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
