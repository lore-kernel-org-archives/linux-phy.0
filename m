Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15D7606A332
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 17:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=h70CzdRB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=X4JOfDNB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xCzXixUBU+PU7S3olG/jqW6hlKF5JaYZkIRrOjoEowA=; b=h70CzdRBMjlyRLzJotLZmYwnY1
	oAoReT1CtrtMdJUY8BvYeUH17CawgxBlVPEj0sXnu220Jk9nwHJFElPZcxJ4hR2OynTJKsW8HxKHo
	jpgotJTooJ6Ae/Zbw1vdN5rq/hJ38up06jtHyvf19eAVzjsBIuHEE+Wal7Cdz1LvK5B6h2gSB8h6I
	eviKrv6r5vNKnm2EQaeqPIU4tCcK0VxVx+gHntMinalCpoMIBHlscrTahFeUGV5/FazecgMrwUCP4
	WBLOXyiTFcmGnnrJL9W3984K9HIHRAzmhmxJ6oNqwVP7XUy+ODd40asSVxHkztILoPFS7/Aei955n
	TCbTGgEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVuBZ-00000007KPk-35Hs;
	Tue, 24 Nov 2026 17:20:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVuBW-00000007KPP-2Qdw
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 17:20:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EA03162041;
	Tue, 24 Nov 2026 17:20:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C824F1F000CF;
	Tue, 24 Nov 2026 17:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795540801;
	bh=yJXaOTLPADS0eHWQhkP2EKhKD6OL+acnlix42B9TF2o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=X4JOfDNB1H27N6Mt7lKKxUI3ebOzh/iGospMnEIkX0luEqvDHXdTunpGrieWu4C4F
	 wvqFzqM/V4zVBP4NRZSpVdFjO5I1owRODUbTlkzTAzGKGK6TtMhz0F0JrGygMh61+7
	 i20hdscuJiohYi905ZGFBmaCka4GqXK078P3r4I+A8Nfm+53qRIskX1Ii0ybLCY4VL
	 Av/RKrThl8K2SP0DfDP0H4lWG9XqOng3Qos6KB2/907UvQmAq66nYl4iUT7jdsmaLg
	 pYGH8jsMqfq0Z9tIkmXu5TTE0RXI0KicE0JH1D6GrgiqnOeh7V97Dv5mNTeZu956+/
	 7BRV+YxK/F9Ig==
Message-ID: <sashiko-outbox-231687@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: exynos: exynos7885-gta3xllte: Enable
 USB support
To: "Umer Uddin" <umer.uddin@mentallysanemainliners.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-usb@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261124-gta3xllte-usb-battery-v2-1-80bdcb1753bb@mentallysanemainliners.org>
References: <20261124-gta3xllte-usb-battery-v2-0-80bdcb1753bb@mentallysanemainliners.org>
 <20261124-gta3xllte-usb-battery-v2-1-80bdcb1753bb@mentallysanemainliners.org>
Date: Tue, 24 Nov 2026 17:20:00 +0000
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
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGFybTY0OiBkdHM6IGV4eW5v
czogdW5kZWZpbmVkIHVzYmRyZCBsYWJlbHMgYnJlYWsKICBleHlub3M3ODg1LWd0YTN4bGx0ZS5k
dGIgYnVpbGQKLS0KCmNvbW1pdCAyNDkzNGRkMmE4Y2RmNTExZDVkYjA4MWI3MTQ0MWVlMmEyOTVi
NDBiCkF1dGhvcjogVW1lciBVZGRpbiA8dW1lci51ZGRpbkBtZW50YWxseXNhbmVtYWlubGluZXJz
Lm9yZz4KCmFybTY0OiBkdHM6IGV4eW5vczogZXh5bm9zNzg4NS1ndGEzeGxsdGU6IEVuYWJsZSBV
U0Igc3VwcG9ydAoKVGhpcyBjb21taXQgYWRkcyBhIGZpeGVkIGR1bW15IHJlZ3VsYXRvciBhbmQg
ZW5hYmxlcyB0aGUgVVNCIGNvbnRyb2xsZXIgYW5kClBIWSBpbiBwZXJpcGhlcmFsIG1vZGUgZm9y
IHRoZSBTYW1zdW5nIEdhbGF4eSBUYWIgQSAxMC4xICgyMDE5KS4KCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvZXh5bm9zL2V4eW5vczc4ODUtZ3RhM3hsbHRlLmR0cyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvZXh5bm9zL2V4eW5vczc4ODUtZ3RhM3hsbHRlLmR0cwo+IGluZGV4IDAz
NDc2ZjhiMTIwMGIuLjU3ZGY4NzhjYjU2MzMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9leHlub3MvZXh5bm9zNzg4NS1ndGEzeGxsdGUuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9leHlub3MvZXh5bm9zNzg4NS1ndGEzeGxsdGUuZHRzClsgLi4uIF0KPiBAQCAtMTI3
LDMgKzEzMywxOSBAQCBrZXlfdm9sdXA6IGtleS12b2x1cC1waW5zIHsKPiAgCQlzYW1zdW5nLHBp
bi1kcnYgPSA8RVhZTk9TNTQyMF9QSU5fRFJWX0xWMT47Cj4gIAl9Owo+ICB9Owo+ICsKPiArJnVz
YmRyZCB7Cj4gKwl2ZGQxMC1zdXBwbHkgPSA8JnJlZ19kdW1teT47Cj4gKwl2ZGQzMy1zdXBwbHkg
PSA8JnJlZ19kdW1teT47Cj4gKwo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArJnVz
YmRyZF9kd2MzIHsKPiArCS8qIEZvcmNlIHRvIHBlcmlwaGVyYWwgdW50aWwgd2UgaGF2ZSBUeXBl
LUMgd29ya2luZyAqLwo+ICsJZHJfbW9kZSA9ICJwZXJpcGhlcmFsIjsKPiArfTsKPiArCj4gKyZ1
c2JkcmRfcGh5IHsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKCltTZXZlcml0eTogSGlnaF0K
QXJlIHRoZSB1c2JkcmQsIHVzYmRyZF9kd2MzLCBhbmQgdXNiZHJkX3BoeSBsYWJlbHMgZGVmaW5l
ZCBpbgphcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9leHlub3M3ODg1LmR0c2k/ICBOZWl0aGVy
IGV4eW5vczc4ODUuZHRzaSBub3IKdGhlIGZpbGVzIGl0IGluY2x1ZGVzIGRlZmluZSB0aGVzZSBu
b2Rlcywgc28gYnVpbGRpbmcKZXh5bm9zNzg4NS1ndGEzeGxsdGUuZHRiIHdpdGggQ09ORklHX0FS
Q0hfRVhZTk9TIGVuYWJsZWQgZmFpbHMgaW4gZHRjIHdpdGgKbWlzc2luZyBsYWJlbCBlcnJvcnMu
CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0
LzIwMjYxMTI0LWd0YTN4bGx0ZS11c2ItYmF0dGVyeS12Mi0wLTgwYmRjYjE3NTNiYkBtZW50YWxs
eXNhbmVtYWlubGluZXJzLm9yZz9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
