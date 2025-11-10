Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0339BCCFA13
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 09:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNtR5pW5QOoRNtMP4qjf0b8mu06ZrL9rxJ4YQwt9YX4=; b=YZNaAF0b+GCz1S
	1SQ0GaiWiqbd8qY+C707uxYNvBZhxnAPpKm2BHU3O3r2IXsoTfIm9qe5YhiVLU8vpmTzV9xUN822q
	RTZlJbq2JuCU0bm4J3C1rnvTdTGFZcP+SI6ybNtuC2tBGREhY29KAdT9qjR3qXTRJMPxntOUujAcL
	FYOnnXiiyhFJP14HNQZWMqgFFdy7QVat5qgBQcEgpdkgVZrw1WQ6Fkd/3watr3zSt+n8d1Gx/1K4w
	3rcR48gKKzKqbvHq5mfHogno0u2KhTx+zh4T+gWNXClsdUZz9ZReFABQVcVkKJD5gi1hFq/ETY8Vq
	Y5Yqq4x7KW4TEupn7IHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIO43-000000054lM-3CGF;
	Mon, 10 Nov 2025 09:19:55 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIO3z-000000054jn-2UUo;
	Mon, 10 Nov 2025 09:19:53 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1762766377; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=mQxPVYOATQezqBL5yCJPKwUbX+JgMrUABoUyvim3PFza8c5ZHhZestibHiJFWxXvoUng13jVC8P9S64jLTObD3EpZPUjgof53bxKAflmbD/d78+0IWCG8rNnUURNAQ8Oje3LhaAfmz53emfB473ehmaxkoUhLVNdPpqAiCm1FeU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1762766377; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=hxLXwdvcR73afnWX3+U+TbZmEVnvtJ1WDn3vMJOYfeI=; 
	b=AUtP6OnBexLHP6078mlNSuvrN1eMtg8eyILcYQm+PCUyEel5aO3GjP5o+k/IR2p8jF5aO/vUOfWan+DKf+K6QVxlPMK3JNUqhpcbD2Q6ZQc69QnOsjAw2W5iAuL+QEHBPlJ0aoWglABTbUZzwNG9t4F8qJN4UUICHgiaxNcj24E=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1762766376;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=hxLXwdvcR73afnWX3+U+TbZmEVnvtJ1WDn3vMJOYfeI=;
	b=FSyKtglpf319WU2vjW77dgt25xU6yIInC/sCx6LK4hbKihknuUJcM+Xfc4doAzdm
	TkVp3GcYUsXL3ydIq01zsOAj8rnMcOSkAt6BZ5AUWKkDs6fcC2OqtvmkDzvhvjE66+d
	HJOO9ylHv/KRJd9AOt8FaM/tBgmLyh5foC6PyvK0=
Received: by mx.zohomail.com with SMTPS id 1762766374404175.65977685098846;
	Mon, 10 Nov 2025 01:19:34 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Peter Wang =?UTF-8?B?KOeOi+S/oeWPiyk=?= <peter.wang@mediatek.com>,
 Chunfeng Yun =?UTF-8?B?KOS6keaYpeWzsCk=?= <Chunfeng.Yun@mediatek.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "robh@kernel.org" <robh@kernel.org>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@hansenpartnership.com>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Chaotian Jing =?UTF-8?B?KOS6leacneWkqSk=?= <Chaotian.Jing@mediatek.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kernel@collabora.com" <kernel@collabora.com>,
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v3 09/24] scsi: ufs: mediatek: Rework the crypt-boost stuff
Date: Mon, 10 Nov 2025 10:19:25 +0100
Message-ID: <6210035.lOV4Wx5bFT@workhorse>
In-Reply-To: <9ae7495023a8562566ff57bd2dfa60524194ee30.camel@mediatek.com>
References: <20251023-mt8196-ufs-v3-0-0f04b4a795ff@collabora.com>
 <20251023-mt8196-ufs-v3-9-0f04b4a795ff@collabora.com>
 <9ae7495023a8562566ff57bd2dfa60524194ee30.camel@mediatek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_011951_686104_382A5EB8 
X-CRM114-Status: GOOD (  30.86  )
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

T24gVHVlc2RheSwgNCBOb3ZlbWJlciAyMDI1IDA4OjI4OjE4IENlbnRyYWwgRXVyb3BlYW4gU3Rh
bmRhcmQgVGltZSBDaGFvdGlhbiBKaW5nICjkupXmnJ3lpKkpIHdyb3RlOgo+IE9uIFRodSwgMjAy
NS0xMC0yMyBhdCAyMTo0OSArMDIwMCwgTmljb2xhcyBGcmF0dGFyb2xpIHdyb3RlOgo+ID4gSSBk
b24ndCBrbm93IHdoZXRoZXIgdGhlIGNyeXB0LWJvb3N0IGZ1bmN0aW9uYWxpdHkgYXMgaXQgaXMg
Y3VycmVudGx5Cj4gPiBpbXBsZW1lbnRlZCBpcyBldmVuIGFwcHJvcHJpYXRlIGZvciBtYWlubGlu
ZS4gSXQgbWlnaHQgYmUgYmV0dGVyIGRvbmUKPiA+IGluCj4gPiBzb21lIGdlbmVyaWMgd2F5LiBC
dXQgd2hhdCBJIGRvIGtub3cgaXMgdGhhdCBJIGNhbiByZXdvcmsgdGhlIGNvZGUgdG8KPiA+IG1h
a2UgaXQgbGVzcyBvYnR1c2UuCj4gPiAKPiA+IFByZWZpeCB0aGUgYm9vc3Qgc3R1ZmYgd2l0aCB0
aGUgYXBwcm9wcmlhdGUgdmVuZG9yIHByZWZpeCwgcmVtb3ZlIHRoZQo+ID4gcG9pbnRsZXNzIGNs
b2NrIHdyYXBwZXJzLCBhbmQgcmV3b3JrIHRoZSBmdW5jdGlvbi4KPiA+IAo+ID4gU2lnbmVkLW9m
Zi1ieTogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNv
bT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMgfCA5MSArKysr
KysrKysrKysrKystLS0tLS0tLS0tLS0tLQo+ID4gLS0tLS0tLS0tLS0tCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDU5IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYyBiL2RyaXZlcnMvdWZzL2hvc3Qv
dWZzLQo+ID4gbWVkaWF0ZWsuYwo+ID4gaW5kZXggMTMxZjcxMTQ1YTEyLi45YzBhYzcyZDZlNDMg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCj4gPiArKysg
Yi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCj4gPiBAQCAtNTYyLDIxICs1NjIsNiBA
QCBzdGF0aWMgaW50IHVmc19tdGtfbXBoeV9wb3dlcl9vbihzdHJ1Y3QgdWZzX2hiYQo+ID4gKmhi
YSwgYm9vbCBvbikKPiA+ICAJcmV0dXJuIDA7Cj4gPiAgfQo+ID4gIAo+ID4gLXN0YXRpYyBpbnQg
dWZzX210a19nZXRfaG9zdF9jbGsoc3RydWN0IGRldmljZSAqZGV2LCBjb25zdCBjaGFyCj4gPiAq
bmFtZSwKPiA+IC0JCQkJc3RydWN0IGNsayAqKmNsa19vdXQpCj4gPiAtewo+ID4gLQlzdHJ1Y3Qg
Y2xrICpjbGs7Cj4gPiAtCWludCBlcnIgPSAwOwo+ID4gLQo+ID4gLQljbGsgPSBkZXZtX2Nsa19n
ZXQoZGV2LCBuYW1lKTsKPiA+IC0JaWYgKElTX0VSUihjbGspKQo+ID4gLQkJZXJyID0gUFRSX0VS
UihjbGspOwo+ID4gLQllbHNlCj4gPiAtCQkqY2xrX291dCA9IGNsazsKPiA+IC0KPiA+IC0JcmV0
dXJuIGVycjsKPiA+IC19Cj4gPiAtCj4gPiAgc3RhdGljIHZvaWQgdWZzX210a19ib29zdF9jcnlw
dChzdHJ1Y3QgdWZzX2hiYSAqaGJhLCBib29sIGJvb3N0KQo+ID4gIHsKPiA+ICAJc3RydWN0IHVm
c19tdGtfaG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+ID4gQEAgLTYzMyw2
NSArNjE4LDUzIEBAIHN0YXRpYyB2b2lkIHVmc19tdGtfYm9vc3RfY3J5cHQoc3RydWN0IHVmc19o
YmEKPiA+ICpoYmEsIGJvb2wgYm9vc3QpCj4gPiAgCWNsa19kaXNhYmxlX3VucHJlcGFyZShjZmct
PmNsa19jcnlwdF9tdXgpOwo+ID4gIH0KPiA+ICAKPiA+IC1zdGF0aWMgaW50IHVmc19tdGtfaW5p
dF9ob3N0X2NsayhzdHJ1Y3QgdWZzX2hiYSAqaGJhLCBjb25zdCBjaGFyCj4gPiAqbmFtZSwKPiA+
IC0JCQkJIHN0cnVjdCBjbGsgKipjbGspCj4gPiAtewo+ID4gLQlpbnQgcmV0Owo+ID4gLQo+ID4g
LQlyZXQgPSB1ZnNfbXRrX2dldF9ob3N0X2NsayhoYmEtPmRldiwgbmFtZSwgY2xrKTsKPiA+IC0J
aWYgKHJldCkgewo+ID4gLQkJZGV2X2luZm8oaGJhLT5kZXYsICIlczogZmFpbGVkIHRvIGdldCAl
czogJWQiLAo+ID4gX19mdW5jX18sCj4gPiAtCQkJIG5hbWUsIHJldCk7Cj4gPiAtCX0KPiA+IC0K
PiA+IC0JcmV0dXJuIHJldDsKPiA+IC19Cj4gPiAtCj4gPiAtc3RhdGljIHZvaWQgdWZzX210a19p
bml0X2Jvb3N0X2NyeXB0KHN0cnVjdCB1ZnNfaGJhICpoYmEpCj4gPiArc3RhdGljIGludCB1ZnNf
bXRrX2luaXRfYm9vc3RfY3J5cHQoc3RydWN0IHVmc19oYmEgKmhiYSkKPiBZb3UgY2hhbmdlIHRo
ZSByZXR1cm4gdHlwZSBidXQgbmV2ZXIgY2hlY2tlZCB0aGUgcmV0dXJuIHZhbHVlIHdoZW4KPiBj
YWxsaW5nIHRoaXMgZnVuY3Rpb24gPwoKWWVhaCwgSSBzaG91bGQgcHJvYmFibHkgY2hlY2sgdGhl
IHJldHVybiBpbiB1ZnNfbXRrX2luaXRfaG9zdF9jYXBzCmluc3RlYWQgb2YgY29udGludWluZyBv
biBzaWxlbnRseS4KCj4gPiAgewo+ID4gIAlzdHJ1Y3QgdWZzX210a19ob3N0ICpob3N0ID0gdWZz
aGNkX2dldF92YXJpYW50KGhiYSk7Cj4gPiAgCXN0cnVjdCB1ZnNfbXRrX2NyeXB0X2NmZyAqY2Zn
Owo+ID4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBoYmEtPmRldjsKPiA+IC0Jc3RydWN0IHJlZ3Vs
YXRvciAqcmVnOwo+ID4gLQl1MzIgdm9sdDsKPiA+ICsJaW50IHJldDsKPiA+ICAKPiA+IC0JaG9z
dC0+Y3J5cHQgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKihob3N0LT5jcnlwdCkpLAo+ID4g
LQkJCQkgICBHRlBfS0VSTkVMKTsKPiA+IC0JaWYgKCFob3N0LT5jcnlwdCkKPiA+IC0JCWdvdG8g
ZGlzYWJsZV9jYXBzOwo+ID4gKwljZmcgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKmNmZyks
IEdGUF9LRVJORUwpOwo+ID4gKwlpZiAoIWNmZykKPiA+ICsJCXJldHVybiAtRU5PTUVNOwo+ID4g
IAo+ID4gLQlyZWcgPSBkZXZtX3JlZ3VsYXRvcl9nZXRfb3B0aW9uYWwoZGV2LCAiZHZmc3JjLXZj
b3JlIik7Cj4gPiAtCWlmIChJU19FUlIocmVnKSkgewo+ID4gLQkJZGV2X2luZm8oZGV2LCAiZmFp
bGVkIHRvIGdldCBkdmZzcmMtdmNvcmU6ICVsZCIsCj4gPiAtCQkJIFBUUl9FUlIocmVnKSk7Cj4g
PiAtCQlnb3RvIGRpc2FibGVfY2FwczsKPiA+ICsJY2ZnLT5yZWdfdmNvcmUgPSBkZXZtX3JlZ3Vs
YXRvcl9nZXRfb3B0aW9uYWwoZGV2LCAiZHZmc3JjLQo+ID4gdmNvcmUiKTsKPiA+ICsJaWYgKElT
X0VSUihjZmctPnJlZ192Y29yZSkpIHsKPiA+ICsJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGdl
dCBkdmZzcmMtdmNvcmU6ICVwZSIsIGNmZy0KPiA+ID5yZWdfdmNvcmUpOwo+IFNpbmNlIHRoaXMg
cmVndWxhdG9yIGlzIG9wdGlvbmFsLCB3aHkgdXNlIGRldl9lcnIgPyBhbmQgd2h5IHJldHVuZSBh
bgo+IGVycm9yIHNpbmNlIHlvdSBuZXZlciBjaGVjayB0aGUgcmV0dXJuIHZhbHVlID8KCkJlY2F1
c2UgZ2V0X29wdGlvbmFsIGRvZXNuJ3QgbWVhbiB3aGF0IHlvdSB0aGluayBpdCBtZWFucy4gSXQg
bWVhbnMKdGhlIGZ1bmN0aW9uIHJldHVybnMgLUVOT0RFViBpZiB0aGUgcmVndWxhdG9yIGlzIGFi
c2VudCwgaW5zdGVhZCBvZgpjcmVhdGluZyBhIGR1bW15IHN1cHBseS4gV2Ugd2FudCB0byBoYXJk
IGVycm9yIG91dCBpZiB0aGUgcmVndWxhdG9yCmlzIGFic2VudCwgYmVjYXVzZSB0aGUgcmVndWxh
dG9yIGlzIG5lZWRlZC4KCldoZXRoZXIgb3Igbm90IHRoZSByZXR1cm4gY29kZSBpcyBjaGVja2Vk
IG1ha2VzIG5vIGZ1bmN0aW9uYWwKZGlmZmVyZW5jZSBpbiB0aGlzIGNhc2UuIElmIHRoaXMgZnVu
Y3Rpb24gZXhpdHMgZWFybHksClVGU19NVEtfQ0FQX0JPT1NUX0NSWVBUX0VOR0lORSBpc24ndCBh
ZGRlZCB0byB0aGUgaG9zdCBjYXBzLAphbmQgdGhlIGhvc3QtPmNyeXB0IG1lbWJlciBpc24ndCBz
ZXQgdG8gY2ZnLgoKVGhlIHJldHVybiBjb2RlIG1heSBiZSB1c2VmdWwgZm9yIGFkZGl0aW9uYWwg
bG9nZ2luZywgd2hpY2ggaXMgbm90CmNyaXRpY2FsIHRvIHRoZSBjb3JyZWN0bmVzcyBvZiB0aGUg
Y29kZS4KCj4gPiArCQlyZXR1cm4gUFRSX0VSUihjZmctPnJlZ192Y29yZSk7Cj4gPiAgCX0KPiA+
ICAKPiA+IC0JaWYgKG9mX3Byb3BlcnR5X3JlYWRfdTMyKGRldi0+b2Zfbm9kZSwgImJvb3N0LWNy
eXB0LXZjb3JlLW1pbiIsCj4gPiAtCQkJCSAmdm9sdCkpIHsKPiA+IC0JCWRldl9pbmZvKGRldiwg
ImZhaWxlZCB0byBnZXQgYm9vc3QtY3J5cHQtdmNvcmUtbWluIik7Cj4gPiAtCQlnb3RvIGRpc2Fi
bGVfY2FwczsKPiA+ICsJcmV0ID0gb2ZfcHJvcGVydHlfcmVhZF91MzIoZGV2LT5vZl9ub2RlLCAi
bWVkaWF0ZWssYm9vc3QtY3J5cHQtCj4gPiB2Y29yZS1taW4iLAo+ID4gKwkJCQkgICAmY2ZnLT52
Y29yZV92b2x0KTsKPiA+ICsJaWYgKHJldCkgewo+ID4gKwkJZGV2X2VycihkZXYsICJGYWlsZWQg
dG8gZ2V0IG1lZGlhdGVrLGJvb3N0LWNyeXB0LXZjb3JlLQo+ID4gbWluOiAlcGVcbiIsCj4gPiAr
CQkJRVJSX1BUUihyZXQpKTsKPiA+ICsJCXJldHVybiByZXQ7Cj4gPiAgCX0KPiA+ICAKPiA+IC0J
Y2ZnID0gaG9zdC0+Y3J5cHQ7Cj4gPiAtCWlmICh1ZnNfbXRrX2luaXRfaG9zdF9jbGsoaGJhLCAi
Y3J5cHRfbXV4IiwKPiA+IC0JCQkJICAmY2ZnLT5jbGtfY3J5cHRfbXV4KSkKPiA+IC0JCWdvdG8g
ZGlzYWJsZV9jYXBzOwo+ID4gKwljZmctPmNsa19jcnlwdF9tdXggPSBkZXZtX2Nsa19nZXQoZGV2
LCAiY3J5cHRfbXV4Iik7Cj4gPiArCWlmIChJU19FUlIoY2ZnLT5jbGtfY3J5cHRfbXV4KSkgewo+
ID4gKwkJZGV2X2VycihkZXYsICJGYWlsZWQgdG8gZ2V0IGNsb2NrIGNyeXB0X211eDogJXBlXG4i
LAo+ID4gY2ZnLT5jbGtfY3J5cHRfbXV4KTsKPiA+ICsJCXJldHVybiBQVFJfRVJSKGNmZy0+Y2xr
X2NyeXB0X211eCk7Cj4gPiArCX0KPiA+ICAKPiA+IC0JaWYgKHVmc19tdGtfaW5pdF9ob3N0X2Ns
ayhoYmEsICJjcnlwdF9scCIsCj4gPiAtCQkJCSAgJmNmZy0+Y2xrX2NyeXB0X2xwKSkKPiA+IC0J
CWdvdG8gZGlzYWJsZV9jYXBzOwo+ID4gKwljZmctPmNsa19jcnlwdF9scCA9IGRldm1fY2xrX2dl
dChkZXYsICJjcnlwdF9scCIpOwo+ID4gKwlpZiAoSVNfRVJSKGNmZy0+Y2xrX2NyeXB0X2xwKSkg
ewo+ID4gKwkJZGV2X2VycihkZXYsICJGYWlsZWQgdG8gZ2V0IGNsb2NrIGNyeXB0X2xwOiAlcGVc
biIsCj4gPiBjZmctPmNsa19jcnlwdF9scCk7Cj4gPiArCQlyZXR1cm4gUFRSX0VSUihjZmctPmNs
a19jcnlwdF9scCk7Cj4gPiArCX0KPiA+ICAKPiA+IC0JaWYgKHVmc19tdGtfaW5pdF9ob3N0X2Ns
ayhoYmEsICJjcnlwdF9wZXJmIiwKPiA+IC0JCQkJICAmY2ZnLT5jbGtfY3J5cHRfcGVyZikpCj4g
PiAtCQlnb3RvIGRpc2FibGVfY2FwczsKPiA+ICsJY2ZnLT5jbGtfY3J5cHRfcGVyZiA9IGRldm1f
Y2xrX2dldChkZXYsICJjcnlwdF9wZXJmIik7Cj4gPiArCWlmIChJU19FUlIoY2ZnLT5jbGtfY3J5
cHRfcGVyZikpIHsKPiA+ICsJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGdldCBjbG9jayBjcnlw
dF9wZXJmOiAlcGVcbiIsCj4gPiBjZmctPmNsa19jcnlwdF9wZXJmKTsKPiA+ICsJCXJldHVybiBQ
VFJfRVJSKGNmZy0+Y2xrX2NyeXB0X3BlcmYpOwo+ID4gKwl9Cj4gPiAgCj4gPiAtCWNmZy0+cmVn
X3Zjb3JlID0gcmVnOwo+ID4gLQljZmctPnZjb3JlX3ZvbHQgPSB2b2x0Owo+ID4gKwlob3N0LT5j
cnlwdCA9IGNmZzsKPiA+ICAJaG9zdC0+Y2FwcyB8PSBVRlNfTVRLX0NBUF9CT09TVF9DUllQVF9F
TkdJTkU7Cj4gPiAgCj4gPiAtZGlzYWJsZV9jYXBzOgo+ID4gLQlyZXR1cm47Cj4gPiArCXJldHVy
biAwOwo+ID4gIH0KPiA+ICAKPiA+ICBzdGF0aWMgdm9pZCB1ZnNfbXRrX2luaXRfaG9zdF9jYXBz
KHN0cnVjdCB1ZnNfaGJhICpoYmEpCj4gPiAKPiAKCgoKCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
