Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44178C00140
	for <linux-phy@archiver.kernel.org>; Sat, 13 Aug 2022 01:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45cNva2+v4K2yGSkoe+fIdS0Ei7ilFGe4ulBuvGyYrg=; b=bqoLHUpaFFuI3O
	q0qazNlmioF6o/lbD0mmqzfbpC4vREmlvZ+LUvHepHRYm5TX0B14UQScLPDGzwI8Nm8fvhFbYAeqf
	lVuhWGDsKffaf8lX4GwzNgvmrbIU/cSEUybHBWuN3feff6LMb3ev3XWl5Ivdq4YEiQK1TcXK2JmkI
	VwdkPASjWBb3q8413lpb6o7SmCSChbOF0ioSmADmDtAi41zTRxS8leTIv1S9caK9SZP2or17xhCl3
	A4Nf7+MId72BhPH5D7kqutx7id4aoUQAUDKs4uN/B3I7k5wJccjIpJZNEJiAuv+rdaoUBW0Mmao2g
	JXTCt0SsekBHbG4fJrAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMfZJ-001ZiH-Fa; Sat, 13 Aug 2022 01:04:01 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMfZF-001ZfR-PD
	for linux-phy@lists.infradead.org; Sat, 13 Aug 2022 01:03:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4170BB82553;
	Sat, 13 Aug 2022 01:03:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9043C433D6;
	Sat, 13 Aug 2022 01:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660352635;
	bh=6ogkz9pW9lfM1MQBzHuPRCsQuvF4k3xSQg9vwmEHdoA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lCCA37mJYnzt6ZC2cfM6K/cp7q3H8+e3ArX9i/KW0q0Y2eIB0hYk0wElksu5LlIQn
	 QESOEApF8AKSkY82UiLbWKyNSR75wQU5QfpgEejS+H2vRWUYPh7puvCSmOArQpARH4
	 78Jt82ay3In8v9p76VChnn8P8gnlMLSZYFFEY4xLUC1EqxpkbR5aALuEid49x9m0wf
	 QSd+yt4yNNCvX7eiF6v7av1pNvZXtY+X7isYHSXFpY22QMPxeX7EeH+mMAeJpPybK2
	 CGSxXDOfOyvEPq9Vxuz1VnlrM7DE66RsVOSPBgBcrcrCNAT9CWIsgA7Y0PAamR7KmD
	 P+gXA22lh7BwQ==
Received: by pali.im (Postfix)
	id A89A3C06; Sat, 13 Aug 2022 03:03:51 +0200 (CEST)
Date: Sat, 13 Aug 2022 03:03:51 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"kabel@kernel.org" <kabel@kernel.org>,
	Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Message-ID: <20220813010351.fauxwpi6w4d4shmn@pali>
References: <20220809094234.cpv6tdpmqfb3cfqq@pali>
 <20220810103654.w3yurhdeulgyepbb@shindev>
 <20220812045650.nzisin52zfbbwhsq@shindev>
 <20220812082055.dvwmjcvsyb3iglav@pali>
 <20220812120028.xcnvr3ocxmmkioqi@shindev>
 <20220812124407.pdjjxpsf6pddsmsr@pali>
 <20220812135505.vukoik6moxzedlq6@pali>
 <20220813000235.5vwwmamngm6lirwv@shindev>
 <20220813001501.ib4wayiw3qsgiqhu@pali>
 <20220813010033.erkdwf24arlz7zer@shindev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220813010033.erkdwf24arlz7zer@shindev>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_180358_125531_76627125 
X-CRM114-Status: GOOD (  23.05  )
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

T24gU2F0dXJkYXkgMTMgQXVndXN0IDIwMjIgMDE6MDA6MzQgU2hpbmljaGlybyBLYXdhc2FraSB3
cm90ZToKPiBPbiBBdWcgMTMsIDIwMjIgLyAwMjoxNSwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gPiBP
biBTYXR1cmRheSAxMyBBdWd1c3QgMjAyMiAwMDowMjozNyBTaGluaWNoaXJvIEthd2FzYWtpIHdy
b3RlOgo+ID4gPiBPbiBBdWcgMTIsIDIwMjIgLyAxNTo1NSwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4g
PiA+ID4gT24gRnJpZGF5IDEyIEF1Z3VzdCAyMDIyIDE0OjQ0OjA3IFBhbGkgUm9ow6FyIHdyb3Rl
Ogo+ID4gPiAKPiA+ID4gWy4uLl0KPiA+ID4gCj4gPiA+ID4gPiBQcm9iYWJseSB0aGlzIGlzIFNT
RCBkaXNrIHNwZWNpZmljLiBJIHdpbGwgdHJ5IHRvIHByZXBhcmUgc29tZSBrZXJuZWwKPiA+ID4g
PiA+IGNoYW5nZXMgdG8gdGVzdCBpZiBpdCBjaGFuZ2VzIHNvbWV0aGluZy4KPiA+ID4gPiAKPiA+
ID4gPiBDb3VsZCB5b3UgcGxlYXNlIHRyeSBmb2xsb3dpbmcgY2hhbmdlIGFuZCBwcm92aWRlIGZ1
bGwgZG1lc2cgbG9nPwo+ID4gPiA+IEZpcnN0IEkgbmVlZCB0byBrbm93IGlmIGlzc3VlIGlzIGlu
IFNBVEEgcG93ZXIgb24gY29kZSBvciBzb21ld2hlcmUgZWxzZS4KPiA+ID4gCj4gPiA+IE15IHBs
ZWFzdXJlLiBJIGFwcGxpZWQgdGhlIHBhdGNoIHRvIHRoZSBrZXJuZWwgdjUuMTguMTYgYW5kIGJv
b3RlZCBpdCBmcm9tIHRoZQo+ID4gPiBsYXRlc3QgVS1Cb290LiBIZXJlIEkgYXR0YWNoIGNvbnNv
bGUgb3V0cHV0IHRha2VuIGZyb20gdGhlIG1veC1pbWFnZXIgY29tbWFuZC4KPiA+ID4gSXQgaGFz
IGFsbCBrZXJuZWwgbWVzc2FnZXMgYXMgd2VsbCBhcyBVLUJvb3QgY29uc29sZSBsb2cuIEkgZmlu
ZCB0aGUgbWVzc2FnZQo+ID4gPiBmcm9tIGFkZGVkIGRldl9lcnIoKToKPiA+ID4gCj4gPiA+ICAg
bXZlYnUtYTM3MDAtY29tcGh5IGQwMDE4MzAwLnBoeTogT0sgbXZlYnVfYTM3MDBfY29tcGh5X3Nh
dGFfcG93ZXJfb24oKSBjYWxsCj4gPiA+IAo+ID4gPiAtLSAKPiA+ID4gU2hpbidpY2hpcm8gS2F3
YXNha2kKPiA+IAo+ID4gT2ssIHNvIFNBVEEgZG9lcyBub3Qgd29yayBldmVuIHdoZW4gc3RhcnRp
bmcgd2l0aCBvcmlnaW5hbCBTTUMKPiA+IGltcGxlbWVudGF0aW9uLgo+ID4gCj4gPiBDb3VsZCB5
b3UgcGxlYXNlIHRyeSBhbm90aGVyIHRlc3QgY2hhbmdlPwo+ID4gCj4gPiBAQCAtMTEwMiw2ICsx
MTQyLDkgQEAgc3RhdGljIGludCBtdmVidV9hMzcwMF9jb21waHlfcmVzZXQoc3RydWN0IHBoeSAq
cGh5KQo+ID4gIAlzdHJ1Y3QgbXZlYnVfYTM3MDBfY29tcGh5X2xhbmUgKmxhbmUgPSBwaHlfZ2V0
X2RydmRhdGEocGh5KTsKPiA+ICAJdTE2IG1hc2ssIGRhdGE7Cj4gPiAgCj4gPiArCWRldl9lcnIo
bGFuZS0+ZGV2LCAiSUdOT1JJTkcgbXZlYnVfYTM3MDBfY29tcGh5X3Jlc2V0KCkgY2FsbFxuIik7
Cj4gPiArCXJldHVybjsKPiA+ICsKPiA+ICAJZGV2X2RiZyhsYW5lLT5kZXYsICJyZXNldHRpbmcg
bGFuZSAlZFxuIiwgbGFuZS0+aWQpOwo+ID4gIAo+ID4gIAkvKiBDT01QSFkgcmVzZXQgZm9yIGlu
dGVybmFsIGxvZ2ljICovCj4gCj4gWWVzLCBJJ3ZlIGFwcGxpZWQgdGhlIGh1bmsgYWJvdmUgb24g
dG9wIG9mIHRoZSBwcmV2aW91cyBkZWJ1ZyBwYXRjaCAoSSBtb2RpZmllZAo+ICdyZXR1cm4nIHRv
ICdyZXR1cm4gMCcgdG8gYXZvaWQgYSBjb21waWxlIGVycm9yKS4gSSBhdHRhY2ggdGhlIGNvbnNv
bGUgbG9nLgoKT3UsIHJpZ2h0LgoKPiBXaXRoIHRoaXMgY2hhbmdlLAo+IAo+IC0gVGhlIGFkZGVk
IG1lc3NhZ2UgIklHTk9SSU5HIG12ZWJ1X2EzNzAwX2NvbXBoeV9yZXNldCgpIGNhbGwiIHdhcyBw
cmludGVkCj4gICB0aHJlZSB0aW1lcy4KPiAtIFRoZSAiYXRhMTogU0FUQSBsaW5rIGRvd24gKFNT
dGF0dXMgMTAwIFNDb250cm9sIDMwMCkiIG1lc3NhZ2UgZGlzYXBwZWFyZWQuCj4gLSBNeSBTU0Qg
d2FzIGRldGVjdGVkIGFzIC9kZXYvc2RhLgoKUGVyZmVjdCEKCkNvdWxkIHlvdSBub3cgdGVzdCBv
bmx5IHRoYXQgbGFzdCBzbWFsbCBjaGFuZ2UgZm9yCm12ZWJ1X2EzNzAwX2NvbXBoeV9yZXNldCgp
IHdpdGhvdXQgcHJldmlvdXMgY2hhbmdlcz8KVG8gdmVyaWZ5IHRoYXQgaXNzdWUgaXMgaW4gbXZl
YnVfYTM3MDBfY29tcGh5X3Jlc2V0KCkgZnVuY3Rpb24uCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
