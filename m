Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24361E7E0CA
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 11:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGRv+PfdijdxPc/kVO96qqMMlZxLC5HFG7VBMNDJICg=; b=TlBILFFkl6j3J3
	hmTeoSuB1CL81NzOt5FwizC6UGLj2EpR4gXAyo/FoMVEz9V+vYdjTg/sNyJR10Isw7gphMB03hcJs
	w9Swn2ckQFl3bsKm+31s2O4JYSTM+cMKjXW9/hTsothm4YtgSImrJYej4nXHW4JuZnJlQhdifHZfA
	pyDMYkO8qAvn3Oa7p2Y37ZsgHrigiH0ulTsqr+akYio0Wel1RKmZbEeHLaQgpcaO7KEpGgZ/FKfAd
	AfoZZfEHFMZNeG5JJ3754UJSHxcU3hYnagyxqLgqKNgh6my1xm6nANH/pzWl95fmcmWJ0sjKa3/lC
	pi5lHM5mAASE1VnENbPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpPBA-0000000FHCo-3a7h;
	Mon, 09 Feb 2026 11:11:44 +0000
Received: from mail-vs1-f45.google.com ([209.85.217.45])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpPB6-0000000FHBu-0HX8
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 11:11:43 +0000
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5fadd5d4319so2471923137.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 03:11:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770635498; x=1771240298;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CFhQGFBF0i+66a0TJna2Rm6FRsUIJ3sMEDyWqu3+t6g=;
        b=Gf6LBK0HExga99DZrHzHS+TUOxRyict3VurkKyuWgb06C1MloPkPNAQ0cY8uLA/krY
         fn5n5JWYVpSKeRvzI0uSjswSkgCYfrXhkhPh500jXM8fmcYIktuhAXM2WCLVGUTPe1TH
         MwBul2UfHQi+hZtkCwvhKxErYsyC/CuKw4B6uUaHgIsgT6mwCtGNTZsWUBOBBYbyQbK8
         bVWgeX8HcezK+hiEsYZiZVI+94VHGqH8S7HpS8h11I3tkJ954AclizD2ZX3hKV/A6mCP
         PKTpRsaiaauWZEiuktGPaoTtimjfypgRYOGpD7zlnG/LqOT9RfyDLeS19v50JFnMhBkG
         mtuA==
X-Forwarded-Encrypted: i=1; AJvYcCUfdcsc+CkQ3JruMegAxV87OhneWSHTRQahSTBnaYvtcwVrLRfcXxOG7sH3kXq2TgYAtwjHeWxnPCw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxcTIZc4vRaZHNvQNXJJecuLEYh5jlu+XrHhevUMa8Xip4PPfWW
	vNLLMMSPaF41OQqmk+otYe3vi5qF7CRjHHCQCpTn8QIscg+zcRhMz5jp98Djn7Ra
X-Gm-Gg: AZuq6aIZfHwTNrWylWgLGgQ4h3wJIpShN+8W16vFzVTAFG5o3WQq6NtGWCjQJMEa05O
	g04wuXsQ30G1QYDxg+KRF4gFHVPHH5tCvBT2aG5fe7uqjE+OXA1ZLFsP9jV14yt/J/lHhdfPREq
	6bzjwOjVymPeZyqct1GtYKOguFdardSkX+B7fm64pnhDgxweX4nIXIvXWoKZY5MIfZ0rSOGqnRM
	eZoqzv4O3vqFJei3mb58UNe/+bC6ixo8xhK8ZjxePmBy/LzDR5rBDy6ID6P4kM2iye/96aDXW7G
	6Wf32iSZMWr5ymQThMxZiEkNnFcAA14DUVpfVjVcmxNT2JaDUXme6nNyIXoNVu8GnU8DrqFcLNu
	OUN/0meRosn/M8fVLDw573+lb684bn48hZ/iJ5D5cbTlFC/RRkJBEKLg3fBbba4OM5BDhcXSc2L
	GmW3+Y2MRjU+0ikjSa7eBL402WUYfjjt6B+2fUhefMbCjBTV1N
X-Received: by 2002:a05:6102:6d0:b0:5f8:e418:c94d with SMTP id ada2fe7eead31-5fae8a593efmr3088910137.10.1770635498350;
        Mon, 09 Feb 2026 03:11:38 -0800 (PST)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5faf8f333f6sm3255114137.2.2026.02.09.03.11.38
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 03:11:38 -0800 (PST)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-94ac8cbf3feso787342241.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 03:11:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXChTvcHwqPr6apHOmXorLBh1U2hxLRPWfXqC5zco+VzEcMsbMOI3Qaz2vf4ipkCguqCyn9pwrF9IQ=@lists.infradead.org
X-Received: by 2002:a05:6102:f10:b0:5ef:ac78:3c77 with SMTP id
 ada2fe7eead31-5fae8aafb2dmr2699695137.18.1770635026255; Mon, 09 Feb 2026
 03:03:46 -0800 (PST)
MIME-Version: 1.0
References: <20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com>
 <20260203-rz-sdio-mux-v8-3-024ea405863e@solid-run.com> <b7dcb374-b79c-4e9f-ac30-2f507127cfb3@solid-run.com>
 <CAMuHMdU01vwif4H6H-cYUfW0Y56fN6Anp9F4Ru7q3fveNqqoXA@mail.gmail.com>
 <39f3891c-c05a-4e10-9ad4-ab3cbc6fa70e@solid-run.com> <CAMuHMdVbi=2puhk84k+FCDXqkQ9jFsy0rsseQiFCF8i=KsR1OQ@mail.gmail.com>
 <1a4288f2-ee5c-494f-9fbe-ea3a90a16014@solid-run.com>
In-Reply-To: <1a4288f2-ee5c-494f-9fbe-ea3a90a16014@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Feb 2026 12:03:34 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWa6o19+oX=-Hkpx+tEsnJ39vyi91FwbU+YHJqv=QsPkA@mail.gmail.com>
X-Gm-Features: AZwV_QiXoAPXWcsFJ5cXmi5LxanLCRJoL8Hmi_xM0cWtiaFZbVoUaSfpkEx2uEE
Message-ID: <CAMuHMdWa6o19+oX=-Hkpx+tEsnJ39vyi91FwbU+YHJqv=QsPkA@mail.gmail.com>
Subject: Re: [PATCH v8 3/7] mux: add help text for MULTIPLEXER config option
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, 
	"linux-can@vger.kernel.org" <linux-can@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>, 
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>, 
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_031140_122985_ED107190 
X-CRM114-Status: GOOD (  30.92  )
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

SGkgSm9zdWEsCgpPbiBNb24sIDkgRmViIDIwMjYgYXQgMTE6NDcsIEpvc3VhIE1heWVyIDxqb3N1
YUBzb2xpZC1ydW4uY29tPiB3cm90ZToKPiBPbiAwOS8wMi8yMDI2IDEyOjE3LCBHZWVydCBVeXR0
ZXJob2V2ZW4gd3JvdGU6Cj4gPiBPbiBNb24sIDkgRmViIDIwMjYgYXQgMTE6MTIsIEpvc3VhIE1h
eWVyIDxqb3N1YUBzb2xpZC1ydW4uY29tPiB3cm90ZToKPiA+PiBPbiAwOS8wMi8yMDI2IDEwOjA2
LCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4gPj4+IE9uIFN1biwgOCBGZWIgMjAyNiBhdCAx
NjoxNiwgSm9zdWEgTWF5ZXIgPGpvc3VhQHNvbGlkLXJ1bi5jb20+IHdyb3RlOgo+ID4+Pj4gT24g
MDMvMDIvMjAyNiAxNTowMSwgSm9zdWEgTWF5ZXIgd3JvdGU6Cj4gPj4+Pj4gQWRkIHByb21wdCBh
bmQgaGVscCB0ZXh0IGZvciBDT05GSUdfTVVMVElQTEVYRVIgdG8gYWxsb3cgZW5hYmxpbmcgdGhp
cwo+ID4+Pj4+IG9wdGlvbiB0aG9ydWdoIHRoZSBrZXJuZWwgY29uZmlndXJhdGlvbiB3aXRob3V0
IGV4cGxpY2l0ICJzZWxlY3QiIGRyaXZlcgo+ID4+Pj4+IGRlcGVuZGVuY2llcy4KPiA+Pj4+Pgo+
ID4+Pj4+IFNlbGVjdCBpdCBieSBkZWZhdWx0IHdoZW4gQ09NUElMRV9URVNUIGlzIHNldCBmb3Ig
YmV0dGVyIGNvdmVyYWdlLgo+ID4+Pj4+Cj4gPj4+Pj4gU2lnbmVkLW9mZi1ieTogSm9zdWEgTWF5
ZXIgPGpvc3VhQHNvbGlkLXJ1bi5jb20+Cj4gPj4+Pj4gLS0tCj4gPj4+Pj4gICAgIGRyaXZlcnMv
bXV4L0tjb25maWcgfCA4ICsrKysrKystCj4gPj4+Pj4gICAgIDEgZmlsZSBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Pj4+Pgo+ID4+Pj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL211eC9LY29uZmlnIGIvZHJpdmVycy9tdXgvS2NvbmZpZwo+ID4+Pj4+IGluZGV4IGM2
ODEzMmUzODEzOC4uZTMxYzQ2ODIwYmRmIDEwMDY0NAo+ID4+Pj4+IC0tLSBhL2RyaXZlcnMvbXV4
L0tjb25maWcKPiA+Pj4+PiArKysgYi9kcml2ZXJzL211eC9LY29uZmlnCj4gPj4+Pj4gQEAgLTQs
NyArNCwxMyBAQAo+ID4+Pj4+ICAgICAjCj4gPj4+Pj4KPiA+Pj4+PiAgICAgY29uZmlnIE1VTFRJ
UExFWEVSCj4gPj4+Pj4gLSAgICAgdHJpc3RhdGUKPiA+Pj4+PiArICAgICB0cmlzdGF0ZSAiR2Vu
ZXJpYyBNdWx0aXBsZXhlciBTdXBwb3J0IiBpZiBDT01QSUxFX1RFU1QKPiA+Pj4+IFRoaXMgZGlk
bid0IGRvIHdoYXQgSSB0aG91Z2h0IGl0IHdvdWxkLgo+ID4+Pj4gSXQgd2FzIG15IGludGVudGlv
biB0byBhbGxvdyBlbmFibGluZyB0aGlzIHRocm91Z2ggbWVudWNvbmZpZyAvIC5jb25maWcuCj4g
Pj4+Pgo+ID4+Pj4gV2l0aCB0aGUgc3ludGF4IGFib3ZlIG1lbnVjb25maWcgc2hvd3M6Cj4gPj4+
Pgo+ID4+Pj4g4pSCIFN5bWJvbDogTVVMVElQTEVYRVIgWz1uXQo+ID4+Pj4g4pSCIFR5cGUgIDog
dHJpc3RhdGUKPiA+Pj4+IOKUgiBEZWZpbmVkIGF0IGRyaXZlcnMvbXV4L0tjb25maWc6Ngo+ID4+
Pj4g4pSCICAgUHJvbXB0OiBHZW5lcmljIE11bHRpcGxleGVyIFN1cHBvcnQKPiA+Pj4+IOKUgiAg
IFZpc2libGUgaWY6IENPTVBJTEVfVEVTVCBbPW5dCj4gPj4+Pgo+ID4+Pj4gVGhpcyBtZWFucyBp
dCBjYW5ub3QgYmUgc2VsZWN0ZWQuCj4gPj4+IExvb2tzIGxpa2UgeW91IGhhdmVuJ3QgZW5hYmxl
ZCBDT01QSUxFX1RFU1QgZmlyc3Q/Cj4gPj4gQ29ycmVjdC4KPiA+PiBCdXQgQ09ORklHX01VTFRJ
UExFWEVSIHNob3VsZCBiZSB2aXNpYmxlIGFsd2F5cywKPiA+PiBub3QganVzdCB3aGVuIENPTVBJ
TEVfVEVTVCBpcyBzZXQuCj4gPiBXaHkgc2hvdWxkIGl0IGFsd2F5cyBiZSB2aXNpYmxlPyBBbGwg
dXNlcnMgc2VsZWN0IGl0Pwo+Cj4gVGhpcyBpcyBub3QgcmVsZXZhbnQgZm9yIHY3IG5vdyBhbmQg
Y2FuIGJlIGhhbmRsZWQgbGF0ZXIuCj4KPiBJdCB3YXMgZGlzY3Vzc2VkIHByZXZpb3VzbHkgdGhh
dCBkcml2ZXJzIHN1cHBvcnRpbmcgb3B0aW9uYWwgbXV4ZXMKPiBkbyBub3QgbmVlZCB0byAic2Vs
ZWN0IiBNVUxUSVBMRVhFUiB0aHJvdWdoIEtjb25maWcsCj4gRS5nLiB0aGUgcmVuZXNhcyBzZGhp
IGRyaXZlci4KPgo+IEhvd2V2ZXIgb3RoZXIgZHJpdmVycyBhcmUgYWxyZWFkeSBzZWxlY3Rpbmcg
aXQgZXZlbiB0aG91Z2ggdGhlIG11eAo+IGlzIG9wdGlvbmFsLCBzZWUgZS5nLiBwaHktY2FuLXRy
YW5zY2VpdmVyLgo+Cj4gSW4gb3JkZXIgdG8gc3VwcG9ydCBtdXhlcyBpbiByZW5lc2FzIHNkaGkg
ZHJpdmVyIGUuZy4sIHVzZXJzIG11c3QgY2hvb3NlIHRvCj4gZW5hYmxlIGJvdGggdGhlIHJlbmVz
YXMgZHJpdmVyLCBhbmQgbXVsdGlwbGV4ZXIgc3Vic3lzdGVtIHZpYSB0aGUKPiBjb25maWd1cmF0
aW9uLgo+Cj4gVGhlIG11eCBjb3JlIHN0YW5kYWxvbmUgYWxzbyBzdXBwb3J0cyBhIGxpbWl0ZWQg
dXNlLWNhc2Ugd2l0aG91dCBvdGhlcgo+IGRyaXZlcgo+IGludGVyYWN0aW9ucywgc2V0dGluZyBp
ZGxlLXN0YXRlIGUuZy46Cj4KPiBtdXgtY29udHJvbGxlciB7Cj4gICAgICBjb21wYXRpYmxlID0g
ImdwaW8tbXV4IjsKPiAgICAgICNtdXgtY29udHJvbC1jZWxscyA9IDwwPjsKPiAgICAgIG11eC1n
cGlvcyA9IDwmdGNhNjQxNl91MjAgMCBHUElPX0FDVElWRV9ISUdIPjsKPiAgICAgIGlkbGUtc3Rh
dGUgPSA8MD47Cj4gfTsKPgo+IFNvIGl0IGNhbiBiZSBnZW5lcmFsbHkgdXNlZnVsIGZvciBhIHVz
ZXIgdG8gZW5hYmxlIENPTkZJR19NVUxUSVBMRVhFUi4KClRoZW4gcGxlYXNlIHNheSBzbyBpbiB0
aGUgcGF0Y2ggZGVzY3JpcHRpb24uCgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAg
ICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBv
ZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwg
Y29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNr
ZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dy
YW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgLS0gTGludXMgVG9ydmFsZHMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
