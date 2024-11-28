Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 859A5D69119
	for <linux-phy@archiver.kernel.org>; Thu, 28 Nov 2024 15:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4H1bx0511xQGhqm1CSqlPLdqRJrWa4mKw7fKDnxTXms=; b=4uDhxkZu1KZwDM
	yqJdB8Pbjx9d1bvoRLdS8zttO1skNX9WGxcEkd1Anao+AWiUt6dTJ0tV06sPhePynf50ptkxw8D0a
	9Z6JKYpbucS3oybU9EPbB8a5b4+C9MCziDJIys8eQvlcypxi+uQCUfX2iMaM745kJNv4SARAPyov7
	HV3iD6XoiplZJf0pOcE9Y6gIL7D0h6Xk6Awe3wqKHx3vTnv06ttPcHNnCO0MGBRiWiiix89ksZZas
	f8hTzevsgl0PyiQLr+cZRVPNwd03o/4v9i+kzV5M++Phj5rvjaSqbgblKcpAotmYDHpYn0da/LyAK
	uVOHcYds+0Sjujwc6wWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGgil-0000000FvKU-19v7;
	Thu, 28 Nov 2024 15:46:23 +0000
Received: from mail-yw1-f173.google.com ([209.85.128.173])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGgii-0000000FvJR-3U5V
	for linux-phy@lists.infradead.org;
	Thu, 28 Nov 2024 15:46:21 +0000
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-6ee7a400647so11368827b3.1
        for <linux-phy@lists.infradead.org>; Thu, 28 Nov 2024 07:46:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732808779; x=1733413579;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wUf/S6ywNh8XAsdHlQGFt6ui0KSpcttBMmgIqMsNTKY=;
        b=dkTT60EKcN8pOEUsBTYS1j0tY/mUnQbp1iQ7OHO/65Sdcolb7BPjoMss6sR8077E52
         qWVB7QgmLvxJwFr0lLplT/ZjwEdnD4eneRZvyguolGcfcfLIU/lK1vPbD9fvulf+e3Nc
         X9DMv7hpgKaulR8PKz0gZk8yqMpj5HONH59KODKzIpZvPnY34r8dPf2XLwHLNmkG1pxB
         xbK7IIThxW8+zqPW7ay5e5iwQdBEeEInv0ITOKeAyH+mewsHtMp8Bd3LenG2E9brJ6S7
         +bmfthwd3MslqxSLjkahWbKluYYQztu4cHCyNMxUrSQFDe3av6TN6CZ82n7wkmbp/Heq
         QPxA==
X-Forwarded-Encrypted: i=1; AJvYcCUkvj31v/3pR9w5Kxf/W392N0pmVNivv2ReuL0THt0OHQcpb6aqmWW84WlZ/8Zd+1RzKXcETC2oYmM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9nuXwqW6Y4H5mnmQ7cbsNIj2lU9xqXOwnYavERtOvsjY+rfjW
	cb2vtCN+07XYRXmKx5/JPVCFYZ6zDdodpz41MeTf/XAAFbqwaFbOGR2WgChIuEU=
X-Gm-Gg: ASbGncvzt6HT+mkrXvH9xc8k+qx5BkjAmT0Ln7ocUFL2QPYkDNC0167aOqRyT4JLM8l
	Y+SMBQyETY1bjKSKNpcSEO0MAAm2REhyhmtHUKI6hWabvQP+XFWzEnAi+HUF9cTEDLJ4jShVo/p
	LxWgx+pzRdd6mx0+qEw9kiN7HC5R5LbvinJtMyVVCfTvHsJZT+b+M1nR4rBuBSyRgn8BXpzhtU7
	WU4q5ceYDPj7+v7lmjXHs7CgzoKgX6NnTaNTxjCIgHOabDFnPke958r+rwcRbbCiZkfl9rjXLx3
	26VuhQSpA7sGQ9yF
X-Google-Smtp-Source: AGHT+IF+Y0w2LRZR1z+OeXpJGYQqEUF7j6lAkyhB49oGHe8hQzRey78KEJvr0TPhORgwPh72d0QZiQ==
X-Received: by 2002:a05:690c:6113:b0:6ea:8d6f:b1bf with SMTP id 00721157ae682-6ef36fdd386mr92317067b3.0.1732808779288;
        Thu, 28 Nov 2024 07:46:19 -0800 (PST)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com. [209.85.219.170])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6ef4db4bb8dsm3627407b3.38.2024.11.28.07.46.18
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Nov 2024 07:46:18 -0800 (PST)
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e388503c0d7so733213276.0
        for <linux-phy@lists.infradead.org>; Thu, 28 Nov 2024 07:46:18 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV2l6scMSqE/92DIyYHEjSxZdpji6a0d9KI5XAVAs8JjgCwkltrNCnLSjIWNPqr3z5uPXs0JzquyyI=@lists.infradead.org
X-Received: by 2002:a05:6902:154b:b0:e33:14fa:2273 with SMTP id
 3f1490d57ef6-e395b887e90mr6783539276.5.1732808778278; Thu, 28 Nov 2024
 07:46:18 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com> <20241126092050.1825607-2-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20241126092050.1825607-2-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 28 Nov 2024 16:46:05 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWjzR6vgbr_CfR7r-h1FqWxs1nY0hm274kxFmoHjCtRAA@mail.gmail.com>
Message-ID: <CAMuHMdWjzR6vgbr_CfR7r-h1FqWxs1nY0hm274kxFmoHjCtRAA@mail.gmail.com>
Subject: Re: [PATCH v2 01/15] dt-bindings: soc: renesas: renesas,rzg2l-sysc:
 Add #renesas,sysc-signal-cells
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	gregkh@linuxfoundation.org, yoshihiro.shimoda.uh@renesas.com, 
	christophe.jaillet@wanadoo.fr, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_074620_874567_D5196B7E 
X-CRM114-Status: GOOD (  29.43  )
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

SGkgQ2xhdWRpdSwKCkNDIFVsZgoKVGhhbmtzIGZvciB5b3VyIHBhdGNoIQoKT24gVHVlLCBOb3Yg
MjYsIDIwMjQgYXQgMTA6MjHigK9BTSBDbGF1ZGl1IDxjbGF1ZGl1LmJlem5lYUB0dXhvbi5kZXY+
IHdyb3RlOgo+IEZyb206IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5l
c2FzLmNvbT4KPgo+IFRoZSBSWi9HM1Mgc3lzdGVtIGNvbnRyb2xsZXIgKFNZU0MpIGhhcyByZWdp
c3RlcnMgdG8gY29udHJvbCBzaWduYWxzIHRoYXQKPiBhcmUgcm91dGVkIHRvIHZhcmlvdXMgSVBz
LiBUaGVzZSBzaWduYWxzIG11c3QgYmUgY29udHJvbGxlZCBkdXJpbmcKPiBjb25maWd1cmF0aW9u
IG9mIHRoZSByZXNwZWN0aXZlIElQcy4gT25lIHN1Y2ggc2lnbmFsIGlzIHRoZSBVU0IgUFdSUkRZ
LAo+IHdoaWNoIGNvbm5lY3RzIHRoZSBTWVNDIGFuZCB0aGUgVVNCIFBIWS4gVGhpcyBzaWduYWwg
bXVzdCB0byBiZSBjb250cm9sbGVkCj4gYmVmb3JlIGFuZCBhZnRlciB0aGUgcG93ZXIgdG8gdGhl
IFVTQiBQSFkgaXMgdHVybmVkIG9mZi9vbi4KPgo+IE90aGVyIHNpbWlsYXIgc2lnbmFscyBpbmNs
dWRlIHRoZSBmb2xsb3dpbmcgKGFjY29yZGluZyB0byB0aGUgUlovRzNTCj4gaGFyZHdhcmUgbWFu
dWFsKToKPgo+ICogUENJZToKPiAtIEFMTE9XX0VOVEVSX0wxIHNpZ25hbCBjb250cm9sbGVkIHRo
cm91Z2ggdGhlIFNZU19QQ0lFX0NGRyByZWdpc3Rlcgo+IC0gUENJRV9SU1RfUlNNX0Igc2lnbmFs
IGNvbnRyb2xsZWQgdGhyb3VnaCB0aGUgU1lTX1BDSUVfUlNUX1JTTV9CCj4gICByZWdpc3Rlcgo+
IC0gTU9ERV9SWFRFUk1JTkFUSU9OIHNpZ25hbCBjb250cm9sbGVkIHRocm91Z2ggU1lTX1BDSUVf
UEhZIHJlZ2lzdGVyCj4KPiAqIFNQSToKPiAtIFNFTF9TUElfT0NUQSBzaWduYWwgY29udHJvbGxl
ZCB0aHJvdWdoIFNZU19JUENPTlRfU0VMX1NQSV9PQ1RBCj4gICByZWdpc3Rlcgo+Cj4gKiBJMkMv
STNDOgo+IC0gYWZfYnlwYXNzIEkyQyBzaWduYWxzIGNvbnRyb2xsZWQgdGhyb3VnaCBTWVNfSTJD
eF9DRkcgcmVnaXN0ZXJzCj4gICAoeD0wLi4zKQo+IC0gYWZfYnlwYXNzIEkzQyBzaWduYWwgY29u
dHJvbGxlZCB0aHJvdWdoIFNZU19JM0NfQ0ZHIHJlZ2lzdGVyCj4KPiAqIEV0aGVybmV0Ogo+IC0g
RkVDX0dJR0FfRU5BQkxFIEV0aGVybmV0IHNpZ25hbHMgY29udHJvbGxlZCB0aHJvdWdoIFNZU19H
RVRIeF9DRkcKPiAgIHJlZ2lzdGVycyAoeD0wLi4xKQo+Cj4gQWRkICNyZW5lc2FzLHN5c2Mtc2ln
bmFsLWNlbGxzIERUIHByb3BlcnR5IHRvIGFsbG93IGRpZmZlcmVudCBTWVNDIHNpZ25hbHMKPiBj
b25zdW1lcnMgdG8gbWFuYWdlIHRoZXNlIHNpZ25hbHMuCj4KPiBUaGUgZ29hbCBpcyB0byBlbmFi
bGUgY29uc3VtZXJzIHRvIHNwZWNpZnkgdGhlIHJlcXVpcmVkIGFjY2VzcyBkYXRhIGZvcgo+IHRo
ZXNlIHNpZ25hbHMgKHRocm91Z2ggZGV2aWNlIHRyZWUpIGFuZCBsZXQgdGhlaXIgcmVzcGVjdGl2
ZSBkcml2ZXJzCj4gY29udHJvbCB0aGVzZSBzaWduYWxzIHZpYSB0aGUgc3lzY29uIHJlZ21hcCBw
cm92aWRlZCBieSB0aGUgc3lzdGVtCj4gY29udHJvbGxlciBkcml2ZXIuIEZvciBleGFtcGxlLCB0
aGUgVVNCIFBIWSB3aWxsIGRlc2NyaWJlIHRoaXMgcmVsYXRpb24KPiB1c2luZyB0aGUgZm9sbG93
aW5nIERUIHByb3BlcnR5Ogo+Cj4gdXNiMl9waHkxOiB1c2ItcGh5QDExZTMwMjAwIHsKPiAgICAg
ICAgIC8vIC4uLgo+ICAgICAgICAgcmVuZXNhcyxzeXNjLXNpZ25hbCA9IDwmc3lzYyAweGQ3MCAw
eDE+Owo+ICAgICAgICAgLy8gLi4uCj4gfTsKCklJVUlDLCB0aGUgY29uc3VtZXIgZHJpdmVyIHdp
bGwgIGFwcGVhciB0byBjb250cm9sIHRoZSBTWVNDIGJpdHMKZGlyZWN0bHksIGJ1dCBkdWUgdG8g
dGhlIHVzZSBvZiBjdXN0b20gdmFsaWRhdGluZyByZWdtYXAgYWNjZXNzb3JzCmFuZCByZWZlcmVu
Y2UgY291bnRpbmcgaW4gdGhlIFNZU0MgZHJpdmVyLCB0aGlzIGlzIHNhZmU/ClRoZSBleHRyYSBz
YWZldHkgcmVxdWlyZXMgZHVwbGljYXRpbmcgdGhlIHJlZ2lzdGVyIGJpdHMgaW4gYm90aCBEVAph
bmQgdGhlIFNZU0MgZHJpdmVyLgpCb3RoIHVzYi1waHkgbm9kZXMgb24gUlpHM1MgdXNlIHRoZSBz
YW1lIHJlbmVzYXMsc3lzYy1zaWduYWwsIHNvIHRoZQpyZWZlcmVuY2UgY291bnRpbmcgaXMgaW5k
ZWVkIG5lZWRlZC4gIFRoZXkgYXJlIGluIGRpZmZlcmVudCBwb3dlcgpkb21haW5zLCBjb3VsZCB0
aGF0IGJlIGFuIGlzc3VlIHcuci50LiBvcmRlcmluZz8KCkkgYW0gbm90IGEgYmlnIGZhbiBvZiBk
ZXNjcmliaW5nIHJlZ2lzdGVyIGJpdHMgaW4gRFQsIGJ1dCBmb3IgdGhlIG90aGVyClNZU0MgdXNl
cnMgeW91IGxpc3QgYWJvdmUsIHN5c2NvbityZWdtYXAgc2VlbXMgdG8gYmUgYSB2YWxpZCBzb2x1
dGlvbi4KRm9yIFVTQiBhbmQgUENJZSBjb250cm9sLCB0aGUgc2l0dWF0aW9uIGlzIGRpZmZlcmVu
dC4gSSBtb3JlIGxpa2VkIHRoZQphcHByb2FjaCB3aXRoICJyZXNldCBJRHMiIHlvdSBoYWQgaW4g
djEsIGFzIGl0IGFic3RyYWN0cyB0aGUgRFQKZGVzY3JpcHRpb24gZnJvbSB0aGUgcmVnaXN0ZXIg
Yml0cywgYW5kIHRoZSBVU0IgYW5kIFBDSWUgcmVzZXQgYml0cyB1c2UKYSBkaWZmZXJlbnQgcG9s
YXJpdHkgKG9uIFJaL0czUykuIElmIGZ1dHVyZSBTb0MgaW50ZWdyYXRpb24gY2hhbmdlcwp0aGUg
cG9sYXJpdHksIHlvdSBoYXZlIHRvIGhhbmRsZSB0aGF0IGluIHRoZSBjb25zdW1lciAoVVNCIG9y
IFBDSWUpCmRyaXZlciwgdG9vLiAgVW5mb3J0dW5hdGVseSBzdWNoICJyZXNldCBJRHMiIGFyZSBv
bmx5IHN1aXRhYmxlIGZvcgp1c2Ugd2l0aCB0aGUgcmVzZXQgb3IgcG1kb21haW4gZnJhbWV3b3Jr
cywgd2hpY2ggZGlkbid0IHN1cnZpdmUgdGhlCmVhcmxpZXIgZGlzY3Vzc2lvbnMuCgpPbmUgb3Ro
ZXIgb3B0aW9uIHdvdWxkIGJlIHRvIGxldCBTWVNDIGV4cG9zZSByZWd1bGF0b3JzPwpXaGlsZSB0
aGF0IHdvdWxkIHdvcmsgZm9yIFVTQiBhbmQgUENJZSBjb250cm9sLCB3ZSB3b3VsZCBzdGlsbCBu
ZWVkCnN5c2NvbityZWdtYXAgZm9yIHRoZSBvdGhlciBiaXRzLgoKU28gdGhlIG1vcmUgSSB0aGlu
ayBhYm91dCBpdCwgdGhlIG1vcmUgSSBsaWtlIHlvdXIgKGNsZXZlcikgc29sdXRpb24uLi4KCj4g
QWxvbmcgd2l0aCBpdCwgYWRkIHRoZSBzeXNjb24gdG8gdGhlIGNvbXBhdGlibGUgbGlzdCBhcyBp
dCB3aWxsIGJlCj4gcmVxdWVzdGVkIGJ5IHRoZSBjb25zdW1lciBkcml2ZXJzLiBUaGUgc3lzY29u
IHdhcyBhZGRlZCB0byB0aGUgcmVzdCBvZgo+IHN5c3RlbSBjb250cm9sbGVyIHZhcmlhbnRzIGFz
IHRoZXNlIGFyZSBzaW1pbGFyIHdpdGggUlovRzNTIGFuZCBjYW4KPiBiZW5lZml0IGZyb20gdGhl
IGltcGxlbWVudGF0aW9uIHByb3Bvc2VkIGluIHRoaXMgc2VyaWVzLgo+Cj4gU2lnbmVkLW9mZi1i
eTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhLnVqQGJwLnJlbmVzYXMuY29tPgoKR3J7
b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0KR2VlcnQg
VXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVy
dEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNh
bCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRv
IGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRo
YXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
