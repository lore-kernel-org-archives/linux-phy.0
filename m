Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E81CE77188
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jan 2025 00:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjjGjFvWDb4/W9ZcOj/Uy9qvlO1zZqzV7/D2D0KxQ6c=; b=Xe2G0d6udiRLbV
	orMrptHjaMz5nyjZ2uzLdIwvXtHrp53qEo4XBVWfHiTiHx6mNnLS2OJmJlxtC993i9Dy1y9HT/WAI
	JdgH/+tBin2LOgGfGlrsC2WiDRY3egh04uMxOiEMkM6T/gTIPGyKWoN2kZJhuNm7ixOH9AdMd3uMi
	PhSVLNYV5m/ldL6se2DP5ENDYNhMJI+Q6b+UzZGQxVpeMXMw7PiRcO1HyPeB4mZcvnfV0rEDk9+Eh
	4Iu/wbQxSu9yhMEiSofJ/26q+YbMresl5OVy2X5CsAddMLI+Gluy1Ti3cKMiSAxDh0J1OWkz1sJdQ
	SX+FHT8EdTZdNFu57fLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWP2A-0000000HKuM-0tup;
	Sat, 11 Jan 2025 00:07:22 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWP27-0000000HKtv-2lec
	for linux-phy@lists.infradead.org;
	Sat, 11 Jan 2025 00:07:20 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-2ee51f8c47dso3584822a91.1
        for <linux-phy@lists.infradead.org>; Fri, 10 Jan 2025 16:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736554038; x=1737158838; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f/hRX0hxCXBAgzwmJ1vYejLKpUIdc6W0HIHhhy7DKFE=;
        b=ehBzA7Ls+tsBTrA2P4TCNOaPL3DMhz+fs68XTmJA07I9uW8IA9TA4nWUeKpBUbZ1UA
         vJirXHGj3QkXqxhKjKwAhxP0EFZ3avdP+dGhh8ZYXPpalYhqgd+ptjkMkvTxshD3vX+7
         bQgcgShXyzdcvvIfS4ngW6nxFQ29q/DJhQWiczM+G6b/87EDjdteCIM2KKHwiH/buW30
         XIR22qe7ZH2DYkfh9Lm/CXsXpld+eaIJKs2N+QfChehQnkPLXjcDh1Y8oLoPyZXnZGhL
         cmw5noli5RRZamdBNLFzdlowqzEZyKdKduvrmpkWQxBa2Iqo9J8ipjThBGxbw+Z2xjja
         SRRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736554038; x=1737158838;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f/hRX0hxCXBAgzwmJ1vYejLKpUIdc6W0HIHhhy7DKFE=;
        b=bvfR5z2kjUJ3qyAp9MNj1Q4iyi1W55r/AmtJ/2FWaTHl/37pi8GBY0Zu1GUv3AlpuS
         i7Fzb27GBJt5TpaWqZLtrCcLQi0MgzR7i0zHZcmIvu9F8pPVFr1IQPmDFI2v3jFmrI9s
         Sqx1WIsuw8SMy2pIgnF43xiGuJ0lO3J16vhAtR66ilMu+o5Gy7QqT+LWkJyXM4GW+fiY
         ty/CVsE7UeRnd+UKXaz8Cp47yKxh8p0w0cPO8pC7VdRqrGxqByNH/bHOX4kUSl5ELnaX
         ULM08VLW8tffLLNmm51jzSD6HHrbt6vwfospwCYB3f/nbIlPCQD0zzt28OOPeSQXBn5s
         +bsw==
X-Forwarded-Encrypted: i=1; AJvYcCXTH85dCo+iKhpl5LKnQKWNwNYjQaPL1SGfg6adJZV/G5eAjfWHtlhnIf2f2hsMpD+mlNw7MuygA2I=@lists.infradead.org
X-Gm-Message-State: AOJu0YzD0i2GnhS2P09S57KahLf28gSBiJl8ZJOVfVl1Vob2CNxa18Yj
	V652+vWfII8pmx/1bpig5VZ4BHk+agvBQpyggXGsYGlxAER9Ct/V2GeEciamEz1DqVUXMFnu8Ge
	uzzx0cAwyKxvMc9+soQEjriKguvIJww==
X-Gm-Gg: ASbGncvG09QPJNfEoXqzQNRolGKCmosx4fjGbKQCtZ6aSrQGBY5aR0vysH744kmkc4Q
	gsSxUpgpYhvwb+G9wsXTnPDTywn/Yt2H1+SdiILtA7QeeoYKZLV2suoo7rtkAfyIBcFX3BdM=
X-Google-Smtp-Source: AGHT+IEyBMU9ybn2qm7HfrMOOnX+YMpa2T6PQtcMVAmMntgfeOwSvzCTD+vuhdRF939r+AE6IM5h9pGcjtEp4ObJ6OQ=
X-Received: by 2002:a17:90b:2f03:b0:2ee:ed1c:e451 with SMTP id
 98e67ed59e1d1-2f548eb32ffmr19772468a91.15.1736554038253; Fri, 10 Jan 2025
 16:07:18 -0800 (PST)
MIME-Version: 1.0
References: <CAMuHMdUG7A10E2SZR6kHiQBrzp_OVvMSd7jxggaoU3B_6fZ+nQ@mail.gmail.com>
 <d4b59d5e94c4c4a488cd24c6c169e418ad53980d.1735524526.git.xiaopei01@kylinos.cn>
 <CAHCN7x+UzXQz+2zs+qvvWfWCmhsxsZoxP+2WHpfdZGnzwDPNQg@mail.gmail.com>
 <Z3aDU_dhfgEHlL4u@atmark-techno.com> <CAHCN7x+XNes4DbW1OvTjwsCddw5FJesCbPkv88rfRHM6sGBKSg@mail.gmail.com>
 <be2c1add-249c-4d01-8233-5a6dcb297e94@kylinos.cn> <671f844e-58af-47f3-8c31-776bb41413f2@kylinos.cn>
 <CAHCN7xL8Yn4HQwgZAFgxbdVU6VSf6vGb2GEANeGRTaPKAA5uhw@mail.gmail.com> <CAMuHMdVyxrqSdoR5VMfazwQWbXPmgMLxm-5XfxcJagv-kTuEHg@mail.gmail.com>
In-Reply-To: <CAMuHMdVyxrqSdoR5VMfazwQWbXPmgMLxm-5XfxcJagv-kTuEHg@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 10 Jan 2025 18:07:06 -0600
X-Gm-Features: AbW1kvaUiKs_Tmz6pYypCJYJV_7tkNa4AHbXGP_ekX37xi7BuhY9QI6d3IvTunY
Message-ID: <CAHCN7x+_8YSORcvXLgo_i=7WCUUEAdeJWjC5xoUPT-OVCdSftQ@mail.gmail.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: fix build error in fsl_samsung_hdmi_phy_configure_pll_lock_det
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Pei Xiao <xiaopei01@kylinos.cn>, 
	Dominique Martinet <dominique.martinet@atmark-techno.com>, aford@beaconembedded.com, 
	arnd@arndb.de, frieder.schrempf@kontron.de, kishon@kernel.org, 
	l.stach@pengutronix.de, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, m.felsch@pengutronix.de, sandor.yu@nxp.com, 
	u.kleine-koenig@baylibre.com, vkoul@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_160719_699413_3FBEC1C7 
X-CRM114-Status: GOOD (  37.88  )
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

T24gRnJpLCBKYW4gMTAsIDIwMjUgYXQgNDowNOKAr0FNIEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2Vl
cnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+Cj4gSGkgQWRhbSwKPgo+IE9uIFRodSwgSmFuIDks
IDIwMjUgYXQgNDowM+KAr1BNIEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPiB3cm90ZToK
PiA+IE9uIFRodSwgSmFuIDksIDIwMjUgYXQgMjo0NeKAr0FNIFBlaSBYaWFvIDx4aWFvcGVpMDFA
a3lsaW5vcy5jbj4gd3JvdGU6Cj4gPiA+IOWcqCAyMDI1LzEvMyAwOTozNCwgUGVpIFhpYW8g5YaZ
6YGTOgo+ID4gPiA+IOWcqCAyMDI1LzEvMiAyMzowNCwgQWRhbSBGb3JkIOWGmemBkzoKPiA+ID4g
Pj4gT24gVGh1LCBKYW4gMiwgMjAyNSBhdCA2OjE14oCvQU0gRG9taW5pcXVlIE1hcnRpbmV0Cj4g
PiA+ID4+IDxkb21pbmlxdWUubWFydGluZXRAYXRtYXJrLXRlY2huby5jb20+IHdyb3RlOgo+ID4g
PiA+Pj4gQWRhbSBGb3JkIHdyb3RlIG9uIE1vbiwgRGVjIDMwLCAyMDI0IGF0IDA4OjExOjE2UE0g
LTA2MDA6Cj4gPiA+ID4+Pj4+IGluZGV4IDVlYWM3MGExZTg1OC4uM2U0ZDFhNTE2MGVhIDEwMDY0
NAo+ID4gPiA+Pj4+PiAtLS0gYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5n
LWhkbWkuYwo+ID4gPiA+Pj4+PiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1z
YW1zdW5nLWhkbWkuYwo+ID4gPiA+Pj4+PiBAQCAtMzQxLDcgKzM0MSw3IEBAIGZzbF9zYW1zdW5n
X2hkbWlfcGh5X2NvbmZpZ3VyZV9wbGxfbG9ja19kZXQoc3RydWN0IGZzbF9zYW1zdW5nX2hkbWlf
cGh5ICpwaHksCj4gPiA+ID4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4g
PiA+Pj4+PiAgICAgICAgIH0KPiA+ID4gPj4+Pj4KPiA+ID4gPj4+Pj4gLSAgICAgICB3cml0ZWIo
RklFTERfUFJFUChSRUcxMl9DS19ESVZfTUFTSywgZGl2KSwgcGh5LT5yZWdzICsgUEhZX1JFRygx
MikpOwo+ID4gPiA+Pj4+PiArICAgICAgIHdyaXRlYihGSUVMRF9QUkVQKFJFRzEyX0NLX0RJVl9N
QVNLLCBkaXYgPT0gNCA/IGRpdiAtIDEgOiBkaXYpLCBwaHktPnJlZ3MgKyBQSFlfUkVHKDEyKSk7
Cj4gPiA+ID4+Pj4gVGhlIGZvci1sb29wIGFib3ZlIHRoaXMgbGluZSBzdGF0ZXM6ICAgZm9yIChk
aXYgPSAwOyBkaXYgPCA0OyBkaXYrKykKPiA+ID4gPj4+PiBIb3cgY291bGQgdGhpcyBldmVyIHJl
YWNoIDQ/ICBJZiBpdCBkaWQgcmVhY2ggNCwgdGhlIGNhbGN1bGF0aW9uIGZvcgo+ID4gPiA+Pj4+
IGludF9wbGxjbGsgd291bGQgbmVlZCB0byBiZSByZWNhbGN1bGF0ZWQgc2luY2UgaW50X3BsbGNs
ayA9IHBjbGsgLyAoMQo+ID4gPiA+Pj4+IDw8IGRpdik7Cj4gPiA+ID4+PiBCdXQuLi4gZm9yIChk
aXYgPSAwOyBkaXYgPCA0OyBkaXYrKykgZG9lcyByZWFjaCA0LCBpZiB0aGUgYnJlYWsKPiA+ID4g
Pj4+IGNvbmRpdGlvbiBkaWRuJ3QgbWF0Y2gsIHdoaWNoIGlzIHNvbWV0aGluZyB0aGUgY29tcGls
ZXIgY2Fubm90IGVuc3VyZQo+ID4gPiA+Pj4gaGVyZS4KPiA+ID4gPj4+Cj4gPiA+ID4+PiBUaGUg
b2xkIGNvZGUgd291bGQganVzdCBmYWxsIG91dCBvZiBhbnkgb2YgdGhlIHN3aXRjaCBjYXNlcyBh
bmQgZmFsbGJhY2sKPiA+ID4gPj4+IHRvIGRpdiA9IDEgaWYgcGl4Y2xrID4gMjk3MDAwMDAwLCB3
aGljaCBpcyBsaWtlbHkgaW5jb3JyZWN0LCBzbyBpbiB0aGF0Cj4gPiA+ID4+PiBzZW5zZSBqdXN0
IHBhZGRpbmcgdGhpcyB0aHJvdWdoIGAmIDNgIGFuZCBwcmV0ZW5kaW5nIGl0IHdpbGwgbmV2ZXIK
PiA+ID4gPj4+IGhhcHBlbiBpcyBwcm9iYWJseSBhY2NlcHRhYmxlLCBidXQgdGhpcyBvdWdodCB0
byBoYXZlIGEgYmV0dGVyIGNvbW1lbnQKPiA+ID4gPj4+IHRoYW4gd2hhdCBQZWkganVzdCBzZW50
Lgo+ID4gPiA+PiBNYXliZSB3ZSB1c2UgdGhlIE1BWCBmdW5jdGlvbiB0byBzZXQgZGl2ID0gbWF4
KGRpdiwzKTsKPiA+ID4gPiBkbyB5b3UgbWVhbjoKPiA+ID4gPiB3cml0ZWIoRklFTERfUFJFUChS
RUcxMl9DS19ESVZfTUFTSywgbWluKGRpdiwgMykpLCBwaHktPnJlZ3MgKyBQSFlfUkVHKDEyKSk7
Cj4gPiA+Cj4gPiA+IERvZXMgYW55b25lIGhhdmUgYW55IHN1Z2dlc3Rpb25zPwo+ID4KPiA+IFNv
cnJ5IGZvciB0aGUgZGVsYXllZCByZXNwb25zZXMsIEkgd2FzIHRyYXZlbGluZyBmb3IgdGhlIGxh
c3Qgd2Vlay4KPiA+Cj4gPiBXaGF0IGFib3V0IHJlcGxhY2luZyB0aGUgZm9yIGxvb3Agd2l0aCBh
IGRvLXdoaWxlIGxvb3Agd2hlcmUgdGhlCj4gPiBjcml0ZXJpYSBpcyBpbnRfcGxsY2xrIDwgKDUw
ICogTUhaKSAmJiBkaXYgPD0gMy4gIE1pZ2h0IHRoYXQgd29yaz8KPgo+IFN1Y2ggYSBsb29wIG1p
Z2h0IG5ldmVyIGNvbXBsZXRlLCBhbHRob3VnaCBpbiBwcmFjdGljZSB0aGF0IGRvZXMgbm90Cj4g
c2VlbSB0byBiZSBwb3NzaWJsZSAodW50aWwgc29tZW9uZSBtb2RpZmllcyB0aGUgdGFibGVzIGlu
IHRoZSBkcml2ZXIKPiBhbmQgYWRkcyBhIHRvby1sYXJnZSBjZmctPnBpeGNsaz8pLgo+Cj4gUHJv
YmFibHkgdGhlIHNhZmVzdCBzb2x1dGlvbiBpcyB0byBjaGFuZ2UgdGhlIHJldHVybiB0eXBlIG9m
Cj4gZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJlX3BsbF9sb2NrX2RldCgpIGZyb20gdm9p
ZCB0byBpbnQsIGFuZAo+IGxldCBpdCByZXR1cm4gYW4gZXJyb3IgY29kZToKPgo+ICAgICBpZiAo
ZGl2ID09IDQpCj4gICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4KPiAgYW5kIHByb3BhZ2F0
ZSB0aGF0LiBJdHMgc29sZSBjYWxsZXIgYWxyZWFkeSByZXR1cm5zIGFuIGVycm9yIGNvZGUuCgpU
aGF0IHdvcmtzIGZvciBtZS4KClBlaSwKCkRvIHlvdSB3YW50IG1lIHRvIHN1Ym1pdCBhIHBhdGNo
LCBvciBkaWQgeW91IHdhbnQgdG8gZG8gaXQ/ICBJIGRvbid0Cmtub3cgaG93IHRvIHJlcGxpY2F0
ZSB0aGUgY29tcGlsZXIgZXJyb3IsIHNvIEkgY2FuJ3QgdmVyaWZ5IGlmIHRoaXMKd291bGQgZml4
IGl0IG9yIG5vdC4KCmFkYW0KPgo+IEdye29ldGplLGVldGluZ31zLAo+Cj4gICAgICAgICAgICAg
ICAgICAgICAgICAgR2VlcnQKPgo+IC0tCj4gR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3Mg
bG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwo+Cj4gSW4g
cGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNl
bGYgYSBoYWNrZXIuIEJ1dAo+IHdoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0
IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
