Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E4C7C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 11:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:CC:To:MIME-Version:
	From:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7i9OfF9DIhOQifphuWBUnMHtbbAxrvgCp6W5/Z8xyxg=; b=qjbyGtQ6KT3rwywsDX+FI/1E+i
	ErVJmPXzCLO5UZ77eKJIJorKfM0oHjh8JRH4V1nfeEM/kKZJ8hAhEtZp6vXKi5YwSXGZFF8vV2waM
	E1PVCc2qFJNa/JPkZQjPxzAkmJUNeixnA3WamWHvxNTiDhwkmMlNuoN8ctbqWSOgOEfK50EKpWRH3
	IGLCokQeQosSZRRfzvj0ht8uf83esvzaG/gbC7fyxSjfqMZowMXQ5erfJi9iceui8p28GgfNb1CzA
	asSb0Anvu9n4Vc0JXvUHfZA6L3cBEqy1cAuMrZcl96mwDcx2/I5xOC1Nf39bqiYXF4Qs+K25yZPQz
	pgYnoR3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GlI-0000000BcO8-0vqI;
	Wed, 09 Sep 2026 11:46:44 +0000
Received: from m16.mail.126.com ([220.197.31.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GlC-0000000BcMk-1AQL
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 11:46:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Message-ID:Date:From:MIME-Version:To:Subject:
	Content-Type; bh=qyk1vUzPyUv2JdSJQ49+NGBwt2bdTTz+hVPctRD8n0g=;
	b=nM1aNr1XrD0EqyCFE32YjNDJqF5DRoXhKGQJGb2vEQbe9tWBeVUyxxfViBvcSQ
	z1cwgzRb/nc2LJ0P3q5C/G66W2swUcu7ymGtsiMnejL1LHh5ClU+caiQAugMkDWD
	rWgOsXlQ8odrL0fihx3N9Xr6q10ytE9MTOhIwLfG6MofQ=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g0-3 (Coremail) with SMTP id _____wD3XwcAR6FqdgWiAw--.10221S2;
	Wed, 09 Sep 2026 19:46:09 +0800 (CST)
Message-ID: <6AA146E0.4050805@126.com>
Date: Wed, 09 Sep 2026 19:45:36 +0800
From: Hongling Zeng <zhongling0719@126.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Manivannan Sadhasivam <mani@kernel.org>, 
 Hongling Zeng <zenghongling@kylinos.cn>
CC: vkoul@kernel.org, neil.armstrong@linaro.org, johan@kernel.org, 
 kishon@kernel.org, rogerq@ti.com, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 3/4] phy: ti-pipe3: Fix EPROBE_DEFER handling for clock
  resources
References: <20260619030214.1779043-1-zenghongling@kylinos.cn> <20260619030214.1779043-4-zenghongling@kylinos.cn> <m7mr6dgayt7kpibs632cb2bpvwxrj66vmscusqgpn47apcvrpq@di3nclql65bd>
In-Reply-To: <m7mr6dgayt7kpibs632cb2bpvwxrj66vmscusqgpn47apcvrpq@di3nclql65bd>
X-CM-TRANSID: _____wD3XwcAR6FqdgWiAw--.10221S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxAFWrGFyfuFyxGF15AF1rCrg_yoW5KrWxpF
	s8G3WYyFyvyrWkGwsxXr1fX3WSyw1xKF4UGrWYgw1rZF13XF1kCFW3Kr4rWFy8CrWkuw4S
	y3WUX3Z0ka4DuaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j4Q6LUUUUU=
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/xtbBrgHUpWqhRwFmaQAA3c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_044638_753073_7B92548C 
X-CRM114-Status: GOOD (  21.78  )
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

CuWcqCAyMDI25bm0MDnmnIgwOeaXpSAxNTo1MiwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIOWGmemB
kzoKPiBPbiBGcmksIEp1biAxOSwgMjAyNiBhdCAxMTowMjoxM0FNICswODAwLCBIb25nbGluZyBa
ZW5nIHdyb3RlOgo+PiB0aV9waXBlM19nZXRfY2xrKCkgaGFzIHR3byBpc3N1ZXMgd2l0aCAtRVBS
T0JFX0RFRkVSIGVycm9yIGhhbmRsaW5nOgo+Pgo+PiAxLiBXaGVuIGRldm1fY2xrX2dldCgpIGZv
ciBzeXNjbGsgZmFpbHMsIHRoZSBmdW5jdGlvbiByZXR1cm5zIC1FSU5WQUwKPj4gICAgIGluc3Rl
YWQgb2YgcHJvcGFnYXRpbmcgdGhlIGFjdHVhbCBlcnJvciBjb2RlLiBUaGlzIG1hc2tzIC1FUFJP
QkVfREVGRVIKPj4gICAgIHRvIC1FSU5WQUwsIGJyZWFraW5nIHRoZSBwcm9iZSBkZWZlcnJhbCBt
ZWNoYW5pc20gYW5kIGNhdXNpbmcgcGVybWFuZW50Cj4+ICAgICBkcml2ZXIgaW5pdGlhbGl6YXRp
b24gZmFpbHVyZSBvbiBzeXN0ZW1zIHdpdGggbm9uLWRldGVybWluaXN0aWMgcHJvYmUKPj4gICAg
IG9yZGVyaW5nLgo+Pgo+PiAyLiBGb3IgU0FUQSBQSFkgcmVmY2xrLCB0aGUgZnVuY3Rpb24gaWdu
b3JlcyBhbGwgZXJyb3JzIHRvIHN1cHBvcnQgb2xkZXIKPj4gICAgIERUQnMgbWlzc2luZyB0aGUg
cmVmY2xrIHByb3BlcnR5LiBIb3dldmVyLCB0aGlzIGluY29ycmVjdGx5IGlnbm9yZXMKPj4gICAg
IC1FUFJPQkVfREVGRVIgYXMgd2VsbCwgY2F1c2luZyB0aGUgZHJpdmVyIHRvIHByb2NlZWQgd2l0
aG91dCB3YWl0aW5nCj4+ICAgICBmb3IgdGhlIGNsb2NrIHByb3ZpZGVyIHRvIGJlY29tZSBhdmFp
bGFibGUuCj4+Cj4+IEZpeCBib3RoIGlzc3VlczoKPj4gLSBSZXR1cm4gUFRSX0VSUihwaHktPnN5
c19jbGspIGluc3RlYWQgb2YgLUVJTlZBTCB0byBwcm9wYWdhdGUgYWxsCj4+ICAgIGVycm9yIGNv
ZGVzIGluY2x1ZGluZyAtRVBST0JFX0RFRkVSCj4+IC0gVXNlIGRldm1fY2xrX2dldF9vcHRpb25h
bCgpIGZvciBTQVRBIHJlZmNsayB0byBoYW5kbGUgb3B0aW9uYWwKPj4gICAgY2xvY2tzIHdoaWxl
IHByb3BhZ2F0aW5nIC1FUFJPQkVfREVGRVIgYW5kIG90aGVyIGVycm9ycwo+Pgo+PiBGaXhlczog
YTcwMTQzYmJlZjZiICgiZHJpdmVyczogcGh5OiB1c2IzL3BpcGUzOiBBZGFwdCBwaXBlMyBkcml2
ZXIgdG8gR2VuZXJpYyBQSFkgRnJhbWV3b3JrIikKPj4gRml4ZXM6IDdmMzM5MTJkMjk3OCAoInBo
eTogdGktcGlwZTM6IEZpeCBTQVRBIGFjcm9zcyBzdXNwZW5kL3Jlc3VtZSIpCj4+IFNpZ25lZC1v
ZmYtYnk6IEhvbmdsaW5nIFplbmcgPHplbmdob25nbGluZ0BreWxpbm9zLmNuPgo+Pgo+PiAtLS0K
Pj4gQ2hhbmdlIGluIHY0Ogo+PiAgIC1NZXJnZSByZWZjbGsgbGVhayBmaXggYW5kIEVQUk9CRV9E
RUZFUiBmaXggaW50byBhIHNpbmdsZSBwYXRjaAo+PiAgIC1Vc2UgZGV2bV9jbGtfZ2V0X29wdGlv
bmFsKCkgZm9yIFNBVEEgcmVmY2xrCj4+ICAgLURyb3AgbWFudWFsIC1FTk9FTlQgaGFuZGxpbmcK
Pj4gICAtRW5zdXJlIGVycm9yIHBhdGhzIGFyZSBmdWxseSBzeW1tZXRyaWMKPj4gLS0tCj4+IENo
YW5nZSBpbiB2NToKPj4gICAtQWRkIEZpeCBpZ25vcmVkIGNsb2NrIGVuYWJsZSByZXR1cm4gdmFs
dWUgaW4gaW5pdCBwYXRjaAo+PiAtLS0KPj4gQ2hhbmdlIGluIHY2Ogo+PiAgIC1GaXggYWxsIGNs
b2NrIGxlYWsgcGF0aHMgY29tcHJlaGVuc2l2ZWx5Ogo+PiAgIC1QQ0llIHN5c2NvbiB1cGRhdGUg
ZmFpbHVyZSBwYXRoCj4+ICAgLVNBVEEgRFBMTCBsb2NrIGNoZWNrIHBhdGggKGFsc28gZml4IGlu
Y29ycmVjdCByZXR1cm4gbG9naWMpCj4+ICAgLVNBVEEgZXJyYXRhIHBhdGggaW4gdGlfcGlwZTNf
ZXhpdCgpCj4+IC0tLQo+PiAgIGRyaXZlcnMvcGh5L3RpL3BoeS10aS1waXBlMy5jIHwgMjAgKysr
KysrKysrKysrKy0tLS0tLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwg
NyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3RpL3BoeS10aS1w
aXBlMy5jIGIvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMKPj4gaW5kZXggMmQzNmZlNGM0
MjE4Li45ZWMyMjhjMmE5NDAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGh5L3RpL3BoeS10aS1w
aXBlMy5jCj4+ICsrKyBiL2RyaXZlcnMvcGh5L3RpL3BoeS10aS1waXBlMy5jCj4+IEBAIC02MDgs
MTQgKzYwOCwyMCBAQCBzdGF0aWMgaW50IHRpX3BpcGUzX2dldF9jbGsoc3RydWN0IHRpX3BpcGUz
ICpwaHkpCj4+ICAgCXN0cnVjdCBjbGsgKmNsazsKPj4gICAJc3RydWN0IGRldmljZSAqZGV2ID0g
cGh5LT5kZXY7Cj4+ICAgCj4+IC0JcGh5LT5yZWZjbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAicmVm
Y2xrIik7Cj4+ICsJLyoKPj4gKwkgKiByZWZjbGsgaXMgb3B0aW9uYWwgZm9yIFNBVEEgUEhZIHRv
IHN1cHBvcnQgb2xkZXIgRFRCcywgYnV0Cj4+ICsJICogcmVxdWlyZWQgZm9yIG90aGVyIG1vZGVz
LiBVc2UgZGV2bV9jbGtfZ2V0X29wdGlvbmFsKCkgZm9yIFNBVEEKPj4gKwkgKiB3aGljaCByZXR1
cm5zIE5VTEwgZm9yIC1FTk9FTlQsIGFsbG93aW5nIHVzIHRvIHByb3BhZ2F0ZSBhbGwKPj4gKwkg
KiBvdGhlciBlcnJvcnMgaW5jbHVkaW5nIC1FUFJPQkVfREVGRVIuCj4+ICsJICovCj4+ICsJaWYg
KHBoeS0+bW9kZSA9PSBQSVBFM19NT0RFX1NBVEEpCj4+ICsJCXBoeS0+cmVmY2xrID0gZGV2bV9j
bGtfZ2V0X29wdGlvbmFsKGRldiwgInJlZmNsayIpOwo+PiArCWVsc2UKPj4gKwkJcGh5LT5yZWZj
bGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAicmVmY2xrIik7Cj4+ICsKPj4gICAJaWYgKElTX0VSUihw
aHktPnJlZmNsaykpIHsKPj4gICAJCWRldl9lcnIoZGV2LCAidW5hYmxlIHRvIGdldCByZWZjbGtc
biIpOwo+PiAtCQkvKiBvbGRlciBEVEJzIGhhdmUgbWlzc2luZyByZWZjbGsgaW4gU0FUQSBQSFkK
Pj4gLQkJICogc28gZG9uJ3QgYmFpbCBvdXQgaW4gY2FzZSBvZiBTQVRBIFBIWS4KPj4gLQkJICov
Cj4+IC0JCWlmIChwaHktPm1vZGUgIT0gUElQRTNfTU9ERV9TQVRBKQo+PiAtCQkJcmV0dXJuIFBU
Ul9FUlIocGh5LT5yZWZjbGspOwo+PiArCQlyZXR1cm4gUFRSX0VSUihwaHktPnJlZmNsayk7Cj4g
QXMgU2FzaGlrbyBub3RlZCwgeW91IG5lZWQgdG8gc3dpdGNoIHRvIGRldl9lcnJfcHJvYmUoKSBo
ZXJlIGFuZCBiZWxvdyB0byBhdm9pZAo+IHByaW50aW5nIGVycm9yIGR1cmluZyBwcm9iZSBkZWZl
cnJhbC4KPgo+IC0gTWFuaQo+CkhpIE1hbmksCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3IGFuZCBm
b3IgcG9pbnRpbmcgb3V0IHRoZSBpc3N1ZXMuCgpJIGhhdmUgYWRkcmVzc2VkIHRoZSByZXBvcnRl
ZCBwcm9ibGVtcyBpbiB2NywgaW5jbHVkaW5nIHJlc3RvcmluZyB0aGUKb3JpZ2luYWwgYHJldHVy
biByZXRgIGluIHRoZSBTQVRBIFBMTC1sb2NrZWQgcGF0aCBhbmQgY2xlYW5pbmcgdXAgdGhlCmNs
b2NrIGVycm9yIHBhdGhzLiBUaGUgdXBkYXRlZCB2NyBwYXRjaCBzZXJpZXMgaGFzIGJlZW4gc2Vu
dC4KCkkgd291bGQgYXBwcmVjaWF0ZSBpdCBpZiB5b3UgY291bGQgcmV2aWV3IHRoZSBuZXcgdmVy
c2lvbiB3aGVuIHlvdSBoYXZlCnRpbWUuCgpUaGFua3MsCkhvbmdsaW5nCgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
