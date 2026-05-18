Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E549ACD4F3C
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 02:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:CC:To:MIME-Version:
	From:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LXMPdHpVnpQILZ6qlcSUfuAKzz27bNXck6/NguGrO0U=; b=IfGp3VxcwM9wVa+Uc2B63uvcBT
	RE1eHlB1XellcBepMy+L/72RkSzLsmv0scXnGK/bkgV8lUWDr6gujYCqD20A5xRw7p894ze+uL7aa
	Ivywea1yZLT5AwwQe9pBpTx1aA5QWk3PtY9FOatZNGQfKnu76hwBT8vOaZNIkUgj76iybcgmlCFtT
	YVJACIgL17sdIzx7JxRbMDbqbKM4GB9k93KlAv57hc/9XftFSC46HvXhuSRx2ejRYBTpslgxaEotJ
	32SqzRoUNg7nxFy/FGs1z9fd6UIz6x7bW8MTQvkthaNRU+QsPJeIfqKEM0+P8ZsOc4fP+xJoc67sV
	WeqX+d4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOncz-0000000DvU7-2smm;
	Mon, 18 May 2026 02:22:45 +0000
Received: from m16.mail.126.com ([220.197.31.6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOncw-0000000DvQ6-3YZL
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 02:22:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Message-ID:Date:From:MIME-Version:To:Subject:
	Content-Type; bh=ecJGh9sj51l/ErdqcCHxr1whiXJwOHx7Ic7JRlDj/ig=;
	b=JSfQK7Tc6UCEGaHQGUIAE0Bf6eG1o5jd20PXFmFaAM2SM9WF0OHzGep8UH0C1F
	K9+LX3g/LguVQFj/SB+Gn5/5gaKmk05SMBZaiJZog3dY+NsB/4fmCg8ZoWT3HLys
	I/ZuOKNLSwPek1pi9SBT6ZDFNM3LbO3TW04Aq8Yr7XxK4=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g1-2 (Coremail) with SMTP id _____wDHbznXdwpqiJnmBg--.55635S2;
	Mon, 18 May 2026 10:22:15 +0800 (CST)
Message-ID: <6A0A77E0.6080704@126.com>
Date: Mon, 18 May 2026 10:22:24 +0800
From: Hongling Zeng <zhongling0719@126.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Vladimir Oltean <olteanv@gmail.com>, 
 Hongling Zeng <zenghongling@kylinos.cn>
CC: vkoul@kernel.org, neil.armstrong@linaro.org, johan@kernel.org, 
 kishon@kernel.org, rogerq@ti.com, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: ti-pipe3: Fix EPROBE_DEFER handling for clock
 resources
References: <20260515040737.28075-1-zenghongling@kylinos.cn> <20260515040737.28075-1-zenghongling@kylinos.cn> <20260515155834.zgdp3xq7cbhq66jm@skbuf>
In-Reply-To: <20260515155834.zgdp3xq7cbhq66jm@skbuf>
X-CM-TRANSID: _____wDHbznXdwpqiJnmBg--.55635S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxAFWrGFyfuFyxGF15AF1rCrg_yoW5Kr45pF
	WDGa4Yya4vyrWkC3Waqr1Iq3WSyw1Ika1UWrWjg34rZ3ZxtF18uF47Kr4jgFyjkrWkCw4F
	y3Wjqas0ka4DZFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j4dgXUUUUU=
X-Originating-IP: [112.64.161.44]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/xtbBrxcwAWoKd9cD8QAA37
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_192243_303248_5E6BFE25 
X-CRM114-Status: GOOD (  24.30  )
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

CuWcqCAyMDI25bm0MDXmnIgxNeaXpSAyMzo1OCwgVmxhZGltaXIgT2x0ZWFuIOWGmemBkzoKPiBP
biBGcmksIE1heSAxNSwgMjAyNiBhdCAxMjowNzozN1BNICswODAwLCBIb25nbGluZyBaZW5nIHdy
b3RlOgo+PiB0aV9waXBlM19nZXRfY2xrKCkgaGFzIHR3byBpc3N1ZXMgd2l0aCAtRVBST0JFX0RF
RkVSIGVycm9yIGhhbmRsaW5nOgo+Pgo+PiAxLiBXaGVuIGRldm1fY2xrX2dldCgpIGZvciBzeXNj
bGsgZmFpbHMsIHRoZSBmdW5jdGlvbiByZXR1cm5zIC1FSU5WQUwKPj4gICAgIGluc3RlYWQgb2Yg
cHJvcGFnYXRpbmcgdGhlIGFjdHVhbCBlcnJvciBjb2RlLiBUaGlzIG1hc2tzIC1FUFJPQkVfREVG
RVIKPj4gICAgIHRvIC1FSU5WQUwsIGJyZWFraW5nIHRoZSBwcm9iZSBkZWZlcnJhbCBtZWNoYW5p
c20gYW5kIGNhdXNpbmcgcGVybWFuZW50Cj4+ICAgICBkcml2ZXIgaW5pdGlhbGl6YXRpb24gZmFp
bHVyZSBvbiBzeXN0ZW1zIHdpdGggbm9uLWRldGVybWluaXN0aWMgcHJvYmUKPj4gICAgIG9yZGVy
aW5nLgo+Pgo+PiAyLiBGb3IgU0FUQSBQSFkgcmVmY2xrLCB0aGUgZnVuY3Rpb24gaWdub3JlcyBh
bGwgZXJyb3JzIHRvIHN1cHBvcnQgb2xkZXIKPj4gICAgIERUQnMgbWlzc2luZyB0aGUgcmVmY2xr
IHByb3BlcnR5LiBIb3dldmVyLCB0aGlzIGluY29ycmVjdGx5IGlnbm9yZXMKPj4gICAgIC1FUFJP
QkVfREVGRVIgYXMgd2VsbCwgY2F1c2luZyB0aGUgZHJpdmVyIHRvIHByb2NlZWQgd2l0aG91dCB3
YWl0aW5nCj4+ICAgICBmb3IgdGhlIGNsb2NrIHByb3ZpZGVyIHRvIGJlY29tZSBhdmFpbGFibGUu
Cj4+Cj4+IEZpeCBib3RoIGlzc3VlczoKPj4gLSBSZXR1cm4gUFRSX0VSUihwaHktPnN5c19jbGsp
IGluc3RlYWQgb2YgLUVJTlZBTCB0byBwcm9wYWdhdGUgYWxsCj4+ICAgIGVycm9yIGNvZGVzIGlu
Y2x1ZGluZyAtRVBST0JFX0RFRkVSCj4+IC0gRm9yIFNBVEEgcmVmY2xrLCBvbmx5IGlnbm9yZSAt
RU5PRU5UIChjbG9jayBub3QgZm91bmQgaW4gb2xkIERUQnMpCj4+ICAgIGJ1dCBwcm9wYWdhdGUg
b3RoZXIgZXJyb3JzIGxpa2UgLUVQUk9CRV9ERUZFUgo+Pgo+PiBGaXhlczogYTcwMTQzYmJlZjZi
ICgiZHJpdmVyczogcGh5OiB1c2IzL3BpcGUzOiBBZGFwdCBwaXBlMyBkcml2ZXIgdG8gR2VuZXJp
YyBQSFkgRnJhbWV3b3JrIikKPj4gRml4ZXM6IDdmMzM5MTJkMjk3OCAoInBoeTogdGktcGlwZTM6
IEZpeCBTQVRBIGFjcm9zcyBzdXNwZW5kL3Jlc3VtZSIpCj4+IFNpZ25lZC1vZmYtYnk6IEhvbmds
aW5nIFplbmcgPHplbmdob25nbGluZ0BreWxpbm9zLmNuPgo+PiAtLS0KPj4gICBkcml2ZXJzL3Bo
eS90aS9waHktdGktcGlwZTMuYyB8IDE3ICsrKysrKysrKysrKy0tLS0tCj4+ICAgMSBmaWxlIGNo
YW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYyBiL2RyaXZlcnMvcGh5L3RpL3BoeS10aS1w
aXBlMy5jCj4+IGluZGV4IDU4ZmJjM2IyNzgxMy4uMmJmY2QwYzcwYWJkIDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYwo+PiArKysgYi9kcml2ZXJzL3BoeS90aS9w
aHktdGktcGlwZTMuYwo+PiBAQCAtNjA0LDE1ICs2MDQsMjIgQEAgc3RhdGljIGludCB0aV9waXBl
M19nZXRfY2xrKHN0cnVjdCB0aV9waXBlMyAqcGh5KQo+PiAgIHsKPj4gICAJc3RydWN0IGNsayAq
Y2xrOwo+PiAgIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwaHktPmRldjsKPj4gKwlpbnQgcmV0Owo+
PiAgIAo+PiAgIAlwaHktPnJlZmNsayA9IGRldm1fY2xrX2dldChkZXYsICJyZWZjbGsiKTsKPiBX
aGVuIHBoeS0+bW9kZSA9PSBQSVBFM19NT0RFX1NBVEEsIEkgdGhpbmsgaXQgd291bGQgYmUgYSBn
b29kIGlkZWEgdG8KPiBjYWxsIGRldm1fY2xrX2dldF9vcHRpb25hbCgpIHdoaWNoIGNvbnZlcnRz
IEVOT0VOVCB0byAwIGZvciB5b3UuCj4gT3RoZXJ3aXNlIGNhbGwgZGV2bV9jbGtfZ2V0KCkuIElu
IGJvdGggY2FzZXMsIHlvdSBjYW4gcHJvcGFnYXRlIHRoZQo+IHJldHVybmVkIGVycm9yIGNvZGUg
d2l0aG91dCBzcGVjaWFsLWNhc2luZyBhbnl0aGluZy4KICAgVGhhbmsgeW91IGZvciB0aGUgcmV2
aWV3IGFuZCBzdWdnZXN0aW9ucy4KCiAgIEkndmUgdXBkYXRlZCB0aGUgcGF0Y2ggdG8gdXNlIGRl
dm1fY2xrX2dldF9vcHRpb25hbCgpIGZvciBTQVRBIFBIWQogICByZWZjbGsgYXMgc3VnZ2VzdGVk
LiBUaGlzIHNpbXBsaWZpZXMgdGhlIGVycm9yIGhhbmRsaW5nIGJ5IGF1dG9tYXRpY2FsbHkKICAg
Y29udmVydGluZyAtRU5PRU5UIHRvIE5VTEwsIGFsbG93aW5nIGNsZWFuIHByb3BhZ2F0aW9uIG9m
IGFsbCBvdGhlcgogICBlcnJvcnMgaW5jbHVkaW5nIC1FUFJPQkVfREVGRVIuCgogICBJJ3ZlIGFs
c28gZml4ZWQgdGhlIHBhdGNoIHZlcnNpb24gbnVtYmVyaW5nIHRvIHY0IGFuZCBlbnN1cmVkIHRo
ZQogICBwYXRjaGVzIGFyZSBpbiB0aGUgc2FtZSBzZXJpZXMgdG8gYXZvaWQgYnJlYWtpbmcgUGF0
Y2h3b3JrLgoKICAgUGxlYXNlIHNlZSB0aGUgYXR0YWNoZWQgdjQgcGF0Y2ggc2VyaWVzLgoKPgo+
PiAgIAlpZiAoSVNfRVJSKHBoeS0+cmVmY2xrKSkgewo+PiAtCQlkZXZfZXJyKGRldiwgInVuYWJs
ZSB0byBnZXQgcmVmY2xrXG4iKTsKPj4gKwkJcmV0ID0gUFRSX0VSUihwaHktPnJlZmNsayk7Cj4+
ICAgCQkvKiBvbGRlciBEVEJzIGhhdmUgbWlzc2luZyByZWZjbGsgaW4gU0FUQSBQSFkKPj4gLQkJ
ICogc28gZG9uJ3QgYmFpbCBvdXQgaW4gY2FzZSBvZiBTQVRBIFBIWS4KPj4gKwkJICogc28gZG9u
J3QgYmFpbCBvdXQgZm9yIC1FTk9FTlQsIGJ1dCBzdGlsbCBkZWZlcgo+PiArCQkgKiBwcm9iZSBm
b3Igb3RoZXIgZXJyb3JzIGxpa2UgLUVQUk9CRV9ERUZFUi4KPj4gICAJCSAqLwo+PiAtCQlpZiAo
cGh5LT5tb2RlICE9IFBJUEUzX01PREVfU0FUQSkKPj4gLQkJCXJldHVybiBQVFJfRVJSKHBoeS0+
cmVmY2xrKTsKPj4gKwkJaWYgKHJldCA9PSAtRU5PRU5UKSB7Cj4+ICsJCQlpZiAocGh5LT5tb2Rl
ICE9IFBJUEUzX01PREVfU0FUQSkKPj4gKwkJCQlyZXR1cm4gcmV0Owo+PiArCQl9IGVsc2Ugewo+
PiArCQkJZGV2X2VycihkZXYsICJ1bmFibGUgdG8gZ2V0IHJlZmNsa1xuIik7Cj4+ICsJCQlyZXR1
cm4gcmV0Owo+PiArCQl9Cj4+ICAgCX0KPj4gICAKPj4gICAJaWYgKHBoeS0+bW9kZSAhPSBQSVBF
M19NT0RFX1NBVEEpIHsKPj4gQEAgLTYyOSw3ICs2MzYsNyBAQCBzdGF0aWMgaW50IHRpX3BpcGUz
X2dldF9jbGsoc3RydWN0IHRpX3BpcGUzICpwaHkpCj4+ICAgCQlwaHktPnN5c19jbGsgPSBkZXZt
X2Nsa19nZXQoZGV2LCAic3lzY2xrIik7Cj4+ICAgCQlpZiAoSVNfRVJSKHBoeS0+c3lzX2Nsaykp
IHsKPj4gICAJCQlkZXZfZXJyKGRldiwgInVuYWJsZSB0byBnZXQgc3lzY2xrXG4iKTsKPj4gLQkJ
CXJldHVybiAtRUlOVkFMOwo+PiArCQkJcmV0dXJuIFBUUl9FUlIocGh5LT5zeXNfY2xrKTsKPj4g
ICAJCX0KPj4gICAJfQo+PiAgIAo+PiAtLSAKPj4gMi4yNS4xCj4+Cj4+Cj4gQmVjYXVzZSBvZiB0
aGUgYnJva2VuIHRocmVhZGluZyB0aGlzIHBhdGNoIGNhbid0IGJlIGFwcGxpZWQgYW55d2F5LCBz
bwo+Cj4gcHctYm90OiBjcgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
