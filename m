Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BB4FC43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 10:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xbo3R/2CPkwbOeMNj4ByQuzZeGhd9oENaJEJ2tZ111M=; b=SxcsU4WtdWjprf
	SMSRiw3YFBRz6eICXx8rhc7Z8WAsXjFm78xDetmLUFZqbtcFnUHR/vyVRdXGSw0/QMU1OJT177xKc
	5Gy+NUSAWMS3+rNBcdcK5n+lZNWVmrpC5aK+as1zp2l5NRe0MJo5cOoLMDo4jsIrZI7kO7ebpeo/I
	sU1hU6NDDXoqqfnLrM/06sDRNwMrZRoKJncBHoj9x/ChgzzRkRhUWk7m45PqzFImornhUP9ztEv2T
	oQV/iq4bZMJjV1gHsJNLp6Q6Y7IMLSYKtZqVmZy09YYU/CgwCOaQbj2Tlv7i3WgE3UO2sZV1BN+MK
	01BKQ/jT8ON6KRCHxyqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weW58-0000000GikB-3rk9;
	Tue, 30 Jun 2026 10:52:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weW57-0000000GijP-2WQ9
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 10:52:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D166E600BB;
	Tue, 30 Jun 2026 10:52:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CE621F00ACA;
	Tue, 30 Jun 2026 10:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782816764;
	bh=pZiwdHb5NM+LDKwDaBQ4jpdM2owSKEOXvHH5zt4wVzE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AYF/1TzHChvmxLfHURa5RlAXuVESYNzJa8kPLTgmXlH+GAh8Fhm3nExZ/IiuzyW+Q
	 los+dDubcizU4wbPRY60CQ9OQ4R4kJUbkqG8GU557bvD0Aco6+593a7EkJCQzr376Z
	 rL5T3/d2YLpedWOBTB8o71O8MODZvudWiiONOEsYPqOKB6e5r6yHUI+pDyUjMAPVKZ
	 sgwiIoDfHMs235hIwY9bvkepZ9GZEKp9Sw1QjfbRFSL74K833tS7rj03Xwsk5e4m61
	 rUG6wW17OL8GZaVYi/cm1ItkSrmMdbqbagUuJLkidRkSulUvtIWjdPqclhdqunm8Hm
	 CBMlHGnea7hyQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/5] phy: fsl-imx8mq-usb: add runtime PM support
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: imx@lists.linux.dev, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, Frank.Li@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260630-imx8mp-usb-phy-improvement-v5-3-25d616403844@nxp.com>
References: <20260630-imx8mp-usb-phy-improvement-v5-0-25d616403844@nxp.com>
 <20260630-imx8mp-usb-phy-improvement-v5-3-25d616403844@nxp.com>
Date: Tue, 30 Jun 2026 10:52:43 +0000
Message-Id: <20260630105244.2CE621F00ACA@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgYHBtX3J1
bnRpbWVfZGlzYWJsZSgpYCBpbiBgaW14OG1xX3VzYl9waHlfcHJvYmUoKWAgZXJyb3IgcGF0aHMg
Y2F1c2VzIGEgYGRpc2FibGVfZGVwdGhgIGltYmFsYW5jZSBhbmQgUE0gc3RhdGUgY29ycnVwdGlv
bi4KLS0KCmNvbW1pdCBlOTQxOGM4ZDUxMGU4NDkyZWY5YTUyYWNlNGNiNmQ2NzIwNDFkNDQ4CkF1
dGhvcjogWHUgWWFuZyA8eHUueWFuZ18yQG54cC5jb20+CgpwaHk6IGZzbC1pbXg4bXEtdXNiOiBh
ZGQgcnVudGltZSBQTSBzdXBwb3J0CgpUaGlzIGNvbW1pdCBhZGRzIHJ1bnRpbWUgUE0gc3VwcG9y
dCB0byBlbnN1cmUgdGhlIFBIWSBpcyBwcm9wZXJseSBwb3dlcmVkCmFuZCBjbG9ja2VkIGR1cmlu
ZyByZWdpc3RlciBhY2Nlc3MsIHByZXZlbnRpbmcgcG90ZW50aWFsIHN5c3RlbSBoYW5ncy4KCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYyBi
L2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwo+IC0tLSBhL2RyaXZl
cnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwo+ICsrKyBiL2RyaXZlcnMvcGh5
L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwoKWyAuLi4gXQoKPiBAQCAtNzA4LDYgKzY5
NSw5IEBAIHN0YXRpYyBpbnQgaW14OG1xX3VzYl9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPiAgCWlmIChJU19FUlIoaW14X3BoeS0+YmFzZSkpCj4gIAkJcmV0dXJuIFBU
Ul9FUlIoaW14X3BoeS0+YmFzZSk7Cj4gIAo+ICsJcG1fcnVudGltZV9zZXRfYWN0aXZlKGRldik7
Cj4gKwlwbV9ydW50aW1lX2VuYWJsZShkZXYpOwo+ICsKPiAgCXBoeV9vcHMgPSBvZl9kZXZpY2Vf
Z2V0X21hdGNoX2RhdGEoZGV2KTsKPiAgCWlmICghcGh5X29wcykKPiAgCQlyZXR1cm4gLUVJTlZB
TDsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGNvZGUgbmVlZCBhIGNsZWFudXAgcGF0aCB0
byBjYWxsIHBtX3J1bnRpbWVfZGlzYWJsZSgpIG9uIHByb2JlCmZhaWx1cmVzPwoKSWYgZnVuY3Rp
b25zIGZvbGxvd2luZyBwbV9ydW50aW1lX2VuYWJsZSgpIGZhaWwgKHN1Y2ggYXMKb2ZfZGV2aWNl
X2dldF9tYXRjaF9kYXRhKCksIGRldm1fcGh5X2NyZWF0ZSgpLCBvciBkZXZtX3JlZ3VsYXRvcl9n
ZXQoKSksCnRoZSBkcml2ZXIgcmV0dXJucyB0aGUgZXJyb3IgZGlyZWN0bHkgd2l0aG91dCBjbGVh
bmluZyB1cCB0aGUgUE0gc3RhdGUuCgpUaGlzIGNhbiBsZWF2ZSB0aGUgZGlzYWJsZV9kZXB0aCBj
b3VudGVyIG91dCBvZiBzeW5jLiBJZiB0aGUgZGV2aWNlIHByb2JlCmRlZmVycyAoZm9yIGV4YW1w
bGUsIGlmIGRldm1fcmVndWxhdG9yX2dldCgpIHJldHVybnMgLUVQUk9CRV9ERUZFUikgYW5kCnJ1
bnMgYWdhaW4sIHRoZSBzdWJzZXF1ZW50IHBtX3J1bnRpbWVfZW5hYmxlKCkgY291bGQgZHJvcCB0
aGUgY291bnRlcgpiZWxvdyB6ZXJvLiBUaGlzIG1pZ2h0IHRyaWdnZXIgYW4gdW5iYWxhbmNlZCBw
bV9ydW50aW1lX2VuYWJsZSB3YXJuaW5nCmFuZCBsZWF2ZSB0aGUgZGV2aWNlIHBlcm1hbmVudGx5
IHN0dWNrIGluIFJQTV9BQ1RJVkUuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9z
YXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjMwLWlteDhtcC11c2ItcGh5LWltcHJvdmVtZW50
LXY1LTAtMjVkNjE2NDAzODQ0QG54cC5jb20/cGFydD0zCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
