Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F18C4FCE07C
	for <linux-phy@archiver.kernel.org>; Thu, 26 Feb 2026 13:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwzrxtb0M4dtKexxRv3rlsyHVI+vXb37G01rJZtmj2Y=; b=zbLGqH6psRT8rK
	TdQxfgEPJAnNUEHRaxWN1eq/wcbhGtbHo+DwCa8L3CxOgVLRJLh5UrhFIhXnTu8MvoybkbnOvNUG1
	6ThhHfMsDh3gobu7bwtfVFDBLGPj39d2esT1ykYD3S24FErE1scFyQUgTgD/zDZ9x3LtI2mKlUU4n
	eVCRw4PsSCxbQjqiBjClV6ZE7XgEJGDjn0Dh5TkL1T+hdoWwXXMji/eblGVzsgmNM9CFBOGPAVi2g
	KfwYAuSkh0rjAMiCc233qSl4rvQ7Azo3XvwBYGcVxuoEvHYMiEMf+aJIQGz/K7YDMZhna9jHUqLMB
	DLiLxsVB39FJouaWYuuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvbKH-00000006DV8-35vx;
	Thu, 26 Feb 2026 13:22:45 +0000
Received: from mail-vk1-f169.google.com ([209.85.221.169])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvbKF-00000006DUe-1Z5g
	for linux-phy@lists.infradead.org;
	Thu, 26 Feb 2026 13:22:44 +0000
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-56a8395a68bso416597e0c.3
        for <linux-phy@lists.infradead.org>; Thu, 26 Feb 2026 05:22:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772112162; x=1772716962;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5twdPm6qtk6BxBBh6eqwsmb5sfIcorWjwwVPoxGI8zc=;
        b=WgcIL/7OYY3nK9nua6fhrT5hTa2SHo6dWtXbDvnrHA5yc576lfp//Ay1EawSiJqbqq
         hGr2R7jJY4h7D+CRGpa7d3mpE+UOXfK4u2Clzg5lA9PNbIsxVDfrpMh0ZSdzN5yHgJJ+
         kl5Ce9JjYwOCQnQEsaDRi6SNcjE0zMfpZh8jTANPef+FHgnLdlL1Erjxzx6b9VI3yrgl
         Un/MPqRJQShrmGUB84QBcL90q2zVwHLV/hI5Y6dMWvBKaGiroHpGXvh/4RrRTv9RicVx
         MHNE2Y8qOYID3fMfEuTT+mqeHnZ369rciQA7kM4Wy8GWBJYk9oPR90HeJ9xepi8Ztl7F
         jSYg==
X-Forwarded-Encrypted: i=1; AJvYcCXqOyT6ZaZ0+bMEkWTUvWKNy6BZf7DqmSsqHXVJOWZK9weY8F5zRHF6nKv1hmeIscI9lu0IlTsSb+g=@lists.infradead.org
X-Gm-Message-State: AOJu0YwUvxESF9OtXzWA98OMDg+XeAGEkEWfWf4qn0Ia22mFsjEuh0qO
	PAElBY8HfbpA3zH2owPmI82kWrd5EuDqeKc5wcSbcFmQ2u6lDiQ8GKkIQrZ//Pqr
X-Gm-Gg: ATEYQzxVE+3EbMhzkj7GGvzQjoSAHcoe1GgLl6vjasw5jtt8fUoM4xYr75xWc3t8iwe
	Bw/1mQ8ymkuXdEl+zxqbGm5ROac6oio6gSU+f+0KdakP09SCN2BIximPtg/McWgqISN0Dg1WbEp
	3QJEKxbivUmByN/XQQyV0+p23hHt46B3qDMYXrwSOu4Qv2N4sJ6PI8A1u3cRcRrQlvj1TgMx7iq
	zoNHqz2bVNxvy9zZy0S7W/jnsjuqpzw3ZattpBwXzAz1P4C9hyJ+D6mylW0/EPsMRyF92LBswn2
	2qi5mWREam/QqcuzRQ6k5f0k4eAgJed7MbXxWugSsyjc/9o0oR2+IIJVuJf5VMxNC+3x23OSHMX
	2b36gNTKTyPFQRmDjvAg1ekbIoBtA86npMuR9HPXyANJIxnLfnoYBuL1Ic59QwG3kiTbkQ2qUn+
	kK9ie2C/uob9UYeQ0Mp4vYa3xZfrDJPieRJrj3TdqS9iT0A2VxPMweVOxq+iPR
X-Received: by 2002:a05:6122:614f:b0:567:44ba:bd87 with SMTP id 71dfb90a1353d-56a8b959cc9mr2180748e0c.1.1772112161761;
        Thu, 26 Feb 2026 05:22:41 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91bbd85csm2532609e0c.7.2026.02.26.05.22.40
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 05:22:41 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-94aca174532so239103241.3
        for <linux-phy@lists.infradead.org>; Thu, 26 Feb 2026 05:22:40 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXyXwo+iDISBZ/3GXg/tGLdrY/UJuf+AsMEpdUIYa6Gg6U36gpbN+CdMB9Pr5y63rHhxHkK6yzjFbc=@lists.infradead.org
X-Received: by 2002:a05:6102:ccf:b0:5fd:ed98:cf0f with SMTP id
 ada2fe7eead31-5ff14157fafmr2006779137.34.1772112160689; Thu, 26 Feb 2026
 05:22:40 -0800 (PST)
MIME-Version: 1.0
References: <20260111093940.975359-1-vladimir.oltean@nxp.com> <20260111093940.975359-6-vladimir.oltean@nxp.com>
In-Reply-To: <20260111093940.975359-6-vladimir.oltean@nxp.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 26 Feb 2026 14:22:29 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUBaoYKNj52gn8DQeZFZ42Cvm6xT6fvo0-_twNv1k3Jhg@mail.gmail.com>
X-Gm-Features: AaiRm523jRWdOCfOPJhqksDewbEoHD_GTMJ0xjyZsvboq3n-XWtXIhj4iGm1B4M
Message-ID: <CAMuHMdUBaoYKNj52gn8DQeZFZ42Cvm6xT6fvo0-_twNv1k3Jhg@mail.gmail.com>
Subject: Re: [PATCH v3 net-next 05/10] phy: add phy_get_rx_polarity() and phy_get_tx_polarity()
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Daniel Golle <daniel@makrotopia.org>, Horatiu Vultur <horatiu.vultur@microchip.com>, 
	=?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Eric Woudstra <ericwouds@gmail.com>, =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>, 
	Lee Jones <lee@kernel.org>, Patrice Chotard <patrice.chotard@foss.st.com>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	KUnit Development <kunit-dev@googlegroups.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_052243_422913_7DF16AC5 
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

SGkgVmxhZGltaXIsCgpDQyBrdW5pdAoKT24gU3VuLCAxMSBKYW4gMjAyNiBhdCAxMDo0NCwgVmxh
ZGltaXIgT2x0ZWFuIDx2bGFkaW1pci5vbHRlYW5AbnhwLmNvbT4gd3JvdGU6Cj4gQWRkIGhlbHBl
cnMgaW4gdGhlIGdlbmVyaWMgUEhZIGZvbGRlciB3aGljaCBjYW4gYmUgdXNlZCB1c2luZyAnc2Vs
ZWN0Cj4gR0VORVJJQ19QSFlfQ09NTU9OX1BST1BTJyBmcm9tIEtjb25maWcsIHdpdGhvdXQgb3Ro
ZXJ3aXNlIG5lZWRpbmcgdG8KPiBlbmFibGUgR0VORVJJQ19QSFkuCj4KPiBUaGVzZSBoZWxwZXJz
IG5lZWQgdG8gZGVhbCB3aXRoIHRoZSBzbGlnaHQgbWVzc2luZXNzIG9mIHRoZSBmYWN0IHRoYXQK
PiB0aGUgcG9sYXJpdHkgcHJvcGVydGllcyBhcmUgYXJyYXlzIHBlciBwcm90b2NvbCwgYW5kIHdp
dGggdGhlIGZhY3QgdGhhdAo+IHRoZXJlIGlzIG5vIGRlZmF1bHQgdmFsdWUgbWFuZGF0ZWQgYnkg
dGhlIHN0YW5kYXJkIHByb3BlcnRpZXMsIGFsbAo+IGRlZmF1bHQgdmFsdWVzIGRlcGVuZCBvbiBk
cml2ZXIgYW5kIHByb3RvY29sIChQSFlfUE9MX05PUk1BTCBtYXkgYmUgYQo+IGdvb2QgZGVmYXVs
dCBmb3IgU0dNSUksIHdoZXJlYXMgUEhZX1BPTF9BVVRPIG1heSBiZSBhIGdvb2QgZGVmYXVsdCBm
b3IKPiBQQ0llKS4KPgo+IFB1c2ggdGhlIHN1cHBvcnRlZCBtYXNrIG9mIHBvbGFyaXRpZXMgdG8g
dGhlc2UgaGVscGVycywgdG8gc2ltcGxpZnkKPiBkcml2ZXJzIHN1Y2ggdGhhdCB0aGV5IGRvbid0
IG5lZWQgdG8gdmFsaWRhdGUgd2hhdCdzIGluIHRoZSBkZXZpY2UgdHJlZQo+IChvciBvdGhlciBm
aXJtd2FyZSBkZXNjcmlwdGlvbikuCj4KPiBBZGQgYSBLVW5pdCB0ZXN0IHN1aXRlIHRvIG1ha2Ug
c3VyZSB0aGF0IHRoZSBBUEkgcHJvZHVjZXMgdGhlIGV4cGVjdGVkCj4gcmVzdWx0cy4gVGhlIGZh
Y3QgdGhhdCB3ZSB1c2UgZndub2RlIHN0cnVjdHVyZXMgbWVhbnMgd2UgY2FuIHZhbGlkYXRlCj4g
d2l0aCBzb2Z0d2FyZSBub2RlcywgYW5kIGFzIG9wcG9zZWQgdG8gdGhlIGRldmljZV9wcm9wZXJ0
eSBBUEksIHdlIGNhbgo+IGJ5cGFzcyB0aGUgbmVlZCB0byBoYXZlIGEgZGV2aWNlIHN0cnVjdHVy
ZS4KPgo+IENvLWRldmVsb3BlZC1ieTogQmrDuHJuIE1vcmsgPGJqb3JuQG1vcmsubm8+Cj4gU2ln
bmVkLW9mZi1ieTogQmrDuHJuIE1vcmsgPGJqb3JuQG1vcmsubm8+Cj4gU2lnbmVkLW9mZi1ieTog
VmxhZGltaXIgT2x0ZWFuIDx2bGFkaW1pci5vbHRlYW5AbnhwLmNvbT4KClRoYW5rcyBmb3IgeW91
ciBwYXRjaCwgd2hpY2ggaXMgbm93IGNvbW1pdCBlNzU1NmI1OWJhNjUxNzk2CigicGh5OiBhZGQg
cGh5X2dldF9yeF9wb2xhcml0eSgpIGFuZCBwaHlfZ2V0X3R4X3BvbGFyaXR5KCkiKSBpbgp2Ny4w
LXJjMS4KCj4gLS0tIGEvZHJpdmVycy9waHkvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvcGh5L0tj
b25maWcKPiBAQCAtNSw2ICs1LDI4IEBACj4KPiAgbWVudSAiUEhZIFN1YnN5c3RlbSIKPgo+ICtj
b25maWcgUEhZX0NPTU1PTl9QUk9QUwo+ICsgICAgICAgYm9vbAo+ICsgICAgICAgaGVscAo+ICsg
ICAgICAgICBUaGlzIHBhcnNlcyBwcm9wZXJ0aWVzIGNvbW1vbiBiZXR3ZWVuIGdlbmVyaWMgUEhZ
cyBhbmQgRXRoZXJuZXQgUEhZcy4KPiArCj4gKyAgICAgICAgIFNlbGVjdCB0aGlzIGZyb20gY29u
c3VtZXIgZHJpdmVycyB0byBnYWluIGFjY2VzcyB0byBoZWxwZXJzIGZvcgo+ICsgICAgICAgICBw
YXJzaW5nIHByb3BlcnRpZXMgZnJvbSB0aGUKPiArICAgICAgICAgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9waHktY29tbW9uLXByb3BzLnlhbWwgc2NoZW1hLgo+ICsKPiAr
Y29uZmlnIFBIWV9DT01NT05fUFJPUFNfVEVTVAo+ICsgICAgICAgdHJpc3RhdGUgIktVbml0IHRl
c3RzIGZvciBQSFkgY29tbW9uIHByb3BzIiBpZiAhS1VOSVRfQUxMX1RFU1RTCj4gKyAgICAgICBz
ZWxlY3QgUEhZX0NPTU1PTl9QUk9QUwoKVGhpcyBzZWxlY3QgbWVhbnMgdGhhdCBlbmFibGluZyBL
VU5JVF9BTExfVEVTVFMgYWxzbyBlbmFibGVzIGV4dHJhCmZ1bmN0aW9uYWxpdHksIHdoaWNoIG1h
eSBub3QgYmUgZGVzaXJhYmxlIGluIGEgcHJvZHVjdGlvbiBzeXN0ZW0uCkFzIFBIWV9DT01NT05f
UFJPUFMgaXMgYm9vbCwgdGhpcyBleHRyYSBmdW5jdGlvbmFsaXR5IGlzIGV2ZW4gcGFydCBvZgp0
aGUgYmFzZSBrZXJuZWwgaWYgS1VOSVRfQUxMX1RFU1RTPW0uICBVbmZvcnR1bmF0ZWx5IFBIWV9D
T01NT05fUFJPUFMgaXMKaW52aXNpYmxlLCBzbyB0aGlzIGNhbm5vdCBqdXN0IGJlIGNoYW5nZWQg
ZnJvbSAic2VsZWN0IiB0byAiZGVwZW5kcyBvbiIuCkJ1dCBwZXJoYXBzIFBIWV9DT01NT05fUFJP
UFMgY2FuIGJlIG1hZGUgdmlzaWJsZSBpZiBLVU5JVF9BTExfVEVTVFMsCnNvIHRoZSBzZWxlY3Qg
Y2FuIGJlIHR1cm5lZCBpbnRvIGEgZGVwZW5kZW5jeT8KCj4gKyAgICAgICBkZXBlbmRzIG9uIEtV
TklUCj4gKyAgICAgICBkZWZhdWx0IEtVTklUX0FMTF9URVNUUwo+ICsgICAgICAgaGVscAo+ICsg
ICAgICAgICBUaGlzIGJ1aWxkcyBLVW5pdCB0ZXN0cyBmb3IgdGhlIFBIWSBjb21tb24gcHJvcGVy
dHkgQVBJLgo+ICsKPiArICAgICAgICAgRm9yIG1vcmUgaW5mb3JtYXRpb24gb24gS1VuaXQgYW5k
IHVuaXQgdGVzdHMgaW4gZ2VuZXJhbCwKPiArICAgICAgICAgcGxlYXNlIHJlZmVyIHRvIHRoZSBL
VW5pdCBkb2N1bWVudGF0aW9uIGluIERvY3VtZW50YXRpb24vZGV2LXRvb2xzL2t1bml0Ly4KPiAr
Cj4gKyAgICAgICAgIFdoZW4gaW4gZG91YnQsIHNheSBOLgo+ICsKPiAgY29uZmlnIEdFTkVSSUNf
UEhZCj4gICAgICAgICBib29sICJQSFkgQ29yZSIKPiAgICAgICAgIGhlbHAKCkdye29ldGplLGVl
dGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCgotLQpHZWVydCBVeXR0ZXJo
b2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4
LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3Bs
ZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5h
bGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
