Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08EAFC982ED
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 17:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FyfRBS5LmbL9SPztghDciTKsUJe5tnSf5artmLVKLo8=; b=eS4hUqUKPNEEJ7
	ma6taLwQ3xml0NM3+6MlAjycZyc0b09iVtfnjRGDD32+hSX8mN2CIWpC5fSrAiwubjcNW88114/6n
	+PzDi+G09i6BYOvHaYB2VSdsVRR0v+3W4TGY02+kkQQP1kU0F3Q29Fb4QuaxWBcTYPri71Wd2hpz+
	qCmK4d43Up5zjs051Dn4iV+J59jZ763J8xOzS3XrqxZs4W2WMHivsSyzTv601T+9YNxsP5RWEgfkI
	i/IB1ImTiycnuz6cpTRY5zA6aJlZvRRXbomQ4ph6jeBeg23KyVb5whOn5S0imQB3IusA/qN1L3ki4
	FjziqtHGdfqks1XNNCgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8hQf-00000002vpd-0z1O;
	Mon, 21 Sep 2026 17:03:45 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8hQe-00000002vp8-0bGD
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 17:03:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E1826404D9;
	Mon, 21 Sep 2026 17:03:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CA421F000FF;
	Mon, 21 Sep 2026 17:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790010223;
	bh=3kKiJbmcpsyF6vA2mgmt4fU0xXz8ivEfRtUBBXtPNDQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=T7q9xGCee25mWv8BceNIwlJyIS22LTd5h14nID8GC9PuD8JNiCBCaRETJB165dMEQ
	 ILC2b28nNR9WCBD5spfdapdzBshdQjMhOpaFUOHdA540YdE/ZinzrRER6TcCyMJA7A
	 /ud+oPN8PJS3B3YHdpvE0Er6BOez5+g+ZbGsNeHvJ4Uk9IxuOIIAJLo8wx/N+GYC8x
	 ktrnGW3H4LUdfPQxVzdCzb22859jI/YGPhpCOB5PNHRIfMgpQgnCqaKl9aqFxlJPEL
	 VroGAbehOFYGNsthRbyy9LYrEefDQ9W/T6Nrb0UD57KWxhayKSjTlXf/AAMWEZw28/
	 +Z6kZP3sRvp3A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v9 05/11] arm64: dts: rockchip: rk3568: add
 XPCS and fixed-clock nodes
To: "Coia Prant" <coiaprant@gmail.com>
Cc: wsa+renesas@sang-engineering.com, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org
In-Reply-To: <20260920170116.3624104-6-coiaprant@gmail.com>
References: <20260920170116.3624104-1-coiaprant@gmail.com>
 <20260920170116.3624104-6-coiaprant@gmail.com>
Date: Mon, 21 Sep 2026 17:03:42 +0000
Message-Id: <20260921170343.4CA421F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gRFQgc3R5bGUgdmlvbGF0
aW9uOiBub24tcmVnIG5vZGVzIHBsYWNlZCBvdXQgb2Ygb3JkZXIKLS0KCmNvbW1pdCAxNjc0ZmNm
YWViYTcwMDM5ODcxZDkyYWYwYTAyOTAxZjlkMDA5ODg2CkF1dGhvcjogQ29pYSBQcmFudCA8Y29p
YXByYW50QGdtYWlsLmNvbT4KCmFybTY0OiBkdHM6IHJvY2tjaGlwOiByazM1Njg6IGFkZCBYUENT
IGFuZCBmaXhlZC1jbG9jayBub2RlcwoKVGhpcyBjb21taXQgYWRkcyB0aGUgU3lub3BzeXMgRGVz
aWduV2FyZSBYUENTIGFuZCB0d28gZml4ZWQtY2xvY2sgbm9kZXMgZm9yCkdNQUMgcmVmZXJlbmNl
IGNsb2NrcyB0byB0aGUgUkszNTY4IGRldmljZSB0cmVlLiBJdCBwbGFjZXMgdGhlIG5vZGVzIGFu
ZCBhZGRzCm5lY2Vzc2FyeSBwcm9wZXJ0aWVzIGZvciBib2FyZC1sZXZlbCBjb25maWd1cmF0aW9u
LgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPiBpbmRleCAzYmM2
NTNmMDI3ZjFmLi4yMjdkMDNlMzM2MDQzIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2OC5kdHNpClsgLi4uIF0KPiBAQCAtMTEwLDYgKzExMCw1MSBAQCBzYXRhMDogc2F0
YUBmYzAwMDAwMCB7Cj4gIAkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCX07Cj4gIAo+ICsJeHBj
czogZXRoZXJuZXQtcGNzQGZkYTAwMDAwIHsKWyAuLi4gXQo+ICsJCXhwY3NfbWlpMzogZXRoZXJu
ZXQtcGNzLW1paUAzIHsKPiArCQkJcmVnID0gPDM+Owo+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQi
Owo+ICsJCX07Cj4gKwl9Owo+ICsKPiArCWNsa19nbWFjMF94cGNzX21paTogY2xvY2steHBjcy1n
bWFjMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7Cj4gKwkJY2xvY2stZnJlcXVl
bmN5ID0gPDEyNTAwMDAwMD47Cj4gKwkJY2xvY2stb3V0cHV0LW5hbWVzID0gImNsa19nbWFjMF94
cGNzX21paSI7Cj4gKwkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+ICsJfTsKPiArCj4gKwljbGtfZ21h
YzFfeHBjc19taWk6IGNsb2NrLXhwY3MtZ21hYzEgewo+ICsJCWNvbXBhdGlibGUgPSAiZml4ZWQt
Y2xvY2siOwo+ICsJCWNsb2NrLWZyZXF1ZW5jeSA9IDwxMjUwMDAwMDA+Owo+ICsJCWNsb2NrLW91
dHB1dC1uYW1lcyA9ICJjbGtfZ21hYzFfeHBjc19taWkiOwo+ICsJCSNjbG9jay1jZWxscyA9IDww
PjsKPiArCX07CgpbU2V2ZXJpdHk6IExvd10KQWNjb3JkaW5nIHRvIHN0YW5kYXJkIERldmljZSBU
cmVlIGNvZGluZyBzdHlsZSBndWlkZWxpbmVzCihEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZHRzLWNvZGluZy1zdHlsZS5yc3QpLCBzaG91bGQgbm9kZXMKd2l0aG91dCBhICdyZWcn
IHByb3BlcnR5IGJlIHBsYWNlZCBhdCB0aGUgdG9wIG9mIHRoZSBmaWxlIChvciB0aGUgdG9wIG9m
CnRoZSByb290IG5vZGUpIGFuZCBzb3J0ZWQgYWxwaGFiZXRpY2FsbHksIGJlZm9yZSBhbnkgbm9k
ZXMgd2l0aCBhICdyZWcnCnByb3BlcnR5PwoKVGhlc2UgY2xvY2steHBjcy1nbWFjMCBhbmQgY2xv
Y2steHBjcy1nbWFjMSBub2RlcyBpbgphcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2
OC5kdHNpIGxhY2sgYSAncmVnJyBwcm9wZXJ0eSBidXQgYXJlCnBsYWNlZCBkaXJlY3RseSBhZnRl
ciBldGhlcm5ldC1wY3NAZmRhMDAwMDAgYW5kIGJlZm9yZSBzeXNjb25AZmRjNzAwMDAuCgpDb3Vs
ZCB0aGVzZSBiZSBtb3ZlZCB0byB0aGUgdG9wIG9mIHRoZSByb290IG5vZGUgYWxvbmdzaWRlIG90
aGVyIG5vbi1yZWcKbm9kZXMgbGlrZSBvcHAtdGFibGU/Cgo+ICsKPiAgCXBpcGVfcGh5X2dyZjA6
IHN5c2NvbkBmZGM3MDAwMCB7Cj4gIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NjgtcGlw
ZS1waHktZ3JmIiwgInN5c2NvbiI7Cj4gIAkJcmVnID0gPDB4MCAweGZkYzcwMDAwIDB4MCAweDEw
MDA+OwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRj
aHNldC8yMDI2MDkyMDE3MDExNi4zNjI0MTA0LTEtY29pYXByYW50QGdtYWlsLmNvbT9wYXJ0PTUK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
