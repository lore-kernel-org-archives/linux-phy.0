Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D9F2C43458
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jun 2026 16:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVUU2iDiEejYk8IjNMhlMbBhrdQojdC2UIE2R0EAuKU=; b=NzjyS/Qnuf9H7p
	vBW7YrbGruPyTTjT8cm3gSjkBINLAoQ9R740AcK/vdAbkDMO46qoLc1Sf9IOesiyIpdvNYbCLoikx
	Y2L64YBqdGWzis+1O1VFRKKxhOFu91K5rmiFfQG20FRC0dq/lsU7sA+U8qwsvij8AaHveVCU/WIvy
	WRpAf3kT2hauhqklLQoUgFztDyS9/F2NqXtSEPjX/5ok+AihdjVHMkijjvHtkCJxuenrCF/11WW2f
	h2FPkPNBR7gKkVr3wOoPXCeYJy0IfwdRtplGbqsVBI2Ksu0Yv5VFehZP5PE3pkWCYOxC2miiRdeYj
	2bFIPiM4v/QoHHwiX3VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdVU2-0000000CcnM-1dCB;
	Sat, 27 Jun 2026 16:02:18 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdVU0-0000000CcnG-2jn8
	for linux-phy@lists.infradead.org;
	Sat, 27 Jun 2026 16:02:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1CB066001A;
	Sat, 27 Jun 2026 16:02:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CD681F000E9;
	Sat, 27 Jun 2026 16:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782576135;
	bh=0YE2ydPEMcH0gr71lSg/xLXQBCc08XYGO+8kM5269KI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GIJdqUUCb4gos/q8bFXF5fEs/ZV5d7hxgRWNmTYf1GU5zCVMDR2F0Nycf79GAelQl
	 7U12isePQipvqHXF+p0XS3kk+tqMGAYoqKckRZ9EOb7OymYdmlyZhSFlInjeWWV6jm
	 0ROfrHv96nSowaVHL+MkNp5eUdJi9iuEWL/bFkoQkcu3LvVNJI79lFjXiO6CwAMhTl
	 KIvY/TLgTA29wNERzqw7bbSnFziIgtf4LeR5sOFIlsUYJxMgGNdqtk940//qOpbeV0
	 u7kcz2ogsWaq4tluaIp8QZPJ6+tkk+0plHT8t/A2CPnT64F1/ssDUkLgvJUiAfk9HW
	 hu4K6iZoJjbvQ==
From: sashiko-bot@kernel.org
Subject: Re: [RESEND PATCH 2/3] phy: zynqmp: use read-modify-write for
 SERDES scrambler bypass
To: "Radhey Shyam Pandey" <radhey.shyam.pandey@amd.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260627155229.2791113-3-radhey.shyam.pandey@amd.com>
References: <20260627155229.2791113-1-radhey.shyam.pandey@amd.com>
 <20260627155229.2791113-3-radhey.shyam.pandey@amd.com>
Date: Sat, 27 Jun 2026 16:02:14 +0000
Message-Id: <20260627160215.6CD681F000E9@smtp.kernel.org>
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
IFtIaWdoXSBUaGUgZXJyb3IgY29kZSBmcm9tIGNsa19wcmVwYXJlX2VuYWJsZSgpIGlzIG5vdCBw
cm9wYWdhdGVkLCBjYXVzaW5nIGEgZmFsc2Ugc3VjY2VzcyByZXR1cm4uCi0gW0hpZ2hdIE1pc3Np
bmcgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKCkgb24gZXJyb3IgcGF0aHMgY2F1c2VzIGEgY2xvY2sg
cmVzb3VyY2UgbGVhay4KLS0KCmNvbW1pdCA1Y2JiYTU1MzllMzQ1NTA3NDNiOTYzNjM3NmYxYTQx
YTY1ZDA0YmI4CkF1dGhvcjogTmF2YSBraXNob3JlIE1hbm5lIDxuYXZhLmtpc2hvcmUubWFubmVA
YW1kLmNvbT4KCnBoeTogenlucW1wOiB1c2UgcmVhZC1tb2RpZnktd3JpdGUgZm9yIFNFUkRFUyBz
Y3JhbWJsZXIgYnlwYXNzCgpUaGlzIGNvbW1pdCBzd2l0Y2hlcyB4cHNndHJfYnlwYXNzX3NjcmFt
Ymxlcl84YjEwYigpIHRvIHVzZSAKeHBzZ3RyX2Nscl9zZXRfcGh5KCkgaW5zdGVhZCBvZiB4cHNn
dHJfd3JpdGVfcGh5KCkuIFRoaXMgbW9kaWZpZXMgb25seSB0aGUKYnlwYXNzIGJpdHMgd2hpbGUg
cHJlc2VydmluZyB0aGUgcmVzdCBvZiB0aGUgcmVnaXN0ZXIgZmllbGRzLgoKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkveGlsaW54L3BoeS16eW5xbXAuYyBiL2RyaXZlcnMvcGh5L3hpbGlueC9w
aHktenlucW1wLmMKPiBpbmRleCBjMDM3ZDdjMTNkNDg1Li42YzU2YzRkZjg1MjNjIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvcGh5L3hpbGlueC9waHktenlucW1wLmMKPiArKysgYi9kcml2ZXJzL3Bo
eS94aWxpbngvcGh5LXp5bnFtcC5jCj4gQEAgLTUwNSw4ICs1MDUsMTIgQEAgc3RhdGljIHZvaWQg
eHBzZ3RyX2xhbmVfc2V0X3Byb3RvY29sKHN0cnVjdCB4cHNndHJfcGh5ICpndHJfcGh5KQo+ICAv
KiBCeXBhc3MgKGRlKXNjcmFtYmxlciBhbmQgOGIvMTBiIGRlY29kZXIgYW5kIGVuY29kZXIuICov
Cj4gIHN0YXRpYyB2b2lkIHhwc2d0cl9ieXBhc3Nfc2NyYW1ibGVyXzhiMTBiKHN0cnVjdCB4cHNn
dHJfcGh5ICpndHJfcGh5KQo+ICB7CgpbIC4uLiBdCgo+IHN0YXRpYyBpbnQgeHBzZ3RyX3BoeV9p
bml0KHN0cnVjdCBwaHkgKnBoeSkKPiB7Cj4gCXN0cnVjdCB4cHNndHJfcGh5ICpndHJfcGh5ID0g
cGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gCXN0cnVjdCB4cHNndHJfZGV2ICpndHJfZGV2ID0gZ3Ry
X3BoeS0+ZGV2Owo+IAlpbnQgcmV0ID0gMDsKPiAKPiAJbXV0ZXhfbG9jaygmZ3RyX2Rldi0+Z3Ry
X211dGV4KTsKPiAKPiAJLyogQ29uZmlndXJlIGFuZCBlbmFibGUgdGhlIGNsb2NrIHdoZW4gcGVy
aXBoZXJhbCBwaHlfaW5pdCBjYWxsICovCj4gCWlmIChjbGtfcHJlcGFyZV9lbmFibGUoZ3RyX2Rl
di0+Y2xrW2d0cl9waHktPnJlZmNsa10pKQo+IAkJZ290byBvdXQ7CgpbU2V2ZXJpdHk6IEhpZ2hd
ClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBkb2VzIHRoaXMgZXJyb3IgcGF0aCBm
YWlsIHRvIHNldCB0aGUKcmV0dXJuIGNvZGU/IAoKV2hlbiBjbGtfcHJlcGFyZV9lbmFibGUoKSBm
YWlscywgaXQganVtcHMgdG8gJ291dCcgd2hpbGUgJ3JldCcKaXMgc3RpbGwgMCwgbGVhZGluZyB0
byBhIGZhbHNlIHN1Y2Nlc3MgcmV0dXJuLiBUaGlzIGNhbiBjYXVzZSB0aGUgUEhZCmZyYW1ld29y
ayB0byBhc3N1bWUgdGhlIFBIWSBpcyBpbml0aWFsaXplZC4KCj4gCj4gCS8qIFNraXAgaW5pdGlh
bGl6YXRpb24gaWYgbm90IHJlcXVpcmVkLiAqLwo+IAlpZiAoIXhwc2d0cl9waHlfaW5pdF9yZXF1
aXJlZChndHJfcGh5KSkKPiAJCWdvdG8gb3V0Owo+IAo+IAlpZiAoZ3RyX2Rldi0+dHhfdGVybV9m
aXgpIHsKPiAJCXJldCA9IHhwc2d0cl9waHlfdHhfdGVybV9maXgoZ3RyX3BoeSk7Cj4gCQlpZiAo
cmV0IDwgMCkKPiAJCQlnb3RvIG91dDsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1l
eGlzdGluZyBpc3N1ZSwgYnV0IGRvZXMgdGhpcyBlcnJvciBwYXRoIGp1bXAgdG8gJ291dCcgd2l0
aG91dApkaXNhYmxpbmcgdGhlIHByZXZpb3VzbHkgZW5hYmxlZCBjbG9jaz8KCkJlY2F1c2UgJ3Jl
dCcgaXMgbmVnYXRpdmUgaGVyZSwgdGhlIFBIWSBmcmFtZXdvcmsgY29uc2lkZXJzIHRoZQppbml0
aWFsaXphdGlvbiBmYWlsZWQgYW5kIHdvbid0IGNhbGwgeHBzZ3RyX3BoeV9leGl0KCkuIFRoaXMg
cmVzdWx0cyBpbgphIHBlcm1hbmVudCBjbG9jayByZXNvdXJjZSBsZWFrLgoKPiAKPiAJCWd0cl9k
ZXYtPnR4X3Rlcm1fZml4ID0gZmFsc2U7Cj4gCX0KPiAKPiAJLyogRW5hYmxlIGNvYXJzZSBjb2Rl
IHNhdHVyYXRpb24gbGltaXRpbmcgbG9naWMuICovCj4gCXhwc2d0cl93cml0ZV9waHkoZ3RyX3Bo
eSwgTDBfVE1fUExMX0RJR18zNywgTDBfVE1fQ09BUlNFX0NPREVfTElNSVQpOwo+IAo+IAkvKgo+
IAkgKiBDb25maWd1cmUgdGhlIFBMTCwgdGhlIGxhbmUgcHJvdG9jb2wsIGFuZCBwZXJmb3JtIHBy
b3RvY29sLXNwZWNpZmljCj4gCSAqIGluaXRpYWxpemF0aW9uLgo+IAkgKi8KPiAJcmV0ID0geHBz
Z3RyX2NvbmZpZ3VyZV9wbGwoZ3RyX3BoeSk7Cj4gCWlmIChyZXQpCj4gCQlnb3RvIG91dDsKCltT
ZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IGRvZXMgdGhp
cyBlcnJvciBwYXRoIGFsc28gbGVhayB0aGUgY2xvY2s/CgpMaWtlIHRoZSB0eF90ZXJtX2ZpeCBm
YWlsdXJlIGFib3ZlLCB0aGlzIGp1bXBzIHRvICdvdXQnIHdpdGhvdXQgY2FsbGluZwpjbGtfZGlz
YWJsZV91bnByZXBhcmUoKSBvbiB0aGUgY2xvY2sgZW5hYmxlZCBhdCB0aGUgc3RhcnQgb2YgdGhl
IGZ1bmN0aW9uLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDYyNzE1NTIyOS4yNzkxMTEzLTEtcmFkaGV5LnNoeWFtLnBhbmRleUBh
bWQuY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
