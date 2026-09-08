Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 544CCC79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 16:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBR0/6H6/TGq8k/MrQztNrzq0MQqjhKFdW4nsxVVEK8=; b=PKfqgr55SZWH6A
	9BMEskQgmhhj9gmDrhshIbnzQ+C59h8dHtsbdSvx09vq4qQQFKGQdRmDYgnwkTfIJ6yEyKVNarDyt
	ygu/3CsAgihkUMhz+CTxNdh5nEEgafwbPoUjswur/bVWnDKLK8fq0YI2i1gzQR2ZeXWhCeEZzUMH5
	cUXfMXLqjqliW4J0i6GbWoo9XTJwDolVBojZGwBrnnDC0YPT2ad8nxf0cQTW6xvcOTOWlW9bIvN9N
	p+yI9iTtn1CLrM7Hs3Q2YjWP0knq9Dr+OxiBFIy7avXojSbuyfm30qBqJEkblGe/Tu60d9KPdsLp+
	ySt32XBJXpNRTNiuxhJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3yPw-00000009bOi-3zZy;
	Tue, 08 Sep 2026 16:11:29 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3yPw-00000009bOC-07W5
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 16:11:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 19F8F601DB;
	Tue,  8 Sep 2026 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4A331F00A3A;
	Tue,  8 Sep 2026 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788883886;
	bh=eQtOv7eD6H20m0zWo+xhl+DuKQqGCiyKfHcdLqZ0so4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KeQoNOP2/AbBnkNeFbs6XXLyde3Oo327CnQL++APk9XwN5MCbaW/Qh1rTloh9A6Nt
	 Gn3aUI8A7IY+4ooXj8sdx5yq1De/+RNBK8Bh/xScHsfxmAXI3x+Pr9nKNY6fZeG1nM
	 f9eOjDMBhb36++NBYBApMj7BdNSEvS8vBHvQvdnri/FTP5U7pCqkJ4HRQpNzw701HN
	 SaS4B7B4HirV+fPe1PbSpvmRPXMZtZNGzl5RPy4YnMtLgqryF/5zZ1NjBZS1T++Lgz
	 HobDVTwXGEZPQCMQ2ykRxdBZpoE5EMlVIcLam5TkXxifdVGpxyO1dXWHmqy1ux6aLu
	 yW+D8TQZT9EBw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 05/13] ARM: orion/dove/mv78xx0: remove all board files
To: "Arnd Bergmann" <arnd@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, dlemoal@kernel.org, linux-rtc@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, "Alexandre
 Belloni" <alexandre.belloni@bootlin.com>, olteanv@gmail.com, Frank.Li@kernel.org, linux-pci@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, imx@lists.linux.dev, cassel@kernel.org, linux-ide@vger.kernel.org, linux-watchdog@vger.kernel.org
In-Reply-To: <20260908152808.3928630-6-arnd@kernel.org>
References: <20260908152808.3928630-1-arnd@kernel.org>
 <20260908152808.3928630-6-arnd@kernel.org>
Date: Tue, 08 Sep 2026 16:11:25 +0000
Message-Id: <20260908161125.E4A331F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gT3JwaGFuZWQgTUFJTlRB
SU5FUlMgZW50cnkgZm9yIHRoZSBUUy03OHh4IHBsYXRmb3JtLgotIFtMb3ddIExlZ2FjeSBJUlEs
IE1QUCwgYW5kIEdQSU8gaW1wbGVtZW50YXRpb25zIGFyZSBub3cgdW5yZWFjaGFibGUgZGVhZCBj
b2RlIGFuZCB1bm5lY2Vzc2FyaWx5IGNvbXBpbGVkLgotLQoKY29tbWl0IDY3YzUwYzcxYmMxNjc3
ZDNhN2M3NTM4MzczNDYzMTYzYWZiN2IwNjIKQXV0aG9yOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFy
bmRiLmRlPgpTdWJqZWN0OiBBUk06IG9yaW9uL2RvdmUvbXY3OHh4MDogcmVtb3ZlIGFsbCBib2Fy
ZCBmaWxlcwoKVGhpcyBjb21taXQgcmVtb3ZlcyB0aGUgbGVnYWN5IGJvYXJkIGZpbGVzIGZvciB0
aGUgT3Jpb24sIERvdmUsIGFuZCBNVjc4eHgwIApwbGF0Zm9ybXMuIFRoZXNlIGZpbGVzIHdlcmUg
cmV0YWluZWQgaW4gMjAyMiBkdWUgdG8gc3VwcG9ydCBpbiBEZWJpYW4vT3BlbldSVCwgCndoaWNo
IGlzIG5vdyBnb25lLgoKPiBkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwo+
IGluZGV4IGZkZDc1YjczYmYyOTMuLjJiYjAzNmU4ZGRjZDkgMTAwNjQ0Cj4gLS0tIGEvTUFJTlRB
SU5FUlMKPiArKysgYi9NQUlOVEFJTkVSUwo+IEBAIC0zMDgwLDggKzMwODAsNiBAQCBGOglEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL21hcnZlbGwvbWFydmVsbCxvcmlvbjV4
LnlhbWwKPiAgRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9kb3ZlLwo+
ICBGOglhcmNoL2FybS9ib290L2R0cy9tYXJ2ZWxsL2RvdmUqCj4gIEY6CWFyY2gvYXJtL2Jvb3Qv
ZHRzL21hcnZlbGwvb3Jpb241eCoKPiAtRjoJYXJjaC9hcm0vbWFjaC1kb3ZlLwo+IC1GOglhcmNo
L2FybS9tYWNoLW12Nzh4eDAvCj4gIEY6CWFyY2gvYXJtL21hY2gtb3Jpb241eC8KPiAgRjoJYXJj
aC9hcm0vcGxhdC1vcmlvbi8KPiAgRjoJZHJpdmVycy9idXMvbXZlYnUtbWJ1cy5jCgpbU2V2ZXJp
dHk6IExvd10KU2luY2UgYWxsIHRoZSBib2FyZCBmaWxlcyBsaWtlIGFyY2gvYXJtL21hY2gtb3Jp
b241eC90czc4eHgtc2V0dXAuYyBhcmUKcmVtb3ZlZCBpbiB0aGlzIHBhdGNoLCBzaG91bGQgdGhl
IE1BSU5UQUlORVJTIGVudHJ5IGZvciB0aGUgVFMtNzh4eCBwbGF0Zm9ybQpmdXJ0aGVyIGRvd24g
aW4gdGhpcyBmaWxlIGFsc28gYmUgcmVtb3ZlZD8KClRoZSBwYXR0ZXJuIEY6IGFyY2gvYXJtL21h
Y2gtb3Jpb241eC90czc4eHgtKiBub3cgcG9pbnRzIHRvIGRlbGV0ZWQgZmlsZXMsCndoaWNoIGxl
YXZlcyBhbiBvcnBoYW5lZCBlbnRyeSBmb3IgQWxleGFuZGVyIENsb3V0ZXIuCgpbIC4uLiBdCgo+
IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLW9yaW9uNXgvTWFrZWZpbGUgYi9hcmNoL2FybS9t
YWNoLW9yaW9uNXgvTWFrZWZpbGUKPiBpbmRleCA2ZjU0ZDdmZWYyN2E3Li43ZTk2MzRlMDQzMTg1
IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL21hY2gtb3Jpb241eC9NYWtlZmlsZQo+ICsrKyBiL2Fy
Y2gvYXJtL21hY2gtb3Jpb241eC9NYWtlZmlsZQo+IEBAIC0yLDE1ICsyLDYgQEAKPiAgY2NmbGFn
cy15IDo9IC1JJChzcmN0cmVlKS9hcmNoL2FybS9wbGF0LW9yaW9uL2luY2x1ZGUKPiAgCj4gIG9i
ai15CQkJCSs9IGNvbW1vbi5vIHBjaS5vIGlycS5vIG1wcC5vCj4gLW9iai0kKENPTkZJR19NQUNI
X0tVUk9CT1hfUFJPKQkrPSBrdXJvYm94X3Byby1zZXR1cC5vCj4gLW9iai0kKENPTkZJR19NQUNI
X1RFUkFTVEFUSU9OX1BSTzIpCSs9IHRlcmFzdGF0aW9uX3BybzItc2V0dXAubwoKW1NldmVyaXR5
OiBMb3ddCkFyZSBpcnEubyBhbmQgbXBwLm8gbm93IGNvbXBsZXRlbHkgdW5yZWFjaGFibGUgY29k
ZT8KClNpbmNlIGFsbCB0aGUgYm9hcmQgZmlsZXMgdGhhdCBjYWxsZWQgaW50byB0aGVzZSBBUElz
IGhhdmUgYmVlbiByZW1vdmVkLAppdCBhcHBlYXJzIHRoZXNlIG9iamVjdHMgYXJlIG5vdyB1bm5l
Y2Vzc2FyaWx5IGNvbXBpbGVkIGludG8gdGhlIGtlcm5lbAppbWFnZS4gU2hvdWxkIHRoZXkgYmUg
cmVtb3ZlZCBmcm9tIG9iai15IGhlcmU/CgpbIC4uLiBdCgo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9wbGF0LW9yaW9uL01ha2VmaWxlIGIvYXJjaC9hcm0vcGxhdC1vcmlvbi9NYWtlZmlsZQo+IGlu
ZGV4IGU4Yzc1ODBkZjhjYWYuLmRmZGUzOWNkZDk5MmIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0v
cGxhdC1vcmlvbi9NYWtlZmlsZQo+ICsrKyBiL2FyY2gvYXJtL3BsYXQtb3Jpb24vTWFrZWZpbGUK
PiBAQCAtNSw1ICs1LDUgQEAKPiAgY2NmbGFncy15IDo9IC1JJChzcmMpL2luY2x1ZGUKPiAgCj4g
IG9yaW9uLWdwaW8tJChDT05GSUdfR1BJT0xJQikgICAgICArPSBncGlvLm8KPiAtb2JqLSQoQ09O
RklHX1BMQVRfT1JJT05fTEVHQUNZKSAgICs9IGlycS5vIHBjaWUubyB0aW1lLm8gY29tbW9uLm8g
bXBwLm8KPiArb2JqLSQoQ09ORklHX1BMQVRfT1JJT05fTEVHQUNZKSAgICs9IGlycS5vIHBjaWUu
byBtcHAubwo+ICBvYmotJChDT05GSUdfUExBVF9PUklPTl9MRUdBQ1kpICAgKz0gJChvcmlvbi1n
cGlvLXkpCgpbU2V2ZXJpdHk6IExvd10KU2ltaWxhcmx5LCBkb2VzIHRoaXMgbGVhdmUgaXJxLm8s
IG1wcC5vLCBhbmQgdGhlIG9yaW9uLWdwaW8teSBvYmplY3RzIGFzIGRlYWQKY29kZSBhcyB3ZWxs
PwoKU2luY2UgdGhlaXIgY29ycmVzcG9uZGluZyBlbnRyeSBwb2ludHMgaW4gdGhlIGJvYXJkIGZp
bGVzIHdlcmUgZGVsZXRlZCwKY291bGQgdGhlc2UgYWxzbyBiZSByZW1vdmVkIGZyb20gdGhlIGJ1
aWxkPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRj
aHNldC8yMDI2MDkwODE1MjgwOC4zOTI4NjMwLTEtYXJuZEBrZXJuZWwub3JnP3BhcnQ9NQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
