Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86FECC43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 19:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RX0qAXnn8LqPsMT61pY9KSpU6ThS5AIz7E3NrjuR2JY=; b=UPrWKR1Be8g58E
	D23TDQgjt6pRxoDtND5Y21X+Cf91I36jRjO3mlSPI0mcLob+muAk6EqBcBi0y7pcfKw7fL5Ioqtaq
	cWhQDjIHGTUZ0C8ekliJD61gFWFvslS/ZSzNhN/VcjS5eLEk52czoMU2tiw3ryRIheM3NV7Qe9BZO
	Hbo4EHtVeWOgMRaOK2Ral/EPFY3kaZJwpGkr6TZEt3LZA7cCnZgMZzMGlqGBXi4fKzAiQR2QZgprH
	GwQSmXZntHzhxksLlI22Axfy+QylnaGpJVx2lLXai/eGdhg/ZwjpYaqQSvOOughm56+ZAUN9sK8Q/
	HEf5sN6TnQMXkT0zWlAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuUY-00000003TSY-0XWp;
	Thu, 09 Jul 2026 19:33:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuUW-00000003TS6-297H
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 19:33:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 006AD43A95;
	Thu,  9 Jul 2026 19:33:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71F8E1F00AC4;
	Thu,  9 Jul 2026 19:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783625579;
	bh=a7DGsp9t1rh+v54dzdQNVdyfyEhARCwRb1SGP+3jJqE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hNxzs+lh07vnBzhJcXbcQwHBcSmPmfvoHA0svS+z8TOHxtjekFZtRzYJKxhuD5/xa
	 8G2AL3HdKeQHzW4178awfRouqR2KZDIjI2QoDYfxtitA9E1KGCKEgr7vfuzz0LPMLU
	 JK7BsM4MwVIOS7QCraCvNq13VAnB5AiY24WAaANq9DSz/gsDVQz5Gld7bIAq3tTR/x
	 rNW8Zv/Ys2OMQKdqP8lXSp+Fd7ScCGZFZFqSaZQphdQwd8wEqNPQMrkpalvShDaDHv
	 QCHRIAvhAG7rwwvFCxgwJqaEkvcDRCZeNtk7jnv/eOuaJtDJGOOaYAT2SLEusS565P
	 mR4o39ztz3gHQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 31/36] phy: rockchip: usbdp: Add phy reset
 notification support
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-31-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-31-a149ac60f76c@collabora.com>
Date: Thu, 09 Jul 2026 19:32:59 +0000
Message-Id: <20260709193259.71F8E1F00AC4@smtp.kernel.org>
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgUEhZX05P
VElGWV9QT1NUX1JFU0VUIG5vdGlmaWNhdGlvbiBvbiB0aGUgcmtfdWRwaHlfc2V0dXAoKSBlcnJv
ciBwYXRoLgotIFtIaWdoXSBUaGUgcmV0dXJuIHZhbHVlIG9mIHBoeV9ub3RpZnlfcmVzZXQoLi4u
LCBQSFlfTk9USUZZX1BSRV9SRVNFVCkgaXMgY29tcGxldGVseSBpZ25vcmVkLgotIFtIaWdoXSBU
aGUgVVNCMyBwb3J0IGlzIHBlcm1hbmVudGx5IGxlZnQgZGlzYWJsZWQgYWZ0ZXIgYSBQSFkgcmUt
aW5pdGlhbGl6YXRpb24uCi0tCgotLS0gUGF0Y2ggWzMxXTogW1BBVENIIHYxMSAzMS8zNl0gcGh5
OiByb2NrY2hpcDogdXNiZHA6IEFkZCBwaHkgcmVzZXQgbm90aWZpY2F0aW9uIHN1cHBvcnQgLS0t
CmNvbW1pdCA4ZTcwNTI2ODkxZDE1MmZhOGRkYmQyM2FjNWY4MzcxNmU2ZTViYzU1CkF1dGhvcjog
U2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpwaHk6
IHJvY2tjaGlwOiB1c2JkcDogQWRkIHBoeSByZXNldCBub3RpZmljYXRpb24gc3VwcG9ydAoKVGhp
cyBjb21taXQgYWRkcyBzdXBwb3J0IGZvciByZXNldCBub3RpZmljYXRpb25zIHRvIGdyYWNlZnVs
bHkgaGFuZGxlIHRoZQpQSFkgYmVpbmcgZGlzYWJsZWQuIFRoaXMgYXZvaWRzIGNvcnJ1cHRpbmcg
dGhlIGNvbnRyb2xsZXIncyBpbnRlcm5hbCBzdGF0ZQphbmQgZml4ZXMgbG9jayB0aW1lb3V0IGVy
cm9ycyBhZnRlciBkZXZpY2UgcmVwbHVncy4KCkkgbm90aWNlZCBhIGZldyBwb3RlbnRpYWwgcmVn
cmVzc2lvbnMgcmVsYXRlZCB0byBlcnJvciBoYW5kbGluZyBhbmQgaGFyZHdhcmUKZW5hYmxlbWVu
dCBpbiB0aGlzIHBhdGNoLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5
LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNi
ZHAuYwo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4g
KysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBAQCAtMTAw
NSw2ICsxMDA1LDExIEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfcG93ZXJfb24oc3RydWN0IHJrX3Vk
cGh5ICp1ZHBoeSwgdTggbW9kZSkKPiAgCX0KPiAgCj4gIAlpZiAodWRwaHktPnN0YXR1cyA9PSBV
RFBIWV9NT0RFX05PTkUpIHsKPiArCQlwaHlfbm90aWZ5X3Jlc2V0KHVkcGh5LT5waHlfdTMsIFBI
WV9OT1RJRllfUFJFX1JFU0VUKTsKCltTZXZlcml0eTogSGlnaF0KU2hvdWxkIHRoZSByZXR1cm4g
dmFsdWUgb2YgcGh5X25vdGlmeV9yZXNldCgpIGJlIGNoZWNrZWQgaGVyZT8gSWYgdGhlCmNvbnN1
bWVyJ3MgcHJlLXJlc2V0IG5vdGlmaWVyIHJldHVybnMgYW4gZXJyb3IgY29kZSwgcHJvY2VlZGlu
ZyB3aXRoIHRoZQpoYXJkd2FyZSByZXNldCBjb3VsZCBwb3RlbnRpYWxseSB0cmlnZ2VyIHhIQ0kg
U0Vycm9ycywgYW5kIHVuY29uZGl0aW9uYWxseQpjYWxsaW5nIHRoZSBwb3N0LXJlc2V0IG5vdGlm
aWNhdGlvbiBsYXRlciBtaWdodCB1bmJhbGFuY2UgdGhlIFBNIHJ1bnRpbWUKcmVmZXJlbmNlLgoK
PiArCj4gKwkJcmtfdWRwaHlfdTNfcG9ydF9kaXNhYmxlKHVkcGh5LCB0cnVlKTsKPiArCQl1ZGVs
YXkoMTApOwo+ICsKPiAgCQlyZXQgPSBya191ZHBoeV9zZXR1cCh1ZHBoeSk7Cj4gIAkJaWYgKHJl
dCkKPiAgCQkJcmV0dXJuIHJldDsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGVycm9yIHBh
dGggbGVhayBhIFBNIHJ1bnRpbWUgcmVmZXJlbmNlIGJ5IGxlYXZpbmcgdGhlIERXQzMKY29udHJv
bGxlciBwZXJtYW5lbnRseSBpbiBhIHByZS1yZXNldCBzdGF0ZT8gSXQgYXBwZWFycyB0aGUgZWFy
bHkgcmV0dXJuCnNraXBzIGJhbGFuY2luZyB0aGUgcHJpb3IgUEhZX05PVElGWV9QUkVfUkVTRVQg
bm90aWZpY2F0aW9uIHdpdGggYQpQSFlfTk9USUZZX1BPU1RfUkVTRVQgY2FsbC4KClsgLi4uIF0K
Cj4gQEAgLTEwMTIsMTMgKzEwMTcsMjIgQEAgc3RhdGljIGludCBya191ZHBoeV9wb3dlcl9vbihz
dHJ1Y3QgcmtfdWRwaHkgKnVkcGh5LCB1OCBtb2RlKQo+ICAJCWlmICghdWRwaHktPmhzICYmIHVk
cGh5LT5tb2RlICYgVURQSFlfTU9ERV9VU0IpCj4gIAkJCXJrX3VkcGh5X3UzX3BvcnRfZGlzYWJs
ZSh1ZHBoeSwgZmFsc2UpOwo+ICAJCXVkcGh5LT5waHlfbmVlZHNfcmVpbml0ID0gZmFsc2U7Cj4g
Kwo+ICsJCXBoeV9ub3RpZnlfcmVzZXQodWRwaHktPnBoeV91MywgUEhZX05PVElGWV9QT1NUX1JF
U0VUKTsKPiAgCX0gZWxzZSBpZiAodWRwaHktPnBoeV9uZWVkc19yZWluaXQpIHsKPiArCQlwaHlf
bm90aWZ5X3Jlc2V0KHVkcGh5LT5waHlfdTMsIFBIWV9OT1RJRllfUFJFX1JFU0VUKTsKCltTZXZl
cml0eTogSGlnaF0KU2ltaWxhciB0byB0aGUgY2hlY2sgYWJvdmUsIGRvZXMgdGhpcyBjb2RlIG5l
ZWQgdG8gaGFuZGxlIGVycm9ycyByZXR1cm5lZApmcm9tIHBoeV9ub3RpZnlfcmVzZXQoKSB0byBh
dm9pZCBoYXJkd2FyZSBpc3N1ZXMgb3IgdW5kZXJmbG93aW5nIHRoZQphdG9taWMgcmVzZXQgY291
bnQ/Cgo+ICsKPiAgCQlya191ZHBoeV91M19wb3J0X2Rpc2FibGUodWRwaHksIHRydWUpOwo+ICAJ
CXVkZWxheSgxMCk7Cj4gIAo+ICAJCXJldCA9IHJrX3VkcGh5X2luaXQodWRwaHkpOwo+IC0JCWlm
IChyZXQpCj4gKwkJaWYgKHJldCkgewo+ICsJCQlwaHlfbm90aWZ5X3Jlc2V0KHVkcGh5LT5waHlf
dTMsIFBIWV9OT1RJRllfUE9TVF9SRVNFVCk7Cj4gIAkJCXJldHVybiByZXQ7Cj4gKwkJfQo+ICsK
PiArCQlwaHlfbm90aWZ5X3Jlc2V0KHVkcGh5LT5waHlfdTMsIFBIWV9OT1RJRllfUE9TVF9SRVNF
VCk7Cj4gKwo+ICAJCXVkcGh5LT5waHlfbmVlZHNfcmVpbml0ID0gZmFsc2U7Cj4gIAl9CgpbU2V2
ZXJpdHk6IEhpZ2hdCklzIHRoZSBVU0IzIHBvcnQgaW50ZW50aW9uYWxseSBsZWZ0IGRpc2FibGVk
IG9uIHRoaXMgc3VjY2VzcyBwYXRoPyBVbmxpa2UKdGhlIGNvbGQgcG93ZXItb24gYnJhbmNoIGFi
b3ZlIGl0LCB0aGVyZSBpcyBubyBjb3JyZXNwb25kaW5nIGNhbGwgdG8KcmtfdWRwaHlfdTNfcG9y
dF9kaXNhYmxlKHVkcGh5LCBmYWxzZSkgd2hlbiBya191ZHBoeV9pbml0KCkgc3VjY2VlZHMuCkNv
dWxkIHRoaXMgcGVybWFuZW50bHkgYnJlYWsgVVNCMyBjb25uZWN0aXZpdHkgYWZ0ZXIgYSBQSFkg
cmUtaW5pdGlhbGl6YXRpb24Kb3IgbW9kZSBjaGFuZ2U/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzA5LXJvY2tjaGlwLXVzYmRw
LWNsZWFudXAtdjExLTAtYTE0OWFjNjBmNzZjQGNvbGxhYm9yYS5jb20/cGFydD0zMQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
