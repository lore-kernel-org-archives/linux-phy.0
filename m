Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 043B5D6EBF7
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 10:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dy8gtqYsruDalkUcQVE0vThgGJptJsMnTDuZrBu/ZWk=; b=ycfwo0lg9PqgQl
	QxnyRcuhxLzKjIgBoHGQqMCpR6w4iAapZMAZE7QOOJRe/7Npoj2Bt0wE4kTEq2Hv65CVHRVZuujxM
	fB1XlihBIFKh8eSzxkRTKFVImsm1JtYFjAqmjlYDJzLSgCAeJ7pBngbz9qVkIPuaF2caajX4ULyYN
	bJfcEHsjCvcQlGXcoa8gFHhj01vz4s4P6Z7haBa3FxxEdeRf/sV2PwNYT7dEmytx//JwBhf6tX2yz
	JBOKdmiPJ9GqR3bKKox8Ohd0ikW0MLUpb5t/C+Ve/puEdQo30dmbBiH6S3dHq9vmRRUx2Yxf/GMfo
	MCMwYkPqQkAnvZ6j4zvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGyAA-0000000HQD7-2mcU;
	Fri, 29 Nov 2024 10:23:50 +0000
Received: from mail-vk1-f170.google.com ([209.85.221.170])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGyA8-0000000HQCj-1OHT
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 10:23:49 +0000
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-515149e6551so277039e0c.2
        for <linux-phy@lists.infradead.org>; Fri, 29 Nov 2024 02:23:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732875826; x=1733480626;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lb0O6wOGoEZfGObCxjbicwXvMy3aEqtM9vf1++Bs8QA=;
        b=W1z7sjah1YjSggfrZFoAY/93+8P5QO6ujsvw0To1ievSKcKW58NRvxEUn6VXDb0ldS
         iOxPFXaGljOVuJS8sizxcT2+W0mI+HJu7ghRWRX4jG7olp5AFlbulbXuBOI2KerkQXTk
         6EWWEiu+EAqZ6JYvzQzuRWrYqqOC/V5d58L3pi+HOI9vM8QFOOb4HNffHRyuNWvZhGxZ
         tiipX1/liGbnupRVq6sDmLQI+14EgLSR3nXUWqKZ/04fuaLQfUnq6rYqcxMu69Pdx5xM
         TI7IpD1PgsnEbA/03Sxc6mxA+suR81bG2XK/3CWpO9AHQiIBoKHyVSn0BQw40umv6FeF
         AUCA==
X-Forwarded-Encrypted: i=1; AJvYcCXuGGGvLNulv3oo55VLx+yJuIyN9n7z6SAfXKGqBbfhozitgYPco1SslWxJlj1IbTaEh173F7bCKjc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yys2tHQX60aF2DEsmJqh+NDXTvmvGV0GDouBrh5uE3bhHTo113t
	iuC6YgmEc8ngTKBrxcWz8PQY+NHbH9oZapfpxkvi9/mT1I8ggCcpmOmmWtnK1sc=
X-Gm-Gg: ASbGncvWp4nPZcqcNKiga8bgM30+A8S+kgLYPhdS3kmUehaGYfr6c1h8T98fMeoAFCI
	HcoJh/r6ndr8P2wRr71+UzruquGar/HOg53ctYceA2JsLzXsi1LaLDTXaMelAeDprX1n4PpYcgG
	9YXtrJXdBQcUVcOnjEI7PwcBhptFuhMpLN1bytNGS9LbNFzqPcvkvf4+hESWZaYQqldF1YacsJz
	7AABpayenBfKEwjKtR6WFgSxD0YR+W9jEN14XPRRrGj0fAdW6iVU4vtPsjkCjMYjcgW81ZahB0g
	ayaZtN+fe4cO
X-Google-Smtp-Source: AGHT+IFo6VDiQK/EjpI3Q0jLjesVcR35IZhHM5Vmp9a19fJzEKw01Z3BlUie1jcJbDfDuBmi1NyzBg==
X-Received: by 2002:a05:6122:4b0f:b0:515:503e:61db with SMTP id 71dfb90a1353d-515569cbc71mr12538971e0c.6.1732875826459;
        Fri, 29 Nov 2024 02:23:46 -0800 (PST)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com. [209.85.222.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5156d0c1454sm471733e0c.38.2024.11.29.02.23.46
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Nov 2024 02:23:46 -0800 (PST)
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-84ff43e87cbso515322241.1
        for <linux-phy@lists.infradead.org>; Fri, 29 Nov 2024 02:23:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVOfe31xy7QuklB8hZU+4xbbrDmFwKa4gqDBzbbI1l3cYFX0ii2EJ+ij5psLR8bwN4er1oL3Wvx2HM=@lists.infradead.org
X-Received: by 2002:a05:6102:390e:b0:4af:30c3:6a2c with SMTP id
 ada2fe7eead31-4af4492c932mr14186029137.10.1732875825820; Fri, 29 Nov 2024
 02:23:45 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
 <20241126092050.1825607-3-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdUvmTQeQXxhsXtj23-OS=aL3UgsyOtnawdmnusrEJ2JQw@mail.gmail.com>
 <32fa7eb8-2139-454c-8866-cb264d060616@tuxon.dev> <CAMuHMdXPQnCPjKRxoSceYabWPHF9Z_A7qVN85yaUZjPG7-o7tg@mail.gmail.com>
In-Reply-To: <CAMuHMdXPQnCPjKRxoSceYabWPHF9Z_A7qVN85yaUZjPG7-o7tg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 29 Nov 2024 11:23:34 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXLVKDybzgeXc0rqiOFXFfRrat0LDEAEsBdHA3rmDiL0w@mail.gmail.com>
Message-ID: <CAMuHMdXLVKDybzgeXc0rqiOFXFfRrat0LDEAEsBdHA3rmDiL0w@mail.gmail.com>
Subject: Re: [PATCH v2 02/15] soc: renesas: Add SYSC driver for Renesas RZ family
To: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	gregkh@linuxfoundation.org, yoshihiro.shimoda.uh@renesas.com, 
	christophe.jaillet@wanadoo.fr, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_022348_370507_5E055AFC 
X-CRM114-Status: GOOD (  36.80  )
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

T24gRnJpLCBOb3YgMjksIDIwMjQgYXQgOTo1NOKAr0FNIEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2Vl
cnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+IE9uIEZyaSwgTm92IDI5LCAyMDI0IGF0IDk6NDji
gK9BTSBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWFAdHV4b24uZGV2PiB3cm90ZToKPiA+
IE9uIDI4LjExLjIwMjQgMTc6MjQsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPiA+ID4gT24g
VHVlLCBOb3YgMjYsIDIwMjQgYXQgMTA6MjHigK9BTSBDbGF1ZGl1IDxjbGF1ZGl1LmJlem5lYUB0
dXhvbi5kZXY+IHdyb3RlOgo+ID4gPj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6
bmVhLnVqQGJwLnJlbmVzYXMuY29tPgo+ID4gPj4KPiA+ID4+IFRoZSBSWi9HM1Mgc3lzdGVtIGNv
bnRyb2xsZXIgKFNZU0MpIGhhcyB2YXJpb3VzIHJlZ2lzdGVycyB0aGF0IGNvbnRyb2wKPiA+ID4+
IHNpZ25hbHMgc3BlY2lmaWMgdG8gaW5kaXZpZHVhbCBJUHMuIElQIGRyaXZlcnMgbXVzdCBjb250
cm9sIHRoZXNlIHNpZ25hbHMKPiA+ID4+IGF0IGRpZmZlcmVudCBjb25maWd1cmF0aW9uIHBoYXNl
cy4KPiA+ID4+Cj4gPiA+PiBBZGQgU1lTQyBkcml2ZXIgdGhhdCBhbGxvd3MgaW5kaXZpZHVhbCBT
WVNDIGNvbnN1bWVycyB0byBjb250cm9sIHRoZXNlCj4gPiA+PiBzaWduYWxzLiBUaGUgU1lTQyBk
cml2ZXIgZXhwb3J0cyBhIHN5c2NvbiByZWdtYXAgZW5hYmxpbmcgSVAgZHJpdmVycyB0bwo+ID4g
Pj4gdXNlIGEgc3BlY2lmaWMgU1lTQyBvZmZzZXQgYW5kIG1hc2sgZnJvbSB0aGUgZGV2aWNlIHRy
ZWUsIHdoaWNoIGNhbiB0aGVuIGJlCj4gPiA+PiBhY2Nlc3NlZCB0aHJvdWdoIHJlZ21hcF91cGRh
dGVfYml0cygpLgo+ID4gPj4KPiA+ID4+IEN1cnJlbnRseSwgdGhlIFNZU0MgZHJpdmVyIHByb3Zp
ZGVzIGNvbnRyb2wgdG8gdGhlIFVTQiBQV1JSRFkgc2lnbmFsLCB3aGljaAo+ID4gPj4gaXMgcm91
dGVkIHRvIHRoZSBVU0IgUEhZLiBUaGlzIHNpZ25hbCBuZWVkcyB0byBiZSBtYW5hZ2VkIGJlZm9y
ZSBvciBhZnRlcgo+ID4gPj4gcG93ZXJpbmcgdGhlIFVTQiBQSFkgb2ZmIG9yIG9uLgo+ID4gPj4K
PiA+ID4+IE90aGVyIFNZU0Mgc2lnbmFscyBjYW5kaWRhdGVzIChhcyBleHBvc2VkIGluIHRoZSB0
aGUgaGFyZHdhcmUgbWFudWFsIG9mIHRoZQo+ID4gPj4KPiA+ID4+ICogUENJZToKPiA+ID4+IC0g
QUxMT1dfRU5URVJfTDEgc2lnbmFsIGNvbnRyb2xsZWQgdGhyb3VnaCB0aGUgU1lTX1BDSUVfQ0ZH
IHJlZ2lzdGVyCj4gPiA+PiAtIFBDSUVfUlNUX1JTTV9CIHNpZ25hbCBjb250cm9sbGVkIHRocm91
Z2ggdGhlIFNZU19QQ0lFX1JTVF9SU01fQgo+ID4gPj4gICByZWdpc3Rlcgo+ID4gPj4gLSBNT0RF
X1JYVEVSTUlOQVRJT04gc2lnbmFsIGNvbnRyb2xsZWQgdGhyb3VnaCBTWVNfUENJRV9QSFkgcmVn
aXN0ZXIKPiA+ID4+Cj4gPiA+PiAqIFNQSToKPiA+ID4+IC0gU0VMX1NQSV9PQ1RBIHNpZ25hbCBj
b250cm9sbGVkIHRocm91Z2ggU1lTX0lQQ09OVF9TRUxfU1BJX09DVEEKPiA+ID4+ICAgcmVnaXN0
ZXIKPiA+ID4+Cj4gPiA+PiAqIEkyQy9JM0M6Cj4gPiA+PiAtIGFmX2J5cGFzcyBJMkMgc2lnbmFs
cyBjb250cm9sbGVkIHRocm91Z2ggU1lTX0kyQ3hfQ0ZHIHJlZ2lzdGVycwo+ID4gPj4gICAoeD0w
Li4zKQo+ID4gPj4gLSBhZl9ieXBhc3MgSTNDIHNpZ25hbCBjb250cm9sbGVkIHRocm91Z2ggU1lT
X0kzQ19DRkcgcmVnaXN0ZXIKPiA+ID4+Cj4gPiA+PiAqIEV0aGVybmV0Ogo+ID4gPj4gLSBGRUNf
R0lHQV9FTkFCTEUgRXRoZXJuZXQgc2lnbmFscyBjb250cm9sbGVkIHRocm91Z2ggU1lTX0dFVEh4
X0NGRwo+ID4gPj4gICByZWdpc3RlcnMgKHg9MC4uMSkKPiA+ID4+Cj4gPiA+PiBBcyBkaWZmZXJl
bnQgUmVuZXNhcyBSWiBTb0Mgc2hhcmVzIG1vc3Qgb2YgdGhlIFNZU0MgZnVuY3Rpb25hbGl0aWVz
Cj4gPiA+PiBhdmFpbGFibGUgb24gdGhlIFJaL0czUyBTb0MsIHRoZSBkcml2ZXIgaWYgZm9ybWVk
IG9mIGEgU1lTQyBjb3JlCj4gPiA+PiBwYXJ0IGFuZCBhIFNvQyBzcGVjaWZpYyBwYXJ0IGFsbG93
aW5nIGluZGl2aWR1YWwgU1lTQyBTb0MgdG8gcHJvdmlkZQo+ID4gPj4gZnVuY3Rpb25hbGl0aWVz
IHRvIHRoZSBTWVNDIGNvcmUuCj4gPiA+Pgo+ID4gPj4gU2lnbmVkLW9mZi1ieTogQ2xhdWRpdSBC
ZXpuZWEgPGNsYXVkaXUuYmV6bmVhLnVqQGJwLnJlbmVzYXMuY29tPgo+ID4gPgo+ID4gPj4gLS0t
IC9kZXYvbnVsbAo+ID4gPj4gKysrIGIvZHJpdmVycy9zb2MvcmVuZXNhcy9yOWEwOGcwNDUtc3lz
Yy5jCj4gPiA+PiBAQCAtMCwwICsxLDMxIEBACj4gPiA+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjAKPiA+ID4+ICsvKgo+ID4gPj4gKyAqIFJaL0czUyBTeXN0ZW0gY29udHJv
bGxlciBkcml2ZXIKPiA+ID4+ICsgKgo+ID4gPj4gKyAqIENvcHlyaWdodCAoQykgMjAyNCBSZW5l
c2FzIEVsZWN0cm9uaWNzIENvcnAuCj4gPiA+PiArICovCj4gPiA+PiArCj4gPiA+PiArI2luY2x1
ZGUgPGxpbnV4L2FycmF5X3NpemUuaD4KPiA+ID4+ICsjaW5jbHVkZSA8bGludXgvYml0cy5oPgo+
ID4gPj4gKyNpbmNsdWRlIDxsaW51eC9pbml0Lmg+Cj4gPiA+PiArCj4gPiA+PiArI2luY2x1ZGUg
InJ6LXN5c2MuaCIKPiA+ID4+ICsKPiA+ID4+ICsjZGVmaW5lIFNZU19VU0JfUFdSUkRZICAgICAg
ICAgMHhkNzAKPiA+ID4+ICsjZGVmaW5lIFNZU19VU0JfUFdSUkRZX1BXUlJEWV9OICAgICAgICBC
SVQoMCkKPiA+ID4+ICsjZGVmaW5lIFNZU19NQVhfUkVHICAgICAgICAgICAgMHhlMjAKPiA+ID4+
ICsKPiA+ID4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHJ6X3N5c2Nfc2lnbmFsX2luaXRfZGF0YSBy
emczc19zeXNjX3NpZ25hbHNfaW5pdF9kYXRhW10gX19pbml0Y29uc3QgPSB7Cj4gPiA+Cj4gPiA+
IFRoaXMgaXMgbWFya2VkIF9faW5pdGNvbnN0Li4uCj4gPiA+Cj4gPiA+PiArICAgICAgIHsKPiA+
ID4+ICsgICAgICAgICAgICAgICAubmFtZSA9ICJ1c2ItcHdycmR5IiwKPiA+ID4+ICsgICAgICAg
ICAgICAgICAub2Zmc2V0ID0gU1lTX1VTQl9QV1JSRFksCj4gPiA+PiArICAgICAgICAgICAgICAg
Lm1hc2sgPSBTWVNfVVNCX1BXUlJEWV9QV1JSRFlfTiwKPiA+ID4+ICsgICAgICAgICAgICAgICAu
cmVmY250X2luY3JfdmFsID0gMAo+ID4gPj4gKyAgICAgICB9Cj4gPiA+PiArfTsKPiA+ID4+ICsK
PiA+ID4+ICtjb25zdCBzdHJ1Y3Qgcnpfc3lzY19pbml0X2RhdGEgcnpnM3Nfc3lzY19pbml0X2Rh
dGEgPSB7Cj4gPiA+Cj4gPiA+IC4uLiBidXQgdGhpcyBpcyBub3QgX19pbml0LCBjYXVzaW5nIGEg
c2VjdGlvbiBtaXNtYXRjaC4KPiA+Cj4gPiBEbyB5b3Uga25vdyBpZiB0aGVyZSBpcyBhIHdheSB0
byBkZXRlY3QgdGhpcz8KPgo+IFRoZSBrZXJuZWwgc2hvdWxkIHRlbGwgeW91IGR1cmluZyB0aGUg
YnVpbGQuLi4KClNvcnJ5LCBJIGhpdCBzZW5kIHRvbyBlYXJseTsgSSB3YXMgc3RpbGwgdmVyaWZ5
aW5nIHRoaXMuLi4KQW5kIGl0IGluZGVlZCBkb2Vzbid0IHRyaWdnZXIsIHN0cmFuZ2UuLi4KCkdy
e29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tCkdlZXJ0
IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2Vl
cnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmlj
YWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0
byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0
aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
