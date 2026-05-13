Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B21EECD37AC
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 21:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UlW02cPWQ5ZporysUHv9ydBDS3GWdmkNTveuZwKT4yk=; b=14dF+4gG1/qhWp
	wL0NHW4WnZ8jRExDpp4xQIfBjXKUhnRcTdIyWCLhjE2oUxZb2sQYCN2+6svQvR5UZ34lzvqpOvS0E
	Jxu9oH566EX1NQiOk3FUuiEOGXep5+NpSUAfY699fWm5mm8lhzp1V3FHLeviQmxBdO3lY8Gqtgdba
	1r4AXZWuqruO+8JG4NZ9UDvhMyLPk+JktK9M8ZfsGxSa0O3fKU091ZS3/G0z1VLYvQFcWGUH7Z5zO
	pZPmqAUVmX2Bn6MIsbdaG+M7DSqvOWMLif+C3QWgyz+qFCS/ck4gdGj32MP6NgJI1jezEoTmUwvl1
	0sn90hzTxTOcJIvRuOWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHNh-00000003rA3-21A1;
	Wed, 13 May 2026 21:44:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHNg-00000003r9q-2Pnf
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 21:44:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D5846600AE;
	Wed, 13 May 2026 21:44:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D570C19425;
	Wed, 13 May 2026 21:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778708679;
	bh=wtc0mppKDBQATgB7nBrlEjIiuO4dKQbAzg+ZGYPen2I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=iqXs8LYg/fkP1vjaYon9EOlDh16RybgSLIZ/iJOrivfbgc/tubowrQ9WsCjmapQ/x
	 cOS66y/jI4QRJGhJTHNN+kJe0/BE2Nz6k+TyjM/VZx26RH6sjLcWqLMp7NsJvfjDrT
	 aQMKufXq/M8y2DKlcn+dpp1qaQamVOtXMfQdb9cGESF+0Qv08yna0lNmK5r1Ec3l9l
	 akLpospiqkHW7d17q4HO2aadX6503o8ywEHAmxiAx/L0Y+e0Ir3K49Gh+qbrex89PB
	 ZFvqdfojkpPYv7EuVWkF+L4dBFFdFaVpZMO0v1EpFzUOYrtEwcKkUGcqTCKYZHH32D
	 842P6oupxkNyQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 5/5] phy: phy-can-transceiver: Drop unused include
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260512130552.272476-6-andriy.shevchenko@linux.intel.com>
References: <20260512130552.272476-6-andriy.shevchenko@linux.intel.com>
Date: Wed, 13 May 2026 21:44:38 +0000
Message-Id: <20260513214439.4D570C19425@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBwcm9iZSBmdW5j
dGlvbiBpbmNvcnJlY3RseSBhYm9ydHMgd2hlbiBtYXRjaCBkYXRhIGlzIGZvdW5kIGFuZCBkZXJl
ZmVyZW5jZXMgYSBOVUxMIHBvaW50ZXIgd2hlbiBtYXRjaCBkYXRhIGlzIGFic2VudC4KLS0KCmNv
bW1pdCA4ZTM1NzI0ZDczYWM2NWFlZDMwZDYyYWM5MzQyZmYxYWM2YmU5NDAxCkF1dGhvcjogQW5k
eSBTaGV2Y2hlbmtvIDxhbmRyaXkuc2hldmNoZW5rb0BsaW51eC5pbnRlbC5jb20+CgpwaHk6IHBo
eS1jYW4tdHJhbnNjZWl2ZXI6IERyb3AgdW51c2VkIGluY2x1ZGUKClRoaXMgY29tbWl0IHJlbW92
ZXMgdGhlIHVudXNlZCA8bGludXgvZ3Bpby5oPiBsZWdhY3kgaGVhZGVyIGZyb20gdGhlIFBIWSBD
QU4KdHJhbnNjZWl2ZXIgZHJpdmVyLCBhcyBpdHMgc3ltYm9scyBhcmUgbm90IHVzZWQgaW4gdGhl
IGZpbGUuIEl0IGFsc28gYWRqdXN0cwp0aGUgaGVhZGVyIG9yZGVyIHNsaWdodGx5LgoKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvcGh5LWNhbi10cmFuc2NlaXZlci5jIGIvZHJpdmVycy9waHkv
cGh5LWNhbi10cmFuc2NlaXZlci5jCj4gaW5kZXggOTczY2M3Y2U2NTFmYi4uNTM0YTRmYzQ4MmFh
OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9waHktY2FuLXRyYW5zY2VpdmVyLmMKPiArKysg
Yi9kcml2ZXJzL3BoeS9waHktY2FuLXRyYW5zY2VpdmVyLmMKPiBAQCAtNSwxMiArNSwxMSBAQAo+
ICAgKiBDb3B5cmlnaHQgKEMpIDIwMjEgVGV4YXMgSW5zdHJ1bWVudHMgSW5jb3Jwb3JhdGVkIC0g
aHR0cHM6Ly93d3cudGkuY29tCj4gICAqCj4gICAqLwo+ICsjaW5jbHVkZSA8bGludXgvZ3Bpby9j
b25zdW1lci5oPgo+ICAjaW5jbHVkZSA8bGludXgvcGh5L3BoeS5oPgo+ICAjaW5jbHVkZSA8bGlu
dXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9wcm9wZXJ0eS5oPgo+ICAj
aW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gLSNpbmNsdWRlIDxsaW51eC9ncGlvLmg+Cj4gLSNp
bmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVyLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9tdXgvY29u
c3VtZXIuaD4KPiAgCj4gIHN0cnVjdCBjYW5fdHJhbnNjZWl2ZXJfZGF0YSB7CgpXaGlsZSByZXZp
ZXdpbmcgdGhpcyBwYXRjaCwgSSBub3RpY2VkIGFuIGlzc3VlIGludHJvZHVjZWQgZWFybGllciBp
biB0aGUKc2VyaWVzIGJ5IGNvbW1pdCAicGh5OiBwaHktY2FuLXRyYW5zY2VpdmVyOiB1c2UgZGV2
aWNlX2dldF9tYXRjaF9kYXRhKCkiOgoKPiAtLS0gYS9kcml2ZXJzL3BoeS9waHktY2FuLXRyYW5z
Y2VpdmVyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9waHktY2FuLXRyYW5zY2VpdmVyLmMKWyAuLi4g
XQo+IEBAIC0xNjEsMTEgKzE2MCwxMCBAQCBzdGF0aWMgaW50IGNhbl90cmFuc2NlaXZlcl9waHlf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCXUzMiBtYXhfYml0cmF0ZSA9
IDA7Cj4gIAlpbnQgZXJyLCBpLCBudW1fY2ggPSAxOwo+ICAKPiAtCW1hdGNoID0gb2ZfbWF0Y2hf
bm9kZShjYW5fdHJhbnNjZWl2ZXJfcGh5X2lkcywgcGRldi0+ZGV2Lm9mX25vZGUpOwo+IC0JaWYg
KCFtYXRjaCB8fCAhbWF0Y2gtPmRhdGEpCj4gKwlkcnZkYXRhID0gZGV2aWNlX2dldF9tYXRjaF9k
YXRhKGRldik7Cj4gKwlpZiAoZHJ2ZGF0YSkKPiAgCQlyZXR1cm4gLUVOT0RFVjsKPiAgCj4gLQlk
cnZkYXRhID0gbWF0Y2gtPmRhdGE7Cj4gIAlpZiAoZHJ2ZGF0YS0+ZmxhZ3MgJiBDQU5fVFJBTlND
RUlWRVJfRFVBTF9DSCkKPiAgCQludW1fY2ggPSAyOwoKRG9lcyB0aGlzIGluY29ycmVjdGx5IGFi
b3J0IHRoZSBwcm9iZSB3aGVuIG1hdGNoIGRhdGEgaXMgc3VjY2Vzc2Z1bGx5IGZvdW5kPwpJdCBs
b29rcyBsaWtlIHRoZSBjb25kaXRpb24gaXMgaW52ZXJ0ZWQsIHJldHVybmluZyAtRU5PREVWIHVw
b24gc3VjY2Vzcy4KCkFkZGl0aW9uYWxseSwgaWYgbWF0Y2ggZGF0YSBpcyBhYnNlbnQsIGRydmRh
dGEgd2lsbCBiZSBOVUxMIGFuZCBleGVjdXRpb24KY29udGludWVzIHRvIHRoZSBuZXh0IGxpbmUg
d2hlcmUgaXQgaXMgZGVyZWZlcmVuY2VkLiBDYW4gdGhpcyBjYXVzZSBhIE5VTEwKcG9pbnRlciBk
ZXJlZmVyZW5jZT8KClNob3VsZCB0aGUgY2hlY2sgYmUgY29ycmVjdGVkIHRvIGlmICghZHJ2ZGF0
YSk/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYwNTEyMTMwNTUyLjI3MjQ3Ni0xLWFuZHJpeS5zaGV2Y2hlbmtvQGxpbnV4LmludGVs
LmNvbT9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
