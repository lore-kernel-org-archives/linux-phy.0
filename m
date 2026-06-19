Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09250CD4F26
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jun 2026 15:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqxueCWyzTPlxXstruVrzQoRzu5evR1g/srjapHe5uw=; b=OHnKixUc+oY5+K
	eBIshdZ0dWekbaaTCh+OQAd650S+Op7gwhDSHCtROBQ/Lds6T6XinIosC9s+RkuL/mcUh64yV9ZCr
	kpg/ofi0qu1E0M5/LyaUzhvLD/WaeibzXoJRQ2f+1tbwiMpGZearh71QtpAm5q4HRAAP+LZ7LSHKz
	CfHuPphsIvBP1wNMX55vjH2IyIqRmVPqdoZ7MgzLIzxh4WQQde+dqMY0HIdj9PLGvJ34C1MHgnh6x
	7Nd5WLlAmxJiIXgmdlyWPIg+iAE3/cudv3xKL/uzZZCMH02ioelml4M1pe4XsEQ18Gf5959ZnrQzn
	f77rdRJ+BIvltH6eRUsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabSr-00000002irg-30L7;
	Fri, 19 Jun 2026 15:49:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabSq-00000002irR-1QVv
	for linux-phy@lists.infradead.org;
	Fri, 19 Jun 2026 15:49:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C4B1E601E1;
	Fri, 19 Jun 2026 15:49:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2225A1F000E9;
	Fri, 19 Jun 2026 15:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781884143;
	bh=fs248ZtmCWHxz8JyKDVma/eFwS9PEcpqwK8zqoCy6sM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CO6a8JZaK9syYcZGMFm0CwVwPyZoIO5rPeQhfuqioBW36dyC9S/Dolx1H90ixRvzf
	 aSbtk9SXRGud/30NrQHHe0jNFnYfliGqY2uXNXkyyUhqn0G4hRkN/Ql37Tb1qReUaR
	 1qpjjoKZaJVHRT5yNhqyGuGWOAwTx/wiAx7Loba10PD4Js/k48My0IfHnLWvV1/70y
	 5e5SebNnmKMLB5mpg6lWQ/oMV+UXXjEwQyPhUxPhteee1dLls7trFv0hGvtpg1P0h1
	 M9+AhFkbVXBVBPVNM3NXZooyMy8PKZmWBbNp52GGVkz3VlxCWSAlQhTja3eOQ28Ft3
	 A9c6niJkS/MhA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 02/23] phy: rockchip: usbdp: Update mode_change after
 error handling
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: vkoul@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260619-rockchip-usbdp-cleanup-v6-2-3bb1f54b3f35@collabora.com>
References: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
 <20260619-rockchip-usbdp-cleanup-v6-2-3bb1f54b3f35@collabora.com>
Date: Fri, 19 Jun 2026 15:49:02 +0000
Message-Id: <20260619154903.2225A1F000E9@smtp.kernel.org>
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
IFtDcml0aWNhbF0gU3lzdGVtIGNyYXNoIGR1ZSB0byBjb25jdXJyZW50IE1NSU8gYWNjZXNzIGFm
dGVyIFBIWSByZWluaXRpYWxpemF0aW9uIGZhaWx1cmUuCi0gW0hpZ2hdIFN0YXRlIGRlc3luYyBh
bmQgcmVzb3VyY2UgbGVhayBpbiBQSFkgbW9kZSB0cmFja2luZyBkdXJpbmcgVHlwZS1DIHJvbGUg
dHJhbnNpdGlvbnMuCi0tCgpjb21taXQgZTcwODJkOTIyMzBlYjc1YWZmOGE5ZTA2YzIwZDk2YjRk
NTQ4ZTM0YwpBdXRob3I6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xs
YWJvcmEuY29tPgpTdWJqZWN0OiBwaHk6IHJvY2tjaGlwOiB1c2JkcDogVXBkYXRlIG1vZGVfY2hh
bmdlIGFmdGVyIGVycm9yIGhhbmRsaW5nCgpJZiBya191ZHBoeV9pbml0KCkgb3IgcmtfdWRwaHlf
c2V0dXAoKSBmYWlscywgdGhlIHJlaW5pdCB3aWxsIG5vdCBiZQp0cmllZCBhZ2Fpbi4gRml4IHRo
aXMgYnkgb25seSB1cGRhdGluZyB0aGUgdmFyaWFibGUgYWZ0ZXIgYWxsIHBvdGVudGlhbAplcnJv
cnMgaGF2ZSBiZWVuIGhhbmRsZWQuCgpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51
eC1waHkvMjAyNjA2MTIxNjM4MzUuOEQ1NDcxRjAwMEU5QHNtdHAua2VybmVsLm9yZy8KCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBpbmRleCBmYmEzNTUxMGQ4
OGNlLi5hNWZmZGY3YTZlNzZiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tj
aGlwLXVzYmRwLmMKPiBAQCAtMTAwMCwxNSArMTAwMCwxNCBAQCBzdGF0aWMgaW50IHJrX3VkcGh5
X3Bvd2VyX29uKHN0cnVjdCBya191ZHBoeSAqdWRwaHksIHU4IG1vZGUpCj4gIAl9Cj4gIAo+ICAJ
aWYgKHVkcGh5LT5zdGF0dXMgPT0gVURQSFlfTU9ERV9OT05FKSB7CgpbU2V2ZXJpdHk6IEhpZ2hd
ClRoaXMgaXNuJ3QgYSBidWcgaW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgSSBoYXZlIGEg
cXVlc3Rpb24gYWJvdXQgaG93ClBIWSBtb2RlIHRyYW5zaXRpb25zIGFyZSB0cmFja2VkIHdoZW4g
dGhlIFR5cGUtQyBtdXggc3dpdGNoZXMgZnJvbSBhIHN0YXRlCndpdGggVVNCIChsaWtlIERQK1VT
QikgdG8gYSBzdGF0ZSB3aXRob3V0IGl0IChsaWtlIERQLW9ubHkpLgoKSW4gdGhpcyBzY2VuYXJp
bywgdGhlIG1vZGUgdmFyaWFibGUgZ2V0cyB1cGRhdGVkLCBidXQgdGhlIFVTQiBmbGFnIGlzIG5v
dApjbGVhcmVkIGZyb20gdGhlIHN0YXR1cyBmaWVsZC4gTGF0ZXIsIHdoZW4gdGhlIFVTQiBzdWJz
eXN0ZW0gY2FsbHMKcmtfdWRwaHlfdXNiM19waHlfZXhpdCgpLCBpdCBzZWVzIHRoYXQgdGhlIGN1
cnJlbnQgbW9kZSBsYWNrcyB0aGUgVVNCIGZsYWcKYW5kIHJldHVybnMgZWFybHkuIFRoaXMgYnlw
YXNzZXMgcmtfdWRwaHlfcG93ZXJfb2ZmKCkuCgpEb2VzIHRoaXMgbWVhbiB0aGUgVVNCIGZsYWcg
aXMgcGVybWFuZW50bHkgbGVha2VkIGluIHRoZSBzdGF0dXMgZmllbGQ/IElmCnRoZSByZW1haW5p
bmcgRFAgY29uc3VtZXIgc3Vic2VxdWVudGx5IHBvd2VycyBvZmYsIGl0IHNlZW1zIHRoZSBzdGF0
dXMgd291bGQKc3RpbGwgY29udGFpbiB0aGUgVVNCIGZsYWcsIHByZXZlbnRpbmcgdGhlIGRyaXZl
ciBmcm9tIHByb3Blcmx5IHNodXR0aW5nCmRvd24gdGhlIGhhcmR3YXJlIGFuZCBsZWF2aW5nIEFQ
QiBjbG9ja3MgYWN0aXZlLgoKPiAgCQlyZXQgPSBya191ZHBoeV9zZXR1cCh1ZHBoeSk7Cj4gIAkJ
aWYgKHJldCkKPiAgCQkJcmV0dXJuIHJldDsKPiAgCj4gIAkJaWYgKHVkcGh5LT5tb2RlICYgVURQ
SFlfTU9ERV9VU0IpCj4gIAkJCXJrX3VkcGh5X3UzX3BvcnRfZGlzYWJsZSh1ZHBoeSwgZmFsc2Up
Owo+IC0JfSBlbHNlIGlmICh1ZHBoeS0+bW9kZV9jaGFuZ2UpIHsKPiAgCQl1ZHBoeS0+bW9kZV9j
aGFuZ2UgPSBmYWxzZTsKPiArCX0gZWxzZSBpZiAodWRwaHktPm1vZGVfY2hhbmdlKSB7Cj4gIAkJ
dWRwaHktPnN0YXR1cyA9IFVEUEhZX01PREVfTk9ORTsKPiAgCQlpZiAodWRwaHktPm1vZGUgPT0g
VURQSFlfTU9ERV9EUCkKPiAgCQkJcmtfdWRwaHlfdTNfcG9ydF9kaXNhYmxlKHVkcGh5LCB0cnVl
KTsKPiBAQCAtMTAxNyw2ICsxMDE2LDcgQEAgc3RhdGljIGludCBya191ZHBoeV9wb3dlcl9vbihz
dHJ1Y3QgcmtfdWRwaHkgKnVkcGh5LCB1OCBtb2RlKQo+ICAJCXJldCA9IHJrX3VkcGh5X3NldHVw
KHVkcGh5KTsKPiAgCQlpZiAocmV0KQo+ICAJCQlyZXR1cm4gcmV0OwoKW1NldmVyaXR5OiBDcml0
aWNhbF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IHdoYXQgaGFwcGVucyBpZiB0
aGUgc2V0dXAgb3IgaW5pdCBmYWlscwpoZXJlIGR1cmluZyBhIFR5cGUtQyBvcmllbnRhdGlvbiBj
aGFuZ2U/CgpJZiBya191ZHBoeV9pbml0KCkgZmFpbHMgZHVlIHRvIHNvbWV0aGluZyBsaWtlIGFu
IExDUExMIGxvY2sgdGltZW91dCwgaXQKYXNzZXJ0cyBhbGwgcmVzZXRzLCBpbmNsdWRpbmcgdGhl
IEFQQiByZXNldHMsIGJlZm9yZSByZXR1cm5pbmcgdGhlIGVycm9yLgpUaGlzIGZ1bmN0aW9uIHRo
ZW4gcHJvcGFnYXRlcyB0aGF0IGVycm9yLCBidXQgaXQgZG9lc24ndCByZXN0b3JlIHRoZSBwcmlv
cgpzdGF0ZSBvZiBzaWJsaW5nIFBIWXMgKGxpa2UgRFApIHdoaWNoIG1pZ2h0IGFscmVhZHkgYmUg
YWN0aXZlLgoKU2luY2UgdGhlIERQIGZyYW1ld29yayB3b3VsZCBzdGlsbCBjb25zaWRlciB0aGUg
UEhZIGFjdGl2ZSwgY291bGQgaXQKc3Vic2VxdWVudGx5IGludm9rZSBya191ZHBoeV9kcF9waHlf
Y29uZmlndXJlKCk/IElmIHRoYXQgaGFwcGVucyBhbmQgaXQKYXR0ZW1wdHMgTU1JTyBhY2Nlc3Mg
dG8gdGhlIFBNQSByZWdtYXAgd2hpbGUgdGhlIEFQQiBidXMgcmVzZXQgaXMgc3RpbGwKYXNzZXJ0
ZWQsIHdvdWxkIHRoaXMgdHJpZ2dlciBhIGJ1cyBoYW5nIGFuZCBhIGtlcm5lbCBwYW5pYz8KCj4g
KwkJdWRwaHktPm1vZGVfY2hhbmdlID0gZmFsc2U7Cj4gIAl9Cj4gIAo+ICAJdWRwaHktPnN0YXR1
cyB8PSBtb2RlOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDYxOS1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXY2LTAtM2JiMWY1NGIz
ZjM1QGNvbGxhYm9yYS5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
