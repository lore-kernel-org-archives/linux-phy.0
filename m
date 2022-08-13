Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3303C19F2D
	for <linux-phy@archiver.kernel.org>; Sat, 13 Aug 2022 12:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNCGPoqgLkaN9Qxu0wCPr3zY/bgLh9BH+kF5i3jlfb0=; b=PSyLDjrPfiQaFo
	U8ZepHHo936BQKZDEXfDeV0wvnuGE//czKQy8UPEoXDQW3H6rl6apErkP7uaw2zHVwsmSW1xrXcg2
	3U4bshmosdUMXjYdfu8IY0hitSwqZOrBE2eO9+2Sy0Peo6I5+M9e35h4u2N8POsr28fXdQyCTa2lO
	goYO0FOj5zsn0wuKol7SfzLg2h+1wROddCRtPuRnFWqJ+RecbihIb1R0ooCq/iYTQrnPGWNjHzH/t
	yAllibYByagV15HbP3eS75KDZCJ6yQk0Kc/1t7j5jHG1pFbpBdV0J8Ggr57Vl9EcX3E4eHF03XUyk
	hT2Fvey7mLujU3IqSNcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMppP-00EM97-Dl; Sat, 13 Aug 2022 12:01:19 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMppL-00EM6u-Qk
	for linux-phy@lists.infradead.org; Sat, 13 Aug 2022 12:01:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 96120B80066;
	Sat, 13 Aug 2022 12:01:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26CC7C433D6;
	Sat, 13 Aug 2022 12:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660392071;
	bh=230Az90T6ovG0WNlxdM9MzWJswnma2/lep7C4VXUJJI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XrjPJlPDfYl2hxNCszt9B4P2qKtKysK/no2wb1YT9TU+BZ7hHGyJyxK+xK/+ogzEN
	 3ShgtgjFZwfp6c8d5LkTU3rcxxRYrYQu2z+1avXe6uLDfG1D5dahzw3Y8zzENeY2En
	 jDdE3MAZWpTEXc3paZaNeP09+mBKQhFMIKtLrZj1kXSd0nnHgPk60nlbmPNAY7jB0Q
	 /0PJe8cPNudJRgemW/eBJA8HHAbxloUZ2MYuvkOEiTYzR4rojWLMmDxNCvPZq+97Uv
	 SG14F2kUJEs2gPL9kiWP7LiHg2ze41mWbH9VBjJNX9K0cjrq7ak1dDCe2NYCpfwpPP
	 ZiXI5bnUxcivw==
Received: by pali.im (Postfix)
	id 2EB91C30; Sat, 13 Aug 2022 14:01:08 +0200 (CEST)
Date: Sat, 13 Aug 2022 14:01:08 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"kabel@kernel.org" <kabel@kernel.org>,
	Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Message-ID: <20220813120108.vaiwnzhofz6hy5kc@pali>
References: <20220812120028.xcnvr3ocxmmkioqi@shindev>
 <20220812124407.pdjjxpsf6pddsmsr@pali>
 <20220812135505.vukoik6moxzedlq6@pali>
 <20220813000235.5vwwmamngm6lirwv@shindev>
 <20220813001501.ib4wayiw3qsgiqhu@pali>
 <20220813010033.erkdwf24arlz7zer@shindev>
 <20220813010351.fauxwpi6w4d4shmn@pali>
 <20220813013534.l5hzxv7mc5fylx7m@shindev>
 <20220813093214.6ved4ka3l2thkn2n@pali>
 <20220813115338.uq4xbznngjradzi6@shindev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220813115338.uq4xbznngjradzi6@shindev>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220813_050116_174094_35BCD6D2 
X-CRM114-Status: GOOD (  16.83  )
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

T24gU2F0dXJkYXkgMTMgQXVndXN0IDIwMjIgMTE6NTM6MzkgU2hpbmljaGlybyBLYXdhc2FraSB3
cm90ZToKPiBPbiBBdWcgMTMsIDIwMjIgLyAxMTozMiwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gPiBP
biBTYXR1cmRheSAxMyBBdWd1c3QgMjAyMiAwMTozNTozNSBTaGluaWNoaXJvIEthd2FzYWtpIHdy
b3RlOgo+IAo+IFsuLi5dCj4gCj4gPiBPaywgdGhhbmtzIGZvciB0ZXN0aW5nLiBJdCBsb29rcyBs
aWtlIHRoYXQgcmVzZXQgY29kZSBoYXMgc29tZSBpc3N1ZXMuCj4gPiAKPiA+IENvdWxkIHlvdSBw
bGVhc2UgdGVzdCB0aGlzIGNoYW5nZT8KPiA+IAo+ID4gQEAgLTEzOTMsNyArMTQzNiw4IEBAIHN0
YXRpYyBpbnQgbXZlYnVfYTM3MDBfY29tcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCj4gPiAgCQkgKiBUbyBhdm9pZCByZWx5aW5nIG9uIHRoZSBib290bG9hZGVyL2Zpcm13
YXJlIGNvbmZpZ3VyYXRpb24sCj4gPiAgCQkgKiBwb3dlciBvZmYgYWxsIGNvbXBoeXMuCj4gPiAg
CQkgKi8KPiA+IC0JCW12ZWJ1X2EzNzAwX2NvbXBoeV9yZXNldChwaHkpOwo+ID4gKy8vCQltdmVi
dV9hMzcwMF9jb21waHlfcmVzZXQocGh5KTsKPiA+ICsJCW12ZWJ1X2EzNzAwX2NvbXBoeV9wb3dl
cl9vZmYocGh5KTsKPiA+ICAJCWxhbmUtPm5lZWRzX3Jlc2V0ID0gZmFsc2U7Cj4gPiAgCX0KPiA+
ICAKPiA+IAo+ID4gSXQgc2hvdWxkIHJlcGxhY2UgcmVzZXQgY29kZSBieSBwb3dlciBvZmYgYXQg
YmVnaW5uaW5nIC8gcHJvYmUgdGltZS4KPiAKPiBUaGlzIGNoYW5nZSBhbHNvIGF2b2lkZWQgdGhl
ICJhdGExOiBTQVRBIGxpbmsgZG93biAoU1N0YXR1cyAwIFNDb250cm9sIDMwMCkiCj4gbWVzc2Fn
ZSwgYW5kIG15IFNTRCB3YXMgZGV0ZWN0ZWQgYXMgL2Rldi9zZGEuIEdvb2Qgc3ltcHRvbXMgZm9y
IG1lLiBGWUksIEkKPiBhdHRhY2ggdGhlIGNvbnNvbGUgbG9nIHdpdGggdGhpcyBjaGFuZ2UuIChU
aGlzIHRpbWUsIGZvbGxvd2luZyBtZXNzYWdlcyB3ZXJlCj4gcHJpbnRlZC4gTm90IHN1cmUgaWYg
dGhleSBhcmUgaW1wb3J0YW50IG9yIG5vdC4pCj4gCj4gWyAgICAyLjkzNzM3Nl0gbXZlYnUtYTM3
MDAtY29tcGh5IGQwMDE4MzAwLnBoeTogaW52YWxpZCBDT01QSFkgbW9kZQo+IFsgICAgMi45NDM1
ODFdIG12ZWJ1LWEzNzAwLWNvbXBoeSBkMDAxODMwMC5waHk6IGludmFsaWQgQ09NUEhZIG1vZGUK
PiBbICAgIDIuOTQ5Njc5XSBtdmVidS1hMzcwMC1jb21waHkgZDAwMTgzMDAucGh5OiBpbnZhbGlk
IENPTVBIWSBtb2RlCgpUaG9zZSBlcnJvcnMgYXJlIGltcG9ydGFudCwgaXQgbWVhbnMgdGhhdCBw
b3dlcl9vZmYgZGlkIG5vdGhpbmcgYW5kIHdhcwpza2lwcGVkLiBTbyB0ZXN0IGRpZCBub3RoaW5n
LgoKQ291bGQgeW91IHBsZWFzZSByZXBsYWNlIG12ZWJ1X2EzNzAwX2NvbXBoeV9wb3dlcl9vZmYg
aW1wbGVtZW50YXRpb24Kd2l0aCB0aGlzIG9uZSBhbmQgdHJ5IGl0IGFnYWluPwoKc3RhdGljIGlu
dCBtdmVidV9hMzcwMF9jb21waHlfcG93ZXJfb2ZmKHN0cnVjdCBwaHkgKnBoeSkKewoJc3RydWN0
IG12ZWJ1X2EzNzAwX2NvbXBoeV9sYW5lICpsYW5lID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7CgoJ
c3dpdGNoIChsYW5lLT5pZCkgewoJY2FzZSAwOgoJCW12ZWJ1X2EzNzAwX2NvbXBoeV91c2IzX3Bv
d2VyX29mZihsYW5lKTsKCQltdmVidV9hMzcwMF9jb21waHlfZXRoZXJuZXRfcG93ZXJfb2ZmKGxh
bmUpOwoJCXJldHVybiAwOwoJY2FzZSAxOgoJCW12ZWJ1X2EzNzAwX2NvbXBoeV9wY2llX3Bvd2Vy
X29mZihsYW5lKTsKCQltdmVidV9hMzcwMF9jb21waHlfZXRoZXJuZXRfcG93ZXJfb2ZmKGxhbmUp
OwoJCXJldHVybiAwOwoJY2FzZSAyOgoJCW12ZWJ1X2EzNzAwX2NvbXBoeV91c2IzX3Bvd2VyX29m
ZihsYW5lKTsKCQltdmVidV9hMzcwMF9jb21waHlfc2F0YV9wb3dlcl9vZmYobGFuZSk7CgkJcmV0
dXJuIDA7CglkZWZhdWx0OgoJCWRldl9lcnIobGFuZS0+ZGV2LCAiaW52YWxpZCBDT01QSFkgbW9k
ZVxuIik7CgkJcmV0dXJuIC1FSU5WQUw7Cgl9Cn0KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
