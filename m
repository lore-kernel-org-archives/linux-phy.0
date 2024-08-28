Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64134C5AE5A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Aug 2024 14:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9devQSqEZdKJlAcWYE0GwhNZ55QskTsRiWJcSziEW1g=; b=FSTCt+VUYGbNNI
	mkUNDCjW12tgHC4hqCuoHnG8WOGtu0x8DzmCtmaBjt2I0LyYNk4E4OidrF0KDW9JWhjECCN/0QjG7
	fyCB+SYPEDOxEVJyNhJCD8s0dhh43LZMRcmgaDYb8ydnSSHvwAypLIlmO2cHCK7N71RAD6V6Mxav3
	G7agJmlS9WehcEcGf2QKvps5fM0YC0rGCrMXwyuUV4JmlkfffWgHLbiu+soLAq2QjydkHahSyhota
	hr/zmTMrmpr3kaqxACXVrxywD7bGBa4PQ5nAU+Ey0UenP1b2ux5zciC9FmWpW82yeF2WzHtak5GVm
	rj0EFpJC6vhrcWpodkzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjJRi-0000000FhYQ-4B37;
	Wed, 28 Aug 2024 14:14:50 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjJOT-0000000Fgg8-0icm
	for linux-phy@lists.infradead.org;
	Wed, 28 Aug 2024 14:11:30 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-7cd9cfe4748so4546696a12.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Aug 2024 07:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724854287; x=1725459087; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PaF6W7lu2QVgwA/GjYxh6X4B7gmKcHBYm8H+RZZze/c=;
        b=QIPyHukxKtc6x1FrkJiXHXjp9YRD6PADyVGesAbjxyXxFVAlSEoYkXQHWpv0ASYdLp
         MeijXwTvNF9x/eDrz9zkzTXO5Zg1+HD+4sb+BCboveMDNVnlOZyCHZLPxvKYVwUW7dL3
         1S2Fl4iP6vYGddYpCZPYQIPo3MbPH7/6fOuqmT28QxUiIU0qLmnSDn2RnPM3ilGz8wR0
         nlzynz6w16DfksXmx2y2fnQw7/6wMpGdyFCzISR7mUHPd7hu7FIdBJS7I2tIXWT2zAW6
         I8i031RrjM3GovR31C26BnNT5dXMvLtxvLOpzsCwB8skO6iE1oZ6V+7ZfcwpWpiBT7GR
         wHNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724854287; x=1725459087;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PaF6W7lu2QVgwA/GjYxh6X4B7gmKcHBYm8H+RZZze/c=;
        b=L1XQDCZ7UQPOYLp3i+BLlZ0fhrYlf61R4omDwlNpSggHq1UJRqShJYw1IcCmIgny4i
         li2toZCU5L0OkhaleI9xlnQmAGoRxwS/sB2y0qOD3BX+QNv1MDv4yeSuYeMDQParemcY
         X6NDA1muuLqmXNDlrkl2OpKefxvwAKEl9xbhHUaHrt4ZNNkfSg7kAr+O637PIBV0flm8
         YtmkbO9PtmvMk0MI8ww0IppWxaYSKTFz44rvOsxVcBlXYNpS32UCRJ8YvnWhgZr6fdmB
         2QOp5vVd4I8VGprkEAGsYMo6S7QUI1TkoOqQxcBnun1SR4EAxB7N2fhbx07KOuq9x3Di
         T/Vw==
X-Gm-Message-State: AOJu0Yzcw+noL+3LtQVVL2zTbRZEYiOYbqfDks4jL22xPCvHA9X9hhMu
	irKN8FsKBPpKx7JIyGJu1ZLqlimUGtzNBZRCDsCLqpDAR0GEFoz/Gi1yhAbc40DFfkccM2ANyfI
	fCOJgEwBHZ/lj0ciM/fKg3S9sqsE=
X-Google-Smtp-Source: AGHT+IF8mMovITDlzNzeIznFSgzkSkncRGxB+afLX3C7vxnmqR9qXfni98H9Hf6uoLmdbjieRP7fC5udoY1GhEgyvx0=
X-Received: by 2002:a17:90a:514c:b0:2d3:b970:e4d4 with SMTP id
 98e67ed59e1d1-2d646d55712mr16814723a91.38.1724854287227; Wed, 28 Aug 2024
 07:11:27 -0700 (PDT)
MIME-Version: 1.0
References: <20240828024813.1353572-1-aford173@gmail.com> <20240828024813.1353572-2-aford173@gmail.com>
 <Zs7kJ6vCDbxVvxU1@atmark-techno.com>
In-Reply-To: <Zs7kJ6vCDbxVvxU1@atmark-techno.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 28 Aug 2024 09:11:16 -0500
Message-ID: <CAHCN7xLX1FPQFFBsgfd4Msa+y=KNay9M9q1fu=P1uuKZLacS4g@mail.gmail.com>
Subject: Re: [RFC 2/2] phy: freescale: fsl-samsung-hdmi: Support dynamic
 integer divider
To: Dominique Martinet <dominique.martinet@atmark-techno.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com, 
	frieder.schrempf@kontron.de, aford@beaconembedded.com, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Marco Felsch <m.felsch@pengutronix.de>, Lucas Stach <l.stach@pengutronix.de>, 
	linux-kernel@vger.kernel.org, Makoto Sato <makoto.sato@atmark-techno.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_071129_237472_AD5A2DD4 
X-CRM114-Status: GOOD (  32.08  )
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

T24gV2VkLCBBdWcgMjgsIDIwMjQgYXQgMzo0N+KAr0FNIERvbWluaXF1ZSBNYXJ0aW5ldAo8ZG9t
aW5pcXVlLm1hcnRpbmV0QGF0bWFyay10ZWNobm8uY29tPiB3cm90ZToKPgo+IEFkYW0gRm9yZCB3
cm90ZSBvbiBUdWUsIEF1ZyAyNywgMjAyNCBhdCAwOTo0ODowMlBNIC0wNTAwOgo+ID4gVGhlcmUg
aXMgY3VycmVudGx5IGEgbG9vay11cCB0YWJsZSBmb3IgYSB2YXJpZXR5IG9mIHJlc29sdXRpb25z
Lgo+ID4gU2luY2UgdGhlIHBoeSBoYXMgdGhlIGFiaWxpdHkgdG8gZHluYW1pY2FsbHkgY2FsY3Vs
YXRlIHRoZSB2YWx1ZXMKPiA+IG5lY2Vzc2FyeSB0byB1c2UgdGhlIGludGdlciBkaXZpZGVyIHdo
aWNoIHNob3VsZCBhbGxvdyBtb3JlCj4gPiByZXNvbHV0aW9ucyB3aXRob3V0IGhhdmluZyB0byB1
cGRhdGUgdGhlIGxvb2stdXAtdGFibGUuICBJZiB0aGUKPiA+IGludGVnZXIgY2FsY3VsYXRvciBj
YW5ub3QgZ2V0IGFuIGV4YWN0IGZyZXF1ZW5jeSwgaXQgZmFsbHMgYmFjawo+ID4gdG8gdGhlIGxv
b2stdXAtdGFibGUuICBCZWNhdXNlIHRoZSBMVVQgYWxnb3JpdGhtIGRvZXMgc29tZQo+ID4gcm91
bmRpbmcsIEkgZGlkIG5vdCByZW1vdmUgaW50ZWdlciBlbnRyaWVzIGZyb20gdGhlIExVVC4KPgo+
IFRoYW5rIHlvdSEKPgo+IFdlJ3JlIHN0aWxsIHJ1bm5pbmcgNS4xMCBzbyBJIGJhY2twb3J0ZWQg
dGhlIGRyaXZlciBhcyBvZiBpdCdzIGN1cnJlbnQKPiBzdGF0ZSBmaXJzdCAodGhhdCBwYXJ0IHdv
cmtzKSwgdW5mb3J0dW5hdGVseSBvdXIgNTEuMk1IeiBkaXNwbGF5IGRvZXMKPiBub3Qgd29yayB3
aXRoIHRoaXMuCj4KPiBBZnRlciBwaHlfY2xrX3JvdW5kX3JhdGUoKSBub3Qgcm91bmQgdGhlIHBp
eGVsIGNsb2NrIHRvIHRoZSB0YWJsZSB2YWx1ZXMKPiAob3RoZXJ3aXNlIHdlJ2Qgb25seSBnZXQg
cm91bmRlZCB2YWx1ZXMpLCBhbmQgbWFraW5nIHBoeV9jbGtfc2V0X3JhdGUoKQo+IHBhc3MgdGhl
IHJlcXVlc3RlZCBgcmF0ZWAgaW5zdGVhZCBvZiB1c2luZyB0aGUgbmV4dCBzbWFsbGVyIGNmZy0+
cGl4Y2xrLAo+IHRoZSBkaXNwbGF5IG5vIGxvbmdlciBjb21lcyB1cC4KCkRvIHlvdSB3YW50IG1l
IHRvIGNyZWF0ZSBhIHRhYmxlIGVudHJ5IGZvciA1MS4yTUh6PyAgSSBhbSBwcmV0dHkgc3VyZQp0
aGUgaW50ZWdlciBlbmdpbmUgY2FuIGhhbmRsZSBpdC4gIEknbGwgaW52ZXN0aWdhdGUgd2hhdCdz
IGNhbGxpbmcKcGh5X2Nsa19yb3VuZF9yYXRlIHRvIHNlZSBpZiB3ZSBjYW4gdXNlIHRoZSBQTVMg
Y2FsY3VhbHRvciB0byBhdm9pZAp0aGUgbG9vay11cCB0YWJsZS4KCgo+Cj4gSXQgY29tZXMgdXAg
d2l0aCB0aGUgdmFsdWVzIG9idGFpbmVkIGZvciA1MC40TUh6IChuZXh0IGNsb3Nlc3QgdmFsdWUp
LAo+IHdoaWNoIGFsc28gaGFzIGFuIGV4YWN0IG1hdGNoIHNvIHVzZXMgdGhlIGludGVnZXIgZGl2
aWRlciB0aGlzIHBhdGNoCj4gY29tcHV0ZXMgaW5zdGVhZCBvZiB0aGUgdGFibGUgdmFsdWVzLCBi
dXQgbm90IHdpdGggdGhlIDUxLjJNSHogaXQKPiByZXF1ZXN0cy4uLgo+IEknbSBhZnJhaWQgYXQg
dGhpcyBwb2ludCBJIGRvbid0IGtub3cgaG93IHRvIGRlYnVnIHRoYXQgZnVydGhlciB3aXRob3V0
Cj4gZ2V0dGluZyBhIHNjb3BlIG91dCAoSSBkb24ndCBrbm93IGlmIHRoZSBzb2MgaXNuJ3QgZ2Vu
ZXJhdGluZyBzb21ldGhpbmcKPiBjb3JyZWN0IG9yIGlmIHRoZSBkaXNwbGF5IGFjdHVhbGx5IGRv
ZXNuJ3QgbGlrZSB0aGUgZnJlcXVlbmN5IGl0Cj4gcmVxdWVzdHM/ISB0aGUgbGF0ZXIgY291bGQg
YmUgY2hlY2tlZCBieSBwbHVnZ2luZyBpdCBpbiB0byBhbm90aGVyIFBDCj4gdGhhdCBtaWdodCBz
dXBwb3J0IHRoYXQgZnJlcXVlbmN5Li4uKSwgYW5kIHRoYXQgaXMgZ29pbmcgdG8gdGFrZSBxdWl0
ZSBhCj4gd2hpbGUuLi4KPgo+IEhvcGVmdWxseSBGcmllZGVyIHdpbGwgaGF2ZSBtb3JlIHN1Y2Nl
c3Mgd2l0aCBoaXMgZGlzcGxheXM/Cj4gSXQgY291bGQgYWxzbyBiZSB2ZXJ5IHdlbGwgZHVlIHRv
IHNvbWUgb2YgdGhlIGRpZmZlcmVuY2VzIHdpdGggb3VyIDUuMTAKPiB0cmVlLCBzb3JyeSBhYm91
dCB0aGF0Lgo+Cj4gPiAgc3RhdGljIGludCBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmUo
c3RydWN0IGZzbF9zYW1zdW5nX2hkbWlfcGh5ICpwaHksCj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IHBoeV9jb25maWcgKmNmZykKPiA+ICB7
Cj4gPiArICAgICB1MzIgZGVzaXJlZF9jbG9jayA9IGNmZy0+cGl4Y2xrICogNTsKPgo+IChJIGRv
bid0IHJlYWxseSB1bmRlcnN0YW5kIHdoZXJlIHRoYXQgYCogNWAgY29tZXMgZnJvbSwgYnV0IEkg
Z3Vlc3MgaXQncwo+IGV4cGVjdGVkPyB3b3JrcyBmb3Igb3RoZXIgZGlzcGxheSBhbmQgbmVpZ2hi
b3IgZnJlcXVlbmN5IGFueXdheS4uLikKCldoZW4gSSBsb29rZWQgYXQgdGhlIExVVCBlbnRyaWVz
IGZvciB0aGUgY2xvY2sgcmF0ZXMgdGhhdCBkb24ndCBuZWVkCnRoZSBmcmFjdGlvbmFsIGRpdmlk
ZXIsIEkgbm90ZWQgdGhlIGNsb2NrIHJhdGUgd2FzIDV4IHRoZSBwaXggY2xvY2suClRoaXMgd2Fz
IGNvbnNpc3RlbnQgZm9yIGVhY2ggZW50cnkuICBFdmVuIHdoZW4gdGhlIGZyYWN0aW9uYWwgZGl2
aWRlcgp3YXMgdXNlZCwgaXQgYXBwZWFyZWQgdGhhdCB0aGUgY2xvY2sgcmF0ZSB3YXMgNXggdGhl
IHBpeCBjbGsuICBCZWNhdXNlCnRoZSBQTVMgY2FsY3VsYXRvciBJIHdyb3RlIGlzIGV4cGVjdGlu
ZyBhIGNsb2NrIHJhdGUsIEkganVzdAptdWx0aXBsaWVkIGJ5IDUgaGVyZSBpbnN0ZWFkIG9mIGlu
c2lkZSB0aGUgUE1TIGNhbGN1bGF0b3IuCgphZGFtCj4KPiBUaGFua3MsCj4gLS0KPiBEb21pbmlx
dWUKPgo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
