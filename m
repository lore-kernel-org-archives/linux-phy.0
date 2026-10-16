Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 253ECCCF2C2
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 18:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8cutdmOwYEuk8nuKjOHmmPUocF3wYIP1Y7dMgW1cCk=; b=1HMPC/zhIlCkGm
	rQ99ESHqo4hDhqqOq5LptNqHJoWgByPKaVKiudT68ZR4xPwliyv6O4eSWEmM6UyR5nXjGb293i2WZ
	XzyQGpAdrH5Wo1W+uVxGAdDJ0uw4wgVTck4OfStVtoLq7yQVtYU6Roac0mVz+nXVi6ZqKOCIKFm0v
	4NdRST/wlPKLZ6wQyJBbFwgjd9+QIGOaGgCpsgiNrNCJpWjGOPy4LJetNXbciLyIrvSJAdmmusaCp
	EtS2ExpxkrD0TbMagigBs9eq1rerhgMaoIT+3cXkO0UXa7e2WgckcvdO6aZ4GtW2XzBBIUntWHsN6
	Y2uea5peK59ubHzAfcJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHmUO-00000003dmH-2OyX;
	Fri, 16 Oct 2026 18:17:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHmUN-00000003dm8-2sWO
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 18:17:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3DBEC41841;
	Fri, 16 Oct 2026 18:17:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF6D31F000C4;
	Fri, 16 Oct 2026 18:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792174627;
	bh=qhzTzwfxB4FUI9NuybMbOBFVPvM3VMC+au2duGOGqm8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nzkvPTHCuAXE1zqei4dPE4TdUY5j7BsRb+iV0wp+VeiQr8FRenHiJI64ri2nHvd8W
	 yNvdA775FRMYpCbYi7m4ANoWLZk8CsLUHX//ZAxtYS6icQbuW2rWQpHOtx5/hrfFrn
	 2wCtDeXUUVzff5kDEEhMQ9fIMlesvjFZ+dWOIArvLQK9BoGTi4Scn1Ma4gdOlrxoHi
	 OSyVbgoB0nJ2dVnxXrTBhkyW5HzrqbQI1OUAJ1f3Ccp94bbVOaaopId/N9GZg8bVSu
	 QHKA5hURg0D8/iSAcXbuka6Gvt6M5O6w5O4OQCusFjuKRfwB+4oT81oTxxzkWHAxvt
	 CSvtJ9weiYwRQ==
Message-ID: <sashiko-outbox-174762@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 5/6] phy: realtek: usb2: add support for RTL9607C
 USB2 PHY
To: "Rustam Adilov" <adilov@disroot.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Cc: robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261016180314.31760-6-adilov@disroot.org>
References: <20261016180314.31760-1-adilov@disroot.org>
 <20261016180314.31760-6-adilov@disroot.org>
Date: Fri, 16 Oct 2026 18:17:06 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogcmVhbHRlazog
bWlzc2luZyBvZl9pb21hcCgpIGNoZWNrIGxlYWRzIHRvIE5VTEwgZGVyZWZlcmVuY2UKLS0KCmNv
bW1pdCA2OWUyMmRhNTI5ZjNjYWQ0NGNhOTdjMGM2ZjBhODBlMDNmNDNhZDdlCkF1dGhvcjogUnVz
dGFtIEFkaWxvdiA8YWRpbG92QGRpc3Jvb3Qub3JnPgoKcGh5OiByZWFsdGVrOiB1c2IyOiBhZGQg
c3VwcG9ydCBmb3IgUlRMOTYwN0MgVVNCMiBQSFkKClRoaXMgY29tbWl0IGFkZHMgc3VwcG9ydCBm
b3IgdGhlIFVTQjIgUEhZIG9uIFJUTDk2MDdDIHNlcmllcyBTb0NzLiBJdAppbmNsdWRlcyBuZXcg
bWFjcm9zLCBjb25maWd1cmF0aW9uIHN0cnVjdHVyZXMsIGJpZy1lbmRpYW4gYWNjZXNzIGZ1bmN0
aW9ucywKYW5kIGxvZ2ljIHRvIGNsZWFyIGEgZm9yY2UgaG9zdCBkaXNjb25uZWN0IGJpdCBkdXJp
bmcgaW5pdGlhbGl6YXRpb24uCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yZWFsdGVrL3Bo
eS1ydGstdXNiMi5jIGIvZHJpdmVycy9waHkvcmVhbHRlay9waHktcnRrLXVzYjIuYwo+IGluZGV4
IDJkZGFkN2JlNzM1MzQuLjY0MDc2OTM4YzgyMWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkv
cmVhbHRlay9waHktcnRrLXVzYjIuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0
ay11c2IyLmMKClsgLi4uIF0KCj4gQEAgLTYwMCw2ICs2MTcsMjMgQEAgc3RhdGljIGludCBkb19y
dGtfcGh5X2luaXQoc3RydWN0IHJ0a19waHkgKnJ0a19waHksIGludCBpbmRleCkKPiAgCQlnb3Rv
IGRvX3RvZ2dsZTsKPiAgCX0KPiAgCj4gKwlpZiAocGh5X2NmZy0+Zm9yY2VfaG9zdF9kaXNjb25u
ZWN0KSB7Cj4gKwkJY29uc3Qgc3RydWN0IHBoeV9yZWdfZGVzYyAqcmVnX2Rlc2MgPSBwaHlfcmVn
LT5kZXNjOwo+ICsJCXZvaWQgX19pb21lbSAqdnN0YXR1cyA9IHBoeV9yZWctPnJlZ193cmFwX3Zz
dGF0dXM7Cj4gKwkJdTMyIHRlbXA7Cj4gKwo+ICsJCXRlbXAgPSByZWdfZGVzYy0+cmVhZCh2c3Rh
dHVzICsgUEhZXzk2MDdfRk9SQ0VfRElTQ09OTkVDVF9SRUcpOwoKW1NldmVyaXR5OiBIaWdoXQpD
YW4gdGhpcyByZXN1bHQgaW4gYSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2U/CgpJZiBvZl9pb21h
cCgpIGZhaWxzIHRvIG1hcCBkZXZpY2UgbWVtb3J5LCBpdCByZXR1cm5zIE5VTEwgd2hpY2ggaXMg
c3RvcmVkCndpdGhvdXQgdmFsaWRhdGlvbjoKCmRyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11
c2IyLmM6cGFyc2VfcGh5X2RhdGEoKSB7CiAgICAuLi4KICAgIHBoeV9wYXJhbWV0ZXItPnBoeV9y
ZWcucmVnX3dyYXBfdnN0YXR1cyA9IG9mX2lvbWFwKG5wLCAwKTsKICAgIC4uLgp9CgpUaGlzIG5l
dyBjb2RlIGluIGRvX3J0a19waHlfaW5pdCgpIHJlbGllcyBvbiB0aGlzIHBvaW50ZXIgYnkgZGVy
ZWZlcmVuY2luZwp2c3RhdHVzIHZpYSB0aGUgcmVhZCBmdW5jdGlvbi4gRG9lcyB0aGlzIG5lZWQg
YW4gZXJyb3IgY2hlY2sgZHVyaW5nIHRoZQppbml0aWFsIG1hcHBpbmcgb3IgYmVmb3JlIHRoaXMg
ZGVyZWZlcmVuY2U/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRl
di8jL3BhdGNoc2V0LzIwMjYxMDE2MTgwMzE0LjMxNzYwLTEtYWRpbG92QGRpc3Jvb3Qub3JnP3Bh
cnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
