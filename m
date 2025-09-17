Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD00CCA0EE8
	for <linux-phy@archiver.kernel.org>; Wed, 17 Sep 2025 09:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qbtPKfMPnw5sme7Gj1TGVwn8KBt9Y7v9750L/07aC4U=; b=V7RVjCrTCPTAcr
	7dAlCMEWrYoJNzMrFm/LH2z2kbDD5c1lbPuUdUrpc3tORtiXYnfmDZmHBHNr1HbMf+J5siDzL6tC6
	cIw1N/z6IahD/bzeG6n6AK3z5J0x/7KykdYiBkHffIEHzI0eFpGUR5YGjZjq+k6OePEil/ICXMu9F
	BtxrALJFXGGWyNKO2iQ5uzPyRaWLB7i5rsqZ1Wy3Atg2pxnlF2VJwupq9J8/pfpiB7VGGB0tlF03w
	7deFvB6Dami6B5OUSniEOMEtrRQtOTIgxUWdAi0VkyfNQ1gdbOZMq6u+/S1hTkaGVzpd472IfdWPM
	Rfxvkffzy02ttCnoBAnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyoGN-0000000AlLE-2DGa;
	Wed, 17 Sep 2025 09:15:43 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyoGL-0000000AlKZ-1XEP
	for linux-phy@lists.infradead.org;
	Wed, 17 Sep 2025 09:15:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1758100539;
	bh=XXSmMhiIJwxEgzQuWSUYkqPOP5y8v9qGIfTlmLL2PFI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=L2Xmnn24q18lCp584jc3DJ3aArQTX0Q97EwLeCn3gjtunVHCT+VCz8J59OyoRJRXb
	 J6E2VIIP+SpjyRvytPAkuXuBab8plMjreqyXG4r62yWvFYC/GgVKew8qFVTN8wqEi7
	 cHLBtuaXLQ49gL79nfIC1DQSkd5BKuibCrHrBtIp1ozBC/55FV50OsL4lsJ/9d/G+R
	 D+xinyMOJga2aTtZJrHpRahN2aHbzA5KD76lgmLrcSiwQOcG91iCfs3R06RXp/ujG/
	 XOjr2a4cuI9zpH7lYnDdCoE40xrh9yjYtRCU50u0SAIN0qhgTGb4XYkT5eQm6kQCJ/
	 0Q4fjPfECOKnQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8555E17E0109;
	Wed, 17 Sep 2025 11:15:38 +0200 (CEST)
Message-ID: <a10685e2-e4af-4097-b432-778e83e0b3bf@collabora.com>
Date: Wed, 17 Sep 2025 11:15:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, sboyd@kernel.org,
 jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 srini@kernel.org, vkoul@kernel.org, kishon@kernel.org, sre@kernel.org,
 krzysztof.kozlowski@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
 kernel@collabora.com, wenst@chromium.org, casey.connolly@linaro.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>
References: <20250916084445.96621-1-angelogioacchino.delregno@collabora.com>
 <20250916084445.96621-3-angelogioacchino.delregno@collabora.com>
 <t3uk3k4h3l53yajoe3xog2njmdn3jhkmdphv3c4wnpvcqniz4n@opgigzazycot>
 <aMlnp4x-1MUoModr@smile.fi.intel.com>
 <mknxgesog6aghc6cjzm63g63zqbqvysxf6ktmnbrbtafervveg@uoiohk3yclso>
 <CAHp75Vf7KrsN7Ec9zOvJoRuKvkbrJ5sMv7pVv6+88tPX-j_9ZA@mail.gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <CAHp75Vf7KrsN7Ec9zOvJoRuKvkbrJ5sMv7pVv6+88tPX-j_9ZA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_021541_560907_3F25FAA1 
X-CRM114-Status: GOOD (  18.38  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SWwgMTYvMDkvMjUgMTg6MjAsIEFuZHkgU2hldmNoZW5rbyBoYSBzY3JpdHRvOgo+IE9uIFR1ZSwg
U2VwIDE2LCAyMDI1IGF0IDY6MTHigK9QTSBVd2UgS2xlaW5lLUvDtm5pZwo+IDx1LmtsZWluZS1r
b2VuaWdAYmF5bGlicmUuY29tPiB3cm90ZToKPj4gT24gVHVlLCBTZXAgMTYsIDIwMjUgYXQgMDQ6
MzU6MzVQTSArMDMwMCwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+Pj4gT24gVHVlLCBTZXAgMTYs
IDIwMjUgYXQgMDM6MjQ6NTZQTSArMDIwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4+Pj4g
T24gVHVlLCBTZXAgMTYsIDIwMjUgYXQgMTA6NDQ6NDBBTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gCj4gLi4uCj4gCj4+Pj4+ICtNT0RVTEVfSU1QT1JUX05TKCJT
UE1JIik7Cj4+Pj4KPj4+PiBJZiBpdCdzIGV4YWN0bHkgdGhlIGZpbGVzIHRoYXQgI2luY2x1ZGUg
PGxpbnV4L3NwbWkuaD4gc2hvdWxkIGhhdmUgdGhhdAo+Pj4+IG5hbWVzcGFjZSBpbXBvcnQsIHlv
dSBjYW4gcHV0IHRoZSBNT0RVTEVfSU1QT1JUX05TIGludG8gdGhhdCBoZWFkZXIuCj4+Pgo+Pj4g
V2hpY2ggbWFrZXMgYW55b25lIHRvIGltcG9ydCBuYW1lc3BhY2UgZXZlbiBpZiB0aGV5IGp1c3Qg
d2FudCB0byB1c2Ugc29tZSB0eXBlcwo+Pj4gb3V0IG9mIHRoZSBoZWFkZXIuCj4+Cj4+IE5vdGlj
ZSB0aGF0IEkgY2FyZWZ1bGx5IGZvcm11bGF0ZWQgbXkgc3VnZ2VzdGlvbiB0byBjb3BlIGZvciB0
aGlzIGNhc2UuCj4gCj4gQW5kIEkgY2FyZWZ1bGx5IGFuc3dlcmVkLiBZb3VyIHByb3Bvc2FsIHdv
bid0IHByZXZlbnQgX290aGVyXyBmaWxlcyB0bwo+IHVzZSB0aGUgc2FtZSBoZWFkZXIgaW4gdGhl
IGZ1dHVyZSB3aXRob3V0IG5lZWRpbmcgYSBuYW1lc3BhY2UgdG8gYmUKPiBpbXBvcnRlZC4KPiAK
Pj4+IFRoaXMgaXMgbm90IGdvb2Qgc29sdXRpb24gZ2VuZXJhbGx5IHNwZWFraW5nLiBBbHNvIHRo
aXMgd2lsbAo+Pj4gZGltaW5pc2ggb25lIG9mIHRoZSBwdXJwb3NlcyBvZiBfTlMgdmFyaWFudHMg
b2YgTU9EVUxFKi9FWFBPUlQqLCBpLmUuIG1ha2UgaXQKPj4+IGludmlzaWJsZSB0aGF0IHNvbWUg
b2YgdGhlIGNvZGUgbWF5IGJlY29tZSBhbiBhYnVzZXIgb2YgdGhlIEFQSSBqdXN0IGJ5IHNvbWVv
bmUKPj4+IGluY2x1ZGUgdGhlIGhlYWRlciAoZm9yIGEgcmVhc29uIG9yIGJ5IGEgbWlzdGFrZSku
Cj4+Cj4+IFllYWgsIG9waW5pb25zIGRpZmZlci4gSW4gbXkgZXllcyBpdCdzIHF1aXRlIGVsZWdh
bnQuCj4gCj4gSXQncyBub3QgYSBwdXJlIG9waW5pb24sIGl0IGhhcyBhIHRlY2huaWNhbCBiYWNr
Z3JvdW5kIHRoYXQgSQo+IGV4cGxhaW5lZC4gVGhlIGV4cGxpY2l0IHVzYWdlIG9mIE1PRFVMRV9J
TVBPUlRfTlMoKSBpcyBiZXR0ZXIgdGhhbgo+IHNvbWUgaGVhZGVyIHNvbWV3aGVyZSB0aGF0IG1p
Z2h0IGV2ZW4gYmUgaW5jbHVkZWQgYnkgYW5vdGhlciBhbmQgYmUKPiBwcm94aWVkIHRvIHRoZSBj
b2RlIHRoYXQgZG9lc24ndCBuZWVkIC8gd2FudCB0byBoYXZlIHRoaXMgbmFtZXNwYWNlIHRvCj4g
YmUgcHJlc2VudC4gUHV0aW5nIE1PRFVMRV9JTVBPUlRfTlMoKSBpbnRvIGEgX2hlYWRlcl8gaXMg
YSBtaW5lZmllbGQKPiBmb3IgdGhlIGZ1dHVyZS4KPiAKClV3ZSwgdGhhbmtzIGZvciB5b3VyIHJl
dmlldyAtIG11Y2ggYXBwcmVjaWF0ZWQuCgpFdmVuIHRob3VnaCBJIGdldCB5b3VyIHBvaW50Li4u
IFNvcnJ5LCBidXQgaGVyZSBJIGRvIGFncmVlIHdpdGggQW5keSwgYW5kIEkgdGhpbmsKaGUgZXhw
bGFpbmVkIHNvbWUgb2YgdGhlIHJlYXNvbnMgcHJldHR5IHdlbGwuCgpDaGVlcnMsCkFuZ2VsbwoK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
