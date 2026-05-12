Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3FA3CD343F
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qLvtzRonJy5kcGXT+IFBh/VlUY//VBdOeqnXL8TKAn0=; b=PHwG/aGRTKXR1G
	25iye69m267WABpwWDQmzh1uQBKipHCLM5a8bOh3+oxuie57lX6X0BzUDhg/F00eJRp8ay/jU6k2n
	hTcQVv3/M93sdt3+H81atulBJdI7iDvspSOmws3aCFbREu2QiU14Vpm9jmrAAKoetBqajNf1GgxFQ
	e/lO1lhdgj8Dy/hWNvhFsvCbkKPOWbVi36EhlZ4ezWp3+a4tqH04WOQkeIWH1cw+cQVBRD5SsDiVi
	GR1bqg0CGR4xp99p/M/6hcwyjkQTY90J4BOlaXoSCt81GdSeJVw0NtyIvWvUw7VvNShjAtuc0Uxkj
	juwcyRmMufiDnhxnIN8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMwXx-00000000hFZ-1h1h;
	Tue, 12 May 2026 23:29:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMwXv-00000000hED-2BD9
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 23:29:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A092660126;
	Tue, 12 May 2026 23:29:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D4E0C2BCB0;
	Tue, 12 May 2026 23:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778628590;
	bh=tbdbnpKBFdRVXxwZQA659UUZOUHos10eSLDIQ8ijjiY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=NwHVTet1YCa0dfCvbxU5vFzShOxi9njKsNFrmRlHoG8z7kScptzmvvtjpXONs1ejb
	 ipzH5WGNVX/Q/szjoG96oPsUa8hz9FRzzhlS11WTN/zn+Bo0NROlyIhpwMjNtc+aUV
	 nvQvlNqljLdf2d9VvM9lR6dr/vOkOebqki186JUkpEo9NwWjwPn2+riXh/+10NAelD
	 fv1TXx8zhWU0QjXBsg1Zm1OMKQiVShzr67fD3KDXoKTNs/cwYiU+DNfhe/2YbzbJHa
	 /Y8P/Dd2eSiMQasWXFdpCRlzsPh70cJXUF62COHiBG5INUXc0w0GvUUOGa5zYcJTHP
	 Q0jGgR53r+HwA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 3/6] dt-bindings: net: Document Infineon/Intel
 XMM6260 modem
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260511135703.62470-4-clamor95@gmail.com>
References: <20260511135703.62470-4-clamor95@gmail.com>
Date: Tue, 12 May 2026 23:29:49 +0000
Message-Id: <20260512232950.1D4E0C2BCB0@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGRlc2NyaXB0aW9u
IGZpZWxkIGluIHRoZSBZQU1MIGJpbmRpbmcgZW5kcyBhYnJ1cHRseSBhbmQgYXBwZWFycyB0cnVu
Y2F0ZWQuCi0tCgpjb21taXQgOGY2ZjBiMzViNzYwOTU3YjQwM2YwZTMwMjFiYzExZDU3OGJkZWY1
NQpBdXRob3I6IFN2eWF0b3NsYXYgUnloZWwgPGNsYW1vcjk1QGdtYWlsLmNvbT4KCmR0LWJpbmRp
bmdzOiBuZXQ6IERvY3VtZW50IEluZmluZW9uL0ludGVsIFhNTTYyNjAgbW9kZW0KClRoaXMgY29t
bWl0IGFkZHMgdGhlIGRldmljZSB0cmVlIGJpbmRpbmcgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIElu
ZmluZW9uL0ludGVsClhNTTYyNjAgM0cgZW1iZWRkZWQgVVNCIG1vZGVtLgoKPiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9pbmZpbmVvbix4bW02MjYw
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2luZmluZW9uLHht
bTYyNjAueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvaW5maW5lb24seG1tNjI2MC55
YW1sClsgLi4uIF0KPiArdGl0bGU6IEluZmluZW9uL0ludGVsIFhNTTYyNjAgZW1iZWRkZWQgVVNC
IG1vZGVtCj4gKwo+ICtkZXNjcmlwdGlvbjoKPiArICBUaGUgSW5maW5lb24vSW50ZWwgWE1NNjI2
MCBpcyBhIDNHLWZvY3VzZWQsIHNsaW0gbW9kZW0gcGxhdGZvcm0gZGVzaWduZWQKPiArICBmb3Ig
c21hcnRwaG9uZXMsIGRhdGEgY2FyZHMsIGFuZCBNYWNoaW5lLXRvLU1hY2hpbmUgKE0yTSkgYXBw
bGljYXRpb25zLgo+ICsgIFRoZSBtb2RlbSBpcyB1c3VhbGx5IGNvbm5lY3RlZCB2aWEgdGhlIGFw
cGxpY2F0aW9uIHByb2Nlc3NvcidzIFVTQiBsaW5lCj4gKyAgaW4gSFNJQyBtb2RlOyBob3dldmVy
LCB0byB3b3JrIHByb3Blcmx5LCB0aGUgbW9kZW0gbXVzdCBjb250cm9sIHRoaXMgbGluZQoKVGhp
cyBpc24ndCBhIGJ1ZywgYnV0IHRoZSBkZXNjcmlwdGlvbiB0ZXh0IGVuZHMgYWJydXB0bHkgd2l0
aG91dCBwdW5jdHVhdGlvbi4KV2FzIHNvbWUgdGV4dCBhY2NpZGVudGFsbHkgdHJ1bmNhdGVkIGhl
cmUgcmVnYXJkaW5nIGhvdyB0aGUgbW9kZW0gY29udHJvbHMKdGhpcyBsaW5lPwoKLS0gClNhc2hp
a28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDUxMTEz
NTcwMy42MjQ3MC0xLWNsYW1vcjk1QGdtYWlsLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
