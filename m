Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1389DC43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 09:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4xFTKV//Zalu+st3PqFvOdLH/nki+vDjhQV4tQcXAA=; b=jHjIccGJyxgf9x
	us5LnH5jDlQdDmqHh1AUUYq3omlg8Gx7Lg3GM58SyO3CIUG0CBJoVe4/SEqqlZd22CWrv2WKpY7g3
	fU+pIQZ40uufQKhSHJH0vjJXiL6CC/qO6ZbAjDFCIp48rEQl7OlOA8ylJO9koOo+JeGbxPeVuPgQ+
	LCoiczX6apVgzUL98v55PnvJp4kX0TNLF9rTOTo3NXR42pLDkXCFFL+SOHXARsurn6bqUP0jc5mju
	0qxxaUaOwjO5lwhNmqnoL2WLMAfLfXgn/MdFxVhmnvhfCSKoBD29RpwMxcv0G1IsSsEHBLt7sw0z/
	iXOzbNzIpqyfLUeX//Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8XS-0000000EDRF-2pQl;
	Mon, 29 Jun 2026 09:44:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8XR-0000000EDQp-1vIE
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 09:44:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B49416001D;
	Mon, 29 Jun 2026 09:44:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1AAC1F000E9;
	Mon, 29 Jun 2026 09:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782726264;
	bh=5rgokd700FWSIOjTS7tPX7usxEMJ1OcChGfJ5rGnw9E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GP3UHswTkj0ZfmdkjG3TD9zU9J1v6mtnI7/pg/FggvysdCKHmh+u1Xaw8ozq5vKOj
	 +BoF8a/1SmlIDcuqFlSXTDVCzVcjHdtmUPsBV6zpbctQyWGjBRg2SJvoY2vJq8q1fd
	 v/SYGRIrW8WWWPQa3Y8Ui0uA1k0dn0PieqXCVzsNCu9Gu1XXJQJHSkQ6/lWfzVGsvF
	 k93vGoVBRYlxqxBQJmeg57LJFzYP+XB7OxXzzWqWu4p2oFfIv0XCZeGEAPwaJJwlij
	 59r/NKyVVTq0p9AyxA/9ROCLmLU7uDMXZvsr167V7WZ6O/WgCQVmNBsn1MEyF0pod/
	 4fDa+azi5dKGQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/8] arm64: tegra: Enable XUSB host function on Jetson
 AGX Thor
To: "Wayne Chang" <waynec@nvidia.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260629093406.1118594-4-waynec@nvidia.com>
References: <20260629093406.1118594-1-waynec@nvidia.com>
 <20260629093406.1118594-4-waynec@nvidia.com>
Date: Mon, 29 Jun 2026 09:44:23 +0000
Message-Id: <20260629094423.F1AAC1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBkZXZpY2UgdHJl
ZSBub2RlcyB1c2UgYEdJQ19TUEkgNDA5NmAgYW5kIGBHSUNfU1BJIDQxMDFgIHdoaWNoIGluY29y
cmVjdGx5IHBhcnNlIGFzIGhhcmR3YXJlIElSUXMgNDEyOCBhbmQgNDEzMyBkdWUgdG8gdGhlIFNQ
SSBvZmZzZXQgb2YgMzIuCi0tCgpjb21taXQgMGUxNjQ3OWUzNDE2MjdhZDlmYjU2OWFjMmNjZDU0
ZjFlZjQyMWIxZgpBdXRob3I6IFdheW5lIENoYW5nIDx3YXluZWNAbnZpZGlhLmNvbT4KCmFybTY0
OiB0ZWdyYTogRW5hYmxlIFhVU0IgaG9zdCBmdW5jdGlvbiBvbiBKZXRzb24gQUdYIFRob3IKClRo
aXMgY29tbWl0IGVuYWJsZXMgWFVTQiBob3N0IGFuZCBwYWQgY29udHJvbGxlciBvbiBKZXRzb24g
QUdYIFRob3IuCgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL252aWRpYS90ZWdy
YTI2NC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9udmlkaWEvdGVncmEyNjQuZHRzaQo+IGlu
ZGV4IDJkOGU3ZTM3ODMwZmYuLjM0MzM1ODdkYzU3MjUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9udmlkaWEvdGVncmEyNjQuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvbnZpZGlhL3RlZ3JhMjY0LmR0c2kKPiBAQCAtNDA0OSw2ICs0MDQ5LDE2MCBAQCBwY2lAODQ4
MDAwMCB7Cj4gIAkJCW52aWRpYSxicG1wID0gPCZicG1wIDU+Owo+ICAJCQlzdGF0dXMgPSAiZGlz
YWJsZWQiOwo+ICAJCX07Cj4gKwo+ICsJCXh1c2JfcGFkY3RsOiBwYWRjdGxAODY4MDAwMCB7Cj4g
KwkJCWNvbXBhdGlibGUgPSAibnZpZGlhLHRlZ3JhMjY0LXh1c2ItcGFkY3RsIjsKPiArCQkJcmVn
ID0gPDB4MDAgMHg4NjgwMDAwIDB4MDAgMHgyMDAwMD4sCj4gKwkJCSAgICAgIDwweDAwIDB4ODZh
MDAwMCAweDAwIDB4MTAwMDA+Owo+ICsJCQlyZWctbmFtZXMgPSAicGFkY3RsIiwgImFvIjsKPiAr
CQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQxMDEgSVJRX1RZUEVfTEVWRUxfSElHSD47CgpbU2V2
ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBtYXAgdG8gdGhlIGNvcnJlY3QgaGFyZHdhcmUgSVJRPyBV
c2luZyB0aGUgR0lDX1NQSSBtYWNybyBmb3IgYW4KRVNQSSBJTlRJRCBhZGRzIGFuIG9mZnNldCBv
ZiAzMiwgbWFwcGluZyB0byBod2lycSA0MTMzIGluc3RlYWQgb2YgNDEwMS4KVGhlIGtlcm5lbCB3
aWxsIGVtaXQgYm9vdCB3YXJuaW5ncyBhYm91dCB0aGUgU1BJIGJlaW5nIG91dCBvZiByYW5nZS4K
ClNob3VsZCB0aGlzIGJlIHJlcGxhY2VkIHdpdGggPEdJQ19FU1BJIDUgSVJRX1RZUEVfTEVWRUxf
SElHSD4/CgpbIC4uLiBdCgo+ICsJCXVzYkBhYTEwMDAwIHsKPiArCQkJY29tcGF0aWJsZSA9ICJu
dmlkaWEsdGVncmEyNjQteHVzYiI7Cj4gKwkJCXJlZyA9IDwweDAwIDB4YWExMDAwMCAweDAwIDB4
NDAwMDA+LAo+ICsJCQkgICAgICA8MHgwMCAweGFhMDAwMDAgMHgwMCAweDEwMDAwPiwKPiArCQkJ
ICAgICAgPDB4MDAgMHhhYTUwMDAwIDB4MDAgMHgxMDAwMD47Cj4gKwkJCXJlZy1uYW1lcyA9ICJo
Y2QiLCAiZnBjaSIsICJiYXIyIjsKPiArCj4gKwkJCWludGVycnVwdHMtZXh0ZW5kZWQgPSA8Jmdp
YyBHSUNfU1BJIDk1MiBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJCQkJICA8JmdpYyBHSUNf
U1BJIDQwOTYgSVJRX1RZUEVfTEVWRUxfSElHSD4sCgpbU2V2ZXJpdHk6IEhpZ2hdClNpbWlsYXIg
dG8gdGhlIHJlZ3Jlc3Npb24gYWJvdmUsIGRvZXMgdGhpcyBzZXF1ZW5jZSBtYXAgY29ycmVjdGx5
PyBVc2luZyB0aGUKR0lDX1NQSSBtYWNybyBhZGRzIGFuIG9mZnNldCBvZiAzMiwgd2hpY2ggbWFw
cyB0byBod2lycSA0MTI4IGluc3RlYWQgb2YgNDA5Ni4KClNob3VsZCB0aGlzIGJlIHJlcGxhY2Vk
IHdpdGggPEdJQ19FU1BJIDAgSVJRX1RZUEVfTEVWRUxfSElHSD4/CgpbIC4uLiBdCgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjI5
MDkzNDA2LjExMTg1OTQtMS13YXluZWNAbnZpZGlhLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
