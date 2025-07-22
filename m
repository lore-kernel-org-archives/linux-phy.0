Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F40D9C83F27
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 08:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMsc2HxWYBYBm1zUTAVSIfc5yIn+4T3TbAslnNKi29k=; b=vbzzhSyX859IU5
	JCs5oPvKMoAsJJ/Q9QwFEiroFHNTHhQcj+2BgcXUNOvxI8cR1YOQebJM5m+jKUdSHutPEUr+JWDDM
	UWy92MBCAhtGp4lw20VaaI40kFFi0QOd7nL7RDwNumP8NFKRjsoRV5sPFTY7/sVbZT44O4HJAA+LV
	m5sHKU0aDOx8mhlQkhUCFJpKhOQyDH0lEKgel2fbmDiE6fvqcoblgGP6eF+KUjgJ+Xody237GPeRW
	y/eBBrGyLiLYQMp2OYWEQ42veMZFWjqxx7T3VC94H5yKFcO29Ss5cSUGH62TyEHrjPhqU+144lbpU
	FWoRV2BknvKp2U7bmYHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue8Q0-00000001qEc-2j2F;
	Tue, 22 Jul 2025 08:32:12 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue8G4-00000001oPe-3e9A
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 08:21:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753172514;
	bh=m9Cjc6HRRFzEiG80Q8vW+3cKsJG18DEJoUl+3hGH1n4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FNa/GUKbYIOtex3SQ7smMQoBDj1yIHU0fvhtV9ZWUAWVlvvlXir1Mi3QEmZHPq1nA
	 r39OUKfDB7EF9AFX3iNrE18IpgSed1Uy7uTS6Mv0Z6egzFIxk203c2BXTZxiPY4Vxu
	 OKmTmIM32NIwlkejzsJvSPc2VSMVtM8FVqis2mMN1e/BQPO2SlIZyBIyVjvNTbVDpm
	 HaFkt9zN6PBwUmG0j2rK0SkdX6mElxseo7lGvTROwpcgDSo2OyKoGt+TgMtZTUswna
	 SxISyQ2AVtN4nnpFi74cC8F0Z9Y3X6TQeQXMfqVmAGdDefRzp0RWwK2KVYdCz14PTa
	 nF+zp3h3in+DQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B536A17E088B;
	Tue, 22 Jul 2025 10:21:53 +0200 (CEST)
Message-ID: <b0bb47c3-fa82-4a03-9b76-c4a82a72d444@collabora.com>
Date: Tue, 22 Jul 2025 10:21:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: Casey Connolly <casey.connolly@linaro.org>, sboyd@kernel.org
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 srini@kernel.org, vkoul@kernel.org, kishon@kernel.org, sre@kernel.org,
 krzysztof.kozlowski@linaro.org, u.kleine-koenig@baylibre.com,
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org
References: <20250721075525.29636-1-angelogioacchino.delregno@collabora.com>
 <20250721075525.29636-3-angelogioacchino.delregno@collabora.com>
 <e724e6a2-21a8-436a-8809-ce73c0afa433@linaro.org>
 <b06969d2-0c35-44c7-bb2c-162942186c53@collabora.com>
 <c21ff3ce-c81a-4419-84fd-d394d0a06af6@linaro.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <c21ff3ce-c81a-4419-84fd-d394d0a06af6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_012157_065183_2D732865 
X-CRM114-Status: GOOD (  24.43  )
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

SWwgMjEvMDcvMjUgMTU6NTYsIENhc2V5IENvbm5vbGx5IGhhIHNjcml0dG86Cj4gCj4gCj4gT24g
MjEvMDcvMjAyNSAxNDo0NSwgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6Cj4+IEls
IDIxLzA3LzI1IDEyOjQ0LCBDYXNleSBDb25ub2xseSBoYSBzY3JpdHRvOgo+Pj4gSGkgQW5nZWxv
LAo+Pj4KPj4+IE9uIDIxLzA3LzIwMjUgMDk6NTUsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25v
IHdyb3RlOgo+Pj4+IFNvbWUgUXVhbGNvbW0gUE1JQ3MgaW50ZWdyYXRlIGEgU0RBTSBkZXZpY2Us
IGludGVybmFsbHkgbG9jYXRlZCBpbgo+Pj4+IGEgc3BlY2lmaWMgYWRkcmVzcyByYW5nZSByZWFj
aGFibGUgdGhyb3VnaCBTUE1JIGNvbW11bmljYXRpb24uCj4+Pj4KPj4+PiBJbnN0ZWFkIG9mIHVz
aW5nIHRoZSBwYXJlbnQgU1BNSSBkZXZpY2UgKHRoZSBtYWluIFBNSUMpIGFzIGEga2luZAo+Pj4+
IG9mIHN5c2NvbiBpbiB0aGlzIGRyaXZlciwgcmVnaXN0ZXIgYSBuZXcgU1BNSSBzdWItZGV2aWNl
IGZvciBTREFNCj4+Pj4gYW5kIGluaXRpYWxpemUgaXRzIG93biByZWdtYXAgd2l0aCB0aGlzIHN1
Yi1kZXZpY2UncyBzcGVjaWZpYyBiYXNlCj4+Pj4gYWRkcmVzcywgcmV0cmlldmVkIGZyb20gdGhl
IGRldmljZXRyZWUuCj4+Pj4KPj4+PiBUaGlzIGFsbG93cyB0byBzdG9wIG1hbnVhbGx5IGFkZGlu
ZyB0aGUgcmVnaXN0ZXIgYmFzZSBhZGRyZXNzIHRvCj4+Pj4gZXZlcnkgUi9XIGNhbGwgaW4gdGhp
cyBkcml2ZXIsIGFzIHRoaXMgY2FuIGJlLCBhbmQgaXMgbm93LCBoYW5kbGVkCj4+Pj4gYnkgdGhl
IHJlZ21hcCBBUEkgaW5zdGVhZC4KPj4+Cj4+PiBUaGlzIGlzIGhvbmVzdGx5IGEgcmVhbGx5IG5p
Y2UgaW1wcm92ZW1lbnQgOkQ+Cj4+Cj4+IFRoYW5rcyEgOi1ECj4+Cj4+Pj4gU2lnbmVkLW9mZi1i
eTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8KPj4+PiA8YW5nZWxvZ2lvYWNjaGluby5kZWxy
ZWdub0Bjb2xsYWJvcmEuY29tPgo+Pj4+IC0tLQo+Pj4+ICDCoCBkcml2ZXJzL252bWVtL3Fjb20t
c3BtaS1zZGFtLmMgfCA0MSArKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCj4+Pj4g
IMKgIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKPj4+
Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWVtL3Fjb20tc3BtaS1zZGFtLmMgYi9kcml2
ZXJzL252bWVtL3Fjb20tCj4+Pj4gc3BtaS1zZGFtLmMKPj4+PiBpbmRleCA0ZjFjY2E2ZWFiNzEu
LjFiODBlODU2M2EzMyAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL252bWVtL3Fjb20tc3BtaS1z
ZGFtLmMKPj4+PiArKysgYi9kcml2ZXJzL252bWVtL3Fjb20tc3BtaS1zZGFtLmMKPj4+PiBAQCAt
OSw2ICs5LDcgQEAKPj4+PiAgwqAgI2luY2x1ZGUgPGxpbnV4L252bWVtLXByb3ZpZGVyLmg+Cj4+
Pj4gIMKgICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPj4+PiAgwqAgI2luY2x1
ZGUgPGxpbnV4L3JlZ21hcC5oPgo+Pj4+ICsjaW5jbHVkZSA8bGludXgvc3BtaS5oPgo+Pj4+ICDC
oCDCoCAjZGVmaW5lIFNEQU1fTUVNX1NUQVJUwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAweDQwCj4+
Pj4gIMKgICNkZWZpbmUgUkVHSVNURVJfTUFQX0lEwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAweDQw
Cj4+Pj4gQEAgLTIwLDcgKzIxLDYgQEAKPj4+PiAgwqAgc3RydWN0IHNkYW1fY2hpcCB7Cj4+Pj4g
IMKgwqDCoMKgwqAgc3RydWN0IHJlZ21hcMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKnJlZ21hcDsK
Pj4+PiAgwqDCoMKgwqDCoCBzdHJ1Y3QgbnZtZW1fY29uZmlnwqDCoMKgwqDCoMKgwqAgc2RhbV9j
b25maWc7Cj4+Pj4gLcKgwqDCoCB1bnNpZ25lZCBpbnTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJh
c2U7Cj4+Pj4gIMKgwqDCoMKgwqAgdW5zaWduZWQgaW50wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
aXplOwo+Pj4+ICDCoCB9Owo+Pj4+ICDCoCBAQCAtNzMsNyArNzMsNyBAQCBzdGF0aWMgaW50IHNk
YW1fcmVhZCh2b2lkICpwcml2LCB1bnNpZ25lZCBpbnQKPj4+PiBvZmZzZXQsIHZvaWQgKnZhbCwK
Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwo+Pj4+ICDCoMKgwqDCoMKg
IH0KPj4+PiAgwqAgLcKgwqDCoCByYyA9IHJlZ21hcF9idWxrX3JlYWQoc2RhbS0+cmVnbWFwLCBz
ZGFtLT5iYXNlICsgb2Zmc2V0LCB2YWwsCj4+Pj4gYnl0ZXMpOwo+Pj4+ICvCoMKgwqAgcmMgPSBy
ZWdtYXBfYnVsa19yZWFkKHNkYW0tPnJlZ21hcCwgb2Zmc2V0LCB2YWwsIGJ5dGVzKTsKPj4+PiAg
wqDCoMKgwqDCoCBpZiAocmMgPCAwKQo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2X2Vycihk
ZXYsICJGYWlsZWQgdG8gcmVhZCBTREFNIG9mZnNldCAlI3ggbGVuPSV6ZCwKPj4+PiByYz0lZFxu
IiwKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgb2Zmc2V0LCBieXRlcywgcmMpOwo+Pj4+IEBAIC0xMDAsNyArMTAwLDcgQEAgc3RhdGljIGlu
dCBzZGFtX3dyaXRlKHZvaWQgKnByaXYsIHVuc2lnbmVkIGludAo+Pj4+IG9mZnNldCwgdm9pZCAq
dmFsLAo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+Pj4gIMKgwqDC
oMKgwqAgfQo+Pj4+ICDCoCAtwqDCoMKgIHJjID0gcmVnbWFwX2J1bGtfd3JpdGUoc2RhbS0+cmVn
bWFwLCBzZGFtLT5iYXNlICsgb2Zmc2V0LCB2YWwsCj4+Pj4gYnl0ZXMpOwo+Pj4+ICvCoMKgwqAg
cmMgPSByZWdtYXBfYnVsa193cml0ZShzZGFtLT5yZWdtYXAsIG9mZnNldCwgdmFsLCBieXRlcyk7
Cj4+Pj4gIMKgwqDCoMKgwqAgaWYgKHJjIDwgMCkKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIGRl
dl9lcnIoZGV2LCAiRmFpbGVkIHRvIHdyaXRlIFNEQU0gb2Zmc2V0ICUjeCBsZW49JXpkLAo+Pj4+
IHJjPSVkXG4iLAo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBvZmZzZXQsIGJ5dGVzLCByYyk7Cj4+Pj4gQEAgLTExMCwyOCArMTEwLDQ3IEBA
IHN0YXRpYyBpbnQgc2RhbV93cml0ZSh2b2lkICpwcml2LCB1bnNpZ25lZCBpbnQKPj4+PiBvZmZz
ZXQsIHZvaWQgKnZhbCwKPj4+PiAgwqAgwqAgc3RhdGljIGludCBzZGFtX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+Pj4gIMKgIHsKPj4+PiArwqDCoMKgIHN0cnVjdCByZWdt
YXBfY29uZmlnIHNkYW1fcmVnbWFwX2NvbmZpZyA9IHsKPj4+PiArwqDCoMKgwqDCoMKgwqAgLnJl
Z19iaXRzID0gMTYsCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIC52YWxfYml0cyA9IDE2LAo+Pj4KPj4+
IEkgYmVsaWV2ZSByZWdpc3RlcnMgYXJlIDggYml0cyB3aWRlLCBhdCBsZWFzdCBvbiBRdWFsY29t
bSBwbGF0Zm9ybXMuCj4+Pgo+Pgo+PiBJIHVzZWQgMTYgYmVjYXVzZSB1c3VhbGx5IHRoYXQncyB0
aGUgdXN1YWwgZGVmYXVsdCBmb3IgU1BNSSAtIGJ1dCBpZgo+PiB5b3UncmUgc3VyZQo+PiBhYm91
dCBRdWFsY29tbSBwbGF0Zm9ybXMgaGF2aW5nIDgtYml0cyB3aWRlIHJlZ2lzdGVycyBhbmQgeW91
IGNhbgo+PiBjb25maXJtIHRoYXQsCj4+IEkgY2FuIGNoYW5nZSBib3RoIG9mIHRob3NlIHRvIDgg
aW4gYSBqaWZmeS4KPiAKPiByZWdfYml0cyBzaG91bGQgYmUgMTYsIG9ubHkgdmFsX2JpdHMgbmVl
ZHMgY2hhbmdpbmcuCj4gCj4+Cj4+IEkgYW55d2F5IGhhdmUgdG8gc2VuZCBhIHYyIGJlY2F1c2Ug
SSBmb3Jnb3QgYW4gZXJyb3IgY2hlY2sgLSBzbyBjaGFuZ2luZwo+PiB0aGlzIGlzCj4+IG5vdCBh
IHByb2JsZW0gYXQgYWxsIGZvciBtZS4KPj4KPj4gQnV0Lgo+Pgo+PiBCZWZvcmUgbWUgY2hhbmdp
bmcgLSBjYW4geW91IHBsZWFzZSBwbGVhc2UgcGxlYXNlIGRvdWJsZSBjaGVjayBhbmQgY29uZmly
bT8KPj4KPj4gSWYgeW91IGNhbiBhbHNvIGNoZWNrIHRoZSByZWdpc3RlciB3aWR0aCBvZiB0aGUg
b3RoZXJzIHRoYXQgSSBjb252ZXJ0ZWQsCj4+IEknZCByZWFsbHkKPj4gYXBwcmVjaWF0ZSB0aGF0
IChJIGhhdmUgbm8gZGF0YXNoZWV0cyBmb3IgcWNvbSBzbyBpdCdzIGEgYml0IG9mIGEKPj4gZ3Vl
c3NpbmcgZ2FtZSBmb3IKPj4gbWUgaGVyZS4uLiA6LVApLCBqdXN0IHNvIHRoYXQgd2UgZ2V0IGV2
ZXJ5dGhpbmcgcmlnaHQgZnJvbSB0aGUgZ2V0LQo+PiBnbyAuLi4gZXZlbiBpZgo+PiBhIG1pc21h
dGNoIHdvdWxkbid0IHJlYWxseSBjYXVzZSBpc3N1ZXMgaW4gdGhlIGN1cnJlbnQgc3RhdGUgb2Yg
dGhpbmdzLgo+Pgo+PiBUaGF0J3MgYmVjYXVzZSAtIEkganVzdCBub3RpY2VkIC0gaW4gcWNvbS1z
cG1pLXBtaWMuYywgcmVnX2JpdHMgaXMgMTYsCj4+IGJ1dCB2YWxfYml0cwo+PiBpcyA4ICh3aGlj
aCBiYXNpY2FsbHkgbWVhbnMgInRoZSByZWdpc3RlcnMgYXJlIDE2LWJpdHMgd2lkZSwgYnV0IHdl
Cj4+IGFsd2F5cyBvbmx5Cj4+IGNhcmUgYWJvdXQgdGhlIGxvd2VyIDggYml0cykuCj4gCj4geWVh
aCB0aGF0J3MgcmlnaHQsIHNvIGFzIG9mIHRvZGF5IHdoZXJlIHdlIGRvbid0IGhhdmUgdGhlIHN1
YmRldmljZXMgd2UKPiBhbHdheXMgZ2V0IDggYml0IHZhbHVlcyBmcm9tIHRoZSByZWdpc3RlcnMu
Cj4gCj4gSSBkb24ndCBoYXZlIHNvIG11Y2ggYWNjZXNzIHRvIGRvY3MgYW55bW9yZSBidXQgSSBv
bmx5IGV2ZXIgcmVtZW1iZXIKPiBzZWVpbmcgOCBiaXQgd2lkZSByZWdpc3RlcnMgb24gUXVhbGNv
bW0gUE1JQ3MsIEkndmUgbmV2ZXIgc2VlbiBhbnl0aGluZwo+IHdpZGVyLCBJIGNhbiB0aGluayBv
ZiBhIGZldyBkcml2ZXJzIHdoZXJlIGNoYW5naW5nIHRoaXMgdG8gMTYgd291bGQgZm9yCj4gc3Vy
ZSBjYXVzZSBoYXZvYy4KPiAKClllYWgsIHJpZ2h0LiBJJ20gY2hhbmdpbmcgYWxsIHZhbF9iaXRz
IHRvIDggdG8gZW5zdXJlIGNvbXBhdGliaWxpdHkuCgpDaGVlcnMsCkFuZ2VsbwoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
