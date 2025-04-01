Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ECC6C36010
	for <linux-phy@archiver.kernel.org>; Tue,  1 Apr 2025 14:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyr31+n+Z6e7qo3VwS4ek51wAu3Tif79E+g7PdCxXlc=; b=CiC2s0PrVkpD4p
	gehcQmpFssJ61jL69fqoalg1bodrebl//YzwMEkHAkNihhXUBu65c9oQM6KX50jTtvKURJ1c5HBK+
	f0XeyvFr1491OG7IqxtZ3bEfw5CBY/JJjs7/dL5v3hiS/IlYWQvsXs/LBu0C6QUgUe+e+yMl30aZj
	cehGSE4fhaw+01gRcVqD7gItJq3I72I/GBoNt6XWQ4l6Mlo8GqvfAw//XSo0r2Crx7XEFF7oGrK6H
	fDA9q2fj6IS1Ozp405iT35sUAsHNR2NiAdrXsmK74SnvofNYAMKHKdYadDlv26dVSic/6Zg1IpqKM
	GMvj80UYkYCOUEbDrp+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzcAG-00000003WkR-2bku;
	Tue, 01 Apr 2025 14:00:28 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzc9Z-00000003WZm-0lqt
	for linux-phy@lists.infradead.org;
	Tue, 01 Apr 2025 13:59:46 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-30384072398so7486728a91.0
        for <linux-phy@lists.infradead.org>; Tue, 01 Apr 2025 06:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743515984; x=1744120784; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AGYXonTkHcl1ZOGGNFSMG6Pu1YJzE62IfJgYQhAo2xE=;
        b=cruCRMuCujaPbda6ITNUzpJIz6falxp1HuC/A/40xWs2ZIEjGBMrKm4CxILAFSkgPE
         ktwsYTf+SeNtwf5Cn3oG45y+P302h08SCDw7/Zf2uF9VhJKdEPXmuq37nqmN9BPvnzqV
         A2mJNlYNRE/2Wey0ugwx4XC2/Ns0xuGC6IgqwPCEU1fE1ZlQ/evRA5pJOTGYI0W+2gYW
         oW+oFvfgusQgkILKKN4rQ06AFp5/jWlhtNPqM786xP5px6mnIzymFzlBEjjo5+bBQbXF
         TCJtfZU2Kf0hoMDN9uF3JcICPCxoCEfE+qssjBnguYJ1iMiq4meymvMHPAFhlso2JUyY
         sK0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743515984; x=1744120784;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AGYXonTkHcl1ZOGGNFSMG6Pu1YJzE62IfJgYQhAo2xE=;
        b=SCdZ3ZofSkZzrUK3h0yz2EZuSKkAx1+CDgUAp5p+z9a6m1sEojXMz+VVDX5XKsorX6
         8kjKRPX+256H0GtAfLDUT+tKiSicHn+T7au6IYZMvsTu2EGcKr3IAKpFyv6iDsBbYkdc
         rOWqodkWDBWe21Voxoh/B/Tyvt8i2taT7hZlVB/Iw5PwGeyTCQWmUibdftHgOKcertyk
         cYeeuJL4PB6vPlQckWpsEH9Ga3wWFk2q2KZKUJFI7wZN1TRuEZZXZasy/UzTLHUhu2ad
         xaXXBJoL0jtYfpYhw4xoKOh9RYLiq7JgBdeRUg2wRSEy8ZSyg0Wai/0tp0pr0WEvTtA9
         rvJg==
X-Forwarded-Encrypted: i=1; AJvYcCXARs5TV5WVM5hgYFtNg2vwFIxWAc6zx1Ih/kAYbqN575oYegT/KSAceD/GkB6d7CuBelynW63LME0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwepncDwyg/Z2tDW4PoVkGedjQg/ozOXUUtcRhEdZudffEpS86l
	AUf4PUisIvlNxGU7NU6wiZYEdH3/+rxAqjIJVN87qjOOXrBOdNG66Z/hG4Isa9xgYhlGWU22S33
	AzYyN8QDWopDdffxctokgNOyeTYo=
X-Gm-Gg: ASbGnct6B8QisZm1rJDZksTaCCH6PS/akh8eK1Es4vz9asWUiWqDuat3QzbNt4BTvDf
	m3liO6sv2yyU19i/W9AkT9aNAb7zX8LLsDLgscG/ofqAe5aQB3VT95P6+c3YdyYJ1NQ+hdaAYoD
	VZG3m3zb9WyzMrpRjzXCJoE80hMQ==
X-Google-Smtp-Source: AGHT+IHb1o0LPjrLTU+HRNoqh4woznSYQZMft5Ou0nvj7nGES6vt4g8Js/jFnN64ADJXFtnlwDc+bQZWFGJk3jhZyFU=
X-Received: by 2002:a17:90b:4ec6:b0:2ff:692b:b15 with SMTP id
 98e67ed59e1d1-3053215a24cmr22408797a91.33.1743515983633; Tue, 01 Apr 2025
 06:59:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAHCN7x+WkhPQGLUqJ40SjtmhTXx=Fn2rkqw8NQ=qgaNnpK97zQ@mail.gmail.com>
 <CAHCN7xKUdveqVnOXXRL-RhXFrN4OUjJC+VgZguy1kYjx230wCw@mail.gmail.com> <Z-sQFRaWxiGe6XEN@atmark-techno.com>
In-Reply-To: <Z-sQFRaWxiGe6XEN@atmark-techno.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 1 Apr 2025 08:59:32 -0500
X-Gm-Features: AQ5f1JqRpjc2gJafSyHdBw28rwKsoTl3-ZjyiGsljxbad7xdq9mnAxmkn_KMgZI
Message-ID: <CAHCN7xKreZmJDyght97eSwdv6v8BgZfkzApM85x=PrR1PJFCDQ@mail.gmail.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: return closest rate
 instead LUT
To: Dominique Martinet <dominique.martinet@atmark-techno.com>
Cc: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, Marco Felsch <m.felsch@pengutronix.de>, 
	Lucas Stach <l.stach@pengutronix.de>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Makoto Sato <makoto.sato@atmark-techno.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_065945_229939_B4105860 
X-CRM114-Status: GOOD (  56.63  )
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

T24gTW9uLCBNYXIgMzEsIDIwMjUgYXQgNDo1OeKAr1BNIERvbWluaXF1ZSBNYXJ0aW5ldAo8ZG9t
aW5pcXVlLm1hcnRpbmV0QGF0bWFyay10ZWNobm8uY29tPiB3cm90ZToKPgo+Cj4gQWRhbSBGb3Jk
IHdyb3RlIG9uIE1vbiwgTWFyIDMxLCAyMDI1IGF0IDA4OjQ1OjI2QU0gLTA1MDA6Cj4gPiBJZiBE
b21pbmlxdWUgd29uJ3QgaGF2ZSB0aW1lLCBJIGNhbiB0cnkgdG8gY2xlYW4gdGhpcyB1cCBhIGJp
dC4gIEkgd2FzCj4gPiBub3QgbGlraW5nIHRoZSBuYW1lcyBlaXRoZXIsIGJ1dCBJIHdhcyB0cnlp
bmcgdG8ga2VlcCB0aGVtIHNtYWxsLgo+ID4gSSdsbCBkZWZhdWx0IHRvIHRoaXMgY29udmVudGlv
biBtb3JlIGluIHRoZSBmdXR1cmUsIGJhc2VkIG9uIHlvdXIKPiA+IGZlZWRiYWNrLgo+Cj4gSSd2
ZSBiZWVuIGNoYXNpbmcgd2VpcmQgc3VzcGVuZCBidWdzIG9uIG91ciBwbGF0Zm9ybSAoYW5vdGhl
ciBzb2MpIGZvcgo+IHRoZSBiZXN0IG9mIHRoZSBtb250aCBzbyBpdCdkIGJlIGdyZWF0bHkgYXBw
cmVjaWF0ZWQsIHNvcnJ5Lgo+Cj4gRmVlbCBmcmVlIHRvIHJlcGxhY2Ugb3VyIHBhdGNoIHdpdGgg
YW55dGhpbmcgZXF1aXZhbGVudAo+Cj4gQWRhbSBGb3JkIHdyb3RlIG9uIE1vbiwgTWFyIDMxLCAy
MDI1IGF0IDA4OjQzOjM4QU0gLTA1MDA6Cj4gPiA+IEZvciB0aGlzIHBhcnRpY3VsYXIgcmF0ZSBj
aGVjaywgSSBiZWxpZXZlIHRoYXQgaWYgcGh5X2Nsa19yb3VuZF9yYXRlKCkKPiA+ID4gcmVqZWN0
ZWQgdGhlIGZyZXF1ZW5jeSB0aGVuIHBoeV9jbGtfc2V0X3JhdGUoKSBjYW5ub3QgYmUgY2FsbGVk
IGF0IGFsbAo+ID4gPiB3aXRoIHRoZSBzYWlkIHZhbHVlIChhdCBsZWFzdCBvbiB0aGlzIHBhcnRp
Y3VsYXIgc2V0dXAgZ29pbmcgdGhyb3VnaCB0aGUKPiA+ID4gaW14OG1wLWhkbWktdHggYnJpZGdl
IHZhbGlkYXRpbmcgZnJlcXVlbmNpZXMgZmlyc3QgYmVmb3JlIGFsbG93aW5nCj4gPiA+IG1vZGVz
KSwgbm90IHRoYXQgaXQnZCBodXJ0IHRvIHJlY2hlY2suCj4gPgo+ID4gSSBiZWxpZXZlIHRoYXQg
aXMgdHJ1ZS4gIEkgY29uc2lkZXJlZCBhZGRpbmcgaXQsIGJ1dCB3aGVuIEkgcHV0IGRlYnVnCj4g
PiBjb2RlIGluIHRvIHRyYWNlIHdoYXQgd2FzIGhhcHBlbmluZywgaXQgd2FzIGJlaW5nIHJlamVj
dGVkLCBpbiBvbmUKPiA+IHBsYWNlLCBzbyB0aGUgb3RoZXIgZGlkbid0IG5lZWQgdG8uICBJZiB0
aGUgZ2VuZXJhbCBjb25zZW5zdXMgaXMgdG8KPiA+IGhhdmUgaXQgaW4gYm90aCBwbGFjZXMsIEkg
Y2FuIGFkZCBpdC4KPgo+IFllcyBJIHRoaW5rIGl0IHdpbGwgbWFrZSB0aGUgaW50ZW50IG1vcmUg
Y2xlYXIsIGlmIHdlJ3JlIGdvaW5nIHRvIHNoYXJlCj4gc29tZSBjb2RlIG9yIG1ha2UgaXQgbW9y
ZSBjb25zaXN0ZW50IG1pZ2h0IGFzIHdlbGwgZ28gYWxsIHRoZSB3YXkuCj4KPiA+ID4gSW4gZ2Vu
ZXJhbCB0aG91Z2ggSSBhZ3JlZSB0aGVzZSBhcmUgZG9pbmcgcHJldHR5IG11Y2ggdGhlIHNhbWUg
dGhpbmcsCj4gPiA+IHdpdGggY2xrX3JvdW5kX3JhdGUoKSB0aHJvd2luZyBhd2F5IHRoZSBwbXMg
dmFsdWVzIGFuZCB0aGVyZSdzIG1vcmUKPiA+ID4gZHVwbGljYXRpb24gdGhhbiBpZGVhbC4uLgo+
ID4KPiA+IEkndmUgYmVlbiB3b3JraW5nIG9uIGNyZWF0aW5nIHNvbWUgY2FjaGluZyB0byBkZXRl
cm1pbmUgdGhlIGJlc3QKPiA+IHZhbHVlcyBmb3IgdGhlIFBIWSBhbmQgcmVtZW1iZXIgdGhlbSwg
c28gdGhlIHdvcmsgZG9lc24ndCBoYXZlIHRvIGJlCj4gPiBkb25lIGFnYWluIGlmIHRoZSBuZXh0
IGNhbGwgdXNlcyB0aGUgc2FtZSBjbG9jayByYXRlLiAgSSdtIG5vdCBxdWl0ZQo+ID4gcmVhZHkg
dG8gc3VibWl0IGl0LCBiZWNhdXNlIEkgbmVlZCB0byByZWJhc2UgaXQgb24gTGludXgtTmV4dCB3
aXRoCj4gPiBzb21lIG9mIHRoZSBvdGhlciB1cGRhdGVzIHJlcXVlc3RlZCBieSBVd2UuICBNeSB1
cGRhdGVzIGFsc28gcmVtb3ZlCj4gPiB0aGUgbG9vay11cCB0YWJsZSBjb21wbGV0ZWx5IGFuZCB1
c2UgYW4gYWxnb3JpdGhtIHRvIGRldGVybWluZSB0aGUKPiA+IGZyYWN0aW9uYWwgZGl2aWRlciB2
YWx1ZXMgLSB0aGFua3MgdG8gRnJpZWRlcidzIHB5dGhvbiBjb2RlIHRoYXQgSQo+ID4gcG9ydGVk
IHRvIEMuICBJIGV4cGVyaW1lbnRlZCBxdWl0ZSBhIGJpdCB3aXRoIHdoaWNoIHZhbHVlcyBoYXZl
IG1vcmUKPiA+IGltcGFjdCBhbmQgcmVvcmdhbml6ZWQgaGlzIG5lc3RlZCBmb3ItbG9vcHMgdG8g
a2VlcCB0cmFjayBvZiBob3cgbWFueQo+ID4gaXRlcmF0aW9ucyBhcmUgZG9uZSBhbmQgYWxzbyBt
ZWFzdXJpbmcgdGhlIHRpbWUgaXQgdGFrZXMgdG8gZG8gdGhlCj4gPiBjYWxjdWxhdGlvbnMsIHNv
IHRoZSBjb2RlIGRvZXNuJ3QgcmVhbGx5IGxvb2sgbGlrZSBoaXMgYXMgbXVjaCBhcyBvbmUKPiA+
IHdvdWxkIHRoaW5rLgo+ID4KPiA+IFRoZSBkb3duc2lkZSB3aXRoIG15IHVwZGF0ZXMgaXMgdGhh
dCBydW5uaW5nICdtb2RldGVzdCcgIG9uIHRoZSA0Swo+ID4gbW9uaXRvciB0aGF0IEkgdXNlIGhh
cyBzbyBtYW55IGVudHJpZXMsIHRoZSB0aW1lIGl0IHRha2VzIHRvIGNhbGN1bGF0ZQo+ID4gYWxs
IHRoZSB2YWx1ZXMgZm9yIHRoZSBtb25pdG9yIHRha2VzIGEgc2Vjb25kIG9yIHR3byBsb25nZXIg
dGhhbgo+ID4gYmVmb3JlLCBiZWNhdXNlIHNlYXJjaGluZyB0aGUgTFVUIGlzIHF1aWNrIGFuZCBk
b2luZyBhIHNlcmllcyBvZgo+ID4gZm9yLWxvb3BzIHRvIGZpbmQgdGhlIG5vbWluYWwgdmFsdWVz
IGlzIG1vcmUgdGltZSBjb25zdW1pbmcuICBXZSBjb3VsZAo+ID4gcG90ZW50aWFsbHkga2VlcCB0
aGUgTFVUIGFuZCBvbmx5IHVzZSB0aGlzIG5ldyBjYWxjdWxhdGlvbiBpZiB0aGUKPiA+IGVudHJ5
IGlzbid0IGluIHRoZSBMVVQuICBJIGFtIG5vdCBnZW5lcmFsbHkgYSBmYW4gb2YgTFVUJ3MgaWYg
dGhlCj4gPiB2YWx1ZXMgY2FuIGJlIGNhbGN1bGF0ZWQsIGJ1dCBJIGNhbiBhbHNvIHNlZSB0aGUg
YWR2YW50YWdlIG9mIHNwZWVkLgo+Cj4gSG1tLCB0b3VnaCBxdWVzdGlvbi4uLiBJIGRvbid0IHRo
aW5rIHdlIHdhbnQgZGlzcGxheXMgdG8gc2hvdyB1cCBhIGZldwo+IHNlY29uZHMgbGF0ZXIsIHdl
IHJlZ3VsYXJpbHkgZ2V0IG1haWxzIGZyb20gY3VzdG9tZXJzIGFza2luZyBob3cgdG8gZ2V0Cj4g
YSBsb2dvIHRvIHNob3cgdXAgZmFzdGVyIG9uIGRpc3BsYXkgKEkgdGhpbmsgdGhlcmUgbWF5IGJl
IHNvbWUgdmFyaWFudAo+IG9mIHVib290IHRoYXQgc3VwcG9ydHMgaW14OG1wIGhkbWk/IGJ1dCB3
ZSBkb24ndCBoYXZlIHRoYXQpLCBzbyB3aGlsZSBJCj4gc2VlIHRoZSBhcHBlYWwgb2Ygbm90IGhh
dmluZyBhbiBoYXJkY29kZWQgbG9vayB1cCB0YWJsZSBJJ20gbm90IHN1cmUgd2UKPiB3b3VsZCBh
cHByZWNpYXRlIHRoYXQgY29tcHJvbWlzZS4KCkkgb25seSBub3RpY2UgdGhlIGRlbGF5IHdoZW4g
SSBydW4gbW9kZXRlc3QgdG8gZ2V0IGEgbGlzdCBvZiBhdmFpbGFibGUKcmVzb2x1dGlvbnMgc2lu
Y2UgaXQncyB0cnlpbmcgZXZlcnkgcmVzb2x1dGlvbiB0byBzZWUgaWYgaXQgY2FuCmFjaGlldmUg
dGhlIGRlc2lyZWQgY2xvY2sgcmF0ZS4KCklmIEkgcnVuIG1vZGV0ZXN0IHRvIHNldCB0aGUgcmVz
b2x1dGlvbiwgaXQncyBub3QgcmVhbGx5IG5vdGljZWFibGUKYmVjYXVzZSBpdCdzIHJlYWxseSBv
bmx5IHRyeWluZwoKPgo+IEkgdGhpbmsgaXQnZCBiZSBncmVhdCB0byBqdXN0IGhhdmUgYSB3YXkg
b2YgY2hlY2tpbmcgdGhlIHZhbHVlcyBpbiB0aGUKPiBMVVQgYXJlIGNvcnJlY3QgdGhvdWdoIChl
aXRoZXIgc3RhdGljYWxseSBmcm9tIEZyaWVkZXIncyBweXRob24gY29kZSBhcwo+IEkgc3RhcnRl
ZCBkb2luZyBvciB0aHJvdWdoIGEgQ09ORklHX1dIQVRFVkVSX0NIRUNLX0xVVCBjb25maWcgaXRl
bQo+IHRoYXQnZCBjaGVjayBvbmNlIGF0IGJvb3QsIGFsdGhvdWdoIHRoYXQncyBwcm9iYWJseSBv
dmVya2lsbCk7IEkgc3RhcnRlZAoKQXMgYSBjb21wcm9taXNlLCBJIGNvdWxkIGxlYXZlIHRoZSBM
VVQsIGFuZCBmYWxsIGJhY2sgdG8gdGhlIG1hbnVhbApjYWxjdWxhdGlvbnMgdG8gYm90aCBzcGVl
ZCB1cCB0aGUgbW9kZXRlc3QgbG9vayB1cCwgYnV0IHRvIGFsc28KbWF4aW1pemUgdGhlIGFiaWxp
dHkgdG8gc3luYyBuZXcgcmVzb2x1dGlvbnMuICBFdmVuIHdpdGggd2hhdCBJIGhhdmUsCml0J3Mg
bm90IHBlcmZlY3QuICBJIHNraXBwZWQgYSBmZXcgdmFyaWFibGVzIHNpbmNlIG15IHRlc3Rpbmcg
c2hvd2VkCnRoZXkgZGlkbid0IGhhdmUgYSBodWdlIGltcGFjdCBhbmQgYWRkaW5nIHRoZW0gaW5j
cmVhc2VkIHRoZSBudW1iZXIgb2YKY2FsY3VsYXRpb25zIHRvIGRldGVybWluZSB0aGUgcmVzb2x1
dGlvbi4KCj4gY2hlY2tpbmcgZnJvbSB0aGUgcHl0aG9uIGNvZGUgYnV0IHRoZXkgd2VyZW4ndCBj
b21wdXRlZCB3aXRoIHRoZSBzYW1lCj4gYWxnb3JpdGhtIHNvIHNvbWUgdmFsdWVzIGVuZCB1cCBi
ZWluZyBkaWZmZXJlbnQgZXZlbiBpZiB0aGVlbmQgcmVzdWx0IGlzCj4gdGhlIHNhbWUgZnJlcXVl
bmN5IGFuZCBJIHN0b3BwZWQgaGFsZndheS4uLgo+Cj4gPiA+IFRoYXQncyBxdWl0ZSBydWRlIG9m
IG1lIGdpdmVuIEkganVzdCBzZW50IHRoZSBwYXRjaCwgYnV0IHdlIHByb2JhYmx5Cj4gPiA+IHdv
bid0IGhhdmUgdGltZSB0byByZXdvcmsgdGhpcyB1bnRpbCBtaWQtYXByaWwgYWZ0ZXIgc29tZSB1
cmdlbnQgd29yawo+ID4gPiBlbmRzICh0aGlzIGhhcyBhY3R1YWxseSBiZWVuIHdhaXRpbmcgZm9y
IHRlc3RpbmcgZm9yIDMgbW9udGhzCj4gPiA+IGFscmVhZHkuLi4pCj4gPiA+IElmIHRoaXMgZG9l
c24ndCBib3RoZXIgYW55b25lIGVsc2Ugd2UgY2FuIHdhaXQgZm9yIGEgdjIgdGhlbiwgYnV0Cj4g
Pgo+ID4gSWYgeW91IHdhbnQsIEkgY2FuIHN1Ym1pdCBteSBzdHVmZiBhcyBhbiBSRkMgdG8gZ2l2
ZSBpdCBhIHRyeSBhbmQKPiA+IHNvbGljaXQgZmVlZGJhY2suCj4KPiBIYXBweSB0byB0ZXN0L3Jl
dmlldyBhbnl0aGluZyB5b3Ugc2VuZCwgYnV0IEkgbWFrZSBubyBwcm9taXNlIG9uIGRlbGF5cwoK
Tm8gd29ycmllcy4gSSBhbSBqdXN0IGdsYWQgdGhpcyBkcml2ZXIgaXMgZ2V0dGluZyBzb21lIGxv
dmUgYW5kIGVuaGFuY2VtZW50cy4KCmFkYW0KPiA6LSkKPgo+IENoZWVycywKPiAtLQo+IERvbWlu
aXF1ZQo+Cj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
