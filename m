Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A337D35157
	for <linux-phy@archiver.kernel.org>; Wed,  1 Apr 2026 08:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9qAP2tCoywn0tQmxNu+7s4fAeeBkbNUZmh6A6pcgJY=; b=XTcvImUsFTgye3
	ncsDBAEJU5kllvRsVNWrVG4G1CtWSv5+Nfd44oVmLar8jCZdg8kbwtc7pzVcTvXJQE8+hqDRhDDQ6
	GwVY50AdJeLWy1jxUO8PgpXy1uSk+zpxd8n9dQuZEkWlCjw94a38s+U/EK5SY0vMUHssWhao5rbGK
	wU5YD784iL1+huUuZ5ddEcHmac2hl/4jm+n9fcZxjY1iYsvNw2rXknnfN6yABUFkXXO6Wpzq5mghM
	YGOLEfsYIK9gJ/VWwD9UbVgDEMOKwblfHnKGFO9uqPIAGw2b7AAjGXNKJyWxMJTloUWXY9oEc5lE8
	TVd8PpxqE2TiHBPbkSaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7qfD-0000000EH32-30ht;
	Wed, 01 Apr 2026 08:10:59 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7qfA-0000000EH2W-18Ay
	for linux-phy@lists.infradead.org;
	Wed, 01 Apr 2026 08:10:58 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 5A1034E42894;
	Wed,  1 Apr 2026 08:10:52 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 28B48602BF;
	Wed,  1 Apr 2026 08:10:52 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5BA61104502B1;
	Wed,  1 Apr 2026 10:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775031051; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=A9ttN22Me+ZiZWu9p0P01wr6po3/qQojCjpmN8ArtYg=;
	b=lXZ96rs0fS4hs0EAzLG8IRQJud4DeY8QiwYhV+VBLAIR9QW/V26Zr/8Ky5RQhaJH7kXlT3
	CajkWb/gnCk50dkelap+gRBIARvMMoCjAymMFv7xCw8TM1OYSY7z/4NEENRI2+Lko6ACW+
	NWeg0iMvxtfCERIskY6X4uJmsmGPhcpVAaesn0gwLFJVhdoU9XaxvCknMz8JMMbF9AP3mA
	4Vmfyb0hZcdtblTA4Dl/nXMxzhnz6iKrpUFAJ1X9AC+GFsyRE4hr7gsSfuUqhmLNVBx9Lg
	zuMk31c9bRPEzdjyZ4nI2as7a6wW66owYpzqVwreMvsgtOzAej+qzqvAudtprQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gabor Juhos <j4g8y7@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Igal Liberman <igall@marvell.com>,  Kishon
 Vijay Abraham I <kishon@kernel.org>,  linux-phy@lists.infradead.org,
  linux-kernel@vger.kernel.org
Subject: Re: [PATCH phy-fixes] phy: marvell: mvebu-a3700-utmi: fix incorrect
 USB2_PHY_CTRL register access
In-Reply-To: <141b3528-f83a-4fc3-954f-630ce45e54df@gmail.com> (Gabor Juhos's
	message of "Wed, 1 Apr 2026 09:13:57 +0200")
References: <20260321-a3700-utmi-fix-usb2_phy_ctrl-access-v1-1-6005ff4b5058@gmail.com>
	<87zf3o873b.fsf@bootlin.com>
	<141b3528-f83a-4fc3-954f-630ce45e54df@gmail.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Wed, 01 Apr 2026 10:10:48 +0200
Message-ID: <87a4vn85iv.fsf@bootlin.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_011056_464818_B78844F5 
X-CRM114-Status: GOOD (  15.68  )
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

T24gMDEvMDQvMjAyNiBhdCAwOToxMzo1NyArMDIsIEdhYm9yIEp1aG9zIDxqNGc4eTdAZ21haWwu
Y29tPiB3cm90ZToKCj4gSGkgTWlxdWVsLAo+Cj4+IEhpIEdhYm9yLAo+PiAKPj4gT24gMjEvMDMv
MjAyNiBhdCAxNTo0MjozMiArMDEsIEdhYm9yIEp1aG9zIDxqNGc4eTdAZ21haWwuY29tPiB3cm90
ZToKPj4gCj4+PiBUaGUgbXZlYnVfYTM3MDBfdXRtaV9waHlfcG93ZXJfb2ZmKCkgZnVuY3Rpb24g
dHJpZXMgdG8gbW9kaWZ5IHRoZQo+Pj4gVVNCMl9QSFlfQ1RSTCByZWdpc3RlciBieSB1c2luZyB0
aGUgSU8gYWRkcmVzcyBvZiB0aGUgUEhZIElQIGJsb2NrIGFsb25nCj4+PiB3aXRoIHRoZSByZWFk
bC93cml0ZWwgSU8gYWNjZXNzb3JzLiBIb3dldmVyLCB0aGUgcmVnaXN0ZXIgZXhpc3QgaW4gdGhl
Cj4+PiBVU0IgbWlzY2VsbGFuZW91cyByZWdpc3RlciBzcGFjZSwgYW5kIGFzIHN1Y2ggaXQgbXVz
dCBiZSBhY2Nlc3NlZCB2aWEKPj4+IHJlZ21hcCBsaWtlIGl0IGlzIGRvbmUgaW4gdGhlIG12ZWJ1
X2EzNzAwX3V0bWlfcGh5X3Bvd2VyX29uKCkgZnVuY3Rpb24uCj4+Pgo+Pj4gQ2hhbmdlIHRoZSBj
b2RlIHRvIHVzZSByZWdtYXBfdXBkYXRlX2JpdHMoKSBmb3IgbW9kw61meWluZyB0aGUgcmVnaXN0
ZXIKPj4gCj4+IFNwdXJpb3VzIGFjY2VudCBoZXJlIDotKSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXgo+PiAKPj4gRG8geW91IGltcGx5IHRoYXQgdGhlIHJlZ2lzdGVyIGFjY2VzcyB3YXMg
bm90IHdvcmtpbmc/IE9yIHRoYXQgaXQgd2FzCj4+IG5vdCB1c2luZyB0aGUgY29ycmVjdCBBUEk/
IC4uLgo+Cj4gSXQgd2FzIHVzaW5nIHRoZSB3cm9uZyBBUEkgd2l0aCB3cm9uZyBiYXNlIGFkZHJl
c3MuCj4KPiBUaGUgVVNCMl9QSFlfQ1RSTCh4KSBtYWNybyBnaXZlcyBiYWNrIGFuIG9mZnNldCBy
ZWxhdGl2ZSB0byB0aGUgYmFzZSBhZGRyZXNzIG9mCj4gdGhlIFVTQiBtaXNjZWxsYW5lb3VzIHJl
Z2lzdGVycy4gSG93ZXZlciB0aGUgY3VycmVudCBjb2RlIHVzZXMgdGhhdCBvZmZzZXQgd2l0aAo+
IHRoZSBiYXNlIGFkZHJlc3Mgb2YgdGhlIFVUTUkgUEhZIHJlZ2lzdGVycy4KPgo+IFNvLCBpbnN0
ZWFkIG9mIG1vZGlmeWluZyB0aGUgJ1VTQjIgSG9zdCBQSFkgQ29udHJvbCcgcmVnaXN0ZXIgYXQg
MHhkMDA1ZjgwNCBpdAo+IGNoYW5nZXMgdGhlICdVU0IyIFVUTUkgUEhZIFBMTCBDb250cm9sIDEn
IHJlZ2lzdGVyIGF0IDB4ZDAwNWYwMDQuCgpPaywgdGhhdCdzIHdoYXQgSSB3YXMgYXNraW5nLgoK
PiBTaW5jZSB0aGUgbWlzY2VsbGFuZW91cyByZWdpc3RlcnMgY2FuIGJlIGFjY2Vzc2VkIG9ubHkg
dmlhIHRoZSByZWdtYXAgb2J0YWluZWQKPiBmcm9tIGEgc3lzY29uIG5vZGUgd2UgaGF2ZSB0byB1
c2UgdGhlIHJlZ21hcCBBUEkgaW5zdGVhZCBvZiB0aGUgZ2VuZXJpYyBJTwo+IGFjY2Vzc29ycy4K
ClllYWggeWVhaCwgSSB3YXMgYXNraW5nIHRvIGNsYXJpZnkgdGhlIHByb2JsZW0sIHdoZXRoZXIg
aXQgd2FzIGEKcmVnaXN0ZXIgYWNjZXNzIGlzc3VlIG9yIGFuIEFQSSBtaXNtYXRjaCBpbiB0aGUg
Zmlyc3QgcGxhY2UuCgo+PiAuLi4gKGhlbmNlIHBvdGVudGlhbCBpc3N1ZXMgd2l0aCBsb2NraW5n
IG1pZ2h0IGFyaXNlKQo+Cj4gVGhlIHJlZ21hcCBBUEkgdXNlcyBidWlsdC1pbiBsb2NraW5nIHNv
IHRoZXJlIHNob3VsZCBiZSBubyBsb2NraW5nCj4gaXNzdWVzLgoKWWVzLCB0aGF0J3Mgd2hhdCBJ
IHdhcyBpbXBseWluZywgSSB3YXMgdGFsa2luZyBhYm91dCB0aGUgYmFyZSByZWFkbCgpCmNhbGwg
aGVyZSAoYWthIHRoZSAiaW5jb3JyZWN0IiBBUEkpLgoKVGhhbmtzLApNaXF1w6hsCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
