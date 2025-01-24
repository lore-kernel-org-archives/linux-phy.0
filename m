Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A2FDC02182
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jan 2025 00:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PDuh2PjqUHsZzc5ZDoYsI+Ycat4vyZRBHw6Yo5HMKc=; b=h4SYXOseIuWMwl
	988T2Fe8uF0PvHEhKV+bE1dqX3Il0GYG5I6foJ/PalJHSEPagZ3jGZLKlkWNRb7PiDYGnGdxYKdHR
	Ya//Dp/u0XylaSZXKYmXZqljYQ/jnSx8CZImnEkq/Cy93a14jVkUe7veRA5XyHD67MKwN2a6LHNbp
	PVDkCj/oDubLMzcBxZQXKyHjWfm+OFE1IdkPvOA3T28KVo1+Y0SBnE3h0f/kWi0P0CbaVolwytpEe
	9mc8OhGVz90/86rTN9qNjvhYOOnVhJBMXyp7/3gb66SWrFw+0pZFAIALD9Uck8yT49STMG0ipv4k2
	JfT13Q1CwQzZheJUKapg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tb7gq-0000000Dbwv-0xaY;
	Fri, 24 Jan 2025 00:36:52 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tb7go-0000000DbwF-0NPs
	for linux-phy@lists.infradead.org;
	Fri, 24 Jan 2025 00:36:51 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-aaf57c2e0beso335573866b.3
        for <linux-phy@lists.infradead.org>; Thu, 23 Jan 2025 16:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737679007; x=1738283807; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jwUdhzUcT/+g0Yt1m9YM5C5e54+Sg1OVGx+QoUxel7Y=;
        b=eZGZ3rfxXTh9YpRgY2g3CWYnO25LEK1iXs+X9KA3wTnNEXb30TBsO0TpaIyNzHid8k
         p5TBfkf74MQ3ZWFMYn31MPEZatYHGUKmPX4MOo101zvvGRKKD0Jnpgz9p4t57+/DQ16L
         +Fr+Mtt5/TwtXNJe5Z9E/x3PC2t51cMO6/zN8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737679007; x=1738283807;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jwUdhzUcT/+g0Yt1m9YM5C5e54+Sg1OVGx+QoUxel7Y=;
        b=fQMdVb+SQ92pj2mGXBbnKSicJTsn8gv+c+dL0fWaRM98ClESya6xdNGD4Y32dDvN/g
         FjJO/tJ3fwqGuAafojhUw3/j68cXTtfBtorax2cL0zRpgLrDYPgElegKb9LpOCRVznhN
         Egsv2FXq6BMgO4pJQGZZScE9F2Q6NFo0HjU36ErNXxEUi1XPTr5EDI4Ycao3m4b424WY
         0G3KC0tDDXHzCahZm6rYuTOJoOv21pX0lh5jUTxGCyKeOMm7CAifvVroUrRKqB/XM5MI
         znHc0qUU9fGlZpZseQCWw+9dZyZJpAziAaREJhYRTV7tYZFWtYTsXXN38Ehl0Zn0XHcF
         G/EA==
X-Forwarded-Encrypted: i=1; AJvYcCUtSmXXqhi8qDaHvg+4zR1kfLTJPl4q5/qsFSWzGkdUwsC+MRFffOC8sc2I102biu599WqZrjLjPSw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxB/EMrBWytSS+ZcMom/Q9QeeoMR+a1e6QLnD9tVqXqHD4ZcwlH
	JrIDgO5ar33qqSzqH0Eynena3f/F7eXreth+ylT3nRu8JSnPpai6mfDiBNoBGOzbtfNzs2CJjj8
	vf4xH
X-Gm-Gg: ASbGncvhNdqhmN+Qpk3G/aUHV5qjteAivPCo494lPginAAQonK1QUpPSp56v5UiNwSF
	VbWdlFUig1QxpZQQKvqVjKg/YLCyIfMI4yDPN4jsCnGMgiFay3rIeaQwxxEQggYqO2xDi3w/fh3
	M2TF8oSmQCJ7uF900KMnxPrdL6M4sBSIhFh21jnclTyZnA6b8BRXiUnophrUELctzR9kSVk7K3F
	xEU1Z//rSQRbBeES/39Sfa7GrmqYhfKVai5tOHRk/CD9qBzgaxwp5rw7R5GQxibDapm5bLryE04
	ro8jLT0VvfSpW/UpEaZBplMXN/xnKyI1/BWRhKO9m+PLsG/0N4Q+lJ0=
X-Google-Smtp-Source: AGHT+IHb7hGZwg1YbAGPDUHKuwy+AjCp6+7gBpsm754N8jrOQPpU5CxbwQ+E5zdtJ3FlonnB8IWBCA==
X-Received: by 2002:a17:906:7953:b0:aa6:6885:e2fa with SMTP id a640c23a62f3a-ab38b26f4acmr2319570766b.14.1737679007230;
        Thu, 23 Jan 2025 16:36:47 -0800 (PST)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com. [209.85.208.43])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6760fc50bsm37174866b.158.2025.01.23.16.36.44
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 16:36:45 -0800 (PST)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5dc052246e3so3264163a12.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Jan 2025 16:36:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVl3RblFZOQRO8hH/7r9iXU0tMspvKK6CBl4UDU812dwnex3D24RsLMf0xfSpoNVaV9GlLssNt+/6A=@lists.infradead.org
X-Received: by 2002:a05:651c:1309:b0:300:3a15:8f0d with SMTP id
 38308e7fff4ca-3072cb284e5mr99531441fa.34.1737678628894; Thu, 23 Jan 2025
 16:30:28 -0800 (PST)
MIME-Version: 1.0
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-13-damon.ding@rock-chips.com> <rwn3g7tqgjnc525cjqtivgfgedhooiayn5nujng7bdzazgqhle@wfpuvoyr2tii>
In-Reply-To: <rwn3g7tqgjnc525cjqtivgfgedhooiayn5nujng7bdzazgqhle@wfpuvoyr2tii>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 23 Jan 2025 16:30:17 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WKsA9fcq-LzGcYmgbMuMLUp5SMggpzBzZnvd3sxGf9BQ@mail.gmail.com>
X-Gm-Features: AWEUYZmXU1D9ya-D7zW5B92vNI1k79fpY-WVkms-sf4EzP7id3527uV9rKgvOPs
Message-ID: <CAD=FV=WKsA9fcq-LzGcYmgbMuMLUp5SMggpzBzZnvd3sxGf9BQ@mail.gmail.com>
Subject: Re: [PATCH v6 12/14] drm/edp-panel: Add LG Display panel model LP079QX1-SP0V
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Damon Ding <damon.ding@rock-chips.com>, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, 
	l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com, 
	algea.cao@rock-chips.com, kever.yang@rock-chips.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_163650_144972_3FCF1173 
X-CRM114-Status: GOOD (  20.94  )
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

SGksCgpPbiBUaHUsIEphbiAyMywgMjAyNSBhdCAzOjMx4oCvQU0gRG1pdHJ5IEJhcnlzaGtvdgo8
ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIFRodSwgSmFuIDIzLCAy
MDI1IGF0IDA2OjA3OjQ1UE0gKzA4MDAsIERhbW9uIERpbmcgd3JvdGU6Cj4gPiBUaGUgcmF3IGVk
aWQgZm9yIExQMDc5UVgxLVNQMFYgcGFuZWwgbW9kZWwgaXM6Cj4gPgo+ID4gMDAgZmYgZmYgZmYg
ZmYgZmYgZmYgMDAgMTYgODMgMDAgMDAgMDAgMDAgMDAgMDAKPiA+IDA0IDE3IDAxIDAwIGE1IDEw
IDBjIDc4IDA2IGVmIDA1IGEzIDU0IDRjIDk5IDI2Cj4gPiAwZiA1MCA1NCAwMCAwMCAwMCAwMSAw
MSAwMSAwMSAwMSAwMSAwMSAwMSAwMSAwMQo+ID4gMDEgMDEgMDEgMDEgMDEgMDEgZWEgNGUgMDAg
NGMgNjAgMDAgMTQgODAgMGMgMTAKPiA+IDg0IDAwIDc4IGEwIDAwIDAwIDAwIDE4IDAwIDAwIDAw
IDEwIDAwIDAwIDAwIDAwCj4gPiAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAw
MCBmZSAwMCA0Ywo+ID4gNTAgMzAgMzcgMzkgNTEgNTggMzEgMmQgNTMgNTAgMzAgNTYgMDAgMDAg
MDAgZmMKPiA+IDAwIDQzIDZmIDZjIDZmIDcyIDIwIDRjIDQzIDQ0IDBhIDIwIDIwIDIwIDAwIDNm
Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogRGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2NrLWNoaXBz
LmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1lZHAuYyB8IDgg
KysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4KPiBQbGVhc2Ug
dXNlIGdldF9tYWludGFpbmVycy5wbCB3aGVuIGNvbXBpbGluZyBUby9DYyBsaXN0cy4gQWRkZWQg
RG91Z2xhcwo+IHRvIENDIG1hbnVhbGx5Lgo+Cj4gT3IsIGJldHRlciwgc3BsaXQgaXJyZWxldmFu
dCBwYXRjaGVzIHRvIHNlcGFyYXRlIHNlcmllcy4KPgo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtZWRwLmMgYi9kcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFu
ZWwtZWRwLmMKPiA+IGluZGV4IGY4NTExZmU1ZmIwZC4uNzdlM2ZkM2VkMTYwIDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLWVkcC5jCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vcGFuZWwvcGFuZWwtZWRwLmMKPiA+IEBAIC0xODA4LDYgKzE4MDgsMTIgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBwYW5lbF9kZWxheSBkZWxheV8yMDBfMTUwX2U1MCA9IHsKPiA+ICAg
ICAgIC5lbmFibGUgPSA1MCwKPiA+ICB9Owo+ID4KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHBh
bmVsX2RlbGF5IGRlbGF5XzUwXzUwMF9lMjAwID0gewo+ID4gKyAgICAgLmhwZF9hYnNlbnQgPSA1
MCwKPiA+ICsgICAgIC51bnByZXBhcmUgPSA1MDAsCj4gPiArICAgICAuZW5hYmxlID0gMjAwLAo+
ID4gK307CgpXb3csIGhwZF9hYnNlbnQgaXMgNTBtcy4gVGhhdCdzIGV4Y2VsbGVudCEKCkkgd2Fz
IGN1cmlvdXMgaWYgdGhpcyB3YXMgcmVhbGx5IGNvcnJlY3Qgc2luY2UgaXQncyB0aGUgbG93ZXN0
IEkndmUKc2VlbiwgYnV0IEkgc2VhcmNoZWQgdGhlIGludGVybmV0IGFuZCBmb3VuZCBhIGRhdGFz
aGVldCB0aGF0IGNvbmZpcm1zCml0LiBDcmF6eS4gQWx0aG91Z2ggbXkgZGF0YXNoZWV0IGhhcyB0
aGF0IHdob2xlIHNlY3Rpb24gZ3JheWVkIG91dCBhbmQKc2F5cyAiTWVhc3VyZW1lbnQgbm90IGF2
YWlsYWJsZSIuIEhvdyB3b3JyaWVkIHNob3VsZCBiZSBhYm91dCB0aGF0PyBJCmd1ZXNzIGlmICJo
cGRfYWJzZW50IiBvZiA1MCBldmVudHVhbGx5IGRvZXNuJ3Qgd29yayBpdCBjYW4gYWx3YXlzIGJl
CmluY3JlYXNlZC4KCkxvb2tpbmcgYXQgdGhhdCBkYXRhc2hlZXQgKGFzc3VtaW5nIHlvdSBjYW4g
ZmluZCB0aGUgc2FtZSBvbmUpLCBJCndvbmRlciBob3cgeW91IGhhbmRsZSB0aGUgVDQgMTIwbXMg
cmVxdWlyZW1lbnQuIEl0IGxvb2tzIGxpa2UgdGhhdCdzCnRoZSB0aW1lIGZyb20gdGNvbiByZXNl
dCAod2hpY2ggaXMgbmVhcmx5IHBvd2VyIG9uKSB1bnRpbCB5b3UncmUKYWxsb3dlZCB0byBwdXQg
dmFsaWQgZGF0YSBvbiB0aGUgcGFuZWwuIEkgX3RoaW5rXyB5b3UgY291bGQgbWVldCB0aGUKcmVx
dWlyZW1lbnQgdmlhIHNldHRpbmcgYHBvd2VyZWRfb25fdG9fZW5hYmxlYCB0byAzMjAgdGhvdWdo
LCByaWdodD8KLi4ub3IgbWF5YmUgMzM1IHRvIGhhbmRsZSB0aGUgbWF4aW11bSB2YWx1ZSBvZiAi
dGNvbl9yZXNldCIgKG5vIGlkZWEKaG93IHlvdSBjb250cm9sIHRoaXMgc2lnbmFsKS4gSWYgSSBy
ZW1lbWJlciBjb3JyZWN0bHkgKGl0J3MgYmVlbiBhCndoaWxlKSwgdGhpbmdzIHdpbGwgYWxyZWFk
eSBiZSBjbG9ja2luZyBidXQgb3V0cHV0dGluZyBibGFjayB3aGVuIHRoZQpwYW5lbCdzICJlbmFi
bGUiIGZ1bmN0aW9uIGlzIGNhbGxlZC4gQWZ0ZXIgdGhlIGZ1bmN0aW9uIGlzIGNhbGxlZCB0aGVu
CndlJ2xsIHR1cm4gb24gdGhlIGJhY2tsaWdodCAoYW5kIHN0aWxsIG91dHB1dHRpbmcgYmxhY2sp
IGFuZApldmVudHVhbGx5IHdlJ2xsIHB1dCB2YWxpZCBkYXRhLiBTbyBhcyBsb25nIGFzIHlvdSBj
b25zaWRlciB0aGUKY29udGludWVkIG91dHB1dCBvZiBibGFjayBhcyAidmFsaWQgZGF0YSIgdGhl
biB0aGUgdGltaW5nIGRpYWdyYW0gaXMKc2F0aXNmaWVkLgoKQlRXOiBkb24ndCB5b3UgYWxzbyBu
ZWVkIGEgMjAwIG1zICJkaXNhYmxlIj8KCgo+ID4gICNkZWZpbmUgRURQX1BBTkVMX0VOVFJZKHZl
bmRfY2hyXzAsIHZlbmRfY2hyXzEsIHZlbmRfY2hyXzIsIHByb2R1Y3RfaWQsIF9kZWxheSwgX25h
bWUpIFwKPiA+ICB7IFwKPiA+ICAgICAgIC5pZGVudCA9IHsgXAo+ID4gQEAgLTE5NTUsNiArMTk2
MSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZWRwX3BhbmVsX2VudHJ5IGVkcF9wYW5lbHNbXSA9
IHsKPiA+ICAgICAgIEVEUF9QQU5FTF9FTlRSWSgnQycsICdTJywgJ1cnLCAweDExMDAsICZkZWxh
eV8yMDBfNTAwX2U4MF9kNTAsICJNTkI2MDFMUzEtMSIpLAo+ID4gICAgICAgRURQX1BBTkVMX0VO
VFJZKCdDJywgJ1MnLCAnVycsIDB4MTEwNCwgJmRlbGF5XzIwMF81MDBfZTUwLCAiTU5CNjAxTFMx
LTQiKSwKPiA+Cj4gPiArICAgICBFRFBfUEFORUxfRU5UUlkoJ0UnLCAnVCcsICdDJywgMHgwMDAw
LCAmZGVsYXlfNTBfNTAwX2UyMDAsICJMUDA3OVFYMS1TUDBWIiksCgpJIGRvbid0IGxvdmUgdGhh
dCB0aGUgSUQgaXMgMHgwMDAwLiBUaGF0IG1ha2VzIG1lIG5lcnZvdXMgdGhhdCB0aGUKcGFuZWwg
dmVuZG9yIGlzbid0IHNldHRpbmcgdGhlIElEIHByb3Blcmx5LiAuLi5idXQgYXQgbGVhc3QgdGhl
IHN0cmluZwptYXRjaGVzIGluIHRoZSBFRElEIHNvIGhvcGVmdWxseSB0aGF0IHdpbGwgYmUgZW5v
dWdoIHRvIHVuaXF1ZWx5CmlkZW50aWZ5IHRoaW5ncy4KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
