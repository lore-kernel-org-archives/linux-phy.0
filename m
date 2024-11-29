Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA330D6EBEE
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 08:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWDlvXIZywzwQJFt53lkDRT00FI692a20dQ3qRdB2rA=; b=PG5uUXNzr1v1eY
	5uFiJDgNwo9YbAGqxtj2pk0R3cJyaD/oXw1+G5U3dlRtXOjpmiXI0DAIVW0YLqJURjiURWNtZaig0
	RB5oR7e01PNTdmFbZDTrg5fOmG1lnJ195pMqTa3636hjQUfrmHEHv3KrfG1ckj7X+lcK3gadcfpnu
	Il/X3O1VTFNJ+x5+N5S+MPWMn2WQHAAyz403RsDlxJYaaAONUle9tpL1x3BG3WNCThHYNJJO2MdTU
	s40W/Lefk9bouLMClkujOcAlBmTgr5ZrlqNurYG44bZ5jC9trKBBwI/ZdenFo9gvn9kmQG0hviomW
	4diAJGv/KJQYbWLGf2jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGwoB-0000000HFuo-26X9;
	Fri, 29 Nov 2024 08:57:03 +0000
Received: from mail-ua1-f53.google.com ([209.85.222.53])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGwli-0000000HFTc-2M6C
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 08:54:31 +0000
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-85b95896cefso146071241.2
        for <linux-phy@lists.infradead.org>; Fri, 29 Nov 2024 00:54:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732870468; x=1733475268;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Euk3VJ7BmU7RfhdWEIOUgVSr2IUFcOE2zUwRiXafaDc=;
        b=AmEa0AkQqnZlyai9RZJyZdJe8fIMADmKp9EYGxT8A/M55k/6VIChB7m59yy+3TP885
         918jI3VsAZANx++mcl+EW5+D9r78rVM3tsWtymDqiBbUkovGRBtGYKvN1SWJA8J0wwFe
         6J8nvfuEmrNAjBCpiV4XMqBPJtvpDRL/rUrbw64v99LLcrWiVoVQaIz1fMKwGCk/Oufq
         H/NhyaHEzHVGOzzKXMxbM9RA37erGEjXv7wFYEov3l5t7xbkJF5fR0ltxetTINY62iOH
         XA5iKgVA/LdUExAkj4e3pw9USEz1qllZOzZ6PHvSwBqx4qqF/iz46DLUVPFNKfudk7Aa
         hjIw==
X-Forwarded-Encrypted: i=1; AJvYcCV5TfFm03EvQBMxe9e/UqMRF5Fj2NzQJ6M4lNyzBjHFUrJiXIjNbUZhqhdYAwLkbYl8IAFJHFslBb0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyD8w5ftuM1F6mMcm/iBf8nMAQLBATlM8vO/AO1T2A0psq4cSbg
	is0yKYdd53l66brWLNhcmNEZwMytnf9o2rC9s0rfHtaIpGjiOGecEnw5UEK7B3I=
X-Gm-Gg: ASbGncvyy1Ixu3vvhW/FfTcgO+LZ36R5fuPyJjlaPu0OrdnMXVG520IlgcCRcn/JgV3
	olqMR7vDsg9i00gIt3AwMot+14BUyL4hIJvAnbuxQSlK6oAWW7tOIp+Fs54wO7yC11noqRjZ4Jw
	Tx8TG9mVrb0tD4KTBlHjR7Ct1qxyDRT6U33F5JVb1UZHDa550vJItltpfwKZx1ZnLOWirBWZQvb
	cGu06Y1Yv4dnjJ+lIjFC92Zf+33UP9Ua7Cw0u91KunZbdhrs4HZxNzAZ9Do5dBV5e2hXOLxfMF6
	5HezMAkEpuqR
X-Google-Smtp-Source: AGHT+IHhMP7Fpj/O9z/th8hfUfYdnW4e+f8BwrruUrOLM79nQo6i3M9NLJvr90nNT765kJTcmEUZUQ==
X-Received: by 2002:a05:6102:50a7:b0:4af:59ff:dd75 with SMTP id ada2fe7eead31-4af59ffddb5mr6951504137.26.1732870468089;
        Fri, 29 Nov 2024 00:54:28 -0800 (PST)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com. [209.85.222.46])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4af590e5540sm700139137.8.2024.11.29.00.54.26
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Nov 2024 00:54:26 -0800 (PST)
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-85b47f0ec68so379856241.0
        for <linux-phy@lists.infradead.org>; Fri, 29 Nov 2024 00:54:26 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXsldWrZf867H1ABaFUE5R1g+E6u1BdpzBQQaQll/Ugo16zP0V7Nt/LKi7GaIUQTrz69xI+/o3/oBU=@lists.infradead.org
X-Received: by 2002:a05:6102:4421:b0:4af:4a89:7a1f with SMTP id
 ada2fe7eead31-4af4a8981d0mr10889457137.19.1732870466034; Fri, 29 Nov 2024
 00:54:26 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
 <20241126092050.1825607-3-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdUvmTQeQXxhsXtj23-OS=aL3UgsyOtnawdmnusrEJ2JQw@mail.gmail.com> <32fa7eb8-2139-454c-8866-cb264d060616@tuxon.dev>
In-Reply-To: <32fa7eb8-2139-454c-8866-cb264d060616@tuxon.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 29 Nov 2024 09:54:14 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXPQnCPjKRxoSceYabWPHF9Z_A7qVN85yaUZjPG7-o7tg@mail.gmail.com>
Message-ID: <CAMuHMdXPQnCPjKRxoSceYabWPHF9Z_A7qVN85yaUZjPG7-o7tg@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20241129_005430_598650_0FCFE202 
X-CRM114-Status: GOOD (  42.51  )
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

SGkgQ2xhdWRpdSwKCk9uIEZyaSwgTm92IDI5LCAyMDI0IGF0IDk6NDjigK9BTSBDbGF1ZGl1IEJl
em5lYSA8Y2xhdWRpdS5iZXpuZWFAdHV4b24uZGV2PiB3cm90ZToKPiBPbiAyOC4xMS4yMDI0IDE3
OjI0LCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4gPiBPbiBUdWUsIE5vdiAyNiwgMjAyNCBh
dCAxMDoyMeKAr0FNIENsYXVkaXUgPGNsYXVkaXUuYmV6bmVhQHR1eG9uLmRldj4gd3JvdGU6Cj4g
Pj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhLnVqQGJwLnJlbmVzYXMuY29t
Pgo+ID4+Cj4gPj4gVGhlIFJaL0czUyBzeXN0ZW0gY29udHJvbGxlciAoU1lTQykgaGFzIHZhcmlv
dXMgcmVnaXN0ZXJzIHRoYXQgY29udHJvbAo+ID4+IHNpZ25hbHMgc3BlY2lmaWMgdG8gaW5kaXZp
ZHVhbCBJUHMuIElQIGRyaXZlcnMgbXVzdCBjb250cm9sIHRoZXNlIHNpZ25hbHMKPiA+PiBhdCBk
aWZmZXJlbnQgY29uZmlndXJhdGlvbiBwaGFzZXMuCj4gPj4KPiA+PiBBZGQgU1lTQyBkcml2ZXIg
dGhhdCBhbGxvd3MgaW5kaXZpZHVhbCBTWVNDIGNvbnN1bWVycyB0byBjb250cm9sIHRoZXNlCj4g
Pj4gc2lnbmFscy4gVGhlIFNZU0MgZHJpdmVyIGV4cG9ydHMgYSBzeXNjb24gcmVnbWFwIGVuYWJs
aW5nIElQIGRyaXZlcnMgdG8KPiA+PiB1c2UgYSBzcGVjaWZpYyBTWVNDIG9mZnNldCBhbmQgbWFz
ayBmcm9tIHRoZSBkZXZpY2UgdHJlZSwgd2hpY2ggY2FuIHRoZW4gYmUKPiA+PiBhY2Nlc3NlZCB0
aHJvdWdoIHJlZ21hcF91cGRhdGVfYml0cygpLgo+ID4+Cj4gPj4gQ3VycmVudGx5LCB0aGUgU1lT
QyBkcml2ZXIgcHJvdmlkZXMgY29udHJvbCB0byB0aGUgVVNCIFBXUlJEWSBzaWduYWwsIHdoaWNo
Cj4gPj4gaXMgcm91dGVkIHRvIHRoZSBVU0IgUEhZLiBUaGlzIHNpZ25hbCBuZWVkcyB0byBiZSBt
YW5hZ2VkIGJlZm9yZSBvciBhZnRlcgo+ID4+IHBvd2VyaW5nIHRoZSBVU0IgUEhZIG9mZiBvciBv
bi4KPiA+Pgo+ID4+IE90aGVyIFNZU0Mgc2lnbmFscyBjYW5kaWRhdGVzIChhcyBleHBvc2VkIGlu
IHRoZSB0aGUgaGFyZHdhcmUgbWFudWFsIG9mIHRoZQo+ID4+Cj4gPj4gKiBQQ0llOgo+ID4+IC0g
QUxMT1dfRU5URVJfTDEgc2lnbmFsIGNvbnRyb2xsZWQgdGhyb3VnaCB0aGUgU1lTX1BDSUVfQ0ZH
IHJlZ2lzdGVyCj4gPj4gLSBQQ0lFX1JTVF9SU01fQiBzaWduYWwgY29udHJvbGxlZCB0aHJvdWdo
IHRoZSBTWVNfUENJRV9SU1RfUlNNX0IKPiA+PiAgIHJlZ2lzdGVyCj4gPj4gLSBNT0RFX1JYVEVS
TUlOQVRJT04gc2lnbmFsIGNvbnRyb2xsZWQgdGhyb3VnaCBTWVNfUENJRV9QSFkgcmVnaXN0ZXIK
PiA+Pgo+ID4+ICogU1BJOgo+ID4+IC0gU0VMX1NQSV9PQ1RBIHNpZ25hbCBjb250cm9sbGVkIHRo
cm91Z2ggU1lTX0lQQ09OVF9TRUxfU1BJX09DVEEKPiA+PiAgIHJlZ2lzdGVyCj4gPj4KPiA+PiAq
IEkyQy9JM0M6Cj4gPj4gLSBhZl9ieXBhc3MgSTJDIHNpZ25hbHMgY29udHJvbGxlZCB0aHJvdWdo
IFNZU19JMkN4X0NGRyByZWdpc3RlcnMKPiA+PiAgICh4PTAuLjMpCj4gPj4gLSBhZl9ieXBhc3Mg
STNDIHNpZ25hbCBjb250cm9sbGVkIHRocm91Z2ggU1lTX0kzQ19DRkcgcmVnaXN0ZXIKPiA+Pgo+
ID4+ICogRXRoZXJuZXQ6Cj4gPj4gLSBGRUNfR0lHQV9FTkFCTEUgRXRoZXJuZXQgc2lnbmFscyBj
b250cm9sbGVkIHRocm91Z2ggU1lTX0dFVEh4X0NGRwo+ID4+ICAgcmVnaXN0ZXJzICh4PTAuLjEp
Cj4gPj4KPiA+PiBBcyBkaWZmZXJlbnQgUmVuZXNhcyBSWiBTb0Mgc2hhcmVzIG1vc3Qgb2YgdGhl
IFNZU0MgZnVuY3Rpb25hbGl0aWVzCj4gPj4gYXZhaWxhYmxlIG9uIHRoZSBSWi9HM1MgU29DLCB0
aGUgZHJpdmVyIGlmIGZvcm1lZCBvZiBhIFNZU0MgY29yZQo+ID4+IHBhcnQgYW5kIGEgU29DIHNw
ZWNpZmljIHBhcnQgYWxsb3dpbmcgaW5kaXZpZHVhbCBTWVNDIFNvQyB0byBwcm92aWRlCj4gPj4g
ZnVuY3Rpb25hbGl0aWVzIHRvIHRoZSBTWVNDIGNvcmUuCj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5
OiBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+Cj4gPgo+
ID4+IC0tLSAvZGV2L251bGwKPiA+PiArKysgYi9kcml2ZXJzL3NvYy9yZW5lc2FzL3I5YTA4ZzA0
NS1zeXNjLmMKPiA+PiBAQCAtMCwwICsxLDMxIEBACj4gPj4gKy8vIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBHUEwtMi4wCj4gPj4gKy8qCj4gPj4gKyAqIFJaL0czUyBTeXN0ZW0gY29udHJvbGxl
ciBkcml2ZXIKPiA+PiArICoKPiA+PiArICogQ29weXJpZ2h0IChDKSAyMDI0IFJlbmVzYXMgRWxl
Y3Ryb25pY3MgQ29ycC4KPiA+PiArICovCj4gPj4gKwo+ID4+ICsjaW5jbHVkZSA8bGludXgvYXJy
YXlfc2l6ZS5oPgo+ID4+ICsjaW5jbHVkZSA8bGludXgvYml0cy5oPgo+ID4+ICsjaW5jbHVkZSA8
bGludXgvaW5pdC5oPgo+ID4+ICsKPiA+PiArI2luY2x1ZGUgInJ6LXN5c2MuaCIKPiA+PiArCj4g
Pj4gKyNkZWZpbmUgU1lTX1VTQl9QV1JSRFkgICAgICAgICAweGQ3MAo+ID4+ICsjZGVmaW5lIFNZ
U19VU0JfUFdSUkRZX1BXUlJEWV9OICAgICAgICBCSVQoMCkKPiA+PiArI2RlZmluZSBTWVNfTUFY
X1JFRyAgICAgICAgICAgIDB4ZTIwCj4gPj4gKwo+ID4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHJ6
X3N5c2Nfc2lnbmFsX2luaXRfZGF0YSByemczc19zeXNjX3NpZ25hbHNfaW5pdF9kYXRhW10gX19p
bml0Y29uc3QgPSB7Cj4gPgo+ID4gVGhpcyBpcyBtYXJrZWQgX19pbml0Y29uc3QuLi4KPiA+Cj4g
Pj4gKyAgICAgICB7Cj4gPj4gKyAgICAgICAgICAgICAgIC5uYW1lID0gInVzYi1wd3JyZHkiLAo+
ID4+ICsgICAgICAgICAgICAgICAub2Zmc2V0ID0gU1lTX1VTQl9QV1JSRFksCj4gPj4gKyAgICAg
ICAgICAgICAgIC5tYXNrID0gU1lTX1VTQl9QV1JSRFlfUFdSUkRZX04sCj4gPj4gKyAgICAgICAg
ICAgICAgIC5yZWZjbnRfaW5jcl92YWwgPSAwCj4gPj4gKyAgICAgICB9Cj4gPj4gK307Cj4gPj4g
Kwo+ID4+ICtjb25zdCBzdHJ1Y3Qgcnpfc3lzY19pbml0X2RhdGEgcnpnM3Nfc3lzY19pbml0X2Rh
dGEgPSB7Cj4gPgo+ID4gLi4uIGJ1dCB0aGlzIGlzIG5vdCBfX2luaXQsIGNhdXNpbmcgYSBzZWN0
aW9uIG1pc21hdGNoLgo+Cj4gRG8geW91IGtub3cgaWYgdGhlcmUgaXMgYSB3YXkgdG8gZGV0ZWN0
IHRoaXM/CgpUaGUga2VybmVsIHNob3VsZCB0ZWxsIHlvdSBkdXJpbmcgdGhlIGJ1aWxkLi4uCgo+
Cj4gPgo+ID4+ICsgICAgICAgLnNpZ25hbHNfaW5pdF9kYXRhID0gcnpnM3Nfc3lzY19zaWduYWxz
X2luaXRfZGF0YSwKPiA+PiArICAgICAgIC5udW1fc2lnbmFscyA9IEFSUkFZX1NJWkUocnpnM3Nf
c3lzY19zaWduYWxzX2luaXRfZGF0YSksCj4gPj4gKyAgICAgICAubWF4X3JlZ2lzdGVyX29mZnNl
dCA9IFNZU19NQVhfUkVHLAo+ID4+ICt9Owo+ID4KPiA+PiAtLS0gL2Rldi9udWxsCj4gPj4gKysr
IGIvZHJpdmVycy9zb2MvcmVuZXNhcy9yei1zeXNjLmMKPiA+Cj4gPj4gKy8qKgo+ID4+ICsgKiBz
dHJ1Y3Qgcnpfc3lzYyAtIFJaIFNZU0MgcHJpdmF0ZSBkYXRhIHN0cnVjdHVyZQo+ID4+ICsgKiBA
YmFzZTogU1lTQyBiYXNlIGFkZHJlc3MKPiA+PiArICogQGRldjogU1lTQyBkZXZpY2UgcG9pbnRl
cgo+ID4+ICsgKiBAc2lnbmFsczogU1lTQyBzaWduYWxzCj4gPj4gKyAqIEBudW1fc2lnbmFsczog
bnVtYmVyIG9mIFNZU0Mgc2lnbmFscwo+ID4+ICsgKi8KPiA+PiArc3RydWN0IHJ6X3N5c2Mgewo+
ID4+ICsgICAgICAgdm9pZCBfX2lvbWVtICpiYXNlOwo+ID4+ICsgICAgICAgc3RydWN0IGRldmlj
ZSAqZGV2Owo+ID4+ICsgICAgICAgc3RydWN0IHJ6X3N5c2Nfc2lnbmFsICpzaWduYWxzOwo+ID4+
ICsgICAgICAgdTggbnVtX3NpZ25hbHM7Cj4gPgo+ID4gWW91IGNvdWxkIGNoYW5nZSBzaWduYWxz
IHRvIGEgZmxleGlibGUgYXJyYXkgYXQgdGhlIGVuZCwgdGFnIGl0IHdpdGgKPiA+IF9fY291bnRl
ZF9ieShudW1fc2lnbmFscyksIGFuZCBhbGxvY2F0ZSBzcGFjZSBmb3IgYm90aCBzdHJ1Y3Qgcnpf
c3lzYwo+ID4gYW5kIHRoZSBzaWduYWxzIGFycmF5IHVzaW5nIHN0cnVjdF9zaXplKCksIHJlZHVj
aW5nIHRoZSBudW1iZXIgb2YKPiA+IGFsbG9jYXRpb25zLgo+Cj4gSSdsbCBsb29rIGludG8gdGhp
cy4KCj4gPj4gLS0tIC9kZXYvbnVsbAo+ID4+ICsrKyBiL2RyaXZlcnMvc29jL3JlbmVzYXMvcnot
c3lzYy5oCj4gPj4gQEAgLTAsMCArMSw1MiBAQAo+ID4+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMCAqLwo+ID4+ICsvKgo+ID4+ICsgKiBSZW5lc2FzIFJaIFN5c3RlbSBDb250
cm9sbGVyCj4gPj4gKyAqCj4gPj4gKyAqIENvcHlyaWdodCAoQykgMjAyNCBSZW5lc2FzIEVsZWN0
cm9uaWNzIENvcnAuCj4gPj4gKyAqLwo+ID4+ICsKPiA+PiArI2lmbmRlZiBfX1NPQ19SRU5FU0FT
X1JaX1NZU0NfSF9fCj4gPj4gKyNkZWZpbmUgX19TT0NfUkVORVNBU19SWl9TWVNDX0hfXwo+ID4+
ICsKPiA+PiArI2luY2x1ZGUgPGxpbnV4L3JlZmNvdW50Lmg+Cj4gPj4gKyNpbmNsdWRlIDxsaW51
eC90eXBlcy5oPgo+ID4+ICsKPiA+PiArLyoqCj4gPj4gKyAqIHN0cnVjdCByel9zeXNjX3NpZ25h
bF9pbml0X2RhdGEgLSBSWiBTWVNDIHNpZ25hbHMgaW5pdCBkYXRhCj4gPj4gKyAqIEBuYW1lOiBz
aWduYWwgbmFtZQo+ID4+ICsgKiBAb2Zmc2V0OiByZWdpc3RlciBvZmZzZXQgY29udHJvbGluZyB0
aGlzIHNpZ25hbAo+ID4+ICsgKiBAbWFzazogYml0bWFzayBpbiByZWdpc3RlciBzcGVjaWZpYyB0
byB0aGlzIHNpZ25hbAo+ID4+ICsgKiBAcmVmY250X2luY3JfdmFsOiBpbmNyZW1lbnQgcmVmY250
IHdoZW4gc2V0dGluZyB0aGlzIHZhbHVlCj4gPj4gKyAqLwo+ID4+ICtzdHJ1Y3Qgcnpfc3lzY19z
aWduYWxfaW5pdF9kYXRhIHsKPiA+PiArICAgICAgIGNvbnN0IGNoYXIgKm5hbWU7Cj4gPj4gKyAg
ICAgICB1MzIgb2Zmc2V0Owo+ID4+ICsgICAgICAgdTMyIG1hc2s7Cj4gPj4gKyAgICAgICB1MzIg
cmVmY250X2luY3JfdmFsOwo+ID4+ICt9Owo+ID4+ICsKPiA+PiArLyoqCj4gPj4gKyAqIHN0cnVj
dCByel9zeXNjX3NpZ25hbCAtIFJaIFNZU0Mgc2lnbmFscwo+ID4+ICsgKiBAaW5pdF9kYXRhOiBz
aWduYWxzIGluaXRpYWxpemF0aW9uIGRhdGEKPiA+PiArICogQHJlZmNudDogcmVmZXJlbmNlIGNv
dW50ZXIKPiA+PiArICovCj4gPj4gK3N0cnVjdCByel9zeXNjX3NpZ25hbCB7Cj4gPj4gKyAgICAg
ICBjb25zdCBzdHJ1Y3Qgcnpfc3lzY19zaWduYWxfaW5pdF9kYXRhICppbml0X2RhdGE7Cj4gPgo+
ID4gQ2FuJ3QgeW91IGp1c3QgZW1iZWQgc3RydWN0IHJ6X3N5c2Nfc2lnbmFsX2luaXRfZGF0YT8K
Pgo+IE1lYW5pbmcgdG8gaGF2ZSBkaXJlY3RseSB0aGUgbWVtYmVycyBvZiBzdHJ1Y3Qgcnpfc3lz
Y19zaWduYWxfaW5pdF9kYXRhCj4gaGVyZSBvciB0byBkcm9wIHRoZSBjb25zdCBxdWFsaWZpZXIg
YWxvbmcgd2l0aCBfX2luaXRjb25zdCBvbgo+IHJ6ZzNzX3N5c2Nfc2lnbmFsc19pbml0X2RhdGFb
XSAgYW5kIHJlLXVzZSB0aGUgcGxhdGZvbSBkYXRhIHcvbyBhbGxvY2F0ZQo+IG5ldyBtZW1vcnk/
CgpJIG1lYW4KCiAgICBzdHJ1Y3Qgcnpfc3lzY19zaWduYWwgewogICAgICAgICAgc3RydWN0IHJ6
X3N5c2Nfc2lnbmFsX2luaXRfZGF0YSBpbml0X2RhdGE7CiAgICAgICAgICAuLi4KICAgIH07CgpD
dXJyZW50bHkgeW91IGFsbG9jYXRlIHJ6X3N5c2Nfc2lnbmFsX2luaXRfZGF0YSBzZXBhcmF0ZWx5
LgpXaGVuIGVtYmVkZGVkLCBpdCB3aWxsIGJlIHBhcnQgb2Ygcnpfc3lzYywgY2ZyLiBhYm92ZS4K
Cj4gPiBUaGF0IHdheSB5b3UgY291bGQgYWxsb2NhdGUgdGhlIHJ6X3N5c2Nfc2lnbmFsIGFuZAo+
ID4gcnpfc3lzY19zaWduYWxfaW5pdF9kYXRhIHN0cnVjdHVyZXMgaW4gYSBzaW5nbGUgYWxsb2Nh
dGlvbi4KCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQK
Ci0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBp
YTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdp
dGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdt
IHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRo
aW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBU
b3J2YWxkcwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
