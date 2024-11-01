Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 315CCE6F084
	for <linux-phy@archiver.kernel.org>; Fri,  1 Nov 2024 19:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oX5ccg9J/5VPWIPR/xwR6X0cQtQT+uBTB3MdbqW3egs=; b=hDK+2Axj/a2Rk3
	t4hhfwsNsP26J3Kh0uNndd9VwTFRPRI95byHuLEu5SXqaCpwo00Y1UNKb/L/u9JSVjk0zNC17/lR2
	mMvuwWIQiZqENbUPh9NFsCTOnr/FP7uM7EENmefb7oqdlpN/l6DsRxfPc8iTghuBkjSTsEKaWd8dr
	6v9Z6RephJtOzRKJFGWiiUd5IRrCoCkAu4Xzp2N3FdXmkrPxZ9rAgiAlp2w2hwSutsta6eBw5AG6q
	E/qw6XFCRTWvywKXoqn/y4nDTw6O0IinyqHfeQHKlpeAQk/qpXTiNaye3WywqwCs2Afd4UGfxFUqT
	4jdjD2xyEVx0GaXNy76g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6xjB-00000008C27-3F2c;
	Fri, 01 Nov 2024 19:54:37 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6xhU-00000008Bog-1XsY;
	Fri, 01 Nov 2024 19:52:53 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-7ee6edc47abso187059a12.3;
        Fri, 01 Nov 2024 12:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730490771; x=1731095571; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xhsok5lUSaLeX0jB80qqmTm3/8Vx9ryb4EE5XRrW0T8=;
        b=ZUnu8+mRg5+JZafsm9Ig91oYrBC625nxVD9XpWw4tZolmvyAn8D5vJvNGHr7UwpY+K
         AJIreIIqPHdfDYQOxVfEFtjIt8+VJJLWvezi6gZDqipoSQe6JTaIUSrqagSFYhvVCjVR
         Zw4/IjhHZTnu5DSbRONXaT2CJmrxU6/LeWZkLBN9T0rXTGb8tM7OG1oybeJ38osk8hu4
         25F0cZ4fNNAkXiWPExegtNhVstrc/znYHTqnqXxj8Rj82uJYABOPp06YmHsyBCAyz85+
         qBkgt15i+n+rcxTVLtgo4Wz0DnbPqJZqNRWRs3Z0wJc9E45svP4LitvW/px85kUdaYap
         Lc1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730490771; x=1731095571;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xhsok5lUSaLeX0jB80qqmTm3/8Vx9ryb4EE5XRrW0T8=;
        b=vLrbaNjIdAAoy+0LEmupgHy3uw2MyZzbBfG42r/i+YYXaduHMBNhk4a3eOekoLynvA
         bp2L0MFJs0zSdV3lFYtQGssrASRj5SND4p+k7V1VYtyPVea3zDbG9vFBBHki3D72cRJC
         AXCMyJZpfH14Zx3ltIylapG1+bQ5Px5TIyabQyIFv3y6oIG3suuWhGWcVyVlWpKiKxp8
         XAa8me8Oa4S7U9Ji6ATQU41/9Czn24C8lSbChk/aK/PwekHcmWn9B3H8mSlCn1id/xVm
         5C6JKQxGVfKTLuptyihBU73oPkIYkFWE3c4mezI77EVS2ZGmU3IUzXEAVLWLWCNjO4xx
         DPGA==
X-Forwarded-Encrypted: i=1; AJvYcCUm5Cr7nQb6oNaRid80kFnW2wYiUshsuVSuUxivGRYQa2rmcps7oC3xUtAQupaSkNnlVVeAvivysYCzacQDrnmm@lists.infradead.org, AJvYcCXT1jP/T9F4BxXDa8Fdr7Ecx+WaydQDlCQCdtKxDz2S4mHwuYRj7qrn8kwop8BbRZbQeumhbug9jAN/@lists.infradead.org
X-Gm-Message-State: AOJu0YzfACQOqj0gn+v6VnUfA2SnQyH+9DCH7WXp0glylR4Wu99RXDW9
	x3JtfGmZWOI76x40ZKWZhyfR2EhRwj0GFJNJMCKLshlU4dCjh7Y+miVyZxGgyayxUe3T0H1S3pT
	sYctYam0NXqTN5SL3yz5g1RxloIc=
X-Google-Smtp-Source: AGHT+IHZKMW6nZzgZWjfjRWzIvWK1iTYBaT4YLGi4D6U/W2A5SxqJ4IVJebquI4t7FLTpZHyma5G5RNi+tkyXX6nGq4=
X-Received: by 2002:a17:90b:1c85:b0:2e2:e597:6cd3 with SMTP id
 98e67ed59e1d1-2e94c2d6a20mr6009738a91.17.1730490770981; Fri, 01 Nov 2024
 12:52:50 -0700 (PDT)
MIME-Version: 1.0
References: <20241021155241.943665-1-Frank.Li@nxp.com> <DU2PR04MB86770FFB0CAEEBE95B91F5FC8C4C2@DU2PR04MB8677.eurprd04.prod.outlook.com>
In-Reply-To: <DU2PR04MB86770FFB0CAEEBE95B91F5FC8C4C2@DU2PR04MB8677.eurprd04.prod.outlook.com>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 1 Nov 2024 14:52:39 -0500
Message-ID: <CAHCN7xJya+XjAP+kn5MePdrqNxaLnkYag23UaNatoh09ize+AA@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] phy: freescale: imx8m-pcie: Do CMN_RST just before
 PHY PLL lock check
To: Hongxing Zhu <hongxing.zhu@nxp.com>
Cc: Frank Li <frank.li@nxp.com>, "vkoul@kernel.org" <vkoul@kernel.org>, 
	"festevam@gmail.com" <festevam@gmail.com>, "imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>, "kishon@kernel.org" <kishon@kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	Marcel Ziswiler <marcel.ziswiler@toradex.com>, 
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
	"stable@vger.kernel.org" <stable@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241101_125252_439094_2B17F408 
X-CRM114-Status: GOOD (  32.55  )
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

T24gTW9uLCBPY3QgMjEsIDIwMjQgYXQgMTE6MDbigK9QTSBIb25neGluZyBaaHUgPGhvbmd4aW5n
LnpodUBueHAuY29tPiB3cm90ZToKPgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+
IEZyb206IEZyYW5rIExpIDxmcmFuay5saUBueHAuY29tPgo+ID4gU2VudDogMjAyNOW5tDEw5pyI
MjHml6UgMjM6NTMKPiA+IFRvOiB2a291bEBrZXJuZWwub3JnCj4gPiBDYzogRnJhbmsgTGkgPGZy
YW5rLmxpQG54cC5jb20+OyBmZXN0ZXZhbUBnbWFpbC5jb207IEhvbmd4aW5nIFpodQo+ID4gPGhv
bmd4aW5nLnpodUBueHAuY29tPjsgaW14QGxpc3RzLmxpbnV4LmRldjsga2VybmVsQHBlbmd1dHJv
bml4LmRlOwo+ID4ga2lzaG9uQGtlcm5lbC5vcmc7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZzsKPiA+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnOyBNYXJjZWwgWmlzd2lsZXIKPiA+IDxtYXJjZWwuemlzd2lsZXJA
dG9yYWRleC5jb20+OyBzLmhhdWVyQHBlbmd1dHJvbml4LmRlOwo+ID4gc2hhd25ndW9Aa2VybmVs
Lm9yZzsgc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+ID4gU3ViamVjdDogW1BBVENIIHYyIDEvMV0g
cGh5OiBmcmVlc2NhbGU6IGlteDhtLXBjaWU6IERvIENNTl9SU1QganVzdCBiZWZvcmUKPiA+IFBI
WSBQTEwgbG9jayBjaGVjawo+ID4KPiA+IEZyb206IFJpY2hhcmQgWmh1IDxob25neGluZy56aHVA
bnhwLmNvbT4KPiA+Cj4gPiBXaGVuIGVuYWJsZSBpbml0Y2FsbF9kZWJ1ZyB0b2dldGhlciB3aXRo
IGhpZ2hlciBkZWJ1ZyBsZXZlbCBiZWxvdy4KPiA+IENPTkZJR19DT05TT0xFX0xPR0xFVkVMX0RF
RkFVTFQ9OQo+ID4gQ09ORklHX0NPTlNPTEVfTE9HTEVWRUxfUVVJRVQ9OQo+ID4gQ09ORklHX01F
U1NBR0VfTE9HTEVWRUxfREVGQVVMVD03Cj4gPgo+ID4gVGhlIGluaXRpYWxpemF0aW9uIG9mIGku
TVg4TVAgUENJZSBQSFkgbWlnaHQgYmUgdGltZW91dCBmYWlsZWQgcmFuZG9tbHkuCj4gPiBUbyBm
aXggdGhpcyBpc3N1ZSwgYWRqdXN0IHRoZSBzZXF1ZW5jZSBvZiB0aGUgcmVzZXRzIHJlZmVyIHRv
IHRoZSBwb3dlciB1cAo+ID4gc2VxdWVuY2UgbGlzdGVkIGJlbG93Lgo+ID4KPiA+IGkuTVg4TVAg
UENJZSBQSFkgcG93ZXIgdXAgc2VxdWVuY2U6Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAg
IC8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+IDEuOHYg
c3VwcGx5ICAgICAtLS0tLS0tLS0vCj4gPiAgICAgICAgICAgICAgICAgICAgIC8tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+IDAuOHYgc3VwcGx5
ICAgICAtLS0vCj4gPgo+ID4gICAgICAgICAgICAgICAgIC0tLVwgLy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgICAgICAgICAgICAgICAgICAg
IFggICAgICAgIFJFRkNMSyBWYWxpZAo+ID4gUmVmZXJlbmNlIENsb2NrIC0tLS8gXC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+ID4gaV9pbml0X3Jlc3Ru
ICAgIC0tLS0tLS0tLS0tLS0tCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwKPiA+IGlfY21uX3JzdG4gICAgICAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8IG9fcGxsX2xvY2tfZG9uZQo+ID4gLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPiA+Cj4gPiBMb2dzOgo+ID4gaW14NnEtcGNpZSAzMzgwMDAwMC5wY2llOiBob3N0
IGJyaWRnZSAvc29jQDAvcGNpZUAzMzgwMDAwMCByYW5nZXM6Cj4gPiBpbXg2cS1wY2llIDMzODAw
MDAwLnBjaWU6ICAgICAgIElPIDB4MDAxZmY4MDAwMC4uMHgwMDFmZjhmZmZmIC0+Cj4gPiAweDAw
MDAwMDAwMDAKPiA+IGlteDZxLXBjaWUgMzM4MDAwMDAucGNpZTogICAgICBNRU0gMHgwMDE4MDAw
MDAwLi4weDAwMWZlZmZmZmYgLT4KPiA+IDB4MDAxODAwMDAwMAo+ID4gcHJvYmUgb2YgY2xrX2lt
eDhtcF9hdWRpb21peC5yZXNldC4wIHJldHVybmVkIDAgYWZ0ZXIgMTA1MiB1c2VjcyBwcm9iZSBv
Zgo+ID4gMzBlMjAwMDAuY2xvY2stY29udHJvbGxlciByZXR1cm5lZCAwIGFmdGVyIDMyOTcxIHVz
ZWNzIHBoeQo+ID4gcGh5LTMyZjAwMDAwLnBjaWUtcGh5LjQ6IHBoeSBwb3dlcm9uIGZhaWxlZCAt
LT4gLTExMCBwcm9iZSBvZgo+ID4gMzBlMTAwMDAuZG1hLWNvbnRyb2xsZXIgcmV0dXJuZWQgMCBh
ZnRlciAxMDIzNSB1c2VjcyBpbXg2cS1wY2llCj4gPiAzMzgwMDAwMC5wY2llOiB3YWl0aW5nIGZv
ciBQSFkgcmVhZHkgdGltZW91dCEKPiA+IGR3aGRtaS1pbXggMzJmZDgwMDAuaGRtaTogRGV0ZWN0
ZWQgSERNSSBUWCBjb250cm9sbGVyIHYyLjEzYSB3aXRoIEhEQ1AKPiA+IChzYW1zdW5nX2R3X2hk
bWlfcGh5MikgaW14NnEtcGNpZSAzMzgwMDAwMC5wY2llOiBwcm9iZSB3aXRoIGRyaXZlcgo+ID4g
aW14NnEtcGNpZSBmYWlsZWQgd2l0aCBlcnJvciAtMTEwCj4gPgo+ID4gRml4ZXM6IGRjZTllZGZm
MTZlZSAoInBoeTogZnJlZXNjYWxlOiBpbXg4bS1wY2llOiBBZGQgaS5NWDhNUCBQQ0llIFBIWQo+
ID4gc3VwcG9ydCIpCj4gPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+ID4gU2lnbmVkLW9m
Zi1ieTogUmljaGFyZCBaaHUgPGhvbmd4aW5nLnpodUBueHAuY29tPgo+ID4gU2lnbmVkLW9mZi1i
eTogRnJhbmsgTGkgPEZyYW5rLkxpQG54cC5jb20+Cj4gPgo+ID4gdjIgY2hhbmdlczoKPiA+IC0g
UmViYXNlIHRvIGxhdGVzdCBmaXhlcyBicmFuY2ggb2YgbGludXgtcGh5IGdpdCByZXBvLgo+ID4g
LSBSaWNoYXJkJ3MgZW52aXJvbm1lbnQgaGF2ZSBwcm9ibGVtIGFuZCBjYW4ndCBzZW50IG91dCBw
YXRjaC4gU28gSSBoZWxwIHBvc3QKPiA+IHRoaXMgZml4IHBhdGNoLgoKRXZlbiB3aXRoIHRoaXMg
cGF0Y2gsIEkgYW0gc3RpbGwgc2VlaW5nIGFuIG9jY2FzaW9uYWwgdGltZW91dCBvbiA4TVAuCkkg
bG9va2VkIGF0IHNvbWUgbG9ncyBvbiBhIHNpbWlsYXJseSBmdW5jdGlvbmluZyA4TU0gYW5kIEkg
Y2FuJ3QgZ2V0CnRoaXMgZXJyb3IgdG8gYXBwZWFyIG9uIE1pbmkgdGhhdCBJIHNlZSBvbiBQbHVz
LgoKVGhlIFRSTSBkb2Vzbid0IGRvY3VtZW50IHRoZSB0aW1pbmcgb2YgdGhlIHN0YXJ0dXAgc2Vx
dWVuY2UsIGxpa2UgdGhpcwplLW1haWwgcGF0Y2ggZGlkIG5vciBkb2VzIGl0IHN0YXRlIGhvdyBs
b25nIGEgcmVhc29uYWJsZSB0aW1lb3V0CnNob3VsZCB0YWtlLiBTbywgSSBzdGFydGVkIGxvb2tp
bmcgdGhyb3VnaCB0aGUgY29kZSBhbmQgSSBub3RpY2VkIHRoYXQKdGhlIE1pbmkgYXNzZXJ0cyB0
aGUgcmVzZXQgYXQgdGhlIGJlZ2lubmluZywgdGhlbiBtYWtlcyBhbGwgdGhlCmNoYW5nZXMsIGFu
ZCBkZS1hc3NlcnRzIHRoZSByZXNldHMgdG93YXJkIHRoZSBlbmQuICBJcyB0aGVyZSBhbnkKcmVh
c29uIHdlIHNob3VsZCBub3QgYXNzZXJ0IG9uZSBvciBib3RoIG9mIHRoZSByZXNldHMgb24gOE1Q
IGJlZm9yZQpzZXR0aW5nIHVwIHRoZSByZXNldCBvZiB0aGUgcmVnaXN0ZXJzIGxpa2UgdGhlIHdh
eSBNaW5pIGRvZXMgaXQ/CgphZGFtCgo+ID4gLS0tCj4gSGkgRnJhbms6Cj4gVGhhbmtzIGEgbG90
IGZvciB5b3VyIGtpbmRseSBoZWxwLgo+IFNpbmNlIG15IHNlcnZlciBpcyBkb3duLCBJIGNhbid0
IHNlbmQgb3V0IHRoaXMgdjIgaW4gdGhlIHBhc3QgZGF5cy4KPgo+IEhpIFZpbm9kOgo+IFNvcnJ5
IGZvciB0aGUgbGF0ZSByZXBseSwgYW5kIGJyaW5nIHlvdSBpbmNvbnZlbmllbmNlLgo+Cj4gQmVz
dCBSZWdhcmRzCj4gUmljaGFyZCBaaHUKPgo+ID4gIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHkt
ZnNsLWlteDhtLXBjaWUuYyB8IDEwICsrKysrLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bS1wY2llLmMKPiA+IGIvZHJpdmVycy9waHkvZnJl
ZXNjYWxlL3BoeS1mc2wtaW14OG0tcGNpZS5jCj4gPiBpbmRleCAxMWZjYjE4NjcxMThjLi5lOTgz
NjFkY2RlYWRmIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wt
aW14OG0tcGNpZS5jCj4gPiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4
bS1wY2llLmMKPiA+IEBAIC0xNDEsMTEgKzE0MSw2IEBAIHN0YXRpYyBpbnQgaW14OF9wY2llX3Bo
eV9wb3dlcl9vbihzdHJ1Y3QgcGh5Cj4gPiAqcGh5KQo+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgIElNWDhNTV9HUFJfUENJRV9SRUZfQ0xLX1BMTCk7Cj4gPiAgICAgICB1c2xlZXBfcmFuZ2Uo
MTAwLCAyMDApOwo+ID4KPiA+IC0gICAgIC8qIERvIHRoZSBQSFkgY29tbW9uIGJsb2NrIHJlc2V0
ICovCj4gPiAtICAgICByZWdtYXBfdXBkYXRlX2JpdHMoaW14OF9waHktPmlvbXV4Y19ncHIsIElP
TVVYQ19HUFIxNCwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICBJTVg4TU1fR1BSX1BDSUVf
Q01OX1JTVCwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICBJTVg4TU1fR1BSX1BDSUVfQ01O
X1JTVCk7Cj4gPiAtCj4gPiAgICAgICBzd2l0Y2ggKGlteDhfcGh5LT5kcnZkYXRhLT52YXJpYW50
KSB7Cj4gPiAgICAgICBjYXNlIElNWDhNUDoKPiA+ICAgICAgICAgICAgICAgcmVzZXRfY29udHJv
bF9kZWFzc2VydChpbXg4X3BoeS0+cGVyc3QpOwo+ID4gQEAgLTE1Niw2ICsxNTEsMTEgQEAgc3Rh
dGljIGludCBpbXg4X3BjaWVfcGh5X3Bvd2VyX29uKHN0cnVjdCBwaHkKPiA+ICpwaHkpCj4gPiAg
ICAgICAgICAgICAgIGJyZWFrOwo+ID4gICAgICAgfQo+ID4KPiA+ICsgICAgIC8qIERvIHRoZSBQ
SFkgY29tbW9uIGJsb2NrIHJlc2V0ICovCj4gPiArICAgICByZWdtYXBfdXBkYXRlX2JpdHMoaW14
OF9waHktPmlvbXV4Y19ncHIsIElPTVVYQ19HUFIxNCwKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICBJTVg4TU1fR1BSX1BDSUVfQ01OX1JTVCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICBJTVg4TU1fR1BSX1BDSUVfQ01OX1JTVCk7Cj4gPiArCj4gPiAgICAgICAvKiBQb2xsaW5nIHRv
IGNoZWNrIHRoZSBwaHkgaXMgcmVhZHkgb3Igbm90LiAqLwo+ID4gICAgICAgcmV0ID0gcmVhZGxf
cG9sbF90aW1lb3V0KGlteDhfcGh5LT5iYXNlICsKPiA+IElNWDhNTV9QQ0lFX1BIWV9DTU5fUkVH
MDc1LAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhbCwgdmFsID09IEFOQV9Q
TExfRE9ORSwgMTAsIDIwMDAwKTsKPiA+IC0tCj4gPiAyLjM0LjEKPgo+IC0tCj4gbGludXgtcGh5
IG1haWxpbmcgbGlzdAo+IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5CgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
