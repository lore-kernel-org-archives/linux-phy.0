Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD340606A31C
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 06:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Abyup2EI;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=HoIYbTIS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hwurI8f754lfk24f4PbTcobeIYPiMXZ9KqeQ6rcCLV0=; b=Abyup2EIvBjcwkij5hypRf+kTd
	x1h1mUogKU+E8GIsPCIBnjodRyq3ZERiaaQ/ebNUoRg+/RjfZ9tEtIJlxOFePuPnjoNM9w8vDhTJv
	lPACR2taLOjFY4Xr6yhJZIkqoev1guNQ4e6KuaN7fXNbUt1DnrpknOmOl9GiAqa5dTcp9BRlZKXJ8
	FRenO0X5sULDdRaGzbwmNH9nRXQWfd04rcPVwK8l1fYnirhTBRAPYxmcyZorKoBTaYrflWWRsyHjl
	lqdVtHzuKbbSqYGoAhvskIMxraWrimvvFKEjli0Z08LtjdlypZhWxs+WaaZOtG/ZA9W1BhwBHN6el
	L9wYAOrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYkC-00000007pQ2-2T04;
	Wed, 18 Nov 2026 06:02:08 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYkA-00000007pPp-3QiR
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 06:02:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6D10761878;
	Wed, 18 Nov 2026 06:02:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6BFA1F000C5;
	Wed, 18 Nov 2026 06:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794981725;
	bh=7YzBbUvh+YmQiLurxmFfCk1GR6xhELDIM2Yj32PmuSM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HoIYbTISgyXS13am253L6tzK45in91AC9P3BEGG+OKaGCCoN9o5IORjK/HmkEmqdZ
	 yCH3dpdbuyTGMzluebQc5EbGtYLO67dTXwc1uqrdNtuAKl9Qgkt0uYWy1pTzxhKFSp
	 OL1g06Fomg/jDANHPVa5XL20A2cnBGWtK9aDFtxt4CLL8e1ZSsKUx3dde/PjbZvqX4
	 JNVrXM2JNKm2HitYP89tF/ZHGBkM1m9g6DsMD/4tAxwy7hEeZIGDrpiuLoedpoUiZ0
	 RkOUcgEIj+zZe++T6Zn6OzZKA/tWdbymmtOIONbdGFjHC8LNozP5Q2Qa9FfS/e8kHb
	 4ty4KbLSIYxVA==
Message-ID: <sashiko-outbox-220195@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 3/9] phy: rockchip-samsung-dcphy: Unwind power-on on
 PLL lock failure
To: "Jason Yang" <jason98166@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261118-dcphy-rx-v1-v7-3-8de1adac3a74@gmail.com>
References: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
 <20261118-dcphy-rx-v1-v7-3-8de1adac3a74@gmail.com>
Date: Wed, 18 Nov 2026 06:02:04 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gcGh5OiByb2NrY2hpcC1zYW1z
dW5nLWRjcGh5OiBtaXNzaW5nIEZpeGVzIHRyYWlsZXIgZm9yIFBMTCBsb2NrCiAgdW53aW5kCi0t
Cgpjb21taXQgNmM0YjE3ZjYxZWY2MWVkOWZiZTFlYjk3NDQ5YjIyOGFhYmEzZjE1NQpBdXRob3I6
IEphc29uIFlhbmcgPGphc29uOTgxNjZAZ21haWwuY29tPgoKPiBwaHk6IHJvY2tjaGlwLXNhbXN1
bmctZGNwaHk6IFVud2luZCBwb3dlci1vbiBvbiBQTEwgbG9jayBmYWlsdXJlCj4KPiBzYW1zdW5n
X21pcGlfZHBoeV9wb3dlcl9vbigpIHJldHVybnMgb24gYSBQTEwgbG9jayB0aW1lb3V0IHdpdGgg
UExMX0VOCj4gc2V0IGFuZCBtX3BoeV9yc3Qgc3RpbGwgYXNzZXJ0ZWQsIGFuZCB0aGUgUEhZIGNv
cmUgZG9lcyBub3QgY2FsbAo+IHBvd2VyX29mZiBhZnRlciBhIGZhaWxlZCBwb3dlcl9vbi4KPgo+
IFRvZGF5IHRoZSBBUEIgcmVzZXQgYXQgdGhlIHN0YXJ0IG9mIHRoZSBuZXh0IHBvd2VyX29uIGNs
ZWFucyB0aGlzIHVwLgo+Cj4gQSBsYXRlciBjaGFuZ2UgbW92ZXMgdGhhdCByZXNldCB0byBydW50
aW1lIHJlc3VtZSwgc28gdGhlIGxlZnRvdmVyCj4gUExMX0VOIHdvdWxkIHN0YXkgc2V0LCBhbmQg
cmVnbWFwX3VwZGF0ZV9iaXRzKCkgd291bGQgbm90IGV2ZW4gd3JpdGUKPiBpdCBhZ2Fpbi4KPgo+
IFVud2luZCB0aGUgcG93ZXItb24gYmVmb3JlIHJldHVybmluZyB0aGUgZXJyb3IuCj4KPiBSZXBv
cnRlZC1ieTogU2FzaGlrbyA8c2FzaGlrby1ib3RAa2VybmVsLm9yZz4KPiBDbG9zZXM6IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBoeS9zYXNoaWtvLW91dGJveC0xNzQwNTlAa2VybmVs
Lm9yZy8KPiBTaWduZWQtb2ZmLWJ5OiBKYXNvbiBZYW5nIDxqYXNvbjk4MTY2QGdtYWlsLmNvbT4K
PiBSZXZpZXdlZC1ieTogTWljaGFlbCBSaWVzY2ggPG1pY2hhZWwucmllc2NoQGNvbGxhYm9yYS5j
b20+Cj4gVGVzdGVkLWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAY2hlcnJ5LmRl
PiAjIFJLMzU4OCBUaWdlciBDU0kxIDItbGFuZSBJTVgyMTksIENTSTAgMi1sYW5lIE9WNTY3NStE
U0kKCltTZXZlcml0eTogTG93XQpUaGlzIGZpeGVzIHRoZSBpbmNvbXBsZXRlIGVycm9yIHBhdGgg
aW4gc2Ftc3VuZ19taXBpX2RwaHlfcG93ZXJfb24oKS4KU2hvdWxkIHRoaXMgaW5jbHVkZToKCiAg
Rml4ZXM6IGIyYTFhMmFlNzgxOCAoInBoeTogcm9ja2NoaXA6IEFkZCBTYW1zdW5nIE1JUEkgRC0v
Qy1QSFkgZHJpdmVyIikKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjExMTgtZGNwaHktcngtdjEtdjctMC04ZGUxYWRhYzNhNzRAZ21h
aWwuY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
