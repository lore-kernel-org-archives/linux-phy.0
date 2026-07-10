Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11183C43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 21:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XJ1aNQ8bs41xMhaZBOlsHS/7IbX2RWd1QfdZGzEno7I=; b=yl7qZhVXHhr+Jp
	tiKc7GwYh1WsfejUzB0bNtVCLkQhXIwMWs6LhmNpR7mVM8TDyk/deQ9i7HjzhJEvu63L8gDv2bbwU
	3RRqNdqlvbP4s++Mp/jFvrQBfsY4fxlpWnBHF7jBkGnmyYCQBX/C4nerRHIb3n1tbSUmyldG5eb3T
	JPAG7klhtO89i8IzD0lyTEuIlzwjrlVN1h8kP5aaoZOVngc5JYGYvAJsYYjGYIPwYRQBMVKUivWJG
	I4ZSrPNDCVn8Ma3yjP1lsJWQNxH2zxr4IGBTYGAm0TVe3fJw48JOJ3Bcq2xsYXhAm4DjPFyd7Q31n
	qDsd5D/1b84MGxJspSOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiISg-00000005ldL-3GT2;
	Fri, 10 Jul 2026 21:08:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiISf-00000005ld1-0Hkd
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 21:08:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 85226600C3;
	Fri, 10 Jul 2026 21:08:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD6821F00A3A;
	Fri, 10 Jul 2026 21:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783717720;
	bh=5znRkjOiaWb6d47mql8YBzFgqWg2ATySWumk0S3yWUw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Da5yIo8xUc+aAVAQ5HjXDu9LSmfZEiDjGEfsz7kfTG+a3hWkaLrAiitCV60LllFif
	 L5dvlt7zh8L1wyrktuGSWJ70iQle00McyCyc+K1c0eeBo4aCfsr8Fl+13esFkTUON5
	 iVp1bujA2ADwmT4yIr2IS6cIPrcgE3BJuHJ+qjgbCgsZaFH6NhPbouc9nuKMFp8SFT
	 q5Z9U5fSJPe2HnrRyQ0/TkZtOXPYOtsm6AetqruWD3EhcQIlL/A3/8gXpDWfy1El3C
	 ECzY2IWbWPOCrvW+M9IyxvEufGkSFqtAFeiQb11rLxgKlxNxhAmQDlMuw6UefmY/jC
	 /O1DuXGct5WRA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 12/36] phy: rockchip: usbdp: Limit DP lane count to
 muxed lanes
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-12-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-12-8b41a9a9bef0@collabora.com>
Date: Fri, 10 Jul 2026 21:08:39 +0000
Message-Id: <20260710210839.BD6821F00A3A@smtp.kernel.org>
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

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBNaXNzaW5nIGxvY2sgLyBkYXRhIHJhY2Ugb24gc2hhcmVkIGRyaXZlciBzdGF0ZSBk
dXJpbmcgUEhZIGNvbmZpZ3VyYXRpb24KLSBbSGlnaF0gSW5jb21wbGV0ZSBmaXg6IERQIGxhbmUg
Ym91bmRzIGNoZWNrIGlzIGJ5cGFzc2VkIGR1cmluZyB2b2x0YWdlLW9ubHkgY29uZmlndXJhdGlv
bnMKLS0KCi0tLSBQYXRjaCBbMTJdOiBbUEFUQ0ggdjEyIDEyLzM2XSBwaHk6IHJvY2tjaGlwOiB1
c2JkcDogTGltaXQgRFAgbGFuZSBjb3VudCB0byBtdXhlZCBsYW5lcyAtLS0KY29tbWl0IGYzNDNh
ZmZkNmM0YTM1OTllYTg5NTVmYTI3ZTA3MTc0ZmVmNTFlYjUKQXV0aG9yOiBTZWJhc3RpYW4gUmVp
Y2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVz
YmRwOiBMaW1pdCBEUCBsYW5lIGNvdW50IHRvIG11eGVkIGxhbmVzCgpUaGlzIHBhdGNoIGFkZHMg
YSBjaGVjayB0byBlbnN1cmUgdGhlIERQIGNvbnRyb2xsZXIgZG9lcyBub3QgcmVxdWVzdCBtb3Jl
CmxhbmVzIHRoYW4gdGhlIFBIWSBpcyBjb25maWd1cmVkIHRvIHN1cHBvcnQuIFRoaXMgcHJvdGVj
dHMgYWdhaW5zdCBVU0IzCnVzYWdlIGNvcnJ1cHRpb24uCgpMaW5rOiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9saW51eC1waHkvMjAyNjA2MTIxNjU1NDYuOThFMUYxRjAwMEU5QHNtdHAua2VybmVs
Lm9yZy8KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11
c2JkcC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBpbmRl
eCBjNGQ2MmIyMzRlYTgwLi5iMTcyY2U2YTcyMmVlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBAQCAtMTA5OSw2ICsxMDk5LDkgQEAgc3RhdGljIGlu
dCBya191ZHBoeV9kcF9waHlfdmVyaWZ5X2xpbmtfcmF0ZShzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5
LAo+ICBzdGF0aWMgaW50IHJrX3VkcGh5X2RwX3BoeV92ZXJpZnlfbGFuZXMoc3RydWN0IHJrX3Vk
cGh5ICp1ZHBoeSwKPiAgCQkJCQlzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX2RwICpkcCkKPiAg
ewo+ICsJaWYgKGRwLT5sYW5lcyA+IHVkcGh5LT5kcF9sYW5lcykKPiArCQlyZXR1cm4gLUVJTlZB
TDsKPiArCgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1
dCBpcyB0aGVyZSBhIGRhdGEgcmFjZSB3aGVuIGFjY2Vzc2luZwp1ZHBoeS0+ZHBfbGFuZXMgaGVy
ZT8KCkl0IGFwcGVhcnMgdGhpcyBsb2NrbGVzcyByZWFkIGNyZWF0ZXMgYSBUT0NUT1UgdnVsbmVy
YWJpbGl0eSBhZ2FpbnN0CmNvbmN1cnJlbnQgVHlwZS1DIG1vZGUgc3dpdGNoZXMuIFRoZSBkdy1k
cCBkcml2ZXIgaW52b2tlcyBsaW5rIHRyYWluaW5nCmNvbmN1cnJlbnRseSB3aXRoIFRDUE0gVHlw
ZS1DIGV2ZW50cyBpbnZva2luZyBya191ZHBoeV90eXBlY19tdXhfc2V0KCkuCgpTaW5jZSBya191
ZHBoeV9kcF9waHlfY29uZmlndXJlKCkgYW5kIHJrX3VkcGh5X2RwX3BoeV92ZXJpZnlfbGFuZXMo
KQpyZWFkIGFuZCB3cml0ZSBzaGFyZWQgdmFyaWFibGVzIHdpdGhvdXQgYWNxdWlyaW5nIHVkcGh5
LT5tdXRleCAob25seSB0aGUKZ2VuZXJpYyBwaHktPm11dGV4IGlzIGhlbGQpOgoKZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmM6cmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3Vy
ZSgpIHsKICAgICAgICAuLi4KICAgICAgICBpZiAoZHAtPnNldF92b2x0YWdlcykgewogICAgICAg
ICAgICAgICAgZm9yIChpID0gMDsgaSA8IHVkcGh5LT5sYW5lczsgaSsrKSB7CiAgICAgICAgICAg
ICAgICAgICAgICAgIGxhbmUgPSB1ZHBoeS0+ZHBfbGFuZV9zZWxbaV07CiAgICAgICAgLi4uCn0K
CkNhbiB0aGlzIGxlYWQgdG8gaGFyZHdhcmUgUEhZIGNvcnJ1cHRpb24gaWYgRFJNIGFuZCBUQ1BN
IHVzZSBpbmRlcGVuZGVudAp3b3JrcXVldWVzIHdpdGggbm8gY29tbW9uIGxvY2s/CgpbU2V2ZXJp
dHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcgaW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQg
ZG9lcyB0aGlzIG5ldyBjaGVjayBmdWxseQpwcm90ZWN0IHRoZSB2b2x0YWdlIGNvbmZpZ3VyYXRp
b24gcGF0aD8KCklmIHRoZSBkdy1kcCBkcml2ZXIgc3BsaXRzIGxpbmsgdHJhaW5pbmcgYW5kIGZp
cnN0IGNhbGxzIHBoeV9jb25maWd1cmUoKQp3aXRoIHNldF9sYW5lcyA9IHRydWUsIGl0IGNhY2hl
cyBkcC0+bGFuZXMgaW50byB1ZHBoeS0+bGFuZXMuIAoKSWYgaXQgbGF0ZXIgY2FsbHMgaXQgd2l0
aCBzZXRfdm9sdGFnZXMgPSB0cnVlIGFuZCBzZXRfbGFuZXMgPSBmYWxzZSwgdGhpcwpib3VuZHMg
Y2hlY2sgaW4gcmtfdWRwaHlfZHBfcGh5X3ZlcmlmeV9sYW5lcygpIGlzIGJ5cGFzc2VkLgoKSWYg
YSBUeXBlLUMgZXZlbnQgcmVkdWNlcyB0aGUgYXZhaWxhYmxlIHVkcGh5LT5kcF9sYW5lcyBiZWZv
cmUgdGhlIHNlY29uZApjYWxsLCB0aGUgc2V0X3ZvbHRhZ2VzIGJsb2NrIGl0ZXJhdGVzIHVwIHRv
IHRoZSBjYWNoZWQgdWRwaHktPmxhbmVzOgoKZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tj
aGlwLXVzYmRwLmM6cmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpIHsKICAgICAgICAuLi4KICAg
ICAgICBpZiAoZHAtPnNldF92b2x0YWdlcykgewogICAgICAgICAgICAgICAgZm9yIChpID0gMDsg
aSA8IHVkcGh5LT5sYW5lczsgaSsrKSB7CiAgICAgICAgICAgICAgICAgICAgICAgIGxhbmUgPSB1
ZHBoeS0+ZHBfbGFuZV9zZWxbaV07CiAgICAgICAgLi4uCn0KCkNvdWxkIHRoaXMgb3ZlcnJpZGUg
YWN0aXZlIFVTQjMgbGFuZXMgYW5kIGNvcnJ1cHQgdGhlIFVTQjMgUEhZIHN0YXRlPwoKPiAgCXN3
aXRjaCAoZHAtPmxhbmVzKSB7Cj4gIAljYXNlIDE6Cj4gIAljYXNlIDI6CgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzEwLXJvY2tj
aGlwLXVzYmRwLWNsZWFudXAtdjEyLTAtOGI0MWE5YTliZWYwQGNvbGxhYm9yYS5jb20/cGFydD0x
MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
