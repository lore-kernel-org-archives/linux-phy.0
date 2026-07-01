Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F30F6C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 23:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5huQbFExVBf8CqPW59IfjYjHA8/cY2ki3YRx55M/gjU=; b=hTKwZBC6HNDpm6
	8ex2UFduNYLCM3K6teNeJk1o+JTonGIASIS641zziSdyCtVbDvRfESrrST/3Wg+KRwrtrGwqYr1j0
	6SbIZ890OqGzqCdP1Hlq0t5M4hxsA7ZKe5eGQnCTkclN8QRTw9nigMMfBl/iUdZs0wZvw7SQY86dI
	cWQxshhEhTKySWnWBgH3zytTx174LwR5LfesMcOOOwv47MuDjakCTZNYRNMtfIt/AOcuzxWL3Kanr
	dM2zMUFGkKMyS6DX3Zt0E/PZhwNql4glWG9SgJ4HzClR0Zil5X8X05E33aUC1lqSDsu0quy+P4QKc
	eKowjHVz6np1OeWts8uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4qG-00000003G1O-3BV9;
	Wed, 01 Jul 2026 23:59:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4qF-00000003G15-1rIm
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 23:59:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DD8DB600AF;
	Wed,  1 Jul 2026 23:59:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DB6F1F000E9;
	Wed,  1 Jul 2026 23:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782950382;
	bh=gJi862FfvBLrfFNrclBDTwE6ISz+czGKhEhxq9xpjJE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PnT+f5cZfGwmMK4Eh90O5pYu6JJp1VZN6rrN03/408UTBCB/ArCeDqCANua1IQjDy
	 BbvmawD2Nf4+dyPhxnKIa6VBuVCYuH3IfRsNvtLQQsaA7He0Y1p+H6vyIoItJLhqZl
	 mNWd4gOJExWsKaO8DGRZujWBkcxRPT7B6qgo0Ks4OjEqyyG2AN4ozsK4FguFDhkkYj
	 gmWzR+CuQ6PA5q5TkUCWzkfH0avpUCqE7HrgDLu6Q3/6zPR9+moK0OQ97sF69NEOl7
	 i2PV3pjk/ea04sko1ATCJRTzEWl+Ziskx0hbQe6d8nvYZeBnGdzvOr4WDwsadqx0w+
	 DBYWTz1S/RA2g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 13/38] phy: rockchip: usbdp: Limit DP lane count to
 muxed lanes
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260702-rockchip-usbdp-cleanup-v9-13-e31efbb62d2e@collabora.com>
References: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
 <20260702-rockchip-usbdp-cleanup-v9-13-e31efbb62d2e@collabora.com>
Date: Wed, 01 Jul 2026 23:59:41 +0000
Message-Id: <20260701235942.1DB6F1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBJbmNvbXBsZXRlIGZpeDogdGhlIGFkZGVkIERQIGxhbmUgY291bnQgdmFsaWRhdGlv
biBpcyBieXBhc3NlZCB3aGVuIHVwZGF0aW5nIHZvbHRhZ2VzLCBsZWFkaW5nIHRvIFVTQjMgUEhZ
IGNvcnJ1cHRpb24uCi0tCgpjb21taXQgZTM5MzBlOGMyMjcxNjczZmIxODY5ZDdjNDNhMzNhNjVj
M2UxMDk4NwpBdXRob3I6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xs
YWJvcmEuY29tPgoKcGh5OiByb2NrY2hpcDogdXNiZHA6IExpbWl0IERQIGxhbmUgY291bnQgdG8g
bXV4ZWQgbGFuZXMKClRoaXMgY29tbWl0IGFkZHMgYSBjaGVjayB0byBsaW1pdCB0aGUgRGlzcGxh
eVBvcnQgbGFuZSBjb3VudCB0byB0aGUgbnVtYmVyCm9mIG11eGVkIGxhbmVzLiBUaGlzIGVuc3Vy
ZXMgdGhlIERQIGNvbnRyb2xsZXIgY2Fubm90IGNvbmZpZ3VyZSA0IGxhbmVzCndoZW4gdGhlIFBI
WSBpcyByZXN0cmljdGVkIHRvIDIgbGFuZXMsIHByb3RlY3RpbmcgVVNCMyBmdW5jdGlvbmFsaXR5
LgoKTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcGh5LzIwMjYwNjEyMTY1NTQ2
Ljk4RTFGMUYwMDBFOUBzbXRwLmtlcm5lbC5vcmcvCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Bo
eS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggZGExNTE3OGQ3ZjE2ZS4uMGNmZDIzYTQwNWNiMCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+
ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gQEAgLTEx
MzQsNiArMTEzNCw5IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfZHBfcGh5X3ZlcmlmeV9saW5rX3Jh
dGUoc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSwKPiAgc3RhdGljIGludCBya191ZHBoeV9kcF9waHlf
dmVyaWZ5X2xhbmVzKHN0cnVjdCBya191ZHBoeSAqdWRwaHksCj4gIAkJCQkJc3RydWN0IHBoeV9j
b25maWd1cmVfb3B0c19kcCAqZHApCj4gIHsKPiArCWlmIChkcC0+bGFuZXMgPiB1ZHBoeS0+ZHBf
bGFuZXMpCj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlz
IGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyB0aGlzIHZhbGlkYXRpb24gZnVsbHkgcHJv
dGVjdCBhZ2FpbnN0ClVTQjMgbGFuZSBjb3JydXB0aW9uPwoKVGhpcyBjaGVjayBpcyBwbGFjZWQg
aW4gcmtfdWRwaHlfZHBfcGh5X3ZlcmlmeV9sYW5lcygpLCB3aGljaCBpcyBvbmx5CmV4ZWN1dGVk
IHdoZW4gZHAtPnNldF9sYW5lcyBpcyB0cnVlLiAKCklmIGEgVHlwZS1DIG11eCBzd2l0Y2ggcmVk
dWNlcyB1ZHBoeS0+ZHBfbGFuZXMgZnJvbSA0IHRvIDIsIGJ1dCBhbiBvbmdvaW5nCkRQIGxpbmsg
dHJhaW5pbmcgbG9vcCBzdWJzZXF1ZW50bHkgY2FsbHMgcGh5X2NvbmZpZ3VyZSgpIHdpdGgKZHAt
PnNldF92b2x0YWdlcyA9IDEgYW5kIGRwLT5zZXRfbGFuZXMgPSAwLCB0aGlzIG5ldyBjaGVjayBp
cyBza2lwcGVkLgoKVGhlIHZvbHRhZ2UgY29uZmlndXJhdGlvbiBsb29wIGluIHJrX3VkcGh5X2Rw
X3BoeV9jb25maWd1cmUoKSB3aWxsIHRoZW4KaXRlcmF0ZSB1c2luZyB0aGUgc3RhbGUgdWRwaHkt
PmxhbmVzIGNvdW50OgoKZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmM6
cmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpIHsKICAgIC4uLgogICAgaWYgKGRwLT5zZXRfdm9s
dGFnZXMpIHsKICAgICAgICBmb3IgKGkgPSAwOyBpIDwgdWRwaHktPmxhbmVzOyBpKyspIHsKICAg
IC4uLgp9CgpDb3VsZCB0aGlzIHN0aWxsIHdyaXRlIERQIGNvbmZpZ3VyYXRpb25zIGludG8gUE1B
IHJlZ2lzdGVycyBjb3JyZXNwb25kaW5nIHRvCmxhbmVzIDIgYW5kIDMsIHdoaWNoIGFyZSBhY3Rp
dmVseSBhc3NpZ25lZCB0byBVU0IzPyBFdmVuIGFmdGVyIGxhdGVyIGNvbW1pdHMKYWRkIGEgbXV0
ZXggdG8gcmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpLCB1ZHBoeS0+bGFuZXMgZG9lc24ndCBh
cHBlYXIgdG8gYmUKY2xhbXBlZCB0byBtYXRjaCB1ZHBoeS0+ZHBfbGFuZXMgZHVyaW5nIHZvbHRh
Z2Utb25seSB1cGRhdGVzLgoKPiAgCXN3aXRjaCAoZHAtPmxhbmVzKSB7Cj4gIAljYXNlIDE6Cj4g
IAljYXNlIDI6CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwNzAyLXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjktMC1lMzFlZmJiNjJk
MmVAY29sbGFib3JhLmNvbT9wYXJ0PTEzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
