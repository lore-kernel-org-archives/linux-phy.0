Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6122CCFA1E
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 09:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82hityx9R7HFK950azrKNrIDrxtk9xbJDlRVuP6CMCo=; b=14jshnuHx//HKb
	rffApGue1368Npa7ZuJKBm+IyZLABjcDrwxcVWOvNGNIcDd8dr4fED0uF+9tj30VPiviCTlrTLHUN
	COE0H6Rdb9KZYXoDytgGTT0v6aLXb97hvbncE8uVO0sXzyzYUWoHAtU64/vKViRaYB5o+KCFhDihg
	Fi4s1o/SobPzlVoUO0sHkys5rI/rXtoRVUC8vryspwMRI0hUu9+aCcovCK68DNu+r2ffHUj7A0PRY
	Z4/wvTS5oEEDv9mZcfzlthlI6UC4jDSA4iRgZ4fpKMjCVUcXJ64SIxxdyzUPNERK46Upqne0IGhca
	8YivYoIdfyuBOCH5tpWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIO87-000000055PN-45Q5;
	Mon, 10 Nov 2025 09:24:08 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIO84-000000055OP-0GAA;
	Mon, 10 Nov 2025 09:24:05 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1762766633; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=VjrlaTXRT1DTspIRhNm8LqC+UeVeIz39ALeceKY8V7A5/ao3cVaWPJGQCtUJkoopAY3oEk19DUBQ5ibEOHjsNshLnbMXcJb7jHIVgj27JBHdSNW83mWJAtEyjqKUkU+70aUVA5OqDkOgeToKqF1ezdim2D85BEoTmgeE8g+8iMw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1762766633; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=VSfkaAkbqob94VjtZuefTP3rzVGvzkZ2PyLqZ5TTMEA=; 
	b=XLMEUim6kByafUhy0mTCMpYnie0fvJC94Rlkmr9OvZoBM/BvE4A8qAyaZJ28JgXr5CMUUniOkUWEgT5jJKcEHivS6qOX4MtH7q2lmgiy0e6eGeOEQjX7p1tA7pKaMacSQhpY/rAvCpENb6KBfOD+Fn0GJelXd6Ekc/lXY/RIzCo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1762766633;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=VSfkaAkbqob94VjtZuefTP3rzVGvzkZ2PyLqZ5TTMEA=;
	b=M0zedMx4CrQIdjkZsoQwJ8KticXzTN1x4GvoNv08cmSC0hYxvMv9qSGvBmrKDbyw
	i03mA/4eYRl4HLbD6swqiUagf75i5IfHFPr9wXgIDK/4mT9WJ1C3K1oenQu1UUNzxrQ
	/62gPcbfd3SJ2sYn/ob1aR6YI0N5+KdulfvauR6Y=
Received: by mx.zohomail.com with SMTPS id 1762766632129188.4290479822298;
	Mon, 10 Nov 2025 01:23:52 -0800 (PST)
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
Subject: Re: [PATCH v3 10/24] scsi: ufs: mediatek: Rework probe function
Date: Mon, 10 Nov 2025 10:23:44 +0100
Message-ID: <5025239.GXAFRqVoOG@workhorse>
In-Reply-To: <90a10fba2e41db4df4c28a72d182c5f0df8c016d.camel@mediatek.com>
References: <20251023-mt8196-ufs-v3-0-0f04b4a795ff@collabora.com>
 <20251023-mt8196-ufs-v3-10-0f04b4a795ff@collabora.com>
 <90a10fba2e41db4df4c28a72d182c5f0df8c016d.camel@mediatek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_012404_850965_E0B30121 
X-CRM114-Status: GOOD (  28.56  )
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

T24gV2VkbmVzZGF5LCA1IE5vdmVtYmVyIDIwMjUgMDc6Mjg6MzkgQ2VudHJhbCBFdXJvcGVhbiBT
dGFuZGFyZCBUaW1lIENoYW90aWFuIEppbmcgKOS6leacneWkqSkgd3JvdGU6Cj4gT24gVGh1LCAy
MDI1LTEwLTIzIGF0IDIxOjQ5ICswMjAwLCBOaWNvbGFzIEZyYXR0YXJvbGkgd3JvdGU6Cj4gPiBS
ZW1vdmUgdGhlIHRpLHN5c2Nvbi1yZXNldCBjcnVmdC4KPiA+IAo+ID4gTWFrZSBQSFkgbWFuZGF0
b3J5LiBBbGwgdGhlIGNvbXBhdGlibGVzIHN1cHBvcnRlZCBieSB0aGUgYmluZGluZyBtYWtlCj4g
PiBpdAo+ID4gbWFuZGF0b3J5Lgo+ID4gCj4gd2h5IG1ha2UgdGhlIFBIWSBtYW5kYXRvcnkgPyBu
b3RlIHRoYXQgbm90IGFsbCBvZiBNZWRpYVRlayBTb0NzIGhhdmUKPiB0aGUgUEhZIG5vZGUuCgpX
aHkgZG9uJ3QgdGhleSBoYXZlIHRoZSBQSFkgbm9kZT8gRG9lcyB0aGUgaGFyZHdhcmUgbm90IGhh
dmUgYSBQSFk/CgpUaGUgbWFpbmxpbmUgYmluZGluZyBtYWtlcyB0aGUgcGh5cyBwcm9wZXJ0eSBt
YW5kYXRvcnkuIElmIHlvdSBoYXZlCmRvd25zdHJlYW0gZGV2aWNlIHRyZWVzIHRoYXQgZG9uJ3Qg
aGF2ZSB0aGUgUEhZIG5vZGUgcHJvcGVybHkKZGVzY3JpYmVkIGluIHRoZSBEVCBldmVuIHRob3Vn
aCB0aGUgUEhZIGV4aXN0cywgdGhlbiB0aGF0IGlzIG5vdCBhCnRoaW5nIHRoZSBtYWlubGluZSBr
ZXJuZWwgc2hvdWxkIHN1cHBvcnQuCgpJZiB0aGUgaGFyZHdhcmUgcmVhbGx5IGRvZXNuJ3QgaGF2
ZSBhIFBIWSwgd2hpY2ggd291bGQgc3VycHJpc2UgbWUsCnRoZW4gdGhlIGJpbmRpbmcgc2hvdWxk
IHByb3Blcmx5IGRvY3VtZW50IHRoaXMsIHNvIHRoYXQgdGhlIERUIGNoZWNrcwpwYXNzIHdpdGhv
dXQgd2FybmluZ3MuCgo+ID4gRW50ZXJ0YWluIHRoaXMgZHJpdmVyJ3MgaW5zaXN0ZW5jZSBvbiBw
bGF5aW5nIHdpdGggdGhlIFBIWSdzIFJQTSwgYnV0Cj4gPiBhdAo+ID4gbGVhc3QgZml4IHRoZSBw
YXJ0IHdoZXJlIGl0IGRvZXNuJ3QgaW5jcmVhc2UgdGhlIHJlZmVyZW5jZSBjb3VudCwKPiA+IHdo
aWNoCj4gPiB3b3VsZCBsZWFkIHRvIHVzZS1hZnRlci1mcmVlLgo+ID4gCj4gPiBTaWduZWQtb2Zm
LWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29t
Pgo+ID4gLS0tCj4gPiAgZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYyB8IDg3ICsrKysr
KysrKysrKysrKy0tLS0tLS0tLS0tLS0tCj4gPiAtLS0tLS0tLS0tLS0KPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgNTUgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jIGIvZHJpdmVycy91ZnMvaG9zdC91
ZnMtCj4gPiBtZWRpYXRlay5jCj4gPiBpbmRleCA5YzBhYzcyZDZlNDMuLjg4OWExZDU4YTA0MSAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKPiA+ICsrKyBi
L2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKPiA+IEBAIC0yMzUzLDc0ICsyMzUzLDQ5
IEBAIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIHVmc19tdGtfb2ZfbWF0Y2gpOwo+ID4gICAqLwo+
ID4gIHN0YXRpYyBpbnQgdWZzX210a19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ID4gIHsKPiA+IC0JaW50IGVycjsKPiA+IC0Jc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYt
PmRldiwgKnBoeV9kZXYgPSBOVUxMOwo+ID4gLQlzdHJ1Y3QgZGV2aWNlX25vZGUgKnJlc2V0X25v
ZGUsICpwaHlfbm9kZSA9IE5VTEw7Cj4gPiAtCXN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnJlc2V0
X3BkZXYsICpwaHlfcGRldiA9IE5VTEw7Cj4gPiAtCXN0cnVjdCBkZXZpY2VfbGluayAqbGluazsK
PiA+IC0Jc3RydWN0IHVmc19oYmEgKmhiYTsKPiA+ICsJc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGh5X3BkZXY7Cj4gPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gPiArCXN0
cnVjdCBkZXZpY2Vfbm9kZSAqcGh5X25vZGU7Cj4gPiAgCXN0cnVjdCB1ZnNfbXRrX2hvc3QgKmhv
c3Q7Cj4gPiArCXN0cnVjdCBkZXZpY2UgKnBoeV9kZXY7Cj4gPiArCXN0cnVjdCB1ZnNfaGJhICpo
YmE7Cj4gPiArCWludCBlcnI7Cj4gPiAgCj4gPiAtCXJlc2V0X25vZGUgPSBvZl9maW5kX2NvbXBh
dGlibGVfbm9kZShOVUxMLCBOVUxMLAo+ID4gLQkJCQkJICAgICAidGksc3lzY29uLXJlc2V0Iik7
Cj4gPiAtCWlmICghcmVzZXRfbm9kZSkgewo+ID4gLQkJZGV2X25vdGljZShkZXYsICJmaW5kIHRp
LHN5c2Nvbi1yZXNldCBmYWlsXG4iKTsKPiA+IC0JCWdvdG8gc2tpcF9yZXNldDsKPiA+IC0JfQo+
ID4gLQlyZXNldF9wZGV2ID0gb2ZfZmluZF9kZXZpY2VfYnlfbm9kZShyZXNldF9ub2RlKTsKPiA+
IC0JaWYgKCFyZXNldF9wZGV2KSB7Cj4gPiAtCQlkZXZfbm90aWNlKGRldiwgImZpbmQgcmVzZXRf
cGRldiBmYWlsXG4iKTsKPiA+IC0JCWdvdG8gc2tpcF9yZXNldDsKPiA+IC0JfQo+ID4gLQlsaW5r
ID0gZGV2aWNlX2xpbmtfYWRkKGRldiwgJnJlc2V0X3BkZXYtPmRldiwKPiA+IC0JCURMX0ZMQUdf
QVVUT1BST0JFX0NPTlNVTUVSKTsKPiA+IC0JcHV0X2RldmljZSgmcmVzZXRfcGRldi0+ZGV2KTsK
PiA+IC0JaWYgKCFsaW5rKSB7Cj4gPiAtCQlkZXZfbm90aWNlKGRldiwgImFkZCByZXNldCBkZXZp
Y2VfbGluayBmYWlsXG4iKTsKPiA+IC0JCWdvdG8gc2tpcF9yZXNldDsKPiA+IC0JfQo+ID4gLQkv
KiBzdXBwbGllciBpcyBub3QgcHJvYmVkICovCj4gPiAtCWlmIChsaW5rLT5zdGF0dXMgPT0gRExf
U1RBVEVfRE9STUFOVCkgewo+ID4gLQkJZXJyID0gLUVQUk9CRV9ERUZFUjsKPiA+IC0JCWdvdG8g
b3V0Owo+ID4gLQl9Cj4gPiAtCj4gPiAtc2tpcF9yZXNldDoKPiA+ICAJLyogZmluZCBwaHkgbm9k
ZSAqLwo+ID4gIAlwaHlfbm9kZSA9IG9mX3BhcnNlX3BoYW5kbGUoZGV2LT5vZl9ub2RlLCAicGh5
cyIsIDApOwo+ID4gKwlpZiAoIXBoeV9ub2RlKQo+ID4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUo
ZGV2LCAtRU5PRU5ULCAiTm8gUEhZIG5vZGUKPiA+IGZvdW5kXG4iKTsKPiA+ICAKPiA+IC0JaWYg
KHBoeV9ub2RlKSB7Cj4gPiAtCQlwaHlfcGRldiA9IG9mX2ZpbmRfZGV2aWNlX2J5X25vZGUocGh5
X25vZGUpOwo+ID4gLQkJaWYgKCFwaHlfcGRldikKPiA+IC0JCQlnb3RvIHNraXBfcGh5Owo+ID4g
LQkJcGh5X2RldiA9ICZwaHlfcGRldi0+ZGV2Owo+ID4gKwlwaHlfcGRldiA9IG9mX2ZpbmRfZGV2
aWNlX2J5X25vZGUocGh5X25vZGUpOwo+ID4gKwlvZl9ub2RlX3B1dChwaHlfbm9kZSk7Cj4gPiAr
CWlmICghcGh5X3BkZXYpCj4gPiArCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIC1FTk9ERVYs
ICJObyBQSFkgZGV2aWNlCj4gPiBmb3VuZFxuIik7Cj4gPiAgCj4gPiAtCQlwbV9ydW50aW1lX3Nl
dF9hY3RpdmUocGh5X2Rldik7Cj4gPiAtCQlwbV9ydW50aW1lX2VuYWJsZShwaHlfZGV2KTsKPiA+
IC0JCXBtX3J1bnRpbWVfZ2V0X3N5bmMocGh5X2Rldik7Cj4gPiArCXBoeV9kZXYgPSAmcGh5X3Bk
ZXYtPmRldjsKPiA+ICAKPiA+IC0JCXB1dF9kZXZpY2UocGh5X2Rldik7Cj4gPiAtCQlkZXZfaW5m
byhkZXYsICJwaHlzIG5vZGUgZm91bmRcbiIpOwo+ID4gLQl9IGVsc2Ugewo+ID4gLQkJZGV2X25v
dGljZShkZXYsICJwaHlzIG5vZGUgbm90IGZvdW5kXG4iKTsKPiA+ICsJZXJyID0gcG1fcnVudGlt
ZV9zZXRfYWN0aXZlKHBoeV9kZXYpOwo+ID4gKwlpZiAoZXJyKSB7Cj4gPiArCQlkZXZfZXJyX3By
b2JlKGRldiwgZXJyLCAiRmFpbGVkIHRvIGFjdGl2YXRlIFBIWQo+ID4gUlBNXG4iKTsKPiA+ICsJ
CWdvdG8gZXJyX3B1dF9waHk7Cj4gPiArCX0KPiA+ICsJcG1fcnVudGltZV9lbmFibGUocGh5X2Rl
dik7Cj4gPiArCWVyciA9IHBtX3J1bnRpbWVfZ2V0X3N5bmMocGh5X2Rldik7Cj4gPiArCWlmIChl
cnIpIHsKPiA+ICsJCWRldl9lcnJfcHJvYmUoZGV2LCBlcnIsICJGYWlsZWQgdG8gcG93ZXIgb24g
UEhZXG4iKTsKPiA+ICsJCWdvdG8gZXJyX3B1dF9waHk7Cj4gPiAgCX0KPiA+ICAKPiA+IC1za2lw
X3BoeToKPiA+ICAJLyogcGVyZm9ybSBnZW5lcmljIHByb2JlICovCj4gPiAgCWVyciA9IHVmc2hj
ZF9wbHRmcm1faW5pdChwZGV2LCAmdWZzX2hiYV9tdGtfdm9wcyk7Cj4gPiAgCWlmIChlcnIpIHsK
PiA+IC0JCWRldl9lcnIoZGV2LCAicHJvYmUgZmFpbGVkICVkXG4iLCBlcnIpOwo+ID4gLQkJZ290
byBvdXQ7Cj4gPiArCQlkZXZfZXJyX3Byb2JlKGRldiwgZXJyLCAiR2VuZXJpYyBwbGF0Zm9ybSBw
cm9iZQo+ID4gZmFpbGVkXG4iKTsKPiA+ICsJCWdvdG8gZXJyX3B1dF9waHk7Cj4gPiAgCX0KPiA+
ICAKPiA+ICAJaGJhID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4gPiAtCWlmICghaGJh
KQo+ID4gLQkJZ290byBvdXQ7Cj4gPiAgCj4gPiAtCWlmIChwaHlfbm9kZSAmJiBwaHlfZGV2KSB7
Cj4gPiAtCQlob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7Cj4gPiAtCQlob3N0LT5waHlf
ZGV2ID0gcGh5X2RldjsKPiA+IC0JfQo+ID4gKwlob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhi
YSk7Cj4gPiArCWhvc3QtPnBoeV9kZXYgPSBwaHlfZGV2Owo+ID4gIAo+ID4gIAkvKgo+ID4gIAkg
KiBCZWNhdXNlIHRoZSBkZWZhdWx0IHBvd2VyIHNldHRpbmcgb2YgVlN4ICh0aGUgdXBwZXIgbGF5
ZXIgb2YKPiA+IEBAIC0yNDI5LDkgKzI0MDQsMTEgQEAgc3RhdGljIGludCB1ZnNfbXRrX3Byb2Jl
KHN0cnVjdAo+ID4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gIAkgKi8KPiA+ICAJdWZzX210
a19kZXZfdnJlZ19zZXRfbHBtKGhiYSwgZmFsc2UpOwo+ID4gIAo+ID4gLW91dDoKPiA+IC0Jb2Zf
bm9kZV9wdXQocGh5X25vZGUpOwo+ID4gLQlvZl9ub2RlX3B1dChyZXNldF9ub2RlKTsKPiA+ICsJ
cmV0dXJuIDA7Cj4gPiArCj4gPiArZXJyX3B1dF9waHk6Cj4gPiArCXB1dF9kZXZpY2UocGh5X2Rl
dik7Cj4gPiArCj4gPiAgCXJldHVybiBlcnI7Cj4gPiAgfQo+ID4gIAo+ID4gCj4gCgoKCgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
