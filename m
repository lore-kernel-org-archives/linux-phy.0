Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABB59CD6E4A
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 08:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zARhgNMVEEmITz7+7zfGsTomNWbTOmDU8zzAzQntDF4=; b=4tsU18sjkF3858
	xyExA/enDnfkll38fYPLju1lqwKWSNZe7o8JKKD08q30y0g/ID0Im2eHWgnrLs7ornFsrbQBHnPBK
	uadJdK0OHWWTAWTpaziDfO8DjeHI0kzjHsu9erXCWYiCGNZYW6F5d0V6eBXG2k/toOdBBAQ2pFS0j
	z+ZcGo1H23sHMMhSj3VQGqjeE1ITfKFhjbujInP0959bddfGrvxBXyA0Muaj+IgvX+oYiTQbn/btq
	ei41UsJjdCTg3XAusX9J8EVAlCKMNQ0FOCgRWQdh1ocbU1ERegV7gpbhHm2FmzYYPpxydi6CAim8e
	aptFhwK9ppQyiAzJmOpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUKHR-0000000CY5H-18uI;
	Tue, 02 Jun 2026 08:15:21 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUKHO-0000000CY4w-2Qaq
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 08:15:20 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-460166910e6so746438f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 02 Jun 2026 01:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780388116; x=1780992916; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R0tri8tCsiy74EQNFulBrakDi/+0isJeRmm5jzNUg/I=;
        b=IvRZf8p2vRLDMjWnGWMu59e1xU952fKDHogpTdqVDGBcwILKaucsvSR2XTkYc7MsRG
         aRzw8kXquY5UFQBlZKTnZAoH7nDU/1WBZ8eqH0+EgzeKyU3ivj/xruoqrboNtXh1jk3R
         cO6nYomYMcy2XpW3XWBtLK3GNi7Xucb0MUZ5A5dyXD5qcy/mjp69B9zDlGEqlYXRUBsB
         eYIDPVJzoBH4ZkLBdUPQyNTuIrl7OLQQdmQDOmhag8OdWwzNVn9qJ6RNgJb92rfjOoCe
         ho00J0AKaFrrPCwKH4H0+8wBOMN9yJt3E/ldBC/1IaSMrRA8Gz8mU88SWlBdVJq7fQP/
         Ampw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780388116; x=1780992916;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R0tri8tCsiy74EQNFulBrakDi/+0isJeRmm5jzNUg/I=;
        b=HXXrhpEuTsJ4IHPVLgWXTryh9WQmZVGPetS92fCOPf7V9zPCnkynzJgU96lMne2gmw
         AtIK2pU8WVBCAJT9FbNGv1M1krqoMEG0OZv8dpC2id6v8Bb6+HfdkTwkDpHo0be0LNzP
         AAerKRA9ewpNJYGJW5DR3pIMsJZVTQoOloDYYDvFXxfukhT5OqbX5n9GXbWYhDR8KJqp
         jsoOZBiQdu0DGmZaNtdYLFMNazwPYiUrZ8INBPoagW6r5BAKiJkiZmiSPB3sIX+5uVSy
         2VnoBlVana9VPrDx/b5qocGiLZd54k/ouw50KRg6Bvamif7SdOAEIrRco/XK1r5KLOVo
         ZyXw==
X-Forwarded-Encrypted: i=1; AFNElJ/yYJUM5AOcT6XH2g0M9YoCeZBb8jtuQ/6KSVrFzSNRlXdiy3Nwybw8YizDtTQ2WwGIBZLESHg8oYs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyH3+soS6PB4KiPu0skiyZxiGyGXv8Q1saOq1g1t7tmnWcS2TEI
	ztMgTJIYJBgA5vZ9UUhQc8XbAm5kzJmq4cI1a4RMd5sg0RdJUmRPNSNQ
X-Gm-Gg: Acq92OE0UsonfVpLY/k8T1DbpKpbcw3XvElvJERpb3uwvdKrIh9IKoOhiPkW3Pn6UOA
	y6ntsDq2MTQmzIoWzilj+QfjAnCuvOoJ6CZuiVWFkuhKqvpYl4t2hVVBhV4X/rY++tf64uj5iXA
	I1gyXTXWZET2jK37tp1XWbLuzU0CUkIvRhNdgytuldUh6l9lqClRmT0MfKsy54EU0iofU/EgMaf
	bdWhKa1xDgHfxHIsdGFzMv5YdBDoAMLxdrRDA+X9KJ/xZjTxzmqIT3A9cnXcBKfNOPp8tLY8EWK
	2QyoSXAEv4UtkFiKXQa3nQN0uCwMsLscm+K6ymNKdlAWxgtEE6/xkwOZXFFoUZ5Azc7pXI1kQqd
	VAErvN/SpTSqlqbrBknVRHTAv3uxEGC4rBIqH6E8+kEr8FL4YbW2efxDhfG1HfJu1u2pjMhQMNa
	VuyTQzb3UmPaYiAMDN2+SK7EwKJglVAsU=
X-Received: by 2002:a5d:5cce:0:b0:441:1cf9:4f06 with SMTP id ffacd0b85a97d-45ef6b8c844mr20729418f8f.31.1780388115957;
        Tue, 02 Jun 2026 01:15:15 -0700 (PDT)
Received: from legfed1 ([2a00:79c0:606:f600:1ebe:eb51:3a97:3b47])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45ef34a065esm32352694f8f.5.2026.06.02.01.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 01:15:15 -0700 (PDT)
Date: Tue, 2 Jun 2026 10:15:13 +0200
From: Dimitri Fedrau <dima.fedrau@gmail.com>
To: sashiko-reviews@lists.linux.dev
Cc: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>,
	olteanv@gmail.com, krzk+dt@kernel.org, vkoul@kernel.org,
	linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org,
	devicetree@vger.kernel.org, neil.armstrong@linaro.org
Subject: Re: [PATCH v5 2/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
Message-ID: <20260602081513.GA227859@legfed1>
References: <20260513-tja1145-support-v5-2-38720a7ee63e@liebherr.com>
 <20260514054447.A59AFC2BCB7@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260514054447.A59AFC2BCB7@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_011518_668408_AD7F09D4 
X-CRM114-Status: GOOD (  33.20  )
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

QW0gVGh1LCBNYXkgMTQsIDIwMjYgYXQgMDU6NDQ6NDdBTSArMDAwMCBzY2hyaWViIHNhc2hpa28t
Ym90QGtlcm5lbC5vcmc6Cj4gVGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlr
byBBSSByZXZpZXcgZm91bmQgMyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Cj4gLSBb
SGlnaF0gVGhlIGRyaXZlciBmYWlscyB0byBlbmFibGUgdGhlIGhhcmR3YXJlIHBvd2VyIHN1cHBs
aWVzIChgdmNjLXN1cHBseWAsIGB2aW8tc3VwcGx5YCwgYHZiYXQtc3VwcGx5YCkgYmVmb3JlIGNv
bW11bmljYXRpbmcgd2l0aCB0aGUgZGV2aWNlLgo+IC0gW0hpZ2hdIFRoZSBkcml2ZXIgZG9lcyBu
b3Qgb2JzZXJ2ZSB0aGUgcmVxdWlyZWQgbW9kZSB0cmFuc2l0aW9uIGRlbGF5IHdoZW4gcG93ZXJp
bmcgb24gdGhlIFBIWS4KPiAtIFtNZWRpdW1dIE1pc3Npbmcgcm9sbGJhY2sgdG8gc3RhbmRieSBt
b2RlIGluIHRoZSBlcnJvciBwYXRoIG9mIGB0amExMTQ1X3BoeV9wb3dlcl9vbmAuCj4gLS0KPiAK
PiBjb21taXQgMjg4MTM0ZTE3OTk5MmNiMmU2OTBmZjdhOTc1MDJlNzJmMDRlOWQ1YQo+IEF1dGhv
cjogRGltaXRyaSBGZWRyYXUgPGRpbWl0cmkuZmVkcmF1QGxpZWJoZXJyLmNvbT4KPiAKPiBwaHk6
IGFkZCBiYXNpYyBzdXBwb3J0IGZvciBOWFBzIFRKQTExNDUgQ0FOIHRyYW5zY2VpdmVyCj4gCj4g
VGhpcyBjb21taXQgYWRkcyBiYXNpYyBkcml2ZXIgc3VwcG9ydCBmb3IgdGhlIE5YUCBUSkExMTQ1
IENBTiB0cmFuc2NlaXZlci4KPiBJdCBpbXBsZW1lbnRzIHRoZSBQSFkgb3BlcmF0aW9ucyB0byBi
cmluZyB0aGUgaGFyZHdhcmUgdXAgYW5kIGRvd24gYnkKPiBzd2l0Y2hpbmcgYmV0d2VlbiBub3Jt
YWwgYW5kIHN0YW5kYnkgbW9kZXMgdXNpbmcgU1BJIGNvbW1hbmRzLgo+IAo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGh5L3BoeS1ueHAtdGphMTE0NS5jIGIvZHJpdmVycy9waHkvcGh5LW54cC10
amExMTQ1LmMKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAw
Li4xZThiZDE2OTc0M2FiCj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9kcml2ZXJzL3BoeS9w
aHktbnhwLXRqYTExNDUuYwo+IAo+IFsgLi4uIF0KPiAKPiA+ICtzdGF0aWMgaW50IHRqYTExNDVf
cGh5X3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBoeSkKPiA+ICt7Cj4gPiArCXN0cnVjdCByZWdtYXAg
Km1hcCA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+ID4gKwlpbnQgcmV0Owo+ID4gKwo+ID4gKwkv
Kgo+ID4gKwkgKiBTd2l0Y2ggb3BlcmF0aW5nIG1vZGUgdG8gbm9ybWFsIHdoaWNoIGlzIHRoZSBh
Y3RpdmUgb3BlcmF0aW5nIG1vZGUuCj4gPiArCSAqIEluIHRoaXMgbW9kZSwgdGhlIGRldmljZSBp
cyBmdWxseSBvcGVyYXRpb25hbC4KPiA+ICsJICovCj4gPiArCXJldCA9IHJlZ21hcF91cGRhdGVf
Yml0cyhtYXAsIFRKQTExNDVfTU9ERV9DVFJMLCBUSkExMTQ1X01PREVfQ1RSTF9NQywKPiA+ICsJ
CQkJIFRKQTExNDVfTU9ERV9DVFJMX05PUk1BTCk7Cj4gPiArCWlmIChyZXQpCj4gPiArCQlyZXR1
cm4gcmV0Owo+IAo+IEFjY29yZGluZyB0byB0aGUgaGFyZHdhcmUgZGF0YXNoZWV0LCB0cmFuc2l0
aW9uaW5nIHRoZSB0cmFuc2NlaXZlciB0byBub3JtYWwKPiBtb2RlIGNhbiB0YWtlIHVwIHRvIDQw
IHVzLiBEb2VzIHRoaXMgc2VxdWVuY2UgbmVlZCBhIGhhcmR3YXJlIHRyYW5zaXRpb24KPiBkZWxh
eSBiZWZvcmUgc2VuZGluZyB0aGUgYWN0aXZlIG1vZGUgY29tbWFuZD8KPgpDYW5ub3QgZmluZCBh
bnl0aGluZyByZWxhdGVkIGluIHRoZSBkYXRhc2hlZXQuCgo+IFdpdGggYSBmYXN0IFNQSSBidXMs
IHRoZSBuZXh0IGNvbW1hbmQgbWlnaHQgYXJyaXZlIGJlZm9yZSB0aGUgaGFyZHdhcmUgc3RhdGUK
PiBtYWNoaW5lIGZpbmlzaGVzIHRyYW5zaXRpb25pbmcsIHdoaWNoIGNvdWxkIGNhdXNlIHRoZSBh
Y3RpdmUgbW9kZSBjb21tYW5kIHRvCj4gYmUgaWdub3JlZC4KPiAKPiA+ICsKPiA+ICsJLyoKPiA+
ICsJICogU3dpdGNoIHRvIENBTiBvcGVyYXRpbmcgbW9kZSBhY3RpdmUgd2hlcmUgdGhlIFBIWSBj
YW4gdHJhbnNtaXQgYW5kCj4gPiArCSAqIHJlY2VpdmUgZGF0YS4KPiA+ICsJICovCj4gPiArCXJl
dHVybiByZWdtYXBfdXBkYXRlX2JpdHMobWFwLCBUSkExMTQ1X0NBTl9DVFJMLCBUSkExMTQ1X0NB
Tl9DVFJMX0NNQywKPiA+ICsJCQkJICBUSkExMTQ1X0NBTl9DVFJMX0FDVElWRSk7Cj4gCj4gSWYg
dGhpcyBzZWNvbmQgcmVnbWFwX3VwZGF0ZV9iaXRzKCkgZmFpbHMsIHRoZSBmdW5jdGlvbiByZXR1
cm5zIGFuIGVycm9yCj4gd2l0aG91dCByZXZlcnRpbmcgdGhlIGRldmljZSB0byBzdGFuZGJ5IG1v
ZGUuCj4gCkRvbid0IHNlZSBhIHNlY29uZCByZWdtYXBfdXBkYXRlX2JpdHMoKS4KCj4gU2luY2Ug
dGhlIFBIWSBmcmFtZXdvcmsga2VlcHMgdGhlIHBvd2VyX2NvdW50IGF0IDAgb24gYW4gZXJyb3Ig
cmV0dXJuLAo+IHBoeV9wb3dlcl9vZmYoKSB3aWxsIG5vdCBiZSBjYWxsZWQgZHVyaW5nIHNodXRk
b3duIG9yIHN1c3BlbmQuIENvdWxkIHRoaXMKPiBsZWF2ZSB0aGUgaGFyZHdhcmUgcGVybWFuZW50
bHkgc3R1Y2sgaW4gbm9ybWFsIG1vZGUsIGRyYXdpbmcgcG93ZXIKPiB1bmludGVudGlvbmFsbHk/
Cj4gCj4gPiArfQo+IAo+IFsgLi4uIF0KPiAKPiA+ICtzdGF0aWMgaW50IHRqYTExNDVfcHJvYmUo
c3RydWN0IHNwaV9kZXZpY2UgKnNwaSkKPiA+ICt7Cj4gPiArCXN0cnVjdCBwaHlfcHJvdmlkZXIg
KnBoeV9wcm92aWRlcjsKPiA+ICsJc3RydWN0IGRldmljZSAqZGV2ID0gJnNwaS0+ZGV2Owo+ID4g
KwlzdHJ1Y3QgcmVnbWFwICptYXA7Cj4gPiArCXN0cnVjdCBwaHkgKnBoeTsKPiA+ICsJaW50IHJl
dDsKPiA+ICsKPiA+ICsJbWFwID0gZGV2bV9yZWdtYXBfaW5pdF9zcGkoc3BpLCAmdGphMTE0NV9y
ZWdtYXBfY29uZmlnKTsKPiA+ICsJaWYgKElTX0VSUihtYXApKQo+ID4gKwkJcmV0dXJuIGRldl9l
cnJfcHJvYmUoZGV2LCBQVFJfRVJSKG1hcCksICJmYWlsZWQgdG8gaW5pdCByZWdtYXBcbiIpOwo+
ID4gKwo+ID4gKwlyZXQgPSB0amExMTQ1X2NoZWNrX2lkZW50KGRldiwgbWFwKTsKPiAKPiBXaWxs
IHRoaXMgZmFpbCB0byBjb21tdW5pY2F0ZSB3aXRoIHRoZSBoYXJkd2FyZSBvbiBwbGF0Zm9ybXMg
d2hlcmUgcG93ZXIKPiBzdXBwbGllcyBhcmUgZHluYW1pY2FsbHkgY29udHJvbGxlZD8KPgoKWWVz
LCBidXQgZHlhbWljYWxseSBjb250cm9sbGVkIHBvd2VyIHN1cHBsaWVzIGFyZSBub3QgaW1wbGVt
ZW50ZWQgeWV0LgpTdXBwb3J0IGhhcyB0byB3YWl0IHVudGlsIHRoZXJlIGlzIG5lZWQgZm9yIGl0
LgoKPiBUaGUgZGV2aWNlIHRyZWUgYmluZGluZyBkZWZpbmVzIHZjYy1zdXBwbHksIHZpby1zdXBw
bHksIGFuZCB2YmF0LXN1cHBseSBhcwo+IHBvd2VyIHNvdXJjZXMsIGJ1dCB0aGV5IGRvIG5vdCBh
cHBlYXIgdG8gYmUgcmVxdWVzdGVkIG9yIGVuYWJsZWQgaW4gdGhpcwo+IGZ1bmN0aW9uIGJlZm9y
ZSB0amExMTQ1X2NoZWNrX2lkZW50KCkgaXMgY2FsbGVkLgo+IAo+IFRoaXMgbWlnaHQgbGVhdmUg
dGhlIFBIWSB1bnBvd2VyZWQsIGNhdXNpbmcgdGhlIFNQSSByZWFkIHRvIHJldHVybiBnYXJiYWdl
Cj4gZGF0YSBhbmQgZmFpbCB0aGUgcHJvYmUgd2l0aCAtRU5PREVWLgo+IAo+ID4gKwlpZiAocmV0
KQo+ID4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCByZXQsICJmYWlsZWQgdG8gaWRlbnRp
ZnkgZGV2aWNlXG4iKTsKPiAKPiAtLSAKPiBTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nh
c2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA1MTMtdGphMTE0NS1zdXBwb3J0LXY1LTAtMzg3MjBh
N2VlNjNlQGxpZWJoZXJyLmNvbT9wYXJ0PTIKPiAKPiAtLSAKPiBsaW51eC1waHkgbWFpbGluZyBs
aXN0Cj4gbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
