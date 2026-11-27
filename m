Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FE0606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 07:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Hfss8pbS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=HpfqIk8F
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=RmyfQRw8ueRk8ZiO2ZfXmRNWKjN0k9hLG7O9UPRvIPs=; b=Hfss8pbS5JOemRY6TReo+MASZ5
	BMgxTNdJwLNkveWM/7ltj+GvjBiOtW4HhsPQL952nwZUJlvOq4byeMhlEXNLFCDHjcwBXWFRlBLNP
	It1yNPxNTANzyaTY843C942SO/OiwEFMC/RhphHCAbOo86Bqwx1ZUBJfhetoJce77KNlNoLdhObyA
	aZsewT0Jch6GsiK/SbeOQoflSydbGVnAVFBhe/+krSHg8Q2ls8iEPnbYW4tt6ITm0qT1KBckNKlKn
	TYuSoB/8JHrarx4UAIokXtG0vUCA3KkJvZRfFQgN4y6c6ulPxjocQwLpJIBxzWSY+CUdYutwG32Vs
	S9LUJgAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqlU-0000000FD7o-46wM;
	Fri, 27 Nov 2026 07:53:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqlS-0000000FD7I-2mCJ
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 07:53:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9428C60ED9;
	Fri, 27 Nov 2026 07:53:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E19961F00898;
	Fri, 27 Nov 2026 07:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795765981;
	bh=tygDmtGB+yX+oGRU4+TSbqiueuQzDlrwuhNPzJVJiy8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HpfqIk8FfLmraAfgpZIWj8wHoSGrjos6X+GtAsDCaz13hPb3P6zZnR5azKuhfzEUS
	 2oR3sXKekTZvPEzF8jw2D5L3SefszxgSNnZpx0nzdWRrObkRIVBj+gInFk6b7SvwSS
	 O/gVGniKNaDtMeyiHWxUUns5pQ1UcziU+iWDqJeDJvpaEHMg/7XsUqzdigddgOcmOt
	 xTzvnae9edMAOd2QuzD6e5J1TQ6yUcfiNnoqp8wxrc+Ibpqs4KLA+4h83uirMC3lpO
	 yDT0sHwf3VlY6zdH60niLpooXX2UhaeM0DQaO79AyzjTqsBXS4VKu3OO9ZBDKNIpsz
	 Mpd7VNru0GyeA==
Message-ID: <sashiko-outbox-236841@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 3/9] phy: rockchip-samsung-dcphy: Unwind power-on on
 PLL lock failure
To: "Jason Yang" <jason98166@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261127-dcphy-rx-v1-v8-3-9ddfef99221d@gmail.com>
References: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
 <20261127-dcphy-rx-v1-v8-3-9ddfef99221d@gmail.com>
Date: Fri, 27 Nov 2026 07:53:00 +0000
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
Cgpjb21taXQgYzRjZmY2OWQ1M2MzM2NjODUzZjk2N2YyYjM3NWM1ZGMwYmQ5NGJkNQpBdXRob3I6
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
U0kKCltTZXZlcml0eTogTG93XQpUaGlzIGZpeGVzIHRoZSBpbmNvbXBsZXRlIGVycm9yIHVud2lu
ZCBpbiBzYW1zdW5nX21pcGlfZHBoeV9wb3dlcl9vbigpLgpTaG91bGQgaXQgaW5jbHVkZSBhIEZp
eGVzIHRhZzoKCiAgRml4ZXM6IGIyYTFhMmFlNzgxOCAoInBoeTogcm9ja2NoaXA6IEFkZCBTYW1z
dW5nIE1JUEkgRC0vQy1QSFkgZHJpdmVyIikKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMjctZGNwaHktcngtdjEtdjgtMC05ZGRm
ZWY5OTIyMWRAZ21haWwuY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
