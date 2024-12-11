Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D8D2E7717D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Dec 2024 17:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7SYEKSYyCu49eLaNc0xCSM+ybWBTH7WbxfCO1BtMfk=; b=dsUJKJJ3ZM2uZE
	JlIrAmfbQXZGZJHzxc/aKlhoPPh59F5TrjujJ6yqA59p2t8uoFI8j9YCEYvGAKF0WoqLSRQAic6Cm
	K59ZlVIPd3yYcDd0P2rMUmsltWZX3P6HCzB+6sCaXeyIxsTeSMqBQIaJ8d9O54ZkymAwxC1NksFpg
	0bwximmofz+6OpJ7sH4CAXdW1dRiWq5oYut2fMyQtgrd8noHeYTbRSWmfF/hfNnCqiO0LGx00TKiO
	nMrff/ZobYlZne2Kv/4uhgbHiqcXBAl0RX8zrzcwc5DWzRHaf0LsfUbfSloQY/KDgy0eBv3iqORxR
	yFW4InS3HvAJMV63XW3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLQx0-0000000Ffz7-3xeR;
	Wed, 11 Dec 2024 17:56:42 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLQvw-0000000Ffkx-0lVo
	for linux-phy@lists.infradead.org;
	Wed, 11 Dec 2024 17:55:37 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3eb4ac63dc2so1929066b6e.3
        for <linux-phy@lists.infradead.org>; Wed, 11 Dec 2024 09:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733939735; x=1734544535; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6NxV4GoHK/ahyIflRv/mOazvo62QwExn028Ncg5fkKE=;
        b=eY9wxNKH3NBKgKBVSeVGtvfRzlP7FUpbHQznWFxmnRwXHgWL4WpOYRFudwlPm3HqpR
         zsZ3BaOp8HApsbMhDcvNar2eWsa/otUHMfH71dIHlOFeDXbP3FwA0VZuw0VNJnrWTb1A
         F40brZM1Zsbwk00nKa/QDZHaJumwe16haGKp3XfNdDUkhq8YBjaqH34QAYmXxNs9+PcK
         QV0CIpxvlRSkUiTCD03H+HQDqOmqxD5mNeNna+I7MBuOSl7vEJ56TO25maHcHrUbwKzY
         dN/u9B7YH7ybj3dL5fA6uuFVLxxNLBrT9ZVnXM4qUggrgQzlmF5/VsNfyDno1iW6oQqe
         YjUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733939735; x=1734544535;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6NxV4GoHK/ahyIflRv/mOazvo62QwExn028Ncg5fkKE=;
        b=CGELtEqFLUegDr2OuogyWMznKp3OmnyrIkRIAg+SlLi+PP5+Du39fyDX2AT8XsMuYJ
         kWph847QsJwS0Jc4CrhJRXhbMsae9s4b6Kk8juBANMIW+QsIR3Cp3Wx53oFtf5FIixeN
         /IkPkzM+jIbBu+FMGd0Ozi1G94yWmMkAttN2eKZWda9oyjOWCvUUpGmYgcGDS3O15EpR
         6DK7B+hFI0sEcnRd5sM6sGCYYW4sU9QqEmBFjOGJnTAoaauMdBM1ihjgBkN9OLtd9xMb
         /A6xrpdjzWNt4oIqCJhwTn+FaZ4puTYiDnXYgVh2b/5SMk/blHCMQnM13qN7GtAVdWrh
         6tGA==
X-Forwarded-Encrypted: i=1; AJvYcCWCQK/lKz275iXHtBWNTI/vcFK0La6vUzmxq7dkHf45AqEskoEHtjn6QpuLItzQr3BzHqJGMs6iuB4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZB13Hp25AXMXdIhGmloFeHJwbPPsn2qjjVYV+N7RyZokSWGxX
	poGyRC7OHECmtIx1iN15LqKPYqpJuMbgbR7Olv1BXzIhCIq26m9S1QL7Co/shwYDntRB1/cjglz
	QORtAV663iamvbPQ/RZ+n/MHfGFiUfU2X/pYnlA==
X-Gm-Gg: ASbGncvBSrCUYRbFvlEVCUWrWm2HZa0aznALHX3mqDe01tRVXTfrTOh/Yrgt75oS/K7
	IGEgNKi1PvO56Q9t+HpZjLnLovHD04GrRlGA=
X-Google-Smtp-Source: AGHT+IF4vtTjbxANqGCquCOW86vWqQwnJkVwBIy0+PKUY3mXo9+jIK2tbaAnXdNFAA6ijnfwpTtlzsC6XGNl2/h4Y9Q=
X-Received: by 2002:a05:6808:189c:b0:3e6:6097:847d with SMTP id
 5614622812f47-3eb85a8b199mr2732633b6e.7.1733939734907; Wed, 11 Dec 2024
 09:55:34 -0800 (PST)
MIME-Version: 1.0
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <20241206-gs101-phy-lanes-orientation-phy-v4-6-f5961268b149@linaro.org> <CADrjBPoZqbAM=2zOdgXD_dTrgh-J7yE+OX_JSVJ42Lmzb-DPEw@mail.gmail.com>
In-Reply-To: <CADrjBPoZqbAM=2zOdgXD_dTrgh-J7yE+OX_JSVJ42Lmzb-DPEw@mail.gmail.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 11 Dec 2024 17:55:23 +0000
Message-ID: <CADrjBPpv7Y-v4w-ZjsM52wPXM1G=v028BxmJA=_zb4ksDq21EQ@mail.gmail.com>
Subject: Re: [PATCH v4 6/7] phy: exynos5-usbdrd: subscribe to orientation
 notifier if required
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_095536_219162_638589BA 
X-CRM114-Status: GOOD (  30.32  )
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

SGkgQW5kcsOpLAoKT24gU2F0LCA3IERlYyAyMDI0IGF0IDIxOjMxLCBQZXRlciBHcmlmZmluIDxw
ZXRlci5ncmlmZmluQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gSGkgQW5kcsOpLAo+Cj4gRmlyc3Rs
eSwgdGhhbmtzIGZvciBhbGwgeW91ciB3b3JrIGdldHRpbmcgVVNCIG9uIFBpeGVsIDYgLyBnczEw
MQo+IHdvcmtpbmcgdXBzdHJlYW0gOikKPgo+IE9uIEZyaSwgNiBEZWMgMjAyNCBhdCAxNjozMSwg
QW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPgo+ID4g
Z3MxMDEncyBTUyBwaHkgbmVlZHMgdG8gYmUgY29uZmlndXJlZCBkaWZmZXJlbnRseSBiYXNlZCBv
biB0aGUKPiA+IGNvbm5lY3RvciBvcmllbnRhdGlvbiwgYXMgdGhlIFNTIGxpbmsgY2FuIG9ubHkg
YmUgZXN0YWJsaXNoZWQgaWYgdGhlCj4gPiBtdXggaXMgY29uZmlndXJlZCBjb3JyZWN0bHkuCj4g
Pgo+ID4gVGhlIGNvZGUgdG8gaGFuZGxlIHByb2dyYW1taW5nIG9mIHRoZSBtdXggaXMgaW4gcGxh
Y2UgYWxyZWFkeSwgdGhpcyBjb21taXQKPiA+IG5vdyBhZGRzIHRoZSBtaXNzaW5nIHBpZWNlcyB0
byBzdWJzY3JpYmUgdG8gdGhlIFR5cGUtQyBvcmllbnRhdGlvbgo+ID4gc3dpdGNoIGV2ZW50Lgo+
ID4KPiA+IE5vdGUgdGhhdCBmb3IgdGhpcyBhbGwgdG8gd29yayB3ZSByZWx5IG9uIHRoZSBVU0Ig
Y29udHJvbGxlcgo+ID4gcmUtaW5pdGlhbGlzaW5nIHVzLiBJdCBzaG91bGQgaW52b2tlIG91ciAu
ZXhpdCgpIHVwb24gY2FibGUgdW5wbHVnLCBhbmQKPiA+IGR1cmluZyBjYWJsZSBwbHVnIHdlJ2xs
IHJlY2VpdmUgdGhlIG9yaWVudGF0aW9uIGV2ZW50IGFmdGVyIHdoaWNoIHdlCj4gPiBleHBlY3Qg
b3VyIC5pbml0KCkgdG8gYmUgY2FsbGVkLgo+ID4KPiA+IEFib3ZlIHJlaW5pdGlhbGlzYXRpb24g
aGFwcGVucyBpZiB0aGUgRFdDMyBjb250cm9sbGVyIGNhbiBlbnRlciBydW50aW1lCj4gPiBzdXNw
ZW5kIGF1dG9tYXRpY2FsbHkuIEZvciB0aGUgRFdDMyBkcml2ZXIsIHRoaXMgaXMgYW4gb3B0LWlu
Ogo+ID4gICAgIGVjaG8gYXV0byA+IC9zeXMvZGV2aWNlcy8uLi4vMTExMTAwMDAudXNiL3Bvd2Vy
L2NvbnRyb2wKPiA+IE9uY2UgZG9uZSwgdGhpbmdzIHdvcmsgYXMgbG9uZyBhcyB0aGUgVURDIGlz
IG5vdCBib3VuZCBhcyBvdGhlcndpc2UgaXQKPiA+IHN0YXlzIGJ1c3kgYmVjYXVzZSBpdCBkb2Vz
bid0IGNhbmNlbCAvIHN0b3Agb3V0c3RhbmRpbmcgVFJCcy4gRm9yIG5vdwo+ID4gd2UgaGF2ZSB0
byBtYW51YWxseSB1bmJpbmQgdGhlIFVEQyBpbiB0aGF0IGNhc2U6Cj4gPiAgICAgIGVjaG8gIiIg
PiBzeXMva2VybmVsL2NvbmZpZy91c2JfZ2FkZ2V0Ly4uLi9VREMKPiA+Cj4gPiBOb3RlIHRoYXQg
aWYgdGhlIG9yaWVudGF0aW9uLXN3aXRjaCBwcm9wZXJ0eSBpcyBtaXNzaW5nIGZyb20gdGhlIERU
LAo+ID4gdGhlIGNvZGUgd2lsbCBiZWhhdmUgYXMgYmVmb3JlIHRoaXMgY29tbWl0IChtZWFuaW5n
IGZvciBnczEwMSBpdCB3aWxsCj4gPiB3b3JrIGluIFNTIG1vZGUgaW4gb25lIG9yaWVudGF0aW9u
IG9ubHkpLiBPdGhlciBwbGF0Zm9ybXMgYXJlIG5vdAo+ID4gYWZmZWN0ZWQgZWl0aGVyIHdheS4K
PiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5h
cm8ub3JnPgo+Cj4gUmV2aWV3ZWQtYnk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGlu
YXJvLm9yZz4KPiBUZXN0ZWQtYnk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJv
Lm9yZz4KPgo+IE5vdGVzIG9uIHRlc3Rpbmc6Cj4KPiBJIHRlc3RlZCB0aGlzIHNlcmllcyB3aXRo
IHRoZSBjb3JyZXNwb25kaW5nIERUIHVzaW5nIGEgUGl4ZWwgNiBkZXZpY2UKPiB3aXRoIDIgZGlm
ZmVyZW50IFVTQiBodWJzIGFuZCBhbHNvIHBsdWdnaW5nIGRpcmVjdGx5IGludG8gbXkgbGFwdG9w
Lgo+IEkndmUgdHJpZWQgdmFyaW91cyBjb21iaW5hdGlvbnMgb2YgcGx1Z2dpbmcgLyB1bnBsdWdn
aW5nIGZyb20gYm90aAo+IGVuZHMgb2YgdGhlIFVTQiBjYWJsZSBhbmQgY2hhbmdpbmcgY2FibGUg
b3JpZW50YXRpb24uIFdpdGggdGhlIGxhdGVzdAo+IHNlcmllcyB0aGUgZGlzY29ubmVjdC9yZWNv
bm5lY3QgYWx3YXlzIHNlZW1zIHJvYnVzdGx5IGRldGVjdGVkIGFuZAo+IFBpeGVsIGlzIGVudW1l
cmF0ZWQgYXMgYSBVU0IgZGV2aWNlIGJ5IHRoZSBob3N0LCBhZGIgY29ubmVjdGlvbiB0byB0aGUK
PiBwaG9uZSBpcyBwb3NzaWJsZSBldmVuIHdpdGggdGhlIGNhYmxlIG9yaWVudGF0aW9uIGNoYW5n
aW5nIGJldHdlZW4KPiBkaXNjb25uZWN0L3JlY29ubmVjdC4KPgo+IE9uZSB0aGluZyBJIGRpZCBu
b3RpY2UgZHVyaW5nIHRlc3RpbmcgaXMgdGhhdCBpbiBvbmUgY2FibGUgb3JpZW50YXRpb24KPiBQ
aXhlbCBpcyBkZXRlY3RlZCBhcyBhIGBTdXBlclNwZWVkIFVTQiBkZXZpY2VgIGJ5IHRoZSBob3N0
IGFuZCBpbiB0aGUKPiBvdGhlciBjYWJsZSBvcmllbnRhdGlvbiBpdCBpcyBkZXRlY3RlZCBhcyBh
IGBoaWdoLXNwZWVkIFVTQiBkZXZpY2VgLgo+IFdoaWNoIHN1Z2dlc3RzIHRoZXJlIGlzIHN0aWxs
IGEgbGF0ZW50IGJ1ZyBpbiB0aGUgcGh5Cj4gcmUtY29uZmlndXJhdGlvbi4KCllvdSBjYW4gZGlz
cmVnYXJkIHRoaXMgbGFzdCBwb2ludCwgSSBoYWQgYSB0eXBvIGluIG15IHRlc3Qgc2V0dXAgOigg
SQpqdXN0IGNvbmZpcm1lZCB0aGF0IGl0IGlzIGRldGVjdGVkIGFzIFN1cGVyU3BlZWQgaW4gYm90
aCBvcmllbnRhdGlvbnMuCgpUaGFua3MsCgpQZXRlcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
