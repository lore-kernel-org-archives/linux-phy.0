Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5378C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 13:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Agb8cLMMTOXV+Y3SNqtkhv5lfTO1aFtsdILSN8A/HpY=; b=EZ1seuyOH5fd2H
	znaZnQG4YFP1c4M00YISCd2i+10Q1PZR6m4WTN8gFz+OMnCEQ4SjtSY4+HfvgyJL80XLmCcKDh1ew
	YjxG4HwXcWym6dJvWCW3XkIgSiNLAkRj9WIfoQoaWWTDtrTQ1NzaDlaPYlAX9hzcsIahRUUg21US3
	qSzkPNwY9sDh4dQQvwxjidO7rl5TimD0uqzepWLQlfv7Tfj0T3EeTlbyIPV+hVdn+M7vAnpxxZSbA
	bOoKF007FSHdDMqUfQ0R6zw36dPavby1OKfJsLLsRf3zDyJiDCv4D/ZHhcnxd8xtGt2Ce6Vx77w8R
	3yNs0JnBImGzkhs1euTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYW1-0000000HAAb-26OG;
	Tue, 30 Jun 2026 13:28:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYVy-0000000HA9h-3vQv
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 13:28:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9B120402F4;
	Tue, 30 Jun 2026 13:28:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 113F91F00A3A;
	Tue, 30 Jun 2026 13:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782826118;
	bh=pGZSQjypMUdXOQ/qAERccKjvtdXttbB0Lef+ZubLVEo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HlUdN6H+zBVnvK+YP6U2SuoYEXBPxOvvCZgUa9/7NiQPljDR60Y7edF0HbPaXa1yP
	 uud5XZhetvShN7Oy/ksRjhASsWbssXUiJ/+p2lP309wEoqzpVsEYzLo1iicm63jbgd
	 elH9z5mwbcc97td+e4M5UfQvqd+ZoravZZFnBYK5CQnQ9qy0cajc/H8BVRU4G96xPj
	 LZno3zRVD34TluLFJEQPoXbHshpO4osPABIwRRfXwZLY0DHuAcMVJVrXVdCtFb/0YI
	 KsxiA4Oa77+LXOmHPVQcgNaoU9QQpXYQLIdc5ipOvTLMGMEOsK8+91Jr3pc5bhOHDy
	 yTLwIOCl7eEVw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 13/13] gpiolib: remove linux/gpio.h
To: "Arnd Bergmann" <arnd@kernel.org>
Cc: linux-sunxi@lists.linux.dev, dmitry.torokhov@gmail.com, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, linux-input@vger.kernel.org
In-Reply-To: <20260629132633.1300009-14-arnd@kernel.org>
References: <20260629132633.1300009-1-arnd@kernel.org>
 <20260629132633.1300009-14-arnd@kernel.org>
Date: Tue, 30 Jun 2026 13:28:37 +0000
Message-Id: <20260630132838.113F91F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gUmVtb3ZpbmcgYGluY2x1
ZGUvbGludXgvZ3Bpby5oYCBicmVha3MgdGhlIGJ1aWxkIGZvciBtdWx0aXBsZSBkcml2ZXJzIGFj
cm9zcyB0aGUga2VybmVsIHRyZWUgdGhhdCBzdGlsbCBpbmNsdWRlIGl0IGFuZCByZWx5IG9uIGl0
IGZvciBsZWdhY3kgR1BJTyBkZWNsYXJhdGlvbnMuCi0gW0xvd10gVHlwb2dyYXBoaWNhbCBlcnJv
ciBpbiBgZHJpdmVycy9ncGlvL1RPRE9gIHdoZXJlIGBsZWdhY3kuaGAgaXMgbWlzc3BlbGxlZCBh
cyBgbGFnYWN5LmhgLgotLQoKY29tbWl0IGViOGI5Yzg3MDlkNGZjOTZmNTE4ZjM1NzhkZWI2ZjBk
MDU5OTM2MDQKQXV0aG9yOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgoKZ3Bpb2xpYjog
cmVtb3ZlIGxpbnV4L2dwaW8uaAoKVGhpcyBjb21taXQgcmVtb3ZlcyB0aGUgaW5jbHVkZS9saW51
eC9ncGlvLmggaGVhZGVyIGVudGlyZWx5LCBjbGVhbmluZyB1cApsZWZ0b3ZlciBiaXRzIHVuZGVy
IHRoZSBhc3N1bXB0aW9uIHRoYXQgYWxsIGRyaXZlcnMgaGF2ZSBiZWVuIGNvbnZlcnRlZCB0bwpj
b25zdW1lci5oIG9yIGxlZ2FjeS5oLiBJdCBhbHNvIHVwZGF0ZXMgaW50ZXJuYWwgZ3Bpb2xpYiBp
bmNsdWRlcyBhbmQgYSAKVE9ETyBmaWxlIGFjY29yZGluZ2x5LgoKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncGlvL1RPRE8gYi9kcml2ZXJzL2dwaW8vVE9ETwo+IGluZGV4IDdjZTgwZmRlMWYxN2Uu
Ljg5NGM3ZTFhZjI1MmEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncGlvL1RPRE8KPiArKysgYi9k
cml2ZXJzL2dwaW8vVE9ETwo+IEBAIC01Miw5ICs1Miw3IEBAIFdvcmsgaXRlbXM6Cj4gICAgYmFz
ZSBjYW4gYmUgbWFkZSBkeW5hbWljIChzZXQgdG8gLTEpIGlmIENPTkZJR19HUElPX1NZU0ZTIGlz
IGRpc2FibGVkLgo+ICAKPiAgLSBXaGVuIHRoaXMgd29yayBpcyBjb21wbGV0ZSAod2lsbCByZXF1
aXJlIHNvbWUgb2YgdGhlIGl0ZW1zIGluIHRoZQo+IC0gIGZvbGxvd2luZyBvbmdvaW5nIHdvcmsg
YXMgd2VsbCkgd2UgY2FuIGRlbGV0ZSB0aGUgb2xkIGdsb2JhbAo+IC0gIG51bWJlcnNwYWNlIGFj
Y2Vzc29ycyBmcm9tIDxsaW51eC9ncGlvLmg+IGFuZCBldmVudHVhbGx5IGRlbGV0ZQo+IC0gIDxs
aW51eC9ncGlvLmg+IGFsdG9nZXRoZXIuCj4gKyAgZm9sbG93aW5nIG9uZ29pbmcgd29yayBhcyB3
ZWxsKSB3ZSBjYW4gZGVsZXRlIDxsaW51eC9ncGlvL2xhZ2FjeS5oPi4KICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5eXl5eXl5e
CltTZXZlcml0eTogTG93XQpUaGlzIGlzbid0IGEgYnVnLCBidXQgdGhlcmUgaXMgYSB0eXBvIGhl
cmUgKGxhZ2FjeS5oIGluc3RlYWQgb2YgbGVnYWN5LmgpLgoKWyAuLi4gXQoKPiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9saW51eC9ncGlvLmggYi9pbmNsdWRlL2xpbnV4L2dwaW8uaAo+IGRlbGV0ZWQg
ZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IGIwZDQ5NDJhNjVkZTIuLjAwMDAwMDAwMDAwMDAKPiAt
LS0gYS9pbmNsdWRlL2xpbnV4L2dwaW8uaAo+ICsrKyAvZGV2L251bGwKPiBAQCAtMSwyMiArMCww
IEBAClsgLi4uIF0KPiAtI2lmZGVmIENPTkZJR19HUElPTElCX0xFR0FDWQo+IC0jaW5jbHVkZSA8
bGludXgvZ3Bpby9sZWdhY3kuaD4KPiAtI2VuZGlmIC8qIENPTkZJR19HUElPTElCX0xFR0FDWSAq
Lwo+IC0KPiAtI2VuZGlmIC8qIF9fTElOVVhfR1BJT19IICovCgpbU2V2ZXJpdHk6IExvd10KRG9l
cyByZW1vdmluZyB0aGlzIGhlYWRlciBicmVhayB0aGUgYnVpbGQgZm9yIHJlbWFpbmluZyB1bmNv
bnZlcnRlZCBsZWdhY3kKR1BJTyBjb25zdW1lcnM/CgpGb3IgZXhhbXBsZSwgZHJpdmVycy9pbnB1
dC9rZXlib2FyZC9ncGlvX2tleXMuYzpncGlvX2tleXNfc2V0dXBfa2V5KCkgc3RpbGwKYXBwZWFy
cyB0byByZWx5IG9uIHRoaXMgaGVhZGVyIGZvciBkZXZtX2dwaW9fcmVxdWVzdF9vbmUoKToKCiAg
ICBlcnJvciA9IGRldm1fZ3Bpb19yZXF1ZXN0X29uZShkZXYsIGJ1dHRvbi0+Z3BpbywgR1BJT0Zf
SU4sIGRlc2MpOwoKU2ltaWxhcmx5LCBkcml2ZXJzL2xlZHMvbGVkcy1ncGlvLmM6Z3Bpb19sZWRf
Z2V0X2dwaW9kKCkgYWxzbyByZWxpZXMgb24gaXQ6CgogICAgcmV0ID0gZGV2bV9ncGlvX3JlcXVl
c3Rfb25lKGRldiwgdGVtcGxhdGUtPmdwaW8sIEdQSU9GX09VVF9JTklUX0xPVywKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB0ZW1wbGF0ZS0+bmFtZSk7CgpBbmQgYXJjaC94ODYvcGxh
dGZvcm0vb2xwYy9vbHBjLXhvMS1zY2kuYzpzZXR1cF9lY19zY2koKSBzdGlsbCB1c2VzCmdwaW9f
cmVxdWVzdCgpOgoKICAgIHIgPSBncGlvX3JlcXVlc3QoT0xQQ19HUElPX0VDU0NJLCAiT0xQQy1F
Q1NDSSIpOwoKV2lsbCB0aGVzZSBkcml2ZXJzIGZhaWwgdG8gY29tcGlsZSBzaW5jZSBmdW5jdGlv
bnMgbGlrZSBkZXZtX2dwaW9fcmVxdWVzdF9vbmUoKQphbmQgZ3Bpb19yZXF1ZXN0KCkgd2lsbCBu
b3cgYmUgbWlzc2luZyBvciBpbXBsaWNpdGx5IGRlY2xhcmVkPwoKLS0gClNhc2hpa28gQUkgcmV2
aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYyOTEzMjYzMy4xMzAw
MDA5LTEtYXJuZEBrZXJuZWwub3JnP3BhcnQ9MTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
