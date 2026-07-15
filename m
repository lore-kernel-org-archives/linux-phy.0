Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99958C44508
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 07:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IyMVmLxWXdJFOi61PebD5CvReQpm9FMK2RYHChJCUkM=; b=qkHiexVyePxari
	W08EfOBuKNof/+jLHToB/HP4SdSRrABJx9xYGlQ/wLrsczAV+VpnjxItgrNao+Ksmc+//SThavfeW
	xt2NPnz+oY5fW87gQnuLFYnZ7PyulHgUliHZTQGkJmFmY6d48N1S/mSi6dX9xLkJvM7T+RexJ48mN
	2ICfoowexa6a0fCHuoKhNs/ywTNJxiIg+k9PuSj1kpT602LFfJhOFb+2rI67dfAjjyyBTMPn3PWFK
	U89hZqST4lo4VDGT6Oh4hGzSciHm2SLqhzUsWyERMECTvvNaxDcc/wQFJvlNmDQt0v95xJZJoxW3J
	hD13bvjNv+9fvT10swoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjuVO-0000000E5S5-46hI;
	Wed, 15 Jul 2026 07:58:11 +0000
Received: from mail-ej2-x03.google.com ([2a00:1450:4864:34::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjuVE-0000000E5OE-3iBg
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 07:58:03 +0000
Received: by mail-ej2-x03.google.com with SMTP id a640c23a62f3a-c160e831693so73661166b.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Jul 2026 00:58:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784102279; cv=none;
        d=google.com; s=arc-20260327;
        b=UZbbOtVTEY0RO8FthwMcD+l9OtHEGy8VY0l5ayUFthg091Jl6ctW86FhRWVrDmMohq
         97V5UFBuFFYjJs7JEO+9kxFHrD/U5MnaXt3emAATN63uGVKbcXkJ+YzTEWA0fjQ7Z0JV
         NYFhJuXefa/Qv4zxad9+TtxDC5zjCCKMTqb2ytqkSd+0OR8w3jxFX8P+jEVlTBezr5mL
         DWdNx8XBCK4LPPMnNT7XEiLsGlkfUAWo/U7EG30Kotq7vqXs5PEocIAyYu3Jf91mr1ED
         eNRhRg3FceRhv/bl5vspzv8SUQHeq5mR7rzB6mgD1ccHwT+F4javvI2pxleOmabqRgGB
         2dnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wJj9Wc7Rwy3gTAMQK9yQ4wfZtHEgVyepO/YIt/wDURE=;
        fh=s0dXexIr9Whtu9XRLMB/eoObgX+Kbia2JuHB6jivwrY=;
        b=U1LJMzacJYXvnQFvNKasoBG6P4uglVbJlGToPAAc8yA0+IStcCeFszwar/6InUZZmX
         uiQAL0s1PT67WInVpv3M9ZbbYZJQcPKWpJAhPO65B/qVsn7tHu5eaMM3w/daRtvvJUg/
         s/5EXbp43devJVryn5h8PW6UfumfOBLCPwk/67ud6Yl9sO8WQVxaU7EG1YLXrUs7PeF6
         SlWvMRMt5yqJPh3IXaR88Ahop+aAvAWu7RdXcvyWMlK9Hr5WCwk3R1+7iJ7IOxnyxnVT
         sF/a/SLmq8xPzqkCsw63p0REDkk08cEHyDz8LRZAeDzbPcVAo47lKfmoL3i6e72bIZ1x
         IVmA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784102279; x=1784707079; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=wJj9Wc7Rwy3gTAMQK9yQ4wfZtHEgVyepO/YIt/wDURE=;
        b=O2KajnGjPHGdDD2VkQBQsvc5hfm9Sr9W4JCKRpfx2w8aHxDEw6tzJvjFykv2uq2rLE
         qPFMssSk0A9nA32+HpopsUTmSdYN/iISWirwMuot23o9EWlhRqNKvC2uhSW1I+0UvRM1
         CydF1DnQM/l6JR1kXNTHSreAT6lo+hZdUjol/QZgHoWIBeedpufb6YSsP/B2Qkj0zTVO
         cseLzt2ELF3yn7KamkdW4AlUE14lu872AYCxdoeTv0e2/aR8Z7snpMZuYR0GWZQ7cEmu
         YjliYzSbs5ZtLCkWPiSPMj5vxVIe/OtJ1DFVOYbWXfiXNV19pVaSTLxhjK5KUq0QrSni
         pBwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784102279; x=1784707079;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wJj9Wc7Rwy3gTAMQK9yQ4wfZtHEgVyepO/YIt/wDURE=;
        b=a7fL2JXIlXZxh59B3Nr3wuY8ONuCy6Jx0krH43rK8RBNvPr7y+bJF9d6qgkfu1XYUP
         oHWnlNUQmTmvS6vHFxjvZos1SPTmI0LnURVO684n/OIMNzpG9tYdFQr5xzkgjWSxiIG6
         nLbrOmS3YGzr6ob7VVrVIDInbnH+VXXPNeHpShwhdlOW+fbmZTPBLW+wxc2DqrO/fO23
         aqfAYX2Gd19tGCtXip/4XRyXut+WcSM2bDRoz3N10L0PlfPIkQOssKkxW+pE0MtC/yNj
         EmYdyHlUJH5SgijwzA/DUIkJxXXpeUqfTq0rjR1/fx5vZI4yyfKfUWZfNMbaU5AuVUw3
         k8Fg==
X-Forwarded-Encrypted: i=1; AHgh+RpywEIyXCaiMBiNmeH9SzqYaBPJ566lxnHmjCjZefFP30b2urFOaMv0QaMbCeWAd4i16k3M9eRf0QU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyPttF51Xct7CJywuXJ46n3nK3sl/gphepFGAgUHmPUz15I2LeF
	SfRF/7H2eAnlLcR2ssLZ5MR2WsaCU2+bDv/1BGAQ5y0Id27fNpKJs8EFhNumkty1CUFe9whoqCs
	3OxptuWvAUnFohZKCSpQ2hKntjhhcQkc=
X-Gm-Gg: AfdE7cldGIqhew8r/Bw5/934QJU5Y9oJq9nJNvBLmfnQMETW1+CkV28girpedijL5b+
	LDgNnHJ5xhzghlCz/+vF/weHVtJRoUu0/uwfoRS8X4iPt6UlXoniBvgldnffBdxEssDoVUvgkR7
	T4dCmD4SM2ugWUOuKfDhgMo5VcsRPM8zvg+yT7FX9Iqxkq0e9IcLV63mhJGhgg5UUGZuxYpSRNx
	6D1tAzm48B+iCI8ATtCjNOiYRVhQ2U6CGf3SA2CMJOAlxFmz3YKEUJ0kQFt4LdAB2OOEQsPqudF
	Vo6hZV3i+BgKTvIdN3U88A==
X-Received: by 2002:a17:906:9fce:b0:c16:11b2:ae9b with SMTP id
 a640c23a62f3a-c161e98c3ecmr826018266b.17.1784102278649; Wed, 15 Jul 2026
 00:57:58 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-8-coiaprant@gmail.com>
 <4823c1d9-51d9-45fa-a96c-f2caab1cb29e@bootlin.com>
In-Reply-To: <4823c1d9-51d9-45fa-a96c-f2caab1cb29e@bootlin.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 15 Jul 2026 15:57:47 +0800
X-Gm-Features: AUfX_mz1XbF_hj8SltUaP6VQCiYz735WcPjxUivwpVyatqEOGiO47eZKOAvcnaA
Message-ID: <CALj3r0h4cFd-tp9-UVxihL9-a1W7_4nvnKoXW_cP5WECKc66Hw@mail.gmail.com>
Subject: Re: [RFC PATCH 07/10] net: pcs: xpcs: add Rockchip RK3568 platform
 glue driver
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Cc: kuba@kernel.org, davem@davemloft.net, edumazet@google.com, 
	pabeni@redhat.com, andrew+netdev@lunn.ch, robh@kernel.org, krzk+dt@kernel.org, 
	heiko@sntech.de, netdev@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_005800_952205_35465CC6 
X-CRM114-Status: GOOD (  25.43  )
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

TWF4aW1lIENoZXZhbGxpZXIgPG1heGltZS5jaGV2YWxsaWVyQGJvb3RsaW4uY29tPiDkuo4yMDI2
5bm0N+aciDE15pel5ZGo5LiJIDE1OjQz5YaZ6YGT77yaCj4KPiBIaSwKPgo+IE9uIDcvMTQvMjYg
MjE6MDgsIENvaWEgUHJhbnQgd3JvdGU6Cj4gPiBUaGUgUkszNTY4IFNvQyBpbnRlZ3JhdGVzIGEg
U3lub3BzeXMgRGVzaWduV2FyZSBYUENTIHRoYXQgaXMgYWNjZXNzZWQKPiA+IHZpYSBBUEIzIG1l
bW9yeS1tYXBwZWQgcmVnaXN0ZXJzLgo+ID4gVGhpcyBkcml2ZXIgcHJvdmlkZXMgdGhlIGdsdWUg
bG9naWMgdG8gbWFrZSB0aGUgWFBDUyBhY2Nlc3NpYmxlIHRvCj4gPiB0aGUgZ2VuZXJpYyBwY3Mt
eHBjcyBjb3JlLgo+ID4KPiA+IFRoZSBYUENTIGJsb2NrIGNvbnRhaW5zIGZvdXIgTUlJIHBvcnRz
ICgwLi4zKSwgZWFjaCBvZiB3aGljaCBjYW4gYmUKPiA+IHJvdXRlZCB0byBHTUFDMCBvciBHTUFD
MSB2aWEgdGhlIHBjcy1oYW5kbGUgcHJvcGVydHkgaW4gdGhlIE1BQyBub2RlLgo+ID4gVGhlIGhh
cmR3YXJlIG1hcHMgdGhlc2UgcG9ydHMgdG8gZGlmZmVyZW50IE1NRHM6Cj4gPiAgIC0gcG9ydCAw
OiBNTUQgNyAoUk9DS0NISVBfTU1EX01JSSkKPiA+ICAgLSBwb3J0IDE6IE1NRCAyIChST0NLQ0hJ
UF9NTURfTUlJMSkKPiA+ICAgLSBwb3J0IDI6IE1NRCAzIChST0NLQ0hJUF9NTURfTUlJMikKPiA+
ICAgLSBwb3J0IDM6IE1NRCA0IChST0NLQ0hJUF9NTURfTUlJMykKPiA+Cj4gPiBUaGlzIGRyaXZl
ciBjcmVhdGVzIGEgdmlydHVhbCBNRElPIGJ1cyB0aGF0IHRyYW5zbGF0ZXMgTURJTyBvcGVyYXRp
b25zCj4gPiB0byBBUEIzIHJlZ2lzdGVyIGFjY2Vzc2VzLCB3aXRoIHByb3BlciBhZGRyZXNzIHJl
bWFwcGluZyBmb3IgZWFjaCBwb3J0Lgo+ID4gVGhlIGdlbmVyaWMgeHBjcyBkcml2ZXIgdGhlbiBj
cmVhdGVzIGEgcGh5bGlua19wY3MgaW5zdGFuY2Ugb24gdG9wIG9mCj4gPiB0aGlzIGJ1cywgYWxs
b3dpbmcgdGhlIE1BQyB0byB1c2UgdGhlIFBDUyB2aWEgdGhlIHN0YW5kYXJkIHBoeWxpbmsgQVBJ
Lgo+ID4KPiA+IExpbms6IGh0dHBzOi8vZGwucmFkeGEuY29tL3JvY2szL2RvY3MvaHcvZGF0YXNo
ZWV0L1JvY2tjaGlwJTIwUkszNTY4JTIwVFJNJTIwUGFydDIlMjBWMS4xLTIwMjEwMzAxLnBkZiAo
UGFnZSAyMDc4KQo+ID4gU2lnbmVkLW9mZi1ieTogQ29pYSBQcmFudCA8Y29pYXByYW50QGdtYWls
LmNvbT4KPgo+IFsuLi5dCj4KPiA+ICtzdGF0aWMgaW50IHhwY3NfcmtfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3QgZHdfeHBjc19yayAq
cHhwY3M7Cj4gPiArICAgICBpbnQgcmV0Owo+ID4gKwo+ID4gKyAgICAgcHhwY3MgPSB4cGNzX3Jr
X2NyZWF0ZV9kYXRhKHBkZXYpOwo+ID4gKyAgICAgaWYgKElTX0VSUihweHBjcykpCj4gPiArICAg
ICAgICAgICAgIHJldHVybiBQVFJfRVJSKHB4cGNzKTsKPiA+ICsKPiA+ICsgICAgIC8qCj4gPiAr
ICAgICAgKiBUaGUgWFBDUyBtYXkgYmUgYXR0YWNoZWQgdG8gYSBwb3dlciBkb21haW4gKGUuZy4g
UERfUElQRSkuIFRoZSBkb21haW4KPiA+ICsgICAgICAqIG11c3QgYmUgcG93ZXJlZCBvbiBiZWZv
cmUgYW55IHJlZ2lzdGVyIGFjY2Vzcywgb3RoZXJ3aXNlIHRoZSBTb0Mgd2lsbAo+ID4gKyAgICAg
ICogdHJpZ2dlciBhIHN5bmNocm9ub3VzIGV4dGVybmFsIGFib3J0IChTRXJyb3IpLgo+ID4gKyAg
ICAgICoKPiA+ICsgICAgICAqIEFjY2Vzc2luZyB0aGUgWFBDUyByZWdpc3RlcnMgYWxzbyByZXF1
aXJlcyBhIFRYIGNsb2NrIGZyb20gdGhlIFNlckRlcywKPiA+ICsgICAgICAqIHdoaWNoIGlzIG5l
ZWRlZCBmb3IgdGhlIHNvZnQgcmVzZXQuCj4gPiArICAgICAgKi8KPiA+ICsgICAgIHJldCA9IHhw
Y3Nfcmtfc2VyZGVzX3BoeV9pbml0KHB4cGNzKTsKPiA+ICsgICAgIGlmIChyZXQpCj4gPiArICAg
ICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiArCj4gPiArICAgICByZXQgPSB4cGNzX3JrX3NlcmRl
c19waHlfcG93ZXJvbihweHBjcyk7Cj4gPiArICAgICBpZiAocmV0KQo+ID4gKyAgICAgICAgICAg
ICByZXR1cm4gcmV0Owo+ID4KPiBUaGVyZSBhcmUgMiB1bnVzdWFsIHRoaW5ncyBoZXJlLgo+Cj4g
VGhlIGZpcnN0IG9uZSBpcyB0aGF0IHlvdSBtYW5hZ2UgdGhlIHNlcmRlcyBwaHkgZnJvbSB0aGUg
UENTIGRyaXZlciwgdXN1YWxseSBpdCdzCj4gdGhlIE1BQyBkcml2ZXIgZG9pbmcgc28uIEluIHN0
bW1hYywgd2UgaGF2ZSB0aGUgc2VyZGVzX3Bvd2Vyb24gYW5kIHNlcmRlc19wb3dlcm9mZgo+IGNh
bGxiYWNrcyB0byBob29rIGludG8gZm9yIFNlcmRlcyBjb250cm9sLgo+Cj4gVGhlIHNlY29uZCB0
aGluZyBpcyB0aGF0IHlvdSdyZSBzZXR0aW5nIHRoZSBzZXJkZXMgT04gYXQgcHJvYmUgdGltZSwg
dGhlcmUncyBubwo+IGR5bmFtaWMgY29udHJvbCBvZiBpdC4gVXN1YWxseSB3ZSB0cnkgdG8gb25s
eSBwb3dlciB0aGlzIG9uIGF0IGFkbWluLXVwIHRpbWUuCj4KPiBDYW4geW91IGV4cGxhaW4gdGhl
IHJhdGlvbmFsZSBiZWhpbmQgY29udHJvbGxpbmcgdGhlIHNlcmRlcyBoZXJlIGRpcmVjdGx5LCBh
bmQgbm90Cj4gZnJvbSB0aGUgTUFDIGRyaXZlciA/IEkgZG9uJ3Qgc2VlIGFueSBtZW50aW9uIG9m
IHRoYXQgaW4gdGhlIGNvbW1pdCBsb2csIGFuZCBJJ20gbm90Cj4gY29udmluY2VkIHRoaXMgaXMg
dGhlIGNvcnJlY3QgYXBwcm9hY2guCj4KPiBNYXhpbWUKCkhpIE1heGltZSwKClRoYW5rcyBmb3Ig
dGhlIHJldmlldy4KClRoaXMgaXMgaW50ZW50aW9uYWwuIFRoZSBTZXJEZXMgaXMgYXR0YWNoZWQg
dG8gdGhlIFhQQ1Mgbm9kZSBiZWNhdXNlCm9uIFJLMzU2OCwgYSBzaW5nbGUgU2VyRGVzIHNlcnZl
cyBhbGwgZm91ciBYUENTIE1JSSBwb3J0cyBpbiBRU0dNSUkKbW9kZS4gSWYgd2UgbWFuYWdlZCBp
dCBmcm9tIGR3bWFjLXJrLCB3ZSB3b3VsZCBuZWVkIGNvbXBsZXgKcmVmY291bnRpbmcgYWNyb3Nz
IG11bHRpcGxlIE1BQyBpbnN0YW5jZXMuIEtlZXBpbmcgaXQgYXQgdGhlIFhQQ1MKbGV2ZWwgc2lt
cGxpZmllcyB0aGUgZGVzaWduIGFuZCBwcmVwYXJlcyBmb3IgZnV0dXJlIFFTR01JSSBzdXBwb3J0
LgoKVGhlIHByb2JlLXRpbWUgcG93ZXItb24gaXMgYSBvbmUtdGltZSBpbml0aWFsaXphdGlvbiAo
bW9kZSBzZWxlY3Rpb24pLApub3QgYSBydW50aW1lIHBvd2VyIHRvZ2dsZS4gVGhlIGFjdHVhbCBw
b3dlciBpcyBjb250cm9sbGVkIGJ5IHRoZQpQRF9QSVBFIGRvbWFpbiB2aWEgUE0gcnVudGltZS4g
QWxzbywgcGh5X3Bvd2VyX29uKCkgb24gdGhpcyBQSFkgaXMKZWZmZWN0aXZlbHkgYSBuby1vcDsg
b25seSBwaHlfaW5pdCgpIGlzIHJlcXVpcmVkLgoKSSBjb25zaWRlcmVkIHRoZSBzdG1tYWMgc2Vy
ZGVzX3Bvd2Vyb24vc2VyZGVzX3Bvd2Vyb2ZmIGNhbGxiYWNrcywgYnV0CnRoZXkgZG8gbm90IGhh
bmRsZSBzaGFyZWQgU2VyRGVzIHdlbGwuIEkgYW0gaGFwcHkgdG8gcmV3b3JrIGlmIHRoZQpjb21t
dW5pdHkgcHJlZmVycyBvdGhlcndpc2UsIGJ1dCB0aGlzIGFwcHJvYWNoIHNlZW1zIGNsZWFuZXIg
Zm9yCm11bHRpLXBvcnQgc2V0dXBzLgoKVGhhbmtzLApDb2lhCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
