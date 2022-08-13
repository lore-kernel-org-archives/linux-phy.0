Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 231F7C19F2D
	for <linux-phy@archiver.kernel.org>; Sat, 13 Aug 2022 09:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9Xs829Xl5xZQWZDVa5Ae9c/LhbYa9dhRw25+XqxzKE=; b=NkpI5iQ6CTxJ5x
	pi0zWStta6e8Utn8z1dp/AwjwAhJak3Xkcuks8za66A9BZPARa/tK5+zT8yuIsOVZ4e7RnFBLm0ff
	/TAdkBfxsGhzOP6oOqaRK/NvO5NiQGyaEADrcAPzBIGF75BlI2bCgfJhAMwM87nj+5Vde0N4HEw77
	rurpTXTmOATkbU5Byuwxgc114TJBY0swxb4nuX6t7fnjf4QFwopuGvlSVXEpPpwaBg0hNvXPQfbqo
	CMPJXrEYRCsIqMzpnzAF7RFPizi0YISSuZxW0EtfLq7KqrTS10u6ImZ+WBE3Pe9PnRn7L7YXcs84l
	HjwhweV0inZ9+hDXpUtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMnVH-00DdTs-F6; Sat, 13 Aug 2022 09:32:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMnVE-00DdRh-Pu
	for linux-phy@lists.infradead.org; Sat, 13 Aug 2022 09:32:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 505F860B83;
	Sat, 13 Aug 2022 09:32:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F6A2C433D6;
	Sat, 13 Aug 2022 09:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660383138;
	bh=0nKFrV77RJo05Gamdee6qojgE8yC84ELTM2iyj6Wm6Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=px56LdyXhhwm7aG49as9zqRIGKVNPxMFgEo0/lvR84DK8n0tT4cpWWB9Xf86pFkKS
	 RZaDJ7sqawTuXDXr4FCsru0OpUfLd3s7N0wVgyzHj9jdywRySi1aoUWfqUBsZUS5Ui
	 TNIaOeloRy54rRGWpd+gWi7l2kyOdtuFfU60vYnSX5mtxDY5wd5wSkEgWEIWFX7XxW
	 qihLpiGQCmaXNr6OlPdf0YIxqQuGryN1YY/G0NMDKtepRJRStrCouZwtoo+T0hx4Sl
	 P2QqPwhbWIOWECGQWZmbtrDuvKrlvzcaujqwKfROEldJWQLyMcG8Gfi38qiJNA/roG
	 bsm+MXWszDGFg==
Received: by pali.im (Postfix)
	id DE8F9C30; Sat, 13 Aug 2022 11:32:14 +0200 (CEST)
Date: Sat, 13 Aug 2022 11:32:14 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"kabel@kernel.org" <kabel@kernel.org>,
	Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Message-ID: <20220813093214.6ved4ka3l2thkn2n@pali>
References: <20220812045650.nzisin52zfbbwhsq@shindev>
 <20220812082055.dvwmjcvsyb3iglav@pali>
 <20220812120028.xcnvr3ocxmmkioqi@shindev>
 <20220812124407.pdjjxpsf6pddsmsr@pali>
 <20220812135505.vukoik6moxzedlq6@pali>
 <20220813000235.5vwwmamngm6lirwv@shindev>
 <20220813001501.ib4wayiw3qsgiqhu@pali>
 <20220813010033.erkdwf24arlz7zer@shindev>
 <20220813010351.fauxwpi6w4d4shmn@pali>
 <20220813013534.l5hzxv7mc5fylx7m@shindev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220813013534.l5hzxv7mc5fylx7m@shindev>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220813_023220_933702_31F16457 
X-CRM114-Status: GOOD (  28.62  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gU2F0dXJkYXkgMTMgQXVndXN0IDIwMjIgMDE6MzU6MzUgU2hpbmljaGlybyBLYXdhc2FraSB3
cm90ZToKPiBPbiBBdWcgMTMsIDIwMjIgLyAwMzowMywgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gPiBP
biBTYXR1cmRheSAxMyBBdWd1c3QgMjAyMiAwMTowMDozNCBTaGluaWNoaXJvIEthd2FzYWtpIHdy
b3RlOgo+ID4gPiBPbiBBdWcgMTMsIDIwMjIgLyAwMjoxNSwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4g
PiA+ID4gT24gU2F0dXJkYXkgMTMgQXVndXN0IDIwMjIgMDA6MDI6MzcgU2hpbmljaGlybyBLYXdh
c2FraSB3cm90ZToKPiA+ID4gPiA+IE9uIEF1ZyAxMiwgMjAyMiAvIDE1OjU1LCBQYWxpIFJvaMOh
ciB3cm90ZToKPiA+ID4gPiA+ID4gT24gRnJpZGF5IDEyIEF1Z3VzdCAyMDIyIDE0OjQ0OjA3IFBh
bGkgUm9ow6FyIHdyb3RlOgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBbLi4uXQo+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+ID4gUHJvYmFibHkgdGhpcyBpcyBTU0QgZGlzayBzcGVjaWZpYy4gSSB3aWxsIHRy
eSB0byBwcmVwYXJlIHNvbWUga2VybmVsCj4gPiA+ID4gPiA+ID4gY2hhbmdlcyB0byB0ZXN0IGlm
IGl0IGNoYW5nZXMgc29tZXRoaW5nLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gQ291bGQgeW91
IHBsZWFzZSB0cnkgZm9sbG93aW5nIGNoYW5nZSBhbmQgcHJvdmlkZSBmdWxsIGRtZXNnIGxvZz8K
PiA+ID4gPiA+ID4gRmlyc3QgSSBuZWVkIHRvIGtub3cgaWYgaXNzdWUgaXMgaW4gU0FUQSBwb3dl
ciBvbiBjb2RlIG9yIHNvbWV3aGVyZSBlbHNlLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBNeSBwbGVh
c3VyZS4gSSBhcHBsaWVkIHRoZSBwYXRjaCB0byB0aGUga2VybmVsIHY1LjE4LjE2IGFuZCBib290
ZWQgaXQgZnJvbSB0aGUKPiA+ID4gPiA+IGxhdGVzdCBVLUJvb3QuIEhlcmUgSSBhdHRhY2ggY29u
c29sZSBvdXRwdXQgdGFrZW4gZnJvbSB0aGUgbW94LWltYWdlciBjb21tYW5kLgo+ID4gPiA+ID4g
SXQgaGFzIGFsbCBrZXJuZWwgbWVzc2FnZXMgYXMgd2VsbCBhcyBVLUJvb3QgY29uc29sZSBsb2cu
IEkgZmluZCB0aGUgbWVzc2FnZQo+ID4gPiA+ID4gZnJvbSBhZGRlZCBkZXZfZXJyKCk6Cj4gPiA+
ID4gPiAKPiA+ID4gPiA+ICAgbXZlYnUtYTM3MDAtY29tcGh5IGQwMDE4MzAwLnBoeTogT0sgbXZl
YnVfYTM3MDBfY29tcGh5X3NhdGFfcG93ZXJfb24oKSBjYWxsCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IC0tIAo+ID4gPiA+ID4gU2hpbidpY2hpcm8gS2F3YXNha2kKPiA+ID4gPiAKPiA+ID4gPiBPaywg
c28gU0FUQSBkb2VzIG5vdCB3b3JrIGV2ZW4gd2hlbiBzdGFydGluZyB3aXRoIG9yaWdpbmFsIFNN
Qwo+ID4gPiA+IGltcGxlbWVudGF0aW9uLgo+ID4gPiA+IAo+ID4gPiA+IENvdWxkIHlvdSBwbGVh
c2UgdHJ5IGFub3RoZXIgdGVzdCBjaGFuZ2U/Cj4gPiA+ID4gCj4gPiA+ID4gQEAgLTExMDIsNiAr
MTE0Miw5IEBAIHN0YXRpYyBpbnQgbXZlYnVfYTM3MDBfY29tcGh5X3Jlc2V0KHN0cnVjdCBwaHkg
KnBoeSkKPiA+ID4gPiAgCXN0cnVjdCBtdmVidV9hMzcwMF9jb21waHlfbGFuZSAqbGFuZSA9IHBo
eV9nZXRfZHJ2ZGF0YShwaHkpOwo+ID4gPiA+ICAJdTE2IG1hc2ssIGRhdGE7Cj4gPiA+ID4gIAo+
ID4gPiA+ICsJZGV2X2VycihsYW5lLT5kZXYsICJJR05PUklORyBtdmVidV9hMzcwMF9jb21waHlf
cmVzZXQoKSBjYWxsXG4iKTsKPiA+ID4gPiArCXJldHVybjsKPiA+ID4gPiArCj4gPiA+ID4gIAlk
ZXZfZGJnKGxhbmUtPmRldiwgInJlc2V0dGluZyBsYW5lICVkXG4iLCBsYW5lLT5pZCk7Cj4gPiA+
ID4gIAo+ID4gPiA+ICAJLyogQ09NUEhZIHJlc2V0IGZvciBpbnRlcm5hbCBsb2dpYyAqLwo+ID4g
PiAKPiA+ID4gWWVzLCBJJ3ZlIGFwcGxpZWQgdGhlIGh1bmsgYWJvdmUgb24gdG9wIG9mIHRoZSBw
cmV2aW91cyBkZWJ1ZyBwYXRjaCAoSSBtb2RpZmllZAo+ID4gPiAncmV0dXJuJyB0byAncmV0dXJu
IDAnIHRvIGF2b2lkIGEgY29tcGlsZSBlcnJvcikuIEkgYXR0YWNoIHRoZSBjb25zb2xlIGxvZy4K
PiA+IAo+ID4gT3UsIHJpZ2h0Lgo+ID4gCj4gPiA+IFdpdGggdGhpcyBjaGFuZ2UsCj4gPiA+IAo+
ID4gPiAtIFRoZSBhZGRlZCBtZXNzYWdlICJJR05PUklORyBtdmVidV9hMzcwMF9jb21waHlfcmVz
ZXQoKSBjYWxsIiB3YXMgcHJpbnRlZAo+ID4gPiAgIHRocmVlIHRpbWVzLgo+ID4gPiAtIFRoZSAi
YXRhMTogU0FUQSBsaW5rIGRvd24gKFNTdGF0dXMgMTAwIFNDb250cm9sIDMwMCkiIG1lc3NhZ2Ug
ZGlzYXBwZWFyZWQuCj4gPiA+IC0gTXkgU1NEIHdhcyBkZXRlY3RlZCBhcyAvZGV2L3NkYS4KPiA+
IAo+ID4gUGVyZmVjdCEKPiA+IAo+ID4gQ291bGQgeW91IG5vdyB0ZXN0IG9ubHkgdGhhdCBsYXN0
IHNtYWxsIGNoYW5nZSBmb3IKPiA+IG12ZWJ1X2EzNzAwX2NvbXBoeV9yZXNldCgpIHdpdGhvdXQg
cHJldmlvdXMgY2hhbmdlcz8KPiA+IFRvIHZlcmlmeSB0aGF0IGlzc3VlIGlzIGluIG12ZWJ1X2Ez
NzAwX2NvbXBoeV9yZXNldCgpIGZ1bmN0aW9uLgo+IAo+IFN1cmUsIEkndmUgdHJpZWQgdGhlIG12
ZWJ1X2EzNzAwX2NvbXBoeV9yZXNldCgpIGNoYW5nZSBvbmx5IGFuZCBnb3Qgc2FtZSByZXN1bHQ6
Cj4gIklHTk9SSU5HIG12ZWJ1X2EzNzAwX2NvbXBoeV9yZXNldCgpIGNhbGwiIHdhcyBwcmludGVk
LCBhbmQgbXkgU1NEIHdhcyBkZXRlY3RlZAo+IGFzIC9kZXYvc2RhLiBGWUksIEkgYXR0YWNoIHRo
ZSBjb25zb2xlIGxvZyBhZ2Fpbi4KCk9rLCB0aGFua3MgZm9yIHRlc3RpbmcuIEl0IGxvb2tzIGxp
a2UgdGhhdCByZXNldCBjb2RlIGhhcyBzb21lIGlzc3Vlcy4KCkNvdWxkIHlvdSBwbGVhc2UgdGVz
dCB0aGlzIGNoYW5nZT8KCkBAIC0xMzkzLDcgKzE0MzYsOCBAQCBzdGF0aWMgaW50IG12ZWJ1X2Ez
NzAwX2NvbXBoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQkgKiBUbyBh
dm9pZCByZWx5aW5nIG9uIHRoZSBib290bG9hZGVyL2Zpcm13YXJlIGNvbmZpZ3VyYXRpb24sCiAJ
CSAqIHBvd2VyIG9mZiBhbGwgY29tcGh5cy4KIAkJICovCi0JCW12ZWJ1X2EzNzAwX2NvbXBoeV9y
ZXNldChwaHkpOworLy8JCW12ZWJ1X2EzNzAwX2NvbXBoeV9yZXNldChwaHkpOworCQltdmVidV9h
MzcwMF9jb21waHlfcG93ZXJfb2ZmKHBoeSk7CiAJCWxhbmUtPm5lZWRzX3Jlc2V0ID0gZmFsc2U7
CiAJfQogCgpJdCBzaG91bGQgcmVwbGFjZSByZXNldCBjb2RlIGJ5IHBvd2VyIG9mZiBhdCBiZWdp
bm5pbmcgLyBwcm9iZSB0aW1lLgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
