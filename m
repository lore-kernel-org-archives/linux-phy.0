Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ABE0C43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 19:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zpggGoRw+LObUUSluyNJLF1fZpQhF+RMlWfwDSD6CXg=; b=SR/uIgt9KR8nxJ
	8XlxU0GPgBZlaBzpNwpnWAa99lENwVv3rqsQNqMYPz4cLRdiY+Wq5k3PNGCQ+0VBDbtv6IHXqD4er
	VaGuuuMqu6pCd8JWbZ7WFsgVMp1EI89u/4BHmbNcRLRsmrk3a4d37PmJMYVaUaVyKC5BIKSvdqGG1
	NYQsmzOMoGtbE0NXqF86lY19hMhGazfuQeTEf8AfqmtPcmTFnUxM/G9sQ6QEiKlrliLxTD7KclbTz
	DoN1lPlZck44KM6fknAyIYPKPskZfkfx62uJ/aaUoNfoeq002/QoPYR+AEROW+geSPCabsGk6kegr
	4gKQ9Z0sop43MkV7yvfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuHm-00000003Rfg-0rRK;
	Thu, 09 Jul 2026 19:19:50 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuHl-00000003RfW-1CKg
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 19:19:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 11C6940A86;
	Thu,  9 Jul 2026 19:19:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 794A61F000E9;
	Thu,  9 Jul 2026 19:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783624789;
	bh=3CjEJdRn0UIWts05HSYdcEDNDG0EozPTMrCsJizSYRo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nETXf4faBIAYo3uFRBW3JLCJYOGuHor8ba0FcO+7DV0VwK4SzYwq6Kp2wULquqzaO
	 rGGqcjh7+K+p3zC+NbzfreYEkZepK8Z2JIKw2FcVe5BN6IgB0R4Aq2ZVMVNfnvPz2j
	 nkOU58LMLLVAa8EIJ0cCHWgCW+txa7FxwXlocxrXKHRun9i7x3AvD4L4JrExFMieZy
	 MEDjQdYmThA/Bne5Il7XJHmCugikwD1lyfbbwSCIRFyfPTqWcN3ORsIDrrwCBj8G6D
	 P6CVLTAAullCAe53dETgOv3T3dGVQvoJGNwgdYIwiA43gb60niF7P1dOsmUTlz0jNn
	 4FOsJ77wJ6YXQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 06/36] phy: rockchip: usbdp: Drop seamless DP
 takeover
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-6-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-6-a149ac60f76c@collabora.com>
Date: Thu, 09 Jul 2026 19:19:47 +0000
Message-Id: <20260709191948.794A61F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBJZiBQSFkgc2V0dXAgZmFpbHMgZHVyaW5nIGEgbW9kZSBjaGFuZ2UsIHRoZSBlcnJv
ciBwYXRoIGxlYXZlcyB0aGUgc3RhdGUgbWFjaGluZSBpbmNvbnNpc3RlbnQsIGxlYWRpbmcgdG8g
YW4gdW5iYWxhbmNlZCBjbG9jayBkaXNhYmxlIHdoZW4gdGhlIFBIWSBpcyBsYXRlciBwb3dlcmVk
IG9mZi4KLS0KCi0tLSBQYXRjaCBbNl06IFtQQVRDSCB2MTEgMDYvMzZdIHBoeTogcm9ja2NoaXA6
IHVzYmRwOiBEcm9wIHNlYW1sZXNzIERQIHRha2VvdmVyIC0tLQpjb21taXQgNmU4YTc0NmQzNGZi
OGI5M2U1YWNkNDBlMGQwNzY2Zjc0MGI1Yjk5NQpBdXRob3I6IFNlYmFzdGlhbiBSZWljaGVsIDxz
ZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2NrY2hpcDogdXNiZHA6IERy
b3Agc2VhbWxlc3MgRFAgdGFrZW92ZXIKICAgIApUaGlzIGNvbW1pdCByZW1vdmVzIHRoZSBpbml0
aWFsIHN0YXR1cyBjaGVja2luZyBjb2RlIGZyb20gdGhlIFJvY2tjaGlwIFVTQkRQCmNvbWJvIFBI
WSBkcml2ZXIsIGRyb3BwaW5nIHN1cHBvcnQgZm9yIHNlYW1sZXNzIERQIHRha2VvdmVyLiBUaGUg
ZmVhdHVyZSBpcwpjdXJyZW50bHkgdW5zdXBwb3J0ZWQgYnkgRFJNIGRyaXZlcnMgYW5kIGJvb3Rs
b2FkZXJzLCBhbmQgd291bGQgcmVxdWlyZQpjb21wbGV4IFRDUE0gc3RhdGUgc3luY2hyb25pemF0
aW9uIGZvciBVU0ItQyBhbHRlcm5hdGUgbW9kZXMuIFJlbW92aW5nIGl0CmNsZWFucyB1cCB1bnVz
ZWQgY29kZSB1bnRpbCBpdCBjYW4gYmUgcHJvcGVybHkgaW1wbGVtZW50ZWQuCgpDbG9zZXM6IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBoeS8yMDI2MDYxMjE2NDEwNy5DN0RCMjFGMDAw
RTlAc210cC5rZXJuZWwub3JnLwoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
dXNiZHAuYwo+IGluZGV4IDNmYzgyMjJmY2FlYzIuLjZjYjlmNmI0ZGJmNmQgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwoKWyAuLi4gXQoKPiBAQCAtMTQ5
NSwxMCArMTQ2OCw2IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKPiAgCWlmIChyZXQpCj4gIAkJcmV0dXJuIHJldDsKPiAgCj4gLQlyZXQg
PSBya191ZHBoeV9nZXRfaW5pdGlhbF9zdGF0dXModWRwaHkpOwo+IC0JaWYgKHJldCkKPiAtCQly
ZXR1cm4gcmV0Owo+IC0KPiAgCW11dGV4X2luaXQoJnVkcGh5LT5tdXRleCk7Cj4gIAlwbGF0Zm9y
bV9zZXRfZHJ2ZGF0YShwZGV2LCB1ZHBoeSk7Cj4gIAoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlz
IGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgSSBub3RpY2VkIGEgcG90ZW50aWFsIHN0YXRlIGlu
Y29uc2lzdGVuY3kKaW4gdGhlIFBIWSBtb2RlIGNoYW5nZSBlcnJvciBwYXRoLgoKSW4gZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmM6cmtfdWRwaHlfcG93ZXJfb24oKToK
Cgl9IGVsc2UgaWYgKHVkcGh5LT5tb2RlX2NoYW5nZSkgewoJCWlmICh1ZHBoeS0+bW9kZSA9PSBV
RFBIWV9NT0RFX0RQKQoJCQlya191ZHBoeV91M19wb3J0X2Rpc2FibGUodWRwaHksIHRydWUpOwoK
CQlya191ZHBoeV9kaXNhYmxlKHVkcGh5KTsKCQlyZXQgPSBya191ZHBoeV9zZXR1cCh1ZHBoeSk7
CgkJaWYgKHJldCkKCQkJcmV0dXJuIHJldDsKCklmIHJrX3VkcGh5X3NldHVwKCkgZmFpbHMgKGUu
Zy4gZHVlIHRvIGEgUExMIGxvY2sgdGltZW91dCksIHRoZSBmdW5jdGlvbgpyZXR1cm5zIGFuIGVy
cm9yIGRpcmVjdGx5IHdpdGhvdXQgdXBkYXRpbmcgdWRwaHktPnN0YXR1cy4KClNpbmNlIHRoZSBo
YXJkd2FyZSBoYXMgYWxyZWFkeSBiZWVuIGRpc2FibGVkIGJ5IHRoZSBwcmVjZWRpbmcgY2FsbCB0
bwpya191ZHBoeV9kaXNhYmxlKCksIGJ1dCB1ZHBoeS0+c3RhdHVzIHN0aWxsIHJlZmxlY3RzIHRo
ZSBwcmV2aW91cyBhY3RpdmUKc3RhdGUsIGNvdWxkIHRoaXMgbGVhZCB0byBhIGRvdWJsZS1kaXNh
YmxlIG9mIHRoZSBidWxrIGNsb2NrcyB3aGVuIHRoZQpjb25zdW1lciBsYXRlciB0ZWFycyBkb3du
IHRoZSBpbml0aWFsIG1vZGUgYW5kIGNhbGxzIHBoeV9wb3dlcl9vZmYoKT8KCi0tIApTYXNoaWtv
IEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDktcm9j
a2NoaXAtdXNiZHAtY2xlYW51cC12MTEtMC1hMTQ5YWM2MGY3NmNAY29sbGFib3JhLmNvbT9wYXJ0
PTYKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
