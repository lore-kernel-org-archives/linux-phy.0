Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6834FC52CDC
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jul 2024 08:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46bBgiwWsQ1+4QZXi147G7zyKfJ/ISQ16mgfCVsYKWQ=; b=EgOs9kHzv6mztd
	XyHOdt/Tlrw3WaX8l0LFq4caF8E0kntkQfQSb4izBlOtilESCBwAN4NO0fdwkpywZjPYaDN/3+jTM
	vWxWCrh6sofBG2/+0LQiMg8XeFc+YTSO1cl7GEF2DZU0yU+OtrEUWC6haqHacleAoK1/1/dzlezzu
	S+XFzw3pOkmekESJfoKfPD5c72yRSolqs68hZKnpRVBFT4U95HgaWC+ugmlRJXcUW47kzUiUJSg7B
	/6wFH7AJC4sDDw43X2cXLGCq16Zxlk/oevtnSrWKDf2TzV8amoQzcgylLqR30/A5vOz6W89OIunTM
	O5oy1cA4yDnz7jFYTGzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYM79-0000000Abd4-4881;
	Mon, 29 Jul 2024 08:52:19 +0000
Received: from mail-yw1-f173.google.com ([209.85.128.173])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYM6x-0000000AbWc-17Pe
	for linux-phy@lists.infradead.org;
	Mon, 29 Jul 2024 08:52:08 +0000
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-66599ca3470so16081377b3.2
        for <linux-phy@lists.infradead.org>; Mon, 29 Jul 2024 01:52:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722243124; x=1722847924;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qqSAntpxwAaK8Ju6K/LOPA95uiNO3TLROZcY1mWI+vA=;
        b=NlUVgh+N8s14DbCxq1ejrchHR55UOQ1F0GBTqSMHsh9J7AAJWjnBjm4A9WuOxQgLON
         zuJu5sf7e79Wv14sj5a3lHmi2RucbBKFvja6cah8JG5jU3JwW503+dLQnCeVTesEuj0v
         /1M6gwS17QMSNo1ChO5QcWeSXWNB50RFR/DdhN05zvXszuVdMq7N+d10pxI0fxBWrUu9
         phyIlk901uNbBlhZhQIiBsbMWjJ1YiRAqXD5ISlUUotGqkU7MG2zi3MfKT0af5XvZciL
         347RLGGxdAmSz60CaATHur8cqdSHqhF4x89SOVS8yaxb0QVLpykKmB5/u92oPY0CzJf5
         1Y0A==
X-Forwarded-Encrypted: i=1; AJvYcCUtfWcEgB+/8g2RFLf38TQujZ30GjB9FDSRDnqMcVjf++AjJuLBhuCb3EAozjx3eB+EYgsMBgRMKvNtB2dT8EGXJhlUNk/6TzGbWkaWYQ==
X-Gm-Message-State: AOJu0Yz9m90lxlzbcAqd1WsM1u1ssZLYZzUCiH4nrJImxEyEQLW6B/yt
	GXXH7zo8eGogseZKH3Q7nwVDajGv0rS+EK2bcPxxObQJnsvqvIVukI60zOec
X-Google-Smtp-Source: AGHT+IHAx4vJI/2L2PCpetoyQniBYwuog9RxOCssvjb2Bc671hh5mEOYolZjpRHOLSFL9Aq+qqlEbA==
X-Received: by 2002:a0d:c1c5:0:b0:63b:d242:4fa0 with SMTP id 00721157ae682-67a07b756edmr84040227b3.21.1722243123728;
        Mon, 29 Jul 2024 01:52:03 -0700 (PDT)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com. [209.85.128.169])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6756bab4d1csm19687417b3.125.2024.07.29.01.52.02
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jul 2024 01:52:03 -0700 (PDT)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-67b709024bfso16835467b3.3
        for <linux-phy@lists.infradead.org>; Mon, 29 Jul 2024 01:52:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVJFKFrhU4GwbadX7EcRG3wHFrt3gLWsHvSYKU57gZcw4WYGR4DOj+eGOK5cqH6oHyjK+xN82SQGZAuOHDO9RY3sEvBzlwVugn9yC3n0g==
X-Received: by 2002:a81:8101:0:b0:665:54fa:5abf with SMTP id
 00721157ae682-67a05e78c43mr85473567b3.2.1722243122638; Mon, 29 Jul 2024
 01:52:02 -0700 (PDT)
MIME-Version: 1.0
References: <20240718210322.37492-1-ilordash02@gmail.com> <20240718210322.37492-2-ilordash02@gmail.com>
 <20240719-ahead-kiwi-995e52bf3e74@spud> <CAGCz5HkF_WNZBVpY2SWVf071Pi896BvKFk0jnfNAYX5AKx2Zcw@mail.gmail.com>
 <20240723-dinginess-john-608d0b28293b@spud> <CAGCz5H=Gncw+Tr0XaQQhhGWQER5Rs1BcxbkPaJwx9jJ-8j7LGQ@mail.gmail.com>
 <20240723-municipal-snowy-136b08b6db90@spud> <CAGCz5HnJKjNj7A0YD2fw20m-NrEs3MoCLwox86mC11Kudq8xbg@mail.gmail.com>
In-Reply-To: <CAGCz5HnJKjNj7A0YD2fw20m-NrEs3MoCLwox86mC11Kudq8xbg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Jul 2024 10:51:50 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUf=McxMLqb1hgu_-4QkSFJkdWrdtbwiwn9yJoMSi3YWA@mail.gmail.com>
Message-ID: <CAMuHMdUf=McxMLqb1hgu_-4QkSFJkdWrdtbwiwn9yJoMSi3YWA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document Microchip ATA6561
To: Ilya Orazov <ilordash02@gmail.com>
Cc: Conor Dooley <conor@kernel.org>, mkl@pengutronix.de, mailhol.vincent@wanadoo.fr, 
	vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	a-govindraju@ti.com, linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_015207_339256_4FC888A6 
X-CRM114-Status: GOOD (  53.17  )
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

SGkgSWx5YSwKCk9uIFN1biwgSnVsIDI4LCAyMDI0IGF0IDEwOjUy4oCvQU0gSWx5YSBPcmF6b3Yg
PGlsb3JkYXNoMDJAZ21haWwuY29tPiB3cm90ZToKPiBPbiBUdWUsIDIzIEp1bCAyMDI0IGF0IDIz
OjE0LCBDb25vciBEb29sZXkgPGNvbm9yQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gT24gVHVlLCBK
dWwgMjMsIDIwMjQgYXQgMTA6NTU6MTdQTSArMDMwMCwgSWx5YSBPcmF6b3Ygd3JvdGU6Cj4gPiA+
IE9uIFR1ZSwgMjMgSnVsIDIwMjQgYXQgMjE6NTAsIENvbm9yIERvb2xleSA8Y29ub3JAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4gPiA+ID4gT24gVHVlLCBKdWwgMjMsIDIwMjQgYXQgMDg6MjA6MDRQTSAr
MDMwMCwgSWxvckRhc2ggd3JvdGU6Cj4gPiA+ID4gPiBPbiBGcmksIDE5IEp1bCAyMDI0IGF0IDE4
OjA3LCBDb25vciBEb29sZXkgPGNvbm9yQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPiA+ID4gPgo+
ID4gPiA+ID4gPiBPbiBGcmksIEp1bCAxOSwgMjAyNCBhdCAxMjowMzoyMUFNICswMzAwLCBJbHlh
IE9yYXpvdiB3cm90ZToKPiA+ID4gPiA+ID4gPiBNaWNyb2NoaXAgQVRBNjU2MSBpcyBIaWdoLVNw
ZWVkIENBTiBUcmFuc2NlaXZlciB3aXRoIFN0YW5kYnkgTW9kZS4KPiA+ID4gPiA+ID4gPiBJdCBp
cyBwaW4tY29tcGF0aWJsZSB3aXRoIFRJIFRDQU4xMDQyLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4g
PiA+ID4gU2lnbmVkLW9mZi1ieTogSWx5YSBPcmF6b3YgPGlsb3JkYXNoMDJAZ21haWwuY29tPgo+
ID4gPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3RpLHRjYW4xMDR4LWNhbi55YW1sIHwgMSArCj4gPiA+ID4gPiA+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvdGksdGNh
bjEwNHgtY2FuLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Rp
LHRjYW4xMDR4LWNhbi55YW1sCj4gPiA+ID4gPiA+ID4gaW5kZXggNzlkYWQzZTg5YWE2Li4wM2Rl
MzYxODQ5ZDIgMTAwNjQ0Cj4gPiA+ID4gPiA+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BoeS90aSx0Y2FuMTA0eC1jYW4ueWFtbAo+ID4gPiA+ID4gPiA+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvdGksdGNhbjEwNHgtY2FuLnlh
bWwKPiA+ID4gPiA+ID4gPiBAQCAtMTgsNiArMTgsNyBAQCBwcm9wZXJ0aWVzOgo+ID4gPiA+ID4g
PiA+ICAgICAgICAtIG54cCx0anIxNDQzCj4gPiA+ID4gPiA+ID4gICAgICAgIC0gdGksdGNhbjEw
NDIKPiA+ID4gPiA+ID4gPiAgICAgICAgLSB0aSx0Y2FuMTA0Mwo+ID4gPiA+ID4gPiA+ICsgICAg
ICAtIG1pY3JvY2hpcCxhdGE2NTYxCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEdpdmVuIHRoYXQg
eW91ciBkcml2ZXIgcGF0Y2ggaGFzCj4gPiA+ID4gPiA+IHwgZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L3BoeS1jYW4tdHJhbnNjZWl2ZXIuYyBiL2RyaXZlcnMvcGh5L3BoeS1jYW4tdHJhbnNjZWl2
ZXIuYwo+ID4gPiA+ID4gPiB8IGluZGV4IGVlNGNlNDI0OTY5OC4uZGJjZDk5MjEzYmExIDEwMDY0
NAo+ID4gPiA+ID4gPiB8IC0tLSBhL2RyaXZlcnMvcGh5L3BoeS1jYW4tdHJhbnNjZWl2ZXIuYwo+
ID4gPiA+ID4gPiB8ICsrKyBiL2RyaXZlcnMvcGh5L3BoeS1jYW4tdHJhbnNjZWl2ZXIuYwo+ID4g
PiA+ID4gPiB8IEBAIC04OSw2ICs4OSwxMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rldmlj
ZV9pZCBjYW5fdHJhbnNjZWl2ZXJfcGh5X2lkc1tdID0gewo+ID4gPiA+ID4gPiB8ICAgICAgICAg
ICAgICAgICAuY29tcGF0aWJsZSA9ICJueHAsdGpyMTQ0MyIsCj4gPiA+ID4gPiA+IHwgICAgICAg
ICAgICAgICAgIC5kYXRhID0gJnRjYW4xMDQzX2RydmRhdGEKPiA+ID4gPiA+ID4gfCAgICAgICAg
IH0sCj4gPiA+ID4gPiA+IHwgKyAgICAgICB7Cj4gPiA+ID4gPiA+IHwgKyAgICAgICAgICAgICAg
IC5jb21wYXRpYmxlID0gIm1pY3JvY2hpcCxhdGE2NTYxIiwKPiA+ID4gPiA+ID4gfCArICAgICAg
ICAgICAgICAgLmRhdGEgPSAmdGNhbjEwNDJfZHJ2ZGF0YQo+ID4gPiA+ID4gPiB8ICsgICAgICAg
fSwKPiA+ID4gPiA+ID4gfCAgICAgICAgIHsgfQo+ID4gPiA+ID4gPiB8ICB9Owo+ID4gPiA+ID4g
Pgo+ID4gPiA+ID4gPiB0aGUgZHJpdmVyIHBhdGNoIGlzIGFjdHVhbGx5IG5vdCBuZWVkZWQgYXQg
YWxsLCBhbmQgeW91IGp1c3QgbmVlZCB0bwo+ID4gPiA+ID4gPiBhbGxvdyB0aSx0Y2FuMTA0MiBh
cyBmYWxsYmFjayBjb21wYXRpYmxlIGluIHRoZSBiaW5kaW5nLCBzbyBzb21ldGhpbmcKPiA+ID4g
PiA+ID4gbGlrZToKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gICBjb21wYXRpYmxlOgo+ID4gPiA+
ID4gPiAgICAgb25lT2Y6Cj4gPiA+ID4gPiA+ICAgICAgIC0gZW51bToKPiA+ID4gPiA+ID4gICAg
ICAgICAgIC0gbnhwLHRqcjE0NDMKPiA+ID4gPiA+ID4gICAgICAgICAgIC0gdGksdGNhbjEwNDIK
PiA+ID4gPiA+ID4gICAgICAgICAgIC0gdGksdGNhbjEwNDMKPiA+ID4gPiA+ID4gICAgICAgLSBp
dGVtczoKPiA+ID4gPiA+ID4gICAgICAgICAgIC0gY29uc3Q6IG1pY3JvY2hpcCxhdGE2NTYxCj4g
PiA+ID4gPiA+ICAgICAgICAgICAtIGNvbnN0OiB0aSx0Y2FuMTA0Mgo+ID4gPiA+ID4gPgo+ID4g
PiA+ID4gPiAgICAnI3BoeS1jZWxscyc6Cj4gPiA+ID4gPiA+ICAgICAgY29uc3Q6IDAKPiA+ID4g
PiA+Cj4gPiA+ID4gPiBJIHRlc3RlZCB0aGUgYnVpbGQgd2l0aCBmYWxsYmFjayBjb21wYXRpYmxl
Ogo+ID4gPiA+ID4KPiA+ID4gPiA+IGNvbXBhdGlibGU6Cj4gPiA+ID4gPiAgIG9uZU9mOgo+ID4g
PiA+ID4gICAgIC0gaXRlbXM6Cj4gPiA+ID4gPiAgICAgICAtIGVudW06Cj4gPiA+ID4gPiAgICAg
ICAgIC0gbWljcm9jaGlwLGF0YTY1NjEKPiA+ID4gPiA+ICAgICAgIC0gY29uc3Q6IHRpLHRjYW4x
MDQyCj4gPiA+ID4gPiAgICAgLSBpdGVtczoKPiA+ID4gPiA+ICAgICAgIC0gZW51bToKPiA+ID4g
PiA+ICAgICAgICAgLSBueHAsdGpyMTQ0Mwo+ID4gPiA+ID4gICAgICAgLSBjb25zdDogdGksdGNh
bjEwNDMKPiA+ID4gPiA+Cj4gPiA+ID4gPiBhbmQgbW9kaWZpZWQgY29tcGF0aWJsZSBwcm9wZXJ0
eSBpbiBEVFM6Cj4gPiA+ID4gPgo+ID4gPiA+ID4gY29tcGF0aWJsZSA9ICJtaWNyb2NoaXAsYXRh
NjU2MSIsICJ0aSx0Y2FuMTA0MiI7Cj4gPiA+ID4gPgo+ID4gPiA+ID4gQnVpbGQgc3VjY2VlZGVk
LCBwaHktY2FuLXRyYW5zY2VpdmVyIGRyaXZlciB3YXMgdXNlZC4gU28gSSB3b3VsZCBsaWtlCj4g
PiA+ID4gPiB0byBhZGQgYSBmYWxsYmFjayBjb21wYXRpYmxlIGZvciBib3RoICJtaWNyb2NoaXAs
YXRhNjU2MSIgYW5kCj4gPiA+ID4gPiAibnhwLHRqcjE0NDMiIGluIHRoaXMgYmluZGluZyBhbmQg
bW9kaWZ5IG90aGVyIERUUyBmaWxlcyB3aXRoCj4gPiA+ID4gPiBjb21wYXRpYmxlID0gIm54cCx0
anIxNDQzIi4gV2hhdCBkbyB5b3UgdGhpbms/Cj4gPiA+ID4KPiA+ID4gPiBUaGlzIGlzIHdyb25n
IG9uIHR3byBjb3VudHMuIEZpcnN0bHksIHdlcmUgd2hhdCB5b3UgaGF2ZSBjb3JyZWN0LCB5b3UK
PiA+ID4gPiBzaG91bGQKPiA+ID4gPiBzcXVhc2ggdGhlIHR3bzoKPiA+ID4gPiAgICAgIC0gaXRl
bXM6Cj4gPiA+ID4gICAgICAgICAgLSBlbnVtOgo+ID4gPiA+ICAgICAgICAgICAgLSBueHAsdGpy
MTQ0Mwo+ID4gPiA+ICAgICAgICAgICAgLSBtaWNyb2NoaXAsYXRhNjU2MQo+ID4gPiA+ICAgICAg
ICAgIC0gY29uc3Q6IHRpLHRjYW4xMDQyCj4gPiA+ID4KPiA+ID4gPiBIb3dldmVyLCB0aGF0IGRv
ZXMgbm90IGFsbG93IHRoZSBUSSBjb21wYXRpYmxlcyBpbiBpc29sYXRpb24sIHNvIHlvdQo+ID4g
PiA+IHN0aWxsIG5lZWQgdG8gYWxsb3cgdGhhdCBmb3IgdGhlIGFjdHVhbCBUSSBkZXZpY2VzLCBz
byB5b3UgbmVlZDoKPiA+ID4gPgo+ID4gPiA+ICAgIG9uZU9mOgo+ID4gPiA+ICAgICAgLSBpdGVt
czoKPiA+ID4gPiAgICAgICAgICAtIGVudW06Cj4gPiA+ID4gICAgICAgICAgICAtIG1pY3JvY2hp
cCxhdGE2NTYxCj4gPiA+ID4gICAgICAgICAgICAtIG54cCx0anIxNDQzCj4gPiA+ID4gICAgICAg
ICAgICAtIHRpLHRjYW4xMDQzCj4gPiA+ID4gICAgICAgICAgLSBjb25zdDogdGksdGNhbjEwNDIK
PiA+ID4gPiAgICAgIC0gY29uc3Q6IHRpLHRjYW4xMDQyCj4gPiA+ID4KPiA+ID4gPiBUaGVyZSdz
IHByb2JhYmx5IHNvbWUgZGV2aWNldHJlZXMgdGhhdCB3b3VsZCBuZWVkIHRvIGJlIGZpeGVkIHVw
LiBJJ20KPiA+ID4gPiBqdXN0IG5vdCBjb252aW5jZWQgdGhhdCB0aGlzIGlzIHdvcnRoIHJldHJv
Zml0dGluZyBob3dldmVyLgo+ID4gPgo+ID4gPiBCdXQgbnhwLHRqcjE0NDMgaXMgcGluIGNvbXBh
dGlibGUgd2l0aCB0aSx0Y2FuMTA0Mywgc28gaXQgc2hvdWxkCj4gPiA+IGZhbGxiYWNrIG9ubHkg
dG8gdGksdGNhbjEwNDMgYW5kIG5vdCB0aSx0Y2FuMTA0Mi4gVGhhdCdzIHdoeSBJIGRlY2lkZWQK
PiA+ID4gdG8gc3BsaXQgdGhlbSBpbnRvIGRpZmZlcmVudCBlbnVtcy4KPiA+Cj4gPiBBaCwgc29y
cnkgSSBtaXNzZWQgdGhhdC4gSSBtaXNyZWFkIHRoZSBtYXRjaCBkYXRhLiBUaGVuIHlvdSBuZWVk
Ogo+ID4gICBjb21wYXRpYmxlOgo+ID4gICAgIG9uZU9mOgo+ID4gICAgICAgLSBpdGVtczoKPiA+
ICAgICAgICAgLSBlbnVtOgo+ID4gICAgICAgICAgIC0gbWljcm9jaGlwLGF0YTY1NjEKPiA+ICAg
ICAgICAgLSBjb25zdDogdGksdGNhbjEwNDIKPiA+ICAgICAgIC0gaXRlbXM6Cj4gPiAgICAgICAg
IC0gZW51bToKPiA+ICAgICAgICAgICAtIG54cCx0anIxNDQzCj4gPiAgICAgICAgIC0gY29uc3Q6
IHRpLHRjYW4xMDQzCj4gPiAgICAgICAtIGVudW06Cj4gPiAgICAgICAgICAgY29uc3Q6IHRpLHRj
YW4xMDQyCj4gPiAgICAgICAgICAgY29uc3Q6IHRpLHRjYW4xMDQzCj4gPgo+ID4gYmVjYXVzZSB0
aGUgVEkgZGV2aWNlcyBleGlzdCBhbmQgd2Ugc3RpbGwgbmVlZCB0byBiZSBhYmxlIHRvCj4gPiBk
aWZmZXJlbnRpYXRlIHRoZSBUSSBhbmQgTlhQIGRldmljZXMuIElmIHlvdSBoYXZlCj4gPiAgIGNv
bXBhdGlibGUgPSAibnhwLHRqcjE0NDMiLCAidGksdGNhbjEwNDIiOwo+ID4gdGhhdCBtZWFucyB0
aGUgZGV2aWNlIGlzIGFuIG54cCx0anIxNDQzLiBJZiB5b3UgaGF2ZQo+ID4gICBjb21wYXRpYmxl
ID0gInRpLHRjYW4xMDQyIjsKPiA+IHRoZW4gdGhhdCdzIGEgdGNhbjEwNDIuCj4gPgo+ID4gPiBJ
IG1hZGUgbXkgcGF0Y2ggYWNjb3JkaW5nIHRvIGEgc2ltaWxhciBvbmUgdGhhdCBhZGRzIHN1cHBv
cnQgZm9yCj4gPiA+IG54cCx0anIxNDQzLiBZb3UgY2FuIGZpbmQgaXQncyBjb252ZXJzYXRpb24g
b24KPiA+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzZlZTVlMmNlMDAwMTliZDNmNzdk
NmE3MDJiMzhiYWIxYTQ1ZjNiYjAuMTY3NDAzNzgzMC5naXQuZ2VlcnQrcmVuZXNhc0BnbGlkZXIu
YmUvdC8jdS4KPiA+Cj4gPiA+IEkgdGhvdWdodCB3ZSB3YW50IHRvIGhvbGQgYWxsIFBIWSBjaGlw
IG5hbWVzIGluIG9uZSBjb21wYXRpYmxlIGVudW0KPiA+ID4gYW5kIGVhY2ggaW4gaXRzIG93biBv
Zl9kZXZpY2VfaWQgc3RydWN0IGluIGRyaXZlciBhbmQgZXh0ZW5kIHRoZW0KPiA+ID4gd2hlcmUg
YXBwcm9wcmlhdGUuCj4gPgo+ID4gTmFoLCBmYWxsYmFja3MgYXJlIHByZWZlcnJlZCB3aGVuIHRo
ZSBwcm9ncmFtbWluZyBtb2RlbCBpcyBlaXRoZXIKPiA+IGlkZW50aWNhbCBvciBhICJjb21wYXRp
YmxlIHN1cGVyc2V0IiBvZiBhbiBleGlzdGluZyBkZXZpY2UuIE5ldwo+ID4gb2ZfZGV2aWNlX2lk
IHN0cnVjdHMgc2hvdWxkIG9ubHkgYmUgdXNlZCB3aGVyZSB3ZSBuZWVkIHRvIGFjY291bnQgZm9y
Cj4gPiBkaWZmZXJlbmNlcyBpbiB0aGUgcHJvZ3JhbW1pbmcgbW9kZWwuCj4KPiBIb3dldmVyLCBJ
IGFtIGN1cmlvdXMgYXMgdG8gd2h5IHRoZSBOWFAgQ0FOIFBIWSB0cmFuc2NlaXZlciB3YXMgbm90
Cj4gaW5jbHVkZWQgYXMgZmFsbGJhY2sgY29tcGF0aWJsZS4gR2VlcnQsIGNvdWxkIHlvdSBwbGVh
c2Ugc2hhcmUgeW91cgo+IHRob3VnaHRzIG9uIHRoaXMgbWF0dGVyPwoKVGhlIFRKUjE0NDMgbG9v
a2VkIHN1ZmZpY2llbnRseSBzaW1pbGFyIHRvIHRoZSBUQ0FOMTA0MyB0byB1c2UgdGhlCnNhbWUg
ZHJpdmVyIGNvbmZpZ3VyYXRpb24gKHdoaWNoIGlzIGxpbWl0ZWQgdG8gaGF2aW5nIHN0YW5kYnkg
YW5kL29yCmVuYWJsZSBzaWduYWxzIG9yIG5vdCkuICBIb3dldmVyLCBJJ20gbm90IHN1cmUgaXQg
YmVoYXZlcyBleGFjdGx5CnRoZSBzYW1lLCBlLmcuIGluIGNhc2Ugb2YgcmVwb3J0aW5nIGFuIGVy
cm9yIGNvbmRpdGlvbiAod2hpY2ggaXMgbm90CnlldCBzdXBwb3J0ZWQgYnkgdGhlIGRyaXZlciku
IFRoZSBwYXJ0IG51bWJlcnMgYXJlIGFsc28gZGlmZmVyZW50LApzbyB0aGlzIGlzIG5vdCBhIHNp
bXBsZSBjYXNlIG9mIFNONzRIQ3h4IHZzLiBDRDc0SEN4eC4KClN1bW1hcnk6IEkgZG9uJ3Qga25v
dyBpZiB0aGV5IGFyZSBpZGVudGljYWwsIG9yIGlmIFRKUjE0NDMgaXMgYQpjb21wYXRpYmxlIHN1
cGVyc2V0IG9mIFRDQU4xMDQzLCBvciB2aWNlIHZlcnNhLiBIZW5jZSBJIHdlbnQgZm9yIHRoZQpz
YWZlc3Qgd2F5Li4uLgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAg
ICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXgg
YmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNh
dGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQK
d2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBv
ciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0t
IExpbnVzIFRvcnZhbGRzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
