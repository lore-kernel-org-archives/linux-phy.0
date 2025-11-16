Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79177CD4F3E
	for <linux-phy@archiver.kernel.org>; Sun, 16 Nov 2025 14:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8G/zrXlCtK3tKs/o7ikP/Qat6AUrrEWptItxhvxcZEk=; b=X0vSR3gvFqcDaF
	CGGKu0Ghuc17zxcRNEmrlPvI/yP3Onxmnyb7ReyZB1QOMyeFW8RHAhKB1ujEzIs4TYv3DfO6+0sii
	St285Nla8UdvLkaBSmgOrQol7YN+0zkU5BTe+PJRMFqUMS6s63eBpDN1vxPubaUHdIEpnLLHvH557
	+Xuqy06qnro7OhCQnFX6/1I7M7p8u1x3rct6YsRTLTOucVCdTIDPgnPBxW2zqF1zF5gqJixvkw5q7
	HEbSXNI/3TeCjlhOOekHisGPso7bDTjn9MyaCqWY4JdzQyTz6JB39j+zmepFPb6wKzUWUZxBvfoOR
	8VzIwChdcLt3VTVnHyGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKdsl-0000000EkVN-0Zmv;
	Sun, 16 Nov 2025 14:37:35 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKdsi-0000000EkU4-25JZ
	for linux-phy@lists.infradead.org;
	Sun, 16 Nov 2025 14:37:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E1DEE43A6E
	for <linux-phy@lists.infradead.org>; Sun, 16 Nov 2025 14:37:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA22EC2BC86
	for <linux-phy@lists.infradead.org>; Sun, 16 Nov 2025 14:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763303851;
	bh=2Bggx1JE8zrmrCOlLWA1b4H8PTZ9Hv6P2gnc61wAGjg=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=hReJ0nw5+W23nQcULZpkXPGjdtKIkKQRDDgXEWOZD6+yQH+WVgRoFy7kG3aPRjnW+
	 TFgb1HBXGtzcJuNARqACSjFASZXzJGV7Ft4d8z40QcPUbI3WP4JDcC0RPtRUEW3Ozt
	 cx3Gm5Oc6zSaRjff4fZhQ13GmgQxu19StTQ+DGj3r4QDr8SuWz+BzU+C82zNWPmg6T
	 1T+pCCfVl/gbYn+54GfiDY/Hy17JCL7dDXxnXEyYXyndwXuS6OSODo1hh9N5g3ZHQ7
	 8NmamzUtJFvLUVH6vhhyhS9q5l/akZF1NziwuzZVXNnruglfARaBd/wStr20lOxiiL
	 nnhtovb7RvbVg==
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-37ba5af5951so28238191fa.1
        for <linux-phy@lists.infradead.org>; Sun, 16 Nov 2025 06:37:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX1vdzkFW2Xg9AI8Sh4t/VlY9QcOVaXSWVSl9RHUzwHowu1ZG13WDv1oZSGev7WVdjt7ND8kEsj2pU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxfNG/9JN98JjO7yVDf6trGWrw/0V0MmdA2Z32Qv/mXkPU+Ieal
	wJ/ly7vhQ10pFpY3mosCWftCzkccoxiJobUyjMZ0mLmK40v6Pd70dNN+XPOqgYBr1GRYk26m4HL
	TKbk4tljiUWM4RRm9RGoVxiowKd8MIIU=
X-Google-Smtp-Source: AGHT+IG7vqFgL8pcnoWY4X8bK83bCjs7yr5BwCnDCB4u5oYDjeQdmjUX3ZIX6NF6V8m3f8emPC7cEmlAcG+l7wyAhyk=
X-Received: by 2002:a2e:b952:0:b0:378:f267:3107 with SMTP id
 38308e7fff4ca-37babd46336mr21467291fa.37.1763303850006; Sun, 16 Nov 2025
 06:37:30 -0800 (PST)
MIME-Version: 1.0
References: <20250221161751.1278049-1-kuba@szczodrzynski.pl>
 <20251116134609.447043-1-kuba@szczodrzynski.pl> <CAGb2v67V01k8zj2r+Dd+JDEsH2LX2Jtx+CP=i8aQfX_JyFtLfg@mail.gmail.com>
 <7ff30ae9-e4c0-47ae-80ad-726eaa557fd0@szczodrzynski.pl>
In-Reply-To: <7ff30ae9-e4c0-47ae-80ad-726eaa557fd0@szczodrzynski.pl>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Sun, 16 Nov 2025 22:37:15 +0800
X-Gmail-Original-Message-ID: <CAGb2v67iovqfErt20Oz0SrHC558zBDDFq1ZqRau83NOQ2w8AoQ@mail.gmail.com>
X-Gm-Features: AWmQ_bnuktLAy6WzxMHGACOr-_rXESjXpP0XBu3tC1d0_mcaLovZAV-ch-mI9ko
Message-ID: <CAGb2v67iovqfErt20Oz0SrHC558zBDDFq1ZqRau83NOQ2w8AoQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] drm/sun4i: Support LVDS on D1s/T113 combo D-PHY
To: =?UTF-8?Q?Kuba_Szczodrzy=C5=84ski?= <kuba@szczodrzynski.pl>
Cc: Maxime Ripard <mripard@kernel.org>, Samuel Holland <samuel@sholland.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, parthiban@linumiz.com, paulk@sys-base.io
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251116_063732_573688_4988A3FE 
X-CRM114-Status: GOOD (  29.89  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gU3VuLCBOb3YgMTYsIDIwMjUgYXQgMTA6MzHigK9QTSBLdWJhIFN6Y3pvZHJ6ecWEc2tpCjxr
dWJhQHN6Y3pvZHJ6eW5za2kucGw+IHdyb3RlOgo+Cj4gVyBkbml1IDIwMjUtMTEtMTYgbyAxNTow
MzoxOCwgQ2hlbi1ZdSBUc2FpIHBpc3plOgo+Cj4gPiBPbiBTdW4sIE5vdiAxNiwgMjAyNSBhdCA5
OjQ24oCvUE0gS3ViYSBTemN6b2RyennFhHNraQo+ID4gPGt1YmFAc3pjem9kcnp5bnNraS5wbD4g
d3JvdGU6Cj4gPj4gW3JlcGx5aW5nIHRvIHYxIHRvIGtlZXAgdGhlIHNhbWUgc2VyaWVzIG9uIFBh
dGNod29ya10KPiA+IFRoYXQgaXMgbm90IHRoZSByaWdodCB3YXkgdG8gZG8gaXQuCj4gPgo+ID4g
SWYgeW91IHJlcGx5IHRvIGFuIG9sZCBzZXJpZXMsIHRoZSB0b29saW5nIGRvZXMgbm90IHBpY2t1
cCB0aGUgbmV3IHZlcnNpb24KPiA+IGFzIGEgc2VwYXJhdGUgc2VyaWVzLgo+ID4KPiA+IENoZW5Z
dQo+Cj4gSGksCj4KPiBJIG5vdGljZWQgdGhhdCBpdCBpbmRlZWQgZGlkbid0IHdvcmsuIEhvd2V2
ZXIsIFBhdGNod29yayBkaWRuJ3QgcGljayB1cCB0aGUgdjIgY292ZXIgbGV0dGVyIGF0IGFsbCwg
c28gSSB0aG91Z2h0IHJlcGx5aW5nIHRvIHYyIHdvdWxkIG1lc3MgdXAgdGhlIHRocmVhZCBldmVu
IG1vcmUuCj4KPiBUaGF0IGJlaW5nIHNhaWQsIHRoZSB2MyBjb3ZlciBsZXR0ZXIgaXMgbm90IHZp
c2libGUgdGhlcmUgZWl0aGVyLgo+Cj4gU2hvdWxkIEkgcmVzZW5kIHRoaXMgYXMgdjQgW3doaWNo
IG1lc3NhZ2UgdG8gcmVwbHkgdG8/XSBvciBzZW5kIGEgY29tcGxldGVseSBuZXcgc2VyaWVzIHBl
cmhhcHM/CgpFYWNoIG5ldyB2ZXJzaW9uIHNob3VsZCBiZSBhIGNvbXBsZXRlbHkgbmV3IHNlcmll
cy4KCklmIHBhdGNod29yayBzdGlsbCBkaWRuJ3QgcGljayBpdCB1cCwgdGhlbiBpdCdzIHBvc3Np
YmxlIGVpdGhlciB5b3VyCnBhdGNoZXMgZGlkbid0IHJlYWNoIHRoZSBtYWlsaW5nIGxpc3RzIG9y
IHRoZSBwYXRjaHdvcmsgaW5zdGFuY2VzLgpQbGVhc2UgY2hlY2sgbG9yZSB0byBzZWUgaWYgeW91
ciBwYXRjaGVzIGFyZSB0aGVyZS4KCgpDaGVuWXUKCj4gSSBhcG9sb2dpemUgZm9yIHRoZSBjb25m
dXNpb24sIHRoaXMgaXMgbXkgZmlyc3QgdGltZSBkb2luZyB0aGF0Lgo+Cj4gUmVnYXJkcwo+IEt1
YmEKPgo+ID4+IFNvbWUgQWxsd2lubmVyIGNoaXBzIChub3RhYmx5IHRoZSBEMXMvVDExMyBhbmQg
dGhlIEExMDApIGhhdmUgYSAiY29tYm8KPiA+PiBNSVBJIERTSSBELVBIWSIgd2hpY2ggaXMgcmVx
dWlyZWQgd2hlbiB1c2luZyBzaW5nbGUtbGluayBMVkRTMC4gVGhlIHNhbWUKPiA+PiBQRDAuLlBE
OSBwaW5zIGFyZSB1c2VkIGZvciBlaXRoZXIgRFNJIG9yIExWRFMuCj4gPj4KPiA+PiBPdGhlciB0
aGFuIGhhdmluZyB0byB1c2UgdGhlIGNvbWJvIEQtUEhZLCBMVkRTIG91dHB1dCBpcyBjb25maWd1
cmVkIGluCj4gPj4gdGhlIHNhbWUgd2F5IGFzIG9uIG9sZGVyIGNoaXBzLgo+ID4+Cj4gPj4gVGhp
cyBzZXJpZXMgZW5hYmxlcyB0aGUgc3VuNmkgTUlQSSBELVBIWSB0byBhbHNvIHdvcmsgaW4gTFZE
UyBtb2RlLiBJdAo+ID4+IGlzIHRoZW4gY29uZmlndXJlZCBieSB0aGUgTENEIFRDT04sIHdoaWNo
IGFsbG93cyBjb25uZWN0aW5nIGEKPiA+PiBzaW5nbGUtbGluayBMVkRTIGRpc3BsYXkgcGFuZWwu
Cj4gPj4KPiA+PiBDaGFuZ2VzIGluIHYyL3YzOgo+ID4+IC0gQXBwbGllZCBjb2RlIGZvcm1hdHRp
bmcgY2hhbmdlcyBmcm9tIHJldmlldyBjb21tZW50cwo+ID4+IC0gQ2hhbmdlZCAiZHBoeSIgdG8g
ImNvbWJvLXBoeSIKPiA+PiAtIE1hZGUgdGhlIExWRFMgc2V0dXAvdGVhcmRvd24gZnVuY3Rpb25z
IGFib3J0IGVhcmx5IGluIGNhc2Ugb2YgZXJyb3IKPiA+PiAgICAoYWRkaW5nIGEgcHJvcGVyIHJl
dHVybiB2YWx1ZSB3b3VsZCByZXF1aXJlIGNoYW5nZXMgaW4gc2V2ZXJhbCBsZXZlbHMKPiA+PiAg
ICAgb2YgY2FsbGVyIGZ1bmN0aW9uczsgcGVyaGFwcyBjb3VsZCBiZSBkb25lIGluIGEgc2VwYXJh
dGUgcGF0Y2gpCj4gPj4gLSBBZGRlZCB0aGUgUEhZIHByb3BlcnRpZXMgdG8gRFQgYmluZGluZ3MK
PiA+PiAtIFJlbmFtZWQgbHZkczBfcGlucyB0byBsY2RfbHZkczBfcGlucwo+ID4+IC0gUmViYXNl
ZCBvbiB0b3Agb2YgZHJtL21pc2Mva2VybmVsL2Zvci1saW51eC1uZXh0Cj4gPj4gLSBIb3BlZnVs
bHkgY29ycmVjdGVkIHRoZSBpbmNvbXBsZXRlIHBhdGNoIGxpc3Qgb2YgdjIsIHdoaWNoIGhhcHBl
bmVkCj4gPj4gICAgZHVlIHRvIGFuIFNNVFAgZXJyb3IKPiA+Pgo+ID4+IEt1YmEgU3pjem9kcnp5
xYRza2kgKDYpOgo+ID4+ICAgIHBoeTogYWxsd2lubmVyOiBwaHktc3VuNmktbWlwaS1kcGh5OiBT
dXBwb3J0IExWRFMgaW4gY29tYm8gRC1QSFkKPiA+PiAgICBkcm0vc3VuNGk6IFN1cHBvcnQgTFZE
UyB1c2luZyBNSVBJIERTSSBjb21ibyBELVBIWQo+ID4+ICAgIGRybS9zdW40aTogRW5hYmxlIExW
RFMgb3V0cHV0IG9uIHN1bjIwaSBEMXMvVDExMwo+ID4+ICAgIGR0LWJpbmRpbmdzOiBkaXNwbGF5
OiBzdW40aTogQWRkIEQxcy9UMTEzIGNvbWJvIEQtUEhZIGJpbmRpbmdzCj4gPj4gICAgcmlzY3Y6
IGR0czogYWxsd2lubmVyOiBkMXMtdDExMzogQWRkIEQtUEhZIHRvIFRDT04gTENEMAo+ID4+ICAg
IHJpc2N2OiBkdHM6IGFsbHdpbm5lcjogZDFzLXQxMTM6IEFkZCBMVkRTMCBwaW5zCj4gPj4KPiA+
PiAgIC4uLi9kaXNwbGF5L2FsbHdpbm5lcixzdW40aS1hMTAtdGNvbi55YW1sICAgICB8ICA2ICsr
Cj4gPj4gICAuLi4vYm9vdC9kdHMvYWxsd2lubmVyL3N1bnhpLWQxcy10MTEzLmR0c2kgICAgfCAx
MSArKysKPiA+PiAgIGRyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW40aV90Y29uLmMgICAgICAgICAg
ICB8IDUwICsrKysrKysrKysrKysKPiA+PiAgIGRyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW40aV90
Y29uLmggICAgICAgICAgICB8ICA2ICsrCj4gPj4gICBkcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5
LXN1bjZpLW1pcGktZHBoeS5jICAgfCA3MCArKysrKysrKysrKysrKysrKystCj4gPj4gICA1IGZp
bGVzIGNoYW5nZWQsIDE0MSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4+Cj4gPj4g
LS0KPiA+PiAyLjI1LjEKPiA+Pgo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
