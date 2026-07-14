Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 923EFC43458
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 20:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=okcU/mxjkIu47s6dlXMTyJ/Rv3kp0LompEajoE+X0KY=; b=CwG5jUTQ5KnwTa
	coIf4NrjyIO53p+jrTvdZSIDGmb2zdKfwOaMd5d5QTAkuEvIfgoIMdS17m0YRAzqe79n4osXDE5sj
	SsMVWb88EPlSPFWj9/1CmR8p1lg5G7XPY5k7t7ieT27DJ+toDWXwcShQJ1b+shEuHAZqDtpjoAype
	/CCZEvb7BD3zx6iWMtt97fHSmiBt5wyj6fX7F0VqCieq6mWp9xHxNcEnFhKYbYeK06HCl5GcKYP24
	cB1BN8mqHqhBob4yD24sN84NqlbTv7NiG6k3QukUPQaCNpmnkp6kNdWgok9WM39ZZG117f+AHvGZS
	wU0cfJZbRhtNTyfklUrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjSI-0000000DC7g-1FYc;
	Tue, 14 Jul 2026 20:10:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjSH-0000000DC7K-1bCa
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 20:10:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CF6BF601D9;
	Tue, 14 Jul 2026 20:10:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 134881F000E9;
	Tue, 14 Jul 2026 20:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784059812;
	bh=zrJKkcP3X4Aez9RcBpHL8hL0/bSOM339BosYqe6jOKY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UUl4tImbX0fohsle+g48eF0o3joAe7wZKbGPZY9cI46V1kPt7XnqtLkVnGteg4IbZ
	 IDlV6SfTR0z0YnII2wyhdycYy6v0j94yyJPLCb1hmbNrvIjdeCgFZRQciemlRaNH6t
	 344LwWXb5j5s62TK0JweNLDZk+Tvq9xzbrAYOyYu5u+8WKQGtA4gpc/bNrFtveY+U6
	 jSPkS3mrhM4onddS1r/xqtRvx7uJhk1YBl43a32neHxDyXPcwYtU9iIWLP/DUBSqtr
	 H2Ir62YVIIq73SVJQyqAHvU7eMtU1qC2ehsfoaSwp58Nrfl9VDmC/GToo/3yLK5BNc
	 WlAoDfoxZfelA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 28/35] phy: core: add notifier infrastructure
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-28-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-28-6cb3e769d4c5@collabora.com>
Date: Tue, 14 Jul 2026 20:10:11 +0000
Message-Id: <20260714201012.134881F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzc2luZyByb2xs
YmFjayBtZWNoYW5pc20gaW4gUEhZIHJlc2V0IG5vdGlmaWVyIGNoYWluCi0tCgotLS0gUGF0Y2gg
WzI4XTogW1BBVENIIHYxMyAyOC8zNV0gcGh5OiBjb3JlOiBhZGQgbm90aWZpZXIgaW5mcmFzdHJ1
Y3R1cmUgLS0tCmNvbW1pdCBlYzYwYjdiYTQxYzI2MTY1NGM0OGZiNTY1NDZiNmI0MmY5MTNmNmU1
CkF1dGhvcjogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5j
b20+CgpwaHk6IGNvcmU6IGFkZCBub3RpZmllciBpbmZyYXN0cnVjdHVyZQoKVGhpcyBjb21taXQg
aW50cm9kdWNlcyBhIG5ldyBQSFkgbm90aWZpZXIgQVBJIHRvIGFsbG93IGNvbnN1bWVyIGRyaXZl
cnMgdG8KaG9vayBpbnRvIHJlc2V0IGV2ZW50cyBmcm9tIGEgUEhZIGRldmljZS4gVGhpcyBoZWxw
cyBtdWx0aS1wb3J0IFBIWSBkZXZpY2VzCmhhbmRsZSBjb25maWd1cmF0aW9uIG9yIGNhYmxlIG9y
aWVudGF0aW9uIGNoYW5nZXMgd2l0aG91dCBjYXVzaW5nIHVuZGVmaW5lZApiZWhhdmlvciBpbiBj
b25zdW1lcnMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktY29yZS5jIGIvZHJpdmVy
cy9waHkvcGh5LWNvcmUuYwo+IGluZGV4IDIxYWFmMmY3NmU1M2UuLjUxZDI2MWRhYWU3YTkgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3Bo
eS1jb3JlLmMKClsgLi4uIF0KCj4gK2ludCBwaHlfbm90aWZ5X3Jlc2V0KHN0cnVjdCBwaHkgKnBo
eSwgZW51bSBwaHlfbm90aWZpY2F0aW9uIGV2ZW50KQo+ICt7Cj4gKwlpbnQgcmV0Owo+ICsKPiAr
CWlmICghcGh5KQo+ICsJCXJldHVybiAwOwo+ICsKPiArCXJldCA9IGJsb2NraW5nX25vdGlmaWVy
X2NhbGxfY2hhaW4oJnBoeS0+bm90aWZpZXIsIGV2ZW50LCBwaHkpOwo+ICsJcmV0dXJuIG5vdGlm
aWVyX3RvX2Vycm5vKHJldCk7Cj4gK30KCltTZXZlcml0eTogTWVkaXVtXQpTaW5jZSBibG9ja2lu
Z19ub3RpZmllcl9jYWxsX2NoYWluKCkgYWJvcnRzIG9uIHRoZSBmaXJzdCBlcnJvciwgZG9lcyB0
aGlzCmxlYXZlIGVhcmxpZXIgY29uc3VtZXJzIHBlcm1hbmVudGx5IHN1c3BlbmRlZD8KCklmIHBo
eV9ub3RpZnlfcmVzZXQoKSBpcyBjYWxsZWQgd2l0aCBQSFlfTk9USUZZX1BSRV9SRVNFVCBvbiBh
IG11bHRpLWNvbnN1bWVyClBIWSwgYW5kIHRoZSBub3RpZmllciBjaGFpbiBzdG9wcyBoYWxmd2F5
IHRocm91Z2ggZHVlIHRvIGFuIGVycm9yLCB0aGUgcHJvdmlkZXIKcmVjZWl2ZXMgYSBuZWdhdGl2
ZSBlcnJvciBjb2RlLiBUaGUgZWFybGllciBjb25zdW1lcnMgaW4gdGhlIGNoYWluIHdpbGwgaGF2
ZQphbHJlYWR5IGhhbmRsZWQgUEhZX05PVElGWV9QUkVfUkVTRVQgYW5kIHF1aWVzY2VkIHRoZWly
IGhhcmR3YXJlLgoKV291bGQgaXQgYmUgc2FmZXIgdG8gaW50cm9kdWNlIGEgcm9sbGJhY2sgbWVj
aGFuaXNtIHRvIG5vdGlmeSB0aGUgc3VjY2Vzc2Z1bGx5CnN1c3BlbmRlZCBjb25zdW1lcnMgdGhh
dCB0aGUgcmVzZXQgaGFzIGJlZW4gYWJvcnRlZCwgc28gdGhleSBkb24ndCByZW1haW4Kc3R1Y2sg
aW5kZWZpbml0ZWx5PwoKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9waHkvcGh5LmggYi9p
bmNsdWRlL2xpbnV4L3BoeS9waHkuaAo+IGluZGV4IGVhNDc5NzVlMjg4YWUuLjM3NzlhNGQwYTAy
YzMgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9waHkvcGh5LmgKPiArKysgYi9pbmNsdWRl
L2xpbnV4L3BoeS9waHkuaAoKWyAuLi4gXQoKPiArLyoqCj4gKyAqIGVudW0gcGh5X25vdGlmaWNh
dGlvbiAtIFBIWSBub3RpZmljYXRpb24gZXZlbnRzCj4gKyAqIEBQSFlfTk9USUZZX1BSRV9SRVNF
VDogUEhZIGlzIGFib3V0IHRvIGJlIHJlc2V0LCBjb25zdW1lcnMgc2hvdWxkIHF1aWVzY2UKPiAr
ICogQFBIWV9OT1RJRllfUE9TVF9SRVNFVDogUEhZIHJlc2V0IGlzIGNvbXBsZXRlLCBjb25zdW1l
cnMgbWF5IHJlc3VtZQo+ICsgKi8KPiArZW51bSBwaHlfbm90aWZpY2F0aW9uIHsKPiArCVBIWV9O
T1RJRllfUFJFX1JFU0VULAo+ICsJUEhZX05PVElGWV9QT1NUX1JFU0VULAo+ICt9OwoKW1NldmVy
aXR5OiBNZWRpdW1dCklzIHRoZXJlIGEgbWlzc2luZyBhYm9ydCBldmVudCBoZXJlIHRvIHN1cHBv
cnQgdGhlIHJvbGxiYWNrIHBhdGggbWVudGlvbmVkCmFib3ZlPwoKSWYgYSBwcmUtcmVzZXQgbm90
aWZpY2F0aW9uIGZhaWxzLCBicm9hZGNhc3RpbmcgUEhZX05PVElGWV9QT1NUX1JFU0VUIG1pZ2h0
CmJyZWFrIGNvbnN1bWVycyB0aGF0IHdlcmUgbmV2ZXIgbm90aWZpZWQgb2YgdGhlIHByZS1yZXNl
dCBpbiB0aGUgZmlyc3QgcGxhY2UuCkFkZGluZyBhIGRlZGljYXRlZCBhYm9ydCBldmVudCBtaWdo
dCBnaXZlIGNvbnN1bWVycyBhIHNhZmUgd2F5IHRvIHJlY292ZXIgd2hlbgphIHByb3ZpZGVyIGhh
cyB0byBjYW5jZWwgYSBwbGFubmVkIHJlc2V0LgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcxNC1yb2NrY2hpcC11c2JkcC1jbGVh
bnVwLXYxMy0wLTZjYjNlNzY5ZDRjNUBjb2xsYWJvcmEuY29tP3BhcnQ9MjgKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
