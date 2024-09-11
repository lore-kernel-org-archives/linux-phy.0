Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB88FEE01FB
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 01:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wCeZqbZfacJJu4mH3CAS1iPt5Ma5c/uMwO8E0bp9FTA=; b=zxv+6kCIDOIOrB
	wnAjVrZjEnDl7jq26cnJESWg2mJwmMJTRtOGbu2Pjv33bxjr63ZLVMn4tT51FPyGnhHGdv+1sviOO
	NcqlPeKC7i2GDLYT0kZsqhBzps3R9Hssi4Not8CaWqFFKuq5iXPQuKOFtkd4Twx7ax8yez04qe4gw
	fO4m1rnRDfW6h8QE305Rp/3kWIpm6oGmK8X8YmuirWBlCY6Y3yoTBxN6RGDlYZ34C6GxMs9AgkprT
	iKKA9GzWI/tHOdL9TG7mEb5A/lmQ9QJFk9/I59Sp+LHRmwS/56qoWQvHTKj38BDyDL1pGH1UEglT8
	bu4JLrrHvi2erW0RRAHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soBxz-00000007fJc-2aDu;
	Wed, 11 Sep 2024 01:16:19 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soBxx-00000007fJ0-2pB1
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 01:16:19 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2d8a4bad409so4257605a91.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Sep 2024 18:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726017376; x=1726622176; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nVqiUxsVb7vxvZzrSiSeI8t+eG1EK/BxIDvzNolJKEU=;
        b=EOUl+y3V2IUSZf2MtfAw0/0j7pgTy+OQJk0RbINDcAVzfGSYPw+wFriKddt1VDMxVZ
         YHFs72YO9ZgUZLN1imlIiEsbHv/HLQDkRV24A9MGvaWCODdCJa65l1omf031+LIwhkDm
         5pq/iF9OoATHK39P9sxis9S+UkQ/B+X6nvxf4TNG20Lf5g8jGDc3goLzFRCys6O1dtVl
         RPiVIhBSKVJyeX1mlZ+4txGH8SPVqxnQKmPMwETvq+tubdVrp80WT2blttn7K8E2ifJM
         Ijh0vbULGcoXZ8Ix7qY5fkR8xNNvU7aeO2fvzVj4bj+05LY93jYrZaJFIorgi/BSr7qw
         2ACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726017376; x=1726622176;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nVqiUxsVb7vxvZzrSiSeI8t+eG1EK/BxIDvzNolJKEU=;
        b=ggOa2+tUvIpIkBNe0J013ICj7JgGg6vupS0bV5nAXQFL3GBbpKJYbNPWz7x0bM/ZaW
         zFI7ydIwfRYqXy8uDMmMjFLOnXwqKv7wls4nsxCNELgEciHleVBZ9j/HxkaJzZ8u3tQB
         gGZRdmeHARYfpFub3rzt3E/DPosniIrn+bKGTHBjENQUmnkb1TjAgJVs8H2b3jU+tCRP
         PplRwY+RyzFVD96Gkq5WI8uJ9+3NYOO2TM33VfQ6j9ZYyuraMYLS2NLMgjv6m32sK5W9
         vnxxnFUbyQ60R/ACNHNP8YrELRfS10wXvg+HZtmytSI00ScWsuZ5iQSMKBCODFfnYGiE
         8M4A==
X-Forwarded-Encrypted: i=1; AJvYcCWp3+1zWf8KgEKOOIU+o8plNQ29q8XywNfisov4+FUeXsTubrBPQz/9u67PWhTCiF1cm33rfg3WeJ8=@lists.infradead.org
X-Gm-Message-State: AOJu0YydAwVCX+q5f/7ZisuDkcwfCU0tpvCk2onXTgJLmZzoOKLk5f2b
	mpsaD79nfJhjQjrt+y1apU026SmwUiIsduzpoZeB7oloslkdyR1kKCk5iXSf7E7N0yatCwuRJb/
	3OOwL6EVPKSANtlQ+qc5uMMPRJCQ=
X-Google-Smtp-Source: AGHT+IEjBGIyK0K/tjlnfxCBOZturPb0CoCSRIRBiEsDUZRqprFH60pRY1NoYuyXhwgkJFvimfZmeqCrXV4/Iak55mc=
X-Received: by 2002:a17:90b:2d92:b0:2d3:b438:725f with SMTP id
 98e67ed59e1d1-2db4211cacfmr9006083a91.24.1726017376028; Tue, 10 Sep 2024
 18:16:16 -0700 (PDT)
MIME-Version: 1.0
References: <20240910181544.214797-1-frieder@fris.de> <ZuDjAwPxHeJTvXAp@atmark-techno.com>
In-Reply-To: <ZuDjAwPxHeJTvXAp@atmark-techno.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 10 Sep 2024 20:16:04 -0500
Message-ID: <CAHCN7xJD8jsqyZX1JkWxrA84XkZ8YYN19hXW6KVe+jkOFugqrw@mail.gmail.com>
Subject: Re: [PATCH 0/2] Extending PLL LUT for i.MX8MP Samsung HDMI PHY
To: Dominique Martinet <dominique.martinet@atmark-techno.com>
Cc: Frieder Schrempf <frieder@fris.de>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Lucas Stach <l.stach@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_181617_739290_E0840E9F 
X-CRM114-Status: GOOD (  26.76  )
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

T24gVHVlLCBTZXAgMTAsIDIwMjQgYXQgNzoyM+KAr1BNIERvbWluaXF1ZSBNYXJ0aW5ldAo8ZG9t
aW5pcXVlLm1hcnRpbmV0QGF0bWFyay10ZWNobm8uY29tPiB3cm90ZToKPgo+IEZyaWVkZXIgU2No
cmVtcGYgd3JvdGUgb24gVHVlLCBTZXAgMTAsIDIwMjQgYXQgMDg6MTQ6NTFQTSArMDIwMDoKPiA+
IFsyXSBodHRwczovL2NvZGViZXJnLm9yZy9mc2NocmVtcGYvc2Ftc3VuZy1oZG1pLXBoeS1wbGwt
Y2FsY3VsYXRvci9zcmMvYnJhbmNoL21haW4vcGxsLnB5Cj4KPiBHcmVhdCB3b3JrISBUaGFua3Mh
Cj4KPiBJIHdhcyBjdXJpb3VzIGFib3V0IHRoZSBleGlzdGluZyB0YWJsZSBlbnRyaWVzLCByZWNv
bXB1dGluZyBleGlzdGluZwo+IHZhbHVlcyBkb2Vzbid0IHlpZWxkIHRoZSBzYW1lIHZhbHVlcy4g
Rm9yIGV4YW1wbGUsIHRoZSBmaXJzdCBlbnRyeSBpcwo+IHsKPiAgICAgICAgIC5waXhjbGsgPSAy
MjI1MDAwMCwKPiAgICAgICAgIC5wbGxfZGl2X3JlZ3MgPSB7IDB4ZDEsIDB4NGIsIDB4ZjEsIDB4
ODksIDB4ODgsIDB4ODAsIDB4NDAgfSwKPiB9Cj4gYnV0IGNvbXB1dGluZyBpdCB5aWVsZHMKPiB7
Cj4gICAgIC5waXhjbGsgPSAyMjI1MDAwMCwKPiAgICAgLnBsbF9kaXZfcmVncyA9IHsgMHhkMSwg
MHg0YSwgMHhmMCwgMHhlZiwgMHgxMCwgMHg4MSwgMHg0MCB9LAo+IH0KPgo+IEkgYXNzdW1lIHRo
ZXJlIGp1c3QgYXJlIG11bHRpcGxlIHdheXMgdG8gZ2VuZXJhdGUgdGhlIHNhbWUgZnJlcXVlbmNp
ZXMsCj4gd2hpY2ggaXMgZmluZSBpbiBpdHNlbGYsIGJ1dCBpdCdkIGJlIGdyZWF0IHRvIGJlIGFi
bGUgdG8gImJhY2stY29tcHV0ZSIKPiB0aGUgZW50cmllcyBhcyBhIHNhbml0eSBjaGVjay4KPgo+
IEkndmUgcGxheWVkIGEgYml0IHdpdGggeW91ciBzY3JpcHQgYW5kIHNwZW50IG1vcmUgdGltZSBv
biBpdCB0aGFuIEknZAo+IGxpa2UgdG8gYWRtaXQsIGJ1dCBzb21ldGhpbmcgbGlrZSB0aGlzIHNl
ZW1zIHRvIGRvIHRoZSB0cmljaywgcGx1Z2dpbmcKPiBpbiB0aGUgcmVncyBmcm9tIHRoZSBrZXJu
ZWw6Cj4KPiAtLS0KPiBwbGwgPSBGcmFjdGlvbmFsTlBMTChmcmVxX3JlZikKPgo+IHJlZ3MgPSBb
MHhkMSwgMHg0YiwgMHhmMSwgMHg4OSwgMHg4OCwgMHg4MCwgMHg0MF0KPiAjIGFzc3VtZSBmcmFj
dGlvbmFsCj4gaWYgbm90IHJlZ3NbMF0gJiAweEQwOgo+ICAgICBwcmludCgicmVnWzBdIG1pc3Np
bmcgMHhEMCIpCj4gICAgIHN5cy5leGl0KDEpCj4gcGxsLmZyZXFfZnJhYyA9IFRydWUKPiBwbGwu
cGFyYW1zWyJwIl0gPSByZWdzWzBdICYgMHgyZgo+IHBsbC5wYXJhbXNbIm0iXSA9IHJlZ3NbMV0K
PiBwbGwucGFyYW1zWyJzIl0gPSAocmVnc1syXSA+PiA0KSArIDEKPiBwbGwucGFyYW1zWyJuMiJd
ID0gKChyZWdzWzJdID4+IDMpICYgMHgxKSArIDEKPiBwbGwucGFyYW1zWyJuIl0gPSAocmVnc1sy
XSAmIDB4NykgKyA0Cj4gcGxsLnBhcmFtc1sibGMiXSA9IHJlZ3NbM10gJiAweDdmCj4gaWYgcmVn
c1s0XSAmIDB4ODA6Cj4gICAgIHBsbC5wYXJhbXNbImxjIl0gPSAtIHBsbC5wYXJhbXNbImxjIl0K
PiBwbGwucGFyYW1zWyJrIl0gPSByZWdzWzRdICYgMHg3Zgo+IHBsbC5wYXJhbXNbImxjX3MiXSA9
IHJlZ3NbNV0gJiAweDdmCj4gcGxsLnBhcmFtc1sia19zIl0gPSByZWdzWzZdICYgMHhiZgo+Cj4K
PiBmX3ZjbyA9IGludChwbGwucGFyYW1zWyJtIl0gKiBwbGwuZl9yZWYgLyBwbGwucGFyYW1zWyJw
Il0pCj4gaWYgZl92Y28gPCA3NTAwMDAwMDAgb3IgZl92Y28gPiAzMDAwMDAwMDAwOgo+ICAgICBw
cmludChmImZfdmNvIHtmX3Zjb30gb3V0IG9mIHJhbmdlIikKPiAgICAgc3lzLmV4aXQoMSkKPiBm
X2NhbGMgPSBmX3ZjbyAvIHBsbC5wYXJhbXNbInMiXSAvIDUKPiBwbGwuZnJlcV9pbnQgPSByb3Vu
ZChmX2NhbGMpCj4gcHJpbnQoZl9jYWxjKQo+IHNkYyA9IHBsbC5jYWxjX3NkYyhwbGwucGFyYW1z
KQo+IGZyYWMgPSBwbGwuY2FsY19mX2ZyYWMoc2RjLCBwbGwucGFyYW1zKQo+IHByaW50KGZyYWMp
Cj4gZnJlcSA9IHBsbC5mcmVxX2ludCArIGZyYWMKPiBwcmludChmcmVxKQo+IHBsbC5wcmludF9y
ZWdfZHJpdmVyX2RhdGEoZnJlcSkKPiBleGl0KDApOwo+IC0tLQo+IHlpZWxkcyB0aGlzIGJhY2sg
KGNvbW1lbnRzIGFkZGVkIG1hbnVhbGx5KQo+IC0tLQo+IDIyNTAwMDAwLjAgKGludGVnZXIgcGFy
dCkKPiAtMjUwMDAwLjAgKGZyYWN0aW9uYWwgcGFydCkKPiAyMjI1MDAwMC4wIChzdW1tZWQpCj4K
PiBQSFkgRHJpdmVyIFRhYmxlIEVudHJ5Ogo+IHsKPiAgICAgLnBpeGNsayA9IDIyMjUwMDAwLjAs
Cj4gICAgIC5wbGxfZGl2X3JlZ3MgPSB7IDB4ZDEsIDB4NGIsIDB4ZjEsIDB4ODksIDB4ODgsIDB4
ODEsIDB4NDAgfSwKPiB9Cj4gLS0tCj4KPiBzbyBpZiBJIGZpbmQgc29tZSB0aW1lIEknbGwgd2hp
cCBzb21lIGxvb3AgdG8gY2hlY2sgYWxsIG90aGVyIHZhbHVlcy4uLgo+Cj4KPgo+Cj4gVGhhdCBh
c2lkZSwgSSBzZWUgbm8gcHJvYmxlbSB3aXRoIHRoaXMsIGp1c3Qgb25lIG1ldGEtY29tbWVudCBh
Ym91dAo+IGFkZGluZyBhIGxpbmsgdG8gdGhlIHNjcmlwdCBpbiBhbiBleHRlcm5hbCByZXBvOiBJ
IHNlZSBzb21lIG90aGVyCj4gZHJpdmVycyBoYXZlIHB5dGhvbiBzY3JpcHRzIGluIHRoZWlyIHRy
ZWVzIGUuZy4KPiBkcml2ZXJzL2NvbWVkaS9kcml2ZXJzL25pX3JvdXRpbmcvdG9vbHMvKnB5Cj4g
ZHJpdmVycy9ncHUvZHJtL2NpL3hmYWlscy91cGRhdGUteGZhaWxzLnB5Cj4gZHJpdmVycy9ncHUv
ZHJtL21zbS9yZWdpc3RlcnMvZ2VuX2hlYWRlci5weQo+Cj4gd291bGQgaXQgbWFrZSBzZW5zZSB0
byBjb21taXQgdGhlIHNjcmlwdCBoZXJlIGluc3RlYWQgb2YgbGlua2luZyB0byBhCj4gcmVwbyB0
aGF0IG1pZ2h0IGJlIGxvc3QgaW4gdGhlIGZ1dHVyZT8KPgo+IEknbSBub3QgcXVpdGUgc3VyZSB3
aGF0IHBvbGljeSB0aGUgbGludXggcmVwbyBoYXMgaGVyZSwgc28gbGVhdmluZyB0aGF0Cj4gYXMg
YW4gb3BlbiBxdWVzdGlvbi4KCklzIHRoZXJlIGEgcmVhc29uIHRoaXMgY291bGRuJ3QgYmUgY29k
ZWQgaW4gQyBhbmQgdXNlZCB0byBleHBhbmQgbXkKaW50ZWdlciBjYWxjdWxhdG9yIHNlcmllcz8g
IFdpdGggdGhhdCwgd2UgY291bGQgZHJvcCB0aGUgbG9va3VwIHRhYmxlLgoKYWRhbQo+IC0tCj4g
RG9taW5pcXVlCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
