Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B97CC44501
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 06:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuxCrTrcrRXm+slYozCKa/Reu/p/sVO6qs18xUWs2aQ=; b=sNgc3LmR7fF511
	pIPw7FA1plfltEiVj5QJXPugOWa1AvyxW3UII6wwQeoKsynquH1SuMPV2/IbF35zZuSBM6yMnCiY5
	JFqv9wNhXtxattevuDAiUS1z8puy7OgJieYv+sayPgHdAyb7WNx3hrBL4pNHmitjjbdpQNxJQMJr7
	LvM32q1HFOY4PA7h/OUwlG8oIzY3INDmRdxrNKQ2qnI6t3wMgCVvTQHhwFOioW9e33tqwDSIlH4Mo
	Bw0g6Zn1err6xaYSSQXeEoZbdxfCdQSLjvj0AC5x192g+UqegW/Nj9aTyHKpAe6vbZU6eOuVzULQC
	IhRxZV6tYq9/RLMwdOlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjWx8-0000000B5ZT-0ZMT;
	Tue, 14 Jul 2026 06:49:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjWx6-0000000B5Z3-0hjU
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 06:49:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 717B560254;
	Tue, 14 Jul 2026 06:49:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9CB11F000E9;
	Tue, 14 Jul 2026 06:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784011751;
	bh=e2vrEhUN78zzgXo+gMbi4YwjjemjNnEjirBlOXP0sss=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=grF5yu4ZHT3y5/IMCXqGdq11CepUixV/c7zdbPE7gwDXU+PRXLzRLpMmaXZifgyZR
	 n+fK3YHp6Cm5FGqD4tIPuHwAQ8eFiCrh6EyBlhb7MryWmSJ+/gDePmc/wHzpYdT5Cm
	 orc/hd/hgIuzNjwRdHP9K0brm474aRYLV8ZX5tn2MTCcmH6M0b0QtdW0iu5awOgcib
	 v/7FZcR2qYiI/tkpe6B0zpoqhwbDh5m6YFeWe4+b9u6DDH4BS/0K7KwdaSrtGDbQvv
	 92ZK3WcPymHozY/acMjBpsEEp+TT+v7Tyl32aOx0gDNuQZUjv4nV1/4nw8rM/baHkB
	 iFMZosARVZMCw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/6] phy: qcom: qmp-combo: Add serdes and
 RBR/HBR/HBR2/HBR3 tables for v1 DP PLLs
To: "Esteban Urrutia" <esteuwu@proton.me>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714-sm8475-bup-v1-5-b2871be2b4ec@proton.me>
References: <20260714-sm8475-bup-v1-0-b2871be2b4ec@proton.me>
 <20260714-sm8475-bup-v1-5-b2871be2b4ec@proton.me>
Date: Tue, 14 Jul 2026 06:49:10 +0000
Message-Id: <20260714064910.A9CB11F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIG5ld2x5IGludHJv
ZHVjZWQgdjEgRFAgUExMIGNvbmZpZ3VyYXRpb24gdGFibGVzIGFyZSBkZWNsYXJlZCBhcyBzdGF0
aWMgY29uc3QgYnV0IG5ldmVyIHJlZmVyZW5jZWQsIGxlYWRpbmcgdG8gY29tcGlsZXIgd2Fybmlu
Z3MgYW5kIGJyZWFraW5nIHN0cmljdCBidWlsZHMgKC1XZXJyb3IpLgotLQoKLS0tIFBhdGNoIFs1
XTogW1BBVENIIDUvNl0gcGh5OiBxY29tOiBxbXAtY29tYm86IEFkZCBzZXJkZXMgYW5kIFJCUi9I
QlIvSEJSMi9IQlIzIHRhYmxlcyBmb3IgdjEgRFAgUExMcyAtLS0KY29tbWl0IGU0NDE0ZWVmNzQw
N2M2MWZmOGEyNmY1M2I4MzUzOTY1MjViMGEzNDMKQXV0aG9yOiBFc3RlYmFuIFVycnV0aWEgPGVz
dGV1d3VAcHJvdG9uLm1lPgoKcGh5OiBxY29tOiBxbXAtY29tYm86IEFkZCBzZXJkZXMgYW5kIFJC
Ui9IQlIvSEJSMi9IQlIzIHRhYmxlcyBmb3IgdjEgRFAgUExMcwoKVGhpcyBjb21taXQgaW50cm9k
dWNlcyBzZXJkZXMgYW5kIHJhdGUtc3BlY2lmaWMgdGFibGVzIGZvciB2MSBEUCBQTExzIHRvCnN1
cHBvcnQgU004NDc1LiBJdCBhbHNvIHJlbmFtZXMgZXhpc3RpbmcgdjEuMSB0YWJsZXMgYW5kIHVw
ZGF0ZXMgc2V2ZXJhbApQSFkgY29uZmlndXJhdGlvbnMgdG8gdXNlIHRoZW0uCgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYyBiL2RyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gaW5kZXggY2RjZmFkMmU4NmIxZC4u
OGMwOWQ0YzE1OTRkMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtY29tYm8uYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1j
b21iby5jCj4gQEAgLTEzMzcsNyArMTMzNywzMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9w
aHlfaW5pdF90YmwgcW1wX3Y1XzVubV9kcF90eF90YmxbXSA9IHsKPiAgCVFNUF9QSFlfSU5JVF9D
RkcoUVNFUkRFU19WNV81Tk1fVFhfVFhfQkFORCwgMHgwMSksCj4gIH07Cj4gIAo+IC1zdGF0aWMg
Y29uc3Qgc3RydWN0IHFtcF9waHlfaW5pdF90YmwgcW1wX3Y2X2RwX3NlcmRlc190YmxbXSA9IHsK
PiArc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2luaXRfdGJsIHFtcF92Nl9kcF92MV9zZXJk
ZXNfdGJsW10gPSB7Cj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX1NWU19NT0RF
X0NMS19TRUwsIDB4MTUpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9TWVND
TEtfRU5fU0VMLCAweDNiKSwKCltTZXZlcml0eTogTG93XQpBcmUgdGhlc2UgbmV3IHYxIHRhYmxl
cyByZWZlcmVuY2VkIGFueXdoZXJlIGluIHRoaXMgcGF0Y2g/CgpUaGV5IGFyZSBkZWNsYXJlZCBh
cyBzdGF0aWMgY29uc3QsIGJ1dCBhcHBlYXIgdG8gYmUgdW5yZWZlcmVuY2VkLiBDb3VsZCB0aGlz
CnJlZ3Jlc3Npb24gY2F1c2UgLVd1bnVzZWQtY29uc3QtdmFyaWFibGUgY29tcGlsZXIgd2Fybmlu
Z3MgYW5kIGJyZWFrIGJ1aWxkcwp0aGF0IHVzZSBDT05GSUdfV0VSUk9SPXk/CgpbIC4uLiBdCgo+
IEBAIC0xNDcxLDcgKzE0OTQsNTUgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2luaXRf
dGJsIHFtcF92OF9uM3BfZHBfdHhfdGJsW10gPSB7Cj4gIAlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJE
RVNfVjhfTEFMQl9UWDFfUkVTVFJJTV9QT1NUX0NBTF9PRkZTRVQsIDB4MTApLAo+ICB9Owo+ICAK
PiAtc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2luaXRfdGJsIHFtcF92Nl9kcF9zZXJkZXNf
dGJsX3JicltdID0gewo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfaW5pdF90YmwgcW1w
X3Y2X2RwX3YxX3NlcmRlc190YmxfcmJyW10gPSB7Cj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJE
RVNfVjZfQ09NX0hTQ0xLX1NFTF8xLCAweDA1KSwKPiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRF
U19WNl9DT01fREVDX1NUQVJUX01PREUwLCAweDY5KSwKCltTZXZlcml0eTogTG93XQpEb2VzIHRo
aXMgcmF0ZS1zcGVjaWZpYyB2MSB0YWJsZSBmb3IgUkJSIGFsc28gbmVlZCBhIHJlZmVyZW5jZSB0
byBhdm9pZAp0aGUgdW51c2VkIHZhcmlhYmxlIHdhcm5pbmc/CgpbIC4uLiBdCgo+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IHFtcF9waHlfaW5pdF90YmwgcW1wX3Y2X2RwX3YxX3NlcmRlc190YmxfaGJy
W10gPSB7Cj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX0hTQ0xLX1NFTF8xLCAw
eDAzKSwKPiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fREVDX1NUQVJUX01PREUw
LCAweDY5KSwKCltTZXZlcml0eTogTG93XQpJcyB0aGlzIEhCUiB0YWJsZSBtaXNzaW5nIGEgcmVm
ZXJlbmNlIGluIHRoZSBjb25maWd1cmF0aW9ucyBiZWxvdz8KClsgLi4uIF0KCj4gK3N0YXRpYyBj
b25zdCBzdHJ1Y3QgcW1wX3BoeV9pbml0X3RibCBxbXBfdjZfZHBfdjFfc2VyZGVzX3RibF9oYnIy
W10gPSB7Cj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZfQ09NX0hTQ0xLX1NFTF8xLCAw
eDAxKSwKPiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fREVDX1NUQVJUX01PREUw
LCAweDhjKSwKCltTZXZlcml0eTogTG93XQpXb3VsZCBsZWF2aW5nIHRoaXMgSEJSMiB0YWJsZSB1
bnJlZmVyZW5jZWQgdHJpZ2dlciB0aGUgc2FtZSBjb21waWxlcgp3YXJuaW5nPwoKWyAuLi4gXQoK
PiArc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2luaXRfdGJsIHFtcF92Nl9kcF92MV9zZXJk
ZXNfdGJsX2hicjNbXSA9IHsKPiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNl9DT01fSFND
TEtfU0VMXzEsIDB4MDApLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X0NPTV9ERUNf
U1RBUlRfTU9ERTAsIDB4NjkpLAoKW1NldmVyaXR5OiBMb3ddClNob3VsZCB0aGlzIEhCUjMgdGFi
bGUgYmUgaG9va2VkIHVwIHRvIHRoZSBQSFkgY29uZmlnIHN0cnVjdCBzbyB0aGUgY29tcGlsZXIK
ZG9lc24ndCBjb21wbGFpbiBhYm91dCB1bnVzZWQgdmFyaWFibGVzPwoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcxNC1zbTg0NzUt
YnVwLXYxLTAtYjI4NzFiZTJiNGVjQHByb3Rvbi5tZT9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
