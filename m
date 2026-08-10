Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C460DC5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ht3aE9d//ibbjwbSLeGeLDZdiUM3JgmN4v7Ry2wHalo=; b=QkDO/SgRgJwJdU
	ErTBnZS0BiRWaY3+Vo2H0nLHd8mpqN2mH7yroNupvG6NpxAVNQVPJnP3o8cppmNtiJTms8nKrLY8X
	FzfDpfFF3H9sFZfIOLwLLMyQy87qsRvzSLYvzUCDpxsezImKSFZqeqiXKDOSKTyPG84Va2gBnBfGp
	pmG/wl0waI5bl4EcxNpNl4QiOwKgpIWEf9VijVDx+OeWqXqlWR8AJgaDdG+zQ6bDZ+4ia4NQiRE4n
	23Fdb58KuoOxBHH2Hesm9gQBvPcxT0YmXPrOZtZNfOStCN/Zrzyu/s7cDS2KLJFknUjgXvEhLJFhT
	aZB51seE7SsrxKjb2IGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOZh-0000000BgBq-1jzg;
	Mon, 10 Aug 2026 11:53:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOZg-0000000BgBi-0BZL
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:53:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D476260052;
	Mon, 10 Aug 2026 11:53:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2BD31F000E9;
	Mon, 10 Aug 2026 11:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786362824;
	bh=0wc4khY/2njp+rr4lVN7Zqn/TJE3TuCIVXW17jszwtE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KyPWJ8L1nB/YVgVQvViM/8iENnlzwON+T3CfOG5QGRmAGQfws2yOezeCOFht+kNxH
	 C0dd3kqxUeZJXf5SCv1Zs0ULch2enFIrn+XE22MaUdSt/9WZ+onW2Xc4eht1r0JvlI
	 XnRP8l/smDXib3ZoTTyd/vcdXpb/xQKyw66bgRFEht68rGW1qO3d2zJI6It1Xi89d9
	 OIeuGdo+cC4vZ8/y0jhOrQ54QsdqRLdNihmowSrOdYWJBAal2HAjUogpc0A2NuZpsD
	 n3NGx43oWdbDxblBST4uESSQIpyzsfzXls5gRbhMEDfYoB1Ie04jlwAPquHCzNBNXk
	 JGxImeyraK0bA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 05/10] phy: qcom-ipq806x-usb: fix the SS PHY
 TEST_POWERDOWN bit
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260810-msm8974-usb3-v1-5-1a47e1185524@oss.qualcomm.com>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-5-1a47e1185524@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 11:53:43 +0000
Message-Id: <20260810115343.D2BD31F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGlzIHByb2JsZW0gd2Fzbid0IGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0
IHRoZSBwYXRjaCBjb3JyZWN0cyB0aGUgYml0IG9mZnNldCBmb3IgYFNTVVNCX0NUUkxfVEVTVF9Q
T1dFUkRPV05gIHdoaWxlIGZhaWxpbmcgdG8gYWN0dWFsbHkgZml4IHRoZSBQSFkgcG93ZXJkb3du
IGlzc3VlIGR1ZSB0byBhIHByZS1leGlzdGluZyBjb3B5LXBhc3RlIGVycm9yIHRoYXQgY2xlYXJz
IHRoZSBiaXQgaW5zdGVhZCBvZiBzZXR0aW5nIGl0LiBGdXJ0aGVybW9yZSwgYSBuYWl2ZSBjb3Jy
ZWN0aW9uIG9mIHRoaXMgZXJyb3Igd2lsbCBleHBvc2UgYSBtaXNzaW5nIGNsZWFudXAgaW4gdGhl
IGluaXQgc2VxdWVuY2UuCi0tCgotLS0gUGF0Y2ggWzVdOiBbUEFUQ0ggMDUvMTBdIHBoeTogcWNv
bS1pcHE4MDZ4LXVzYjogZml4IHRoZSBTUyBQSFkgVEVTVF9QT1dFUkRPV04gYml0IC0tLQpjb21t
aXQgYzg3ODFjNzY5ZTRlZTQwZGYwOTgxNTU3MGQ5MDRmZTI2NTVkYzgyZgpBdXRob3I6IERtaXRy
eSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4KCnBoeTogcWNv
bS1pcHE4MDZ4LXVzYjogZml4IHRoZSBTUyBQSFkgVEVTVF9QT1dFUkRPV04gYml0CiAgICAKVGhl
IFNTIFBIWSBleGl0IHNlcXVlbmNlIHRyaWVzIHRvIHB1dCB0aGUgUEhZIGludG8gcmV0ZW50aW9u
IHZpYSB0aGUKVEVTVF9QT1dFUkRPV04gYml0IG9mIFNTX1BIWV9DVFJMLCBidXQgZGVmaW5lcyB0
aGF0IGJpdCBhcyBCSVQoMjcpLiBJbgp0aGUgRFdDMyBRU0NSQVRDSCBTU19QSFlfQ1RSTCByZWdp
c3RlciBURVNUX1BPV0VSRE9XTiBpcyBiaXQgMjYgKHNlZQp0aGUgZG93bnN0cmVhbSBwaHktbXNt
LXNzdXNiIGRyaXZlciBmb3IgdGhlIHNhbWUgSVAgZ2VuZXJhdGlvbiksIHNvIHRoZQpzZXF1ZW5j
ZSBwb2tlcyBhbiB1bnJlbGF0ZWQgYml0IGFuZCB0aGUgUEhZIGlzIG5ldmVyIHBvd2VyZWQgZG93
bi4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWlwcTgwNngt
dXNiLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1pcHE4MDZ4LXVzYi5jCj4gaW5k
ZXggMjFiNTlkNGNhOGQyYS4uY2Y3N2UwYTY2ZTIwZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1pcHE4MDZ4LXVzYi5jCj4gKysrIGIvZHJpdmVycy9waHkvcXVh
bGNvbW0vcGh5LXFjb20taXBxODA2eC11c2IuYwo+IEBAIC01MSw3ICs1MSw3IEBACj4gIAo+ICAv
KiBQSFlfQ1RSTF9SRUcgKi8KPiAgI2RlZmluZSBTU1VTQl9DVFJMX1JFRl9VU0VfUEFECQlCSVQo
MjgpCj4gLSNkZWZpbmUgU1NVU0JfQ1RSTF9URVNUX1BPV0VSRE9XTglCSVQoMjcpCj4gKyNkZWZp
bmUgU1NVU0JfQ1RSTF9URVNUX1BPV0VSRE9XTglCSVQoMjYpCgpbU2V2ZXJpdHk6IEhpZ2hdClRo
aXMgaXNuJ3QgYSBidWcgaW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgd2hpbGUgY29ycmVj
dGluZyB0aGUgYml0Cm9mZnNldCBmb3IgU1NVU0JfQ1RSTF9URVNUX1BPV0VSRE9XTiwgdGhlIFBI
WSBwb3dlcmRvd24gaXNzdWUgcmVtYWlucwpiZWNhdXNlIHRoZSBleGl0IHNlcXVlbmNlIGNsZWFy
cyB0aGUgYml0IGluc3RlYWQgb2Ygc2V0dGluZyBpdC4KCkxvb2tpbmcgYXQgcWNvbV9pcHE4MDZ4
X3VzYl9zc19waHlfZXhpdCgpIGluIApkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1pcHE4
MDZ4LXVzYi5jLCBpdCBjYWxsczoKCgl1c2JfcGh5X3dyaXRlX3JlYWRiYWNrKHBoeV9kd2MzLCBT
U1VTQl9QSFlfQ1RSTF9SRUcsCgkJCSAgICAgICBTU1VTQl9DVFJMX1RFU1RfUE9XRVJET1dOLCAw
eDApOwoKVGhlIHVzYl9waHlfd3JpdGVfcmVhZGJhY2soKSBmdW5jdGlvbiBjbGVhcnMgdGhlIG1h
c2tlZCBiaXRzIHdoZW4gcGFzc2VkIDB4MDoKCgl0bXAgJj0gfm1hc2s7CQkvKiByZXRhaW4gb3Ro
ZXIgYml0cyAqLwoJd3JpdGVfdmFsID0gdG1wIHwgdmFsOwoKU2hvdWxkIHRoZSB0aGlyZCBjYWxs
IGluIHFjb21faXBxODA2eF91c2Jfc3NfcGh5X2V4aXQoKSBwYXNzClNTVVNCX0NUUkxfVEVTVF9Q
T1dFUkRPV04gYXMgdGhlIHZhbHVlIHRvIGFjdHVhbGx5IHNldCB0aGUgYml0PwoKRnVydGhlcm1v
cmUsIGlmIHRoZSBleGl0IHNlcXVlbmNlIGlzIGZpeGVkIHRvIHNldCB0aGUgYml0LCB3aWxsIHRo
ZSBQSFkKZmFpbCB0byBleGl0IHJldGVudGlvbiBvbiByZXN1bWU/IEluIHFjb21faXBxODA2eF91
c2Jfc3NfcGh5X2luaXQoKSwgdGhlCnJlZ2lzdGVyIGlzIHJlYWQsIG1vZGlmaWVkLCBhbmQgd3Jp
dHRlbiBiYWNrIHdpdGhvdXQgY2xlYXJpbmcgdGhlClRFU1RfUE9XRVJET1dOIGJpdDoKCglkYXRh
ID0gcmVhZGwocGh5X2R3YzMtPmJhc2UgKyBTU1VTQl9QSFlfQ1RSTF9SRUcpOwoJd3JpdGVsKGRh
dGEgfCBTU1VTQl9DVFJMX1NTX1BIWV9SRVNFVCwKCSAgICAgICBwaHlfZHdjMy0+YmFzZSArIFNT
VVNCX1BIWV9DVFJMX1JFRyk7CgpTaW5jZSBkYXRhIGlzIG5ldmVyIHVwZGF0ZWQgdG8gY2xlYXIg
U1NVU0JfQ1RSTF9URVNUX1BPV0VSRE9XTiwgd291bGQgaXQKc3RheSBzZXQgYW5kIHByZXZlbnQg
dGhlIFBIWSBmcm9tIGV4aXRpbmcgcmV0ZW50aW9uIG1vZGU/Cgo+ICAjZGVmaW5lIFNTVVNCX0NU
UkxfTEFORTBfUFdSX1BSRVNFTlQJQklUKDI0KQo+ICAjZGVmaW5lIFNTVVNCX0NUUkxfU1NfUEhZ
X0VOCQlCSVQoOCkKPiAgI2RlZmluZSBTU1VTQl9DVFJMX1NTX1BIWV9SRVNFVAkJQklUKDcpCgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwODEwLW1zbTg5NzQtdXNiMy12MS0wLTFhNDdlMTE4NTUyNEBvc3MucXVhbGNvbW0uY29tP3Bh
cnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
