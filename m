Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7184D606A321
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 18:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rhfxwj3Y;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=N5cF+hLo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=J4/G5OM7eyJDJvtv7zH3WhF5QrpNeTF5MHTwXhe451I=; b=rhfxwj3Y0afvK8M+/dlvFcQ/jA
	36nKa1nkt5TKfm9pdZzdsDZmn2IyTiJSER8xAeAFlUjz7qaoQnZd5/sYTKR1np7r9bV/q9U6dBAhj
	MdMIiac/bvW9eIdQ7+cvj0/MGJfVkq4Usl2k9e907gjmTy+iNkJyxE5DkY4MR3oey7Qs6uT3QuPqa
	RWYxVeqAAYx2QwzUOn8hP3b8RI/SRneYcs/FGkv9rSv0JZnQN0X9W6etGfJZsCal0beshOi1hPIb+
	3GEL07XvGwb9fylWP9rKXS4pZrk/Jp+iFdy/XjY6PIL6LuKV0sgkhBxwY3pbd6VBRADyPya/4hxhH
	E+dSxIGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVZ9Y-00000004aHO-0r4b;
	Mon, 23 Nov 2026 18:52:36 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVZ9U-00000004aHG-287R
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 18:52:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id ECED5611FB;
	Mon, 23 Nov 2026 18:52:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDF8E1F000CA;
	Mon, 23 Nov 2026 18:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795459951;
	bh=lstZztA1mDrFB9PHgmMDTPXyLU6CoCr0SlAF6QN7mvs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=N5cF+hLoAXbdEfg9OAUtdpa+W9up/V1euG8ChQytlr0NcTZZCcjHdGaFRU+T4PEOT
	 uGyPQGU28YUhJqOpSFOFomRWPxccePnFxBTYKIFJkhe7Rb+do1mrKzmdGlECwKhz/S
	 63Snfrck46LBTbNK3xzuHmcqzPmln7GO7qCdyOYo13o1SCSuYOmj4Ig6BB/rz/ta1n
	 VRxkL+NEvDN46UHdlgNHI7t0AJS92+det5KvUC1zTNaMmSXrWz7JdxDNJfeRjc1vL1
	 9A4rjAPpOSfVvU/cO6ppoJmcYbgaQzBW0U0qvXUTgxUvQHmkhSrXkQAt0BhJSDpnzO
	 N54bVzQdj7o5A==
Message-ID: <sashiko-outbox-229882@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/8] PCI: dwc: Export the multiplexed MSI interrupt
 handler
To: "Fil Dunsky" <filipp.dunsky@gmail.com>
Cc: linux-pci@vger.kernel.org, linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261123-b4-cs7542-pcie-v1-1-4cde5201d404@gmail.com>
References: <20261123-b4-cs7542-pcie-v1-0-4cde5201d404@gmail.com>
 <20261123-b4-cs7542-pcie-v1-1-4cde5201d404@gmail.com>
Date: Mon, 23 Nov 2026 18:52:30 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
bm8gbmV3IGlzc3VlcwppbiB0aGlzIHBhdGNoLCBidXQgbm90aWNlZCAxIHJlbGF0ZWQgcHJlLWV4
aXN0aW5nIGlzc3VlIGl0IGRvZXMgbm90CmludHJvZHVjZToKLSBbQ3JpdGljYWxdIFBDSTogZHdj
OiB1c2UtYWZ0ZXItZnJlZSBpbiBkd19wY2llX2ZyZWVfbXNpKCkgWzFdCi0tCgpjb21taXQgNzNl
Zjc1MGMyZjgwMWEzZWFmN2JmY2Y5NWUwYTViZDg4YWViZDRjMwpBdXRob3I6IEZpbCBEdW5za3kg
PGZpbGlwcC5kdW5za3lAZ21haWwuY29tPgoKUENJOiBkd2M6IEV4cG9ydCB0aGUgbXVsdGlwbGV4
ZWQgTVNJIGludGVycnVwdCBoYW5kbGVyCgpUaGlzIGNvbW1pdCBleHBvcnRzIGR3X2hhbmRsZV9t
c2lfaXJxKCkgc28gdGhhdCBtb2R1bGFyIERlc2lnbldhcmUgUENJZSBob3N0CmdsdWUgZHJpdmVy
cyBjYW4gZGlzcGF0Y2ggdGhlIGludGVybmFsIE1TSSByZWNlaXZlciBkaXJlY3RseSBmcm9tIGEg
Y29tYmluZWQKYXBwbGljYXRpb24gaW50ZXJydXB0IGhhbmRsZXIuCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtaG9zdC5jIGIvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWhvc3QuYwo+IGluZGV4IGJiYjAy
NDU4YWY1OGYuLjFkMDc2YmI2Mjc4M2MgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWhvc3QuYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1ob3N0LmMKPiBAQCAtODUsNiArODUsNyBAQCB2b2lk
IGR3X2hhbmRsZV9tc2lfaXJxKHN0cnVjdCBkd19wY2llX3JwICpwcCkKPiAgCQkJZ2VuZXJpY19o
YW5kbGVfZGVtdXhfZG9tYWluX2lycShwcC0+bXNpX2lycV9kb21haW4sIGlycV9vZmYgKyBwb3Mp
Owo+ICAJfQo+ICB9Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKGR3X2hhbmRsZV9tc2lfaXJxKTsKPiAg
Cj4gIC8qIENoYWluZWQgTVNJIGludGVycnVwdCBzZXJ2aWNlIHJvdXRpbmUgKi8KPiAgc3RhdGlj
IHZvaWQgZHdfY2hhaW5lZF9tc2lfaXNyKHN0cnVjdCBpcnFfZGVzYyAqZGVzYykKCltTZXZlcml0
eTogQ3JpdGljYWxdClRoaXMgcHJvYmxlbSB3YXNuJ3QgaW50cm9kdWNlZCBieSB0aGlzIHBhdGNo
LCBidXQgY2FuIGR3X2hhbmRsZV9tc2lfaXJxKCkgaGl0CmEgdXNlLWFmdGVyLWZyZWUgb24gcHAt
Pm1zaV9pcnFfZG9tYWluIHdoZW4gcmFjaW5nIHdpdGggZHdfcGNpZV9mcmVlX21zaSgpClsxXT8K
CkR1cmluZyBkZXZpY2UgdW5iaW5kIG9yIG1vZHVsZSByZW1vdmFsLCBkd19wY2llX2ZyZWVfbXNp
KCkgY2xlYXJzIHRoZSBjaGFpbmVkCk1TSSBoYW5kbGVycyB3aXRoIGlycV9zZXRfY2hhaW5lZF9o
YW5kbGVyX2FuZF9kYXRhKCkgYW5kIGltbWVkaWF0ZWx5IHJlbW92ZXMKcHAtPm1zaV9pcnFfZG9t
YWluIHdpdGhvdXQgd2FpdGluZyBmb3IgaW4tZmxpZ2h0IGludGVycnVwdHMgb24gb3RoZXIgQ1BV
czoKCmRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1ob3N0LmM6ZHdf
cGNpZV9mcmVlX21zaSgpIHsKCWZvciAoY3RybCA9IDA7IGN0cmwgPCBNQVhfTVNJX0NUUkxTOyBj
dHJsKyspIHsKCQlpZiAocHAtPm1zaV9pcnFbY3RybF0gPiAwKQoJCQlpcnFfc2V0X2NoYWluZWRf
aGFuZGxlcl9hbmRfZGF0YShwcC0+bXNpX2lycVtjdHJsXSwKCQkJCQkJCSBOVUxMLCBOVUxMKTsK
CX0KCglpcnFfZG9tYWluX3JlbW92ZShwcC0+bXNpX2lycV9kb21haW4pOwp9CgpJZiBkd19jaGFp
bmVkX21zaV9pc3IoKSBpcyBhbHJlYWR5IHJ1bm5pbmcgb24gYW5vdGhlciBDUFUgd2hlbiB0ZWFy
ZG93bgpzdGFydHMsIGR3X2hhbmRsZV9tc2lfaXJxKCkgd2lsbCBwYXNzIHRoZSBmcmVlZCBwcC0+
bXNpX2lycV9kb21haW4gdG8KZ2VuZXJpY19oYW5kbGVfZGVtdXhfZG9tYWluX2lycSgpOgoKQ1BV
MCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIENQVTEKZHdfcGNpZV9mcmVlX21z
aSgpICAgICAgICAgICAgICAgICAgICAgIGR3X2NoYWluZWRfbXNpX2lzcigpCiAgaXJxX3NldF9j
aGFpbmVkX2hhbmRsZXJfYW5kX2RhdGEoKQogIGlycV9kb21haW5fcmVtb3ZlKHBwLT5tc2lfaXJx
X2RvbWFpbikKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZHdfaGFu
ZGxlX21zaV9pcnEocHApCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgZ2VuZXJpY19oYW5kbGVfZGVtdXhfZG9tYWluX2lycSgKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHBwLT5tc2lfaXJxX2RvbWFpbiwgLi4uKQogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC0tIHVzZS1hZnRlci1mcmVl
CgpDYWxsaW5nIHN5bmNocm9uaXplX2lycSgpIGZvciBlYWNoIGFjdGl2ZSBwcC0+bXNpX2lycVtj
dHJsXSBiZWZvcmUKaXJxX2RvbWFpbl9yZW1vdmUoKSB3b3VsZCBlbnN1cmUgbm8gY2hhaW5lZCBo
YW5kbGVyIGlzIHN0aWxsIHJ1bm5pbmcuCgpbMV0gaHR0cHM6Ly9zYXNoaWtvLmRldi8jL2J1Zy9s
aW51eC1hMzkyZjgwMy1kNzQ5LTQxN2YtYmI4OS0xN2UyODNjZjY0NzYKCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMjMtYjQtY3M3
NTQyLXBjaWUtdjEtMC00Y2RlNTIwMWQ0MDRAZ21haWwuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
