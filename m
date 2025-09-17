Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11CBCCA0EE8
	for <linux-phy@archiver.kernel.org>; Wed, 17 Sep 2025 11:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSEr1JWTkFCdrT7z3aDO2/b4eZVxHczBgd2pjXa1YIU=; b=QPnJuZ690D/bjV
	4qT6ifnQ5qfxEAM6FwOzUZJ54qmU/ZUaTBVjRRlQY4dodTetb2Kgx+9RXD/QwFBjy3+U29UMBBbV7
	Cdboz/pc4g/mO3fiRAV5FHsDRz4bsf/2UN7ijt8Ys7zPYWliySxdiaAy2atR24o5qWIvrCgYD/Ooz
	lJzSYCDnlki7kK3acRhwCtkrv+LvbU70MzkCQpFm4yrbvrb100N6S3dRW2fe7fblC1qiN9Ltzh/Sm
	7ECZDe2kjtBXCXvR0LdT0OdUArYbRdcZjqYfCgtAYkwC5LBhZhxH+y9qLlXf8TuJoWXmEuWtyXjSN
	EYTo7Ktw/NAGRKrZs8og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyqXk-0000000BA4T-2MwZ;
	Wed, 17 Sep 2025 11:41:48 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyqXg-0000000BA2o-35ED
	for linux-phy@lists.infradead.org;
	Wed, 17 Sep 2025 11:41:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1758109302;
	bh=0OtD0Y91eraXp7qlae6rfKOz1LeKFfNmCmaZ1OElvSI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OgsObV8YW7tOY5+PL28HwItU/FdPf6MHC4mP4i613Caz1L/lU2AKXzio9nx+qjykZ
	 C3X7qT+n+A2gpIo6dPrCSdsecp6k4lbQyCGEUHpJnuup2V6zoK+atoFaY7bFvbm8FF
	 /cwuWNvMSDp70uMeD1uiUA86GbGkwX9WC39Fqgw6z08vVFx0uowzHqMBJfSzyuqpH/
	 Dwfvs2LGSvQM85kAQhlxrPFLvLXTkcHFxPp/a3IRM78Ev6WUgqpoLhoGb4BdiGWlCR
	 vxXQch2XyjzydceRQfztY4bXwHNcq0iRCr/rlr0qTQjZiG7WqpKzbIF9Z/i9TpceB0
	 S4vEPuGN/zcQA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 49AA317E10F3;
	Wed, 17 Sep 2025 13:41:41 +0200 (CEST)
Message-ID: <a16cafd4-4d6c-45be-b241-45d2d6479bb1@collabora.com>
Date: Wed, 17 Sep 2025 13:41:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/7] spmi: Implement spmi_subdevice_alloc_and_add() and
 devm variant
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: sboyd@kernel.org, jic23@kernel.org, dlechner@baylibre.com,
 nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, sre@kernel.org, krzysztof.kozlowski@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org,
 casey.connolly@linaro.org, Jonathan Cameron <jonathan.cameron@huawei.com>,
 Neil Armstrong <neil.armstrong@linaro.org>
References: <20250916084445.96621-1-angelogioacchino.delregno@collabora.com>
 <20250916084445.96621-2-angelogioacchino.delregno@collabora.com>
 <mr7gqhvom5soofn2oujzxtsuczsnx2yizkushar64cojwnvhd6@dt64ojgjqdxw>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <mr7gqhvom5soofn2oujzxtsuczsnx2yizkushar64cojwnvhd6@dt64ojgjqdxw>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_044144_956685_CC3AF5F4 
X-CRM114-Status: GOOD (  19.90  )
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

SWwgMTYvMDkvMjUgMTU6MjUsIFV3ZSBLbGVpbmUtS8O2bmlnIGhhIHNjcml0dG86Cj4gSGVsbG8g
QW5nZWxvR2lvYWNjaGlubywKPiAKPiBPbiBUdWUsIFNlcCAxNiwgMjAyNSBhdCAxMDo0NDozOUFN
ICswMjAwLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToKPj4gKy8qKgo+PiArICog
c3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZCgpOiBBbGxvY2F0ZSBhbmQgYWRkIGEgbmV3IFNQ
TUkgc3ViLWRldmljZQo+PiArICogQHNwYXJlbnQ6CVNQTUkgcGFyZW50IGRldmljZSB3aXRoIHBy
ZXZpb3VzbHkgcmVnaXN0ZXJlZCBTUE1JIGNvbnRyb2xsZXIKPj4gKyAqCj4+ICsgKiBSZXR1cm5z
Ogo+PiArICogUG9pbnRlciB0byBuZXdseSBhbGxvY2F0ZWQgU1BNSSBzdWItZGV2aWNlIGZvciBz
dWNjZXNzIG9yIG5lZ2F0aXZlIEVSUl9QVFIuCj4+ICsgKi8KPj4gK3N0cnVjdCBzcG1pX3N1YmRl
dmljZSAqc3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZChzdHJ1Y3Qgc3BtaV9kZXZpY2UgKnNw
YXJlbnQpCj4+ICt7Cj4+ICsJc3RydWN0IHNwbWlfc3ViZGV2aWNlICpzdWJfc2RldjsKPj4gKwlz
dHJ1Y3Qgc3BtaV9kZXZpY2UgKnNkZXY7Cj4+ICsJaW50IHJldDsKPj4gKwo+PiArCXN1Yl9zZGV2
ID0ga3phbGxvYyhzaXplb2YoKnN1Yl9zZGV2KSwgR0ZQX0tFUk5FTCk7Cj4+ICsJaWYgKCFzdWJf
c2RldikKPj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Cj4+ICsKPj4gKwlyZXQgPSBpZGFf
YWxsb2MoJnNwbWlfc3ViZGV2aWNlX2lkYSwgR0ZQX0tFUk5FTCk7Cj4+ICsJaWYgKHJldCA8IDAp
IHsKPj4gKwkJa2ZyZWUoc3ViX3NkZXYpOwo+PiArCQlyZXR1cm4gRVJSX1BUUihyZXQpOwo+PiAr
CX0KPj4gKwo+PiArCXNkZXYgPSAmc3ViX3NkZXYtPnNkZXY7Cj4+ICsJc2Rldi0+Y3RybCA9IHNw
YXJlbnQtPmN0cmw7Cj4+ICsJZGV2aWNlX2luaXRpYWxpemUoJnNkZXYtPmRldik7Cj4+ICsJc2Rl
di0+ZGV2LnBhcmVudCA9ICZzcGFyZW50LT5kZXY7Cj4+ICsJc2Rldi0+ZGV2LmJ1cyA9ICZzcG1p
X2J1c190eXBlOwo+PiArCXNkZXYtPmRldi50eXBlID0gJnNwbWlfc3ViZGV2X3R5cGU7Cj4+ICsK
Pj4gKwlzdWJfc2Rldi0+ZGV2aWQgPSByZXQ7Cj4+ICsJc2Rldi0+dXNpZCA9IHNwYXJlbnQtPnVz
aWQ7Cj4+ICsKPj4gKwlyZXQgPSBkZXZfc2V0X25hbWUoJnNkZXYtPmRldiwgIiVkLSUwMnguJWQu
YXV0byIsCj4+ICsJCQkgICBzZGV2LT5jdHJsLT5uciwgc2Rldi0+dXNpZCwgc3ViX3NkZXYtPmRl
dmlkKTsKPiAKPiBJZiBJIHVuZGVyc3RhbmQgY29ycmVjdGx5IHN1Yl9zZGV2LT5kZXZpZCBpcyBn
bG9iYWxseSB1bmlxdWUuIEkgd29uZGVyCj4gaWYgYSBuYW1lc3BhY2UgdGhhdCBpcyBzcGVjaWZp
YyB0byB0aGUgcGFyZW50IHNwbWkgZGV2aWNlIHdvdWxkIGJlIG1vcmUKPiBzZW5zaWJsZT8hCj4g
CgpPbmx5IGluIHRoZSBjb250ZXh0IG9mIHRoZSBjaGlsZHJlbiBvZiBzZGV2LiBJJ20gbm90IHN1
cmUgb2Ygd2hhdCB5b3UncmUgcHJvcG9zaW5nCmhlcmUsIGxvb2tzIGxpa2UgaXQgd291bGQgY29t
cGxpY2F0ZSB0aGUgY29kZSBmb3Igbm8gYmlnIHJlYXNvbiAtIHVubGVzcyBJIGFtCm1pc3VuZGVy
c3RhbmRpbmcgc29tZXRoaW5nIGhlcmUuCgo+PiArCWlmIChyZXQpCj4+ICsJCWdvdG8gZXJyX3B1
dF9kZXY7Cj4+ICsKPj4gKwlyZXQgPSBkZXZpY2VfYWRkKCZzZGV2LT5kZXYpOwo+PiArCWlmIChy
ZXQpIHsKPj4gKwkJZGV2X2Vycigmc2Rldi0+ZGV2LCAiQ2FuJ3QgYWRkICVzLCBzdGF0dXMgJWRc
biIsCj4gCj4gSSdkIHVzZSAlcGUgaW5zdGVhZCBvZiAlZCBoZXJlLgo+IAoKVGhlIG9ubHkgcmVh
c29uIHdoeSBJIGFtIHVzaW5nICVkIGlzIGZvciBjb25zaXN0ZW5jeSB3aXRoIHRoZSByZXN0IG9m
IHRoZSBjb2RlIHRoYXQKaXMgaW4gU1BNSSAtIHRoZXJlIGlzIGFub3RoZXIgZGV2aWNlX2FkZCgp
IGNhbGwgaW4gc3BtaV9kZXZpY2VfYWRkKCkgd2hpY2ggcHJpbnRzCnRoZSBzYW1lIGVycm9yIGlu
IHRoZSB2ZXJ5IHNhbWUgd2F5IGFzIEknbSBkb2luZyBoZXJlLgoKSSBhZ3JlZSB0aGF0IHVzaW5n
ICVwZSBtYWtlcyBlcnJvciBwcmludHMgbW9yZSByZWFkYWJsZSwgYnV0IHBlcmhhcHMgdGhhdCBz
aG91bGQgYmUKZG9uZSBhcyBhIGxhdGVyIGNsZWFudXAgdG8ga2VlcCBwcmludHMgY29uc2lzdGVu
dCAoYW5kIHBlcmhhcHMgdGhhdCBzaG91bGQgbm90IGJlCmRvbmUgb25seSBpbiBTUE1JIGFueXdh
eSkuCgpJZiB5b3UgaGF2ZSByZWFsbHkgc3Ryb25nIG9waW5pb25zIGFib3V0IGRvaW5nIHRoYXQg
cmlnaHQgbm93IEkgY2FuIGRvIGl0LCBidXQgSQphbnl3YXkgcHJlZmVyIHNlZWluZyB0aGF0IGFz
IGEgbGF0ZXIgY29tbWl0IGRvaW5nIHRoYXQgaW4gdGhlIGVudGlyZSBTUE1JIGNvZGViYXNlLgoK
Q2hlZXJzLApBbmdlbG8KCj4+ICsJCQlkZXZfbmFtZSgmc2Rldi0+ZGV2KSwgcmV0KTsKPj4gKwkJ
Z290byBlcnJfcHV0X2RldjsKPj4gKwl9Cj4+ICsKPj4gKwlyZXR1cm4gc3ViX3NkZXY7Cj4+ICsK
Pj4gK2Vycl9wdXRfZGV2Ogo+PiArCXB1dF9kZXZpY2UoJnNkZXYtPmRldik7Cj4+ICsJcmV0dXJu
IEVSUl9QVFIocmV0KTsKPj4gK30KPj4gK0VYUE9SVF9TWU1CT0xfTlNfR1BMKHNwbWlfc3ViZGV2
aWNlX2FsbG9jX2FuZF9hZGQsICJTUE1JIik7Cj4+ICsKPiAKPiBCZXN0IHJlZ2FyZHMKPiBVd2UK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
