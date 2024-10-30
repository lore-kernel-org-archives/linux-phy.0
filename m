Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38EC9D6B6D1
	for <linux-phy@archiver.kernel.org>; Wed, 30 Oct 2024 20:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ocm5N3gCjPYa3+ci9QBbSuPDqdhqZks0RyCERNFpE+A=; b=2wiCl1KlxKB1OE
	HCWm8wtenuBDiU2/IKUcWI6lMY1cyGCUmPa4FJ8slR46I71riSq5he5NEm9/0/D7DmPp054uffuOU
	SQkVR0ex18DEqRcINy0R6zUvvgBv4fEQTN7MUidBkmg0S9jlxOM6ORgmL+jdP1368+Mp9C44Po/DQ
	AgbjHeKOXoBV84GlvuIwaeuCSz6jN/HYJg0mIO1gM7kTA/aSIyBc7cIpn6B7CWpkyhw3OABbPiVVt
	9gtFlRiGtcCeG9bu6F3/4RGvCBPF8SO9F/77Ys7zewXr2bfeOwllDUFQGy3oKAPv24ItA8XGwBZHr
	gPMW9NgNMBaZK4nQy25w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6FDU-00000001eQy-2EBQ;
	Wed, 30 Oct 2024 20:22:56 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6FBp-00000001eCo-1mmC
	for linux-phy@lists.infradead.org;
	Wed, 30 Oct 2024 20:21:15 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-2e31af47681so165106a91.2
        for <linux-phy@lists.infradead.org>; Wed, 30 Oct 2024 13:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730319672; x=1730924472; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VxptXU8oKSlVF2fvRzkZip9fG/KS/MTrvVI6j9ReCRo=;
        b=AkBPEttBV2j73XIQxMnRjnFLL/uzhoObvkUPbcuHxPap93ZRl5Lb3Cy05PfIXDbJkZ
         7fuTew+diuCrepLqme6yVMFQSeq20iGgkqCdiG+ASDoxKgKfgRvsNIU9YwQr0+1CST54
         +2V0RAJkAMCFIg8mphfv1ocLlacjRD9+uv/HZ8yQCoGo6KyYr99aCyIEHa3ilGSfbGP0
         U+0hs83O6L4g2crWN7tiy3voJq5kJ6eySHvaRbUuM26GlTZRcuz6r/wBZZdEwPeWtdnL
         UjK4W2I2j6ilSegzexsg+8cpyRCCVrsbz70l5wCppCoMLEEk4MoRzPi6Sio9k18bma0I
         9CxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730319672; x=1730924472;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VxptXU8oKSlVF2fvRzkZip9fG/KS/MTrvVI6j9ReCRo=;
        b=b2+ATsDjzm61UKTu++yCqicOnkkGbMbcFLnfKKhCdRB3DY+QrHcmW4cgK+KUFk4AAu
         2lAefkn+w03Zb70W/LvUlEsGayNkKl6VyMSct3gm/7Lwo9zMW2eYGuzbtGdwf9b4vfzm
         l7CUJfreSN2bTgAvH4kvXRfPUFW2AkhTobELxA+smxYI11R1RBxOuWAiJDwR3CssAQ6F
         WfDufbJ6goHEoviGEaGw/N9YRajqP8l+fNJNj8rs8dZOK4DVmILLGyJ3nB4fsODJ26Qs
         VJK6tKfJdkQpRcd2kZTJJe82LHqAhTP6rKBvS2sqXOF3csdWfHMnkZGUqb3tBwKRecQc
         0CRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcXA8zHScatVfq2SnDew7sTBTJYhj2n5jiSCgH9zU7rmg/meDXFTyPN1BzYENH7G3fl5aJy1DUkHY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwYU4SgSAt561giDqOc2HspE7fqGzmbzdJzriON/JX+t9CraSiz
	ifZ9EZbg3yjy95He2NRZib0mlQhGNPGWHQto0Y3DoNtNFOpFB1h+X5788Iu8pGBeFmqM4YxEt9T
	TXJtFsEirInvlMbnX2ttxnVeZPxUHrQWmr8YA
X-Google-Smtp-Source: AGHT+IEP9wXNWXu2pk9j6AVVN/5LTlwN5rgVci/DlwsY/hQHHrt79TYJSPQXM7eBts4e9mwGpTVwOvfM4MoIEhR+9sI=
X-Received: by 2002:a17:90b:1c84:b0:2e2:b6ef:1611 with SMTP id
 98e67ed59e1d1-2e93c1710afmr870053a91.18.1730319671512; Wed, 30 Oct 2024
 13:21:11 -0700 (PDT)
MIME-Version: 1.0
References: <20240203165307.7806-1-aford173@gmail.com> <20241025080544.136280-1-mailinglist1@johanneskirchmair.de>
 <6d039ecf-0e48-415a-afd8-6bfce60081ae@kontron.de> <CAHCN7xKevGWipBSch6gKVeJRT9Zb8QTchhxg3c=96XhnAvnjZw@mail.gmail.com>
In-Reply-To: <CAHCN7xKevGWipBSch6gKVeJRT9Zb8QTchhxg3c=96XhnAvnjZw@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 30 Oct 2024 13:20:32 -0700
Message-ID: <CAGETcx-LGZ1k-seh4LkvCobsxUk67QK40swiQvH6Wrzs0Log0A@mail.gmail.com>
Subject: Re: imx8mp: HDMI display blank/black problems
To: Adam Ford <aford173@gmail.com>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>, mailinglist1@johanneskirchmair.de, 
	johannes.kirchmair@skidata.com, Laurent.pinchart@ideasonboard.com, 
	airlied@gmail.com, alexander.stein@ew.tq-group.com, andrzej.hajda@intel.com, 
	catalin.marinas@arm.com, conor+dt@kernel.org, daniel@ffwll.ch, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	festevam@gmail.com, jernej.skrabec@gmail.com, jonas@kwiboo.se, 
	kernel@pengutronix.de, kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	l.stach@pengutronix.de, linux-arm-kernel@lists.infradead.org, 
	linux-imx@nxp.com, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
	maarten.lankhorst@linux.intel.com, marex@denx.de, mripard@kernel.org, 
	neil.armstrong@linaro.org, p.zabel@pengutronix.de, rfoss@kernel.org, 
	robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org, 
	tzimmermann@suse.de, ulf.hansson@linaro.org, victor.liu@nxp.com, 
	vkoul@kernel.org, will@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_132113_497083_9CAB56D2 
X-CRM114-Status: GOOD (  29.42  )
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

T24gV2VkLCBPY3QgMzAsIDIwMjQgYXQgMTA6MjjigK9BTSBBZGFtIEZvcmQgPGFmb3JkMTczQGdt
YWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIE9jdCAzMCwgMjAyNCBhdCA0OjAx4oCvQU0gRnJp
ZWRlciBTY2hyZW1wZgo+IDxmcmllZGVyLnNjaHJlbXBmQGtvbnRyb24uZGU+IHdyb3RlOgo+ID4K
PiA+IEhpIEpvaGFubmVzLAo+ID4KPiA+IE9uIDI1LjEwLjI0IDEwOjA1IEFNLCBtYWlsaW5nbGlz
dDFAam9oYW5uZXNraXJjaG1haXIuZGUgd3JvdGU6Cj4gPiA+IFtTaWUgZXJoYWx0ZW4gbmljaHQg
aMOkdWZpZyBFLU1haWxzIHZvbiBtYWlsaW5nbGlzdDFAam9oYW5uZXNraXJjaG1haXIuZGUuIFdl
aXRlcmUgSW5mb3JtYXRpb25lbiwgd2FydW0gZGllcyB3aWNodGlnIGlzdCwgZmluZGVuIFNpZSB1
bnRlciBodHRwczovL2FrYS5tcy9MZWFybkFib3V0U2VuZGVySWRlbnRpZmljYXRpb24gXQo+ID4g
Pgo+ID4gPiBIZXksCj4gPiA+IFdlIGhhZCBzb21lIHByb2JsZW1zIHdpdGggdGhlIGhkbWkgb24g
dGhlIGlteDhtcCBhbmQgd2FudGVkIHRvIGxlYXZlLCB3aGF0IHdlIGZvdW5kIG91dCBhYm91dCBp
dCwgc29tZXdoZXJlIGZvciBvdGhlcnMgdG8gZmluZCBpdC4KPiA+ID4KPiA+ID4gVGhlIHByb2Js
ZW0gd2FzIHRoYXQgb3VyIGhkbWkgZGlzcGxheSBzb21ldGltZXMgc3RheWVkIGJsYW5rIGFmdGVy
IGhvdCBwbHVnZ2luZyBhbmQgc29tZXRpbWVzIGF0IHN0YXJ0dXAuIE9uIG9sZGVyIGtlcm5lbCB2
ZXJzaW9ucyA2LjYgd2UgZGlkIG5vdCBoYXZlIHRoZSBwcm9ibGVtIHdpdGggdGhlIG5vdCBtYWlu
bGluZWQgaGRtaSBwYXRjaGVzLgo+ID4gPiBXZSB0cmFja2VkIHRoZSBjb21taXQgZG93biB0aGF0
IGludHJvZHVjZWQgdGhlIHByb2JsZW0gZm9yIHVzLiBJdCB3YXMgdGhlIGZvbGxvd2luZyDigJxk
cml2ZXIgY29yZTogRW5hYmxlIGZ3X2Rldmxpbms9cnBtIGJ5IGRlZmF1bHTigJ0gIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMzExMTMyMjA5NDguODAwODktMS1zYXJhdmFuYWtAZ29v
Z2xlLmNvbS8KPiA+ID4gU28gd2Ugc3dpdGNoZWQgYmFjayB0byBGV19ERVZMSU5LX0ZMQUdTX09O
IHZpYSBrZXJuZWwgcGFyYW1ldGVyLiBEb27igJl0IHJlYWxseSB1bmRlcnN0YW5kIHdoYXQgdGhl
IHByb2JsZW0gd2l0aCBSUE0gaXMuCj4gPiA+Cj4gPiA+IFNvLCB0aGlzIGluZm9ybWF0aW9uIGlz
IGp1c3QgZm9yIHJlZmVyZW5jZS4gTWF5YmUgc29tZW9uZSBoYXMgYW4gaWRlYSB3aGF0IGlzIGdv
aW5nIG9uIGhlcmUuIEFuZCBob3cgdG8gZml4IHRoZSBwcm9ibGVtIGluIGEgbW9yZSBwcm9wZXIg
d2F5Lgo+ID4KPiA+IFRoYW5rcyBmb3IgaW52ZXN0aWdhdGluZyBhbmQgc2hhcmluZyB5b3VyIHJl
c3VsdHMhCj4gPgo+ID4gSSdtIHNlZWluZyB0aGUgc2FtZSBzeW1wdG9tcyBhbmQgcHJldmlvdXNs
eSBmb3VuZCBvdXQgdGhhdCB0aGlzIGlzCj4gPiByZWxhdGVkIHRvIExDRElGIHVuZGVycnVuIGVy
cm9ycy4gU2VlIFsxXSBmb3IgbW9yZSBpbmZvcm1hdGlvbi4KPiA+Cj4gPiBBZGFtIGhhcyBhbHNv
IHN0YXJ0ZWQgdGhpcyB0aHJlYWQ6IFsyXS4KPiA+Cj4gPiBBbnl3YXksIGtub3dpbmcgdGhhdCB0
aGlzIGlzIHJlbGF0ZWQgdG8gZndfZGV2bGluaz1ycG0gaXMgcmVhbGx5Cj4gPiBoZWxwZnVsLiBJ
IGp1c3QgdHJpZWQgd2l0aCBmd19kZXZsaW5rPW9uIGFuZCB3YXNuJ3QgYWJsZSB0byBzZWUgYW55
Cj4gPiBpc3N1ZXMgYW55bW9yZS4gU28gdGhpcyBjb25maXJtcyB5b3VyIGZpbmRpbmdzLgo+Cj4g
SSB3YXMgb2ZmIGluIHRoZSB3ZWVkcyB0aGlua2luZyB0aGVyZSB3YXMgc29tZXRoaW5nIHdyb25n
IGluIHRpbWluZwo+IGFuZC9vciBhIHJhY2UgY29uZGl0aW9uIGFyb3VuZCB0aGUgUExMIG9yIHNv
bWV0aGluZy4gIFRoaXMgaXMgZ29vZAo+IG5ld3MuCj4gUGxlYXNlIGZvcmdpdmUgbXkgaWdub3Jh
bmNlLCB3aGF0IGRvZXMgZndfZGV2bGluayBkbz8gIElzIHRoZXJlCj4gc29tZXRoaW5nIHdlIGNh
biBkbyBpbiB0aGUgZHJpdmVyIGl0c2VsZiB0byBmb3JjZSBpdHMgYmVoYXZpb3I/Cgpmd19kZXZs
aW5rIGZpZ3VyZXMgb3V0IHN1cHBsaWVyL2NvbnN1bWVyIGRlcGVuZGVuY2llcyBiZXR3ZWVuIGRl
dmljZXMKYW5kIGNyZWF0ZXMgZGV2aWNlIGxpbmtzIGJldHdlZW4gdGhlbS4gVGhpcyBlbnN1cmVz
IHByb3Blcgpwcm9iZS9zdXNwZW5kL3Jlc3VtZS9zaHV0ZG93bi9ydW50aW1lIFBNIG9yZGVyaW5n
LgoKZndfZGV2bGluaz1ycG0gdnMgb24gbWVhbnMgImVuZm9yY2UgYWxsIG9mIHRoZXNlIiB2cyAi
ZW5mb3JjZSBhbGwgb2YKdGhlc2UgZXhjZXB0IHJ1bnRpbWUgUE0iLgoKPiBhZGFtCj4gPgo+ID4g
SSBob3BlIHRoYXQgc29tZSBvZiB0aGUgZHJpdmVyIGZyYW1ld29yayBhbmQgcnVudGltZSBQTSBl
eHBlcnRzIGNhbiBoZWxwCj4gPiB0byBmaW5kIG91dCB3aGF0IGlzIGFjdHVhbGx5IHdyb25nIGFu
ZCBob3cgdGhlIGNvcnJlY3QgZml4IG1pZ2h0IGxvb2sgbGlrZS4KPiA+Cj4gPiBJJ20gYWxzbyBD
Qy1pbmcgU2FyYXZhbmEgd2hvIGF1dGhvcmVkIHRoZSBjaGFuZ2UgZnJvbSBmd19kZXZsaW5rPW9u
IHRvCj4gPiBmd19kZXZsaW5rPXJwbSB0byBzZWUgaWYgdGhleSBoYXZlIGFueXRoaW5nIHRvIGFk
ZC4KCldoZW4gZndfZGV2bGluaz1ycG0sIHlvdSdsbCBoYXZlIGRldmljZSBsaW5rcyBjcmVhdGVk
IGJldHdlZW4KY29uc3VtZXJzIGFuZCBzdXBwbGllcnMgd2l0aCB0aGUgRExfRkxBR19QTV9SVU5U
SU1FIGZsYWcgc2V0LiBTbwpiZWZvcmUgeW91ciBkZXZpY2UgaXMgcnVudGltZSByZXN1bWVkLCBp
dCdsbCBtYWtlIHN1cmUgYWxsIHlvdXIKc3VwcGxpZXJzIGFyZSByZXN1bWVkIGZpcnN0LgoKTXkg
Z3Vlc3MgaXMgdGhhdCB0aGVyZSBpcyBzb21lIGlzc3VlIGluIHRoZSBydW50aW1lIFBNIGhhbmRs
aW5nIGluCnRoZXNlIGRyaXZlcnMuIEkgZG9uJ3QgaGF2ZSBlbm91Z2ggY29udGV4dCB0byBwcm92
aWRlIGZ1cnRoZXIgaW5zaWdodC4KCi1TYXJhdmFuYQoKPiA+Cj4gPiBUaGFua3MKPiA+IEZyaWVk
ZXIKPiA+Cj4gPiBbMV0KPiA+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9s
aW51eC1waHkvY292ZXIvMjAyNDA5MDQyMzMxMDAuMTE0NjExLTEtYWZvcmQxNzNAZ21haWwuY29t
LyMyNjAxNDA1Nwo+ID4gWzJdCj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9pbXgvOGNmZDMw
NTItYzg1YS00MjM1LWI5YjgtNmQyOTI5ZTllNDU1QGtvbnRyb24uZGUvVC8KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
