Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEC65C9830E
	for <linux-phy@archiver.kernel.org>; Thu, 24 Sep 2026 17:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLYBmXIiAlX4/5+SSpgMbSuxzu8wubW4sWF0Rv3xGSA=; b=gNjHBMd4DQO133
	Cr62hgvwIzMZL5zkYKpA2aFXWE2cQVbY640bUbM/4sL7He876r/qmnRi7+HNlDpO3sbfN54tfEnE3
	XCdnJqqLOBF+5TgAQHDSPnPC1D2WklZEoZ7yNqcLLW1dylQp6rGeC0kXnH0Meil2dqWgbdWbLtEc/
	Ylz/vXGzFdGbCvckoCw65rdmhUKtZawQpbmTCntaXW0jXMhzTaOb44bWO1F86a9T+aTM/DP2QaouI
	hj8goYH+AZHOrKgvskG2PUlUIJYRMOq9l2GPK6pjOxz4+wlBFUkNo+1f1f82E8WkyqGiaT/W3830o
	Qea81b6zIW2mO3zoYRbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9nNL-0000000BnZt-299r;
	Thu, 24 Sep 2026 17:36:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9nNJ-0000000BnZ5-02hQ
	for linux-phy@lists.infradead.org;
	Thu, 24 Sep 2026 17:36:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C213341462;
	Thu, 24 Sep 2026 17:36:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 564561F00893;
	Thu, 24 Sep 2026 17:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790271408;
	bh=zwLhIedGQ5WFIA0G3CF+bxZhjtIBIwK45xiXpuFXX1s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=h6NNLn1/61FKkQOYZfvi6hIUk1Tx3xWBJok83uy+xDocw7J1ynYSnI/F5p9dvFUCL
	 fxwyE7WS+uxBMkp5zg2TH6nZsOm8QvDdvusuKldhtxonv+0UXg/30iDXLawFeSPeYY
	 hgXUiHeQQ3KCme9zl0hbarnvpWkgk5cjS8QCVwVeplX6BnvxHT8STo61knbde6jVNO
	 FrALlxF0ylA54qrdn+KE7KbqZNHX4g6rCVx6McA6vgb6Vr0w0+5IgafWRv4mpECAzc
	 t01V/SZaS/8nJIZMhMvSNcAzWZaO4puOHzJb/eA63X71eiqKLXZCAQlBv67QTc52gj
	 lWfV+dqAcj1xQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v16 2/6] usb: dwc3: rockchip: introduce glue driver
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-2-126a2e9133c3@collabora.com>
References: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-0-126a2e9133c3@collabora.com>
 <20260924-b4-rockchip-dwc3-rockchip-glue-v16-2-126a2e9133c3@collabora.com>
Date: Thu, 24 Sep 2026 17:36:47 +0000
Message-Id: <20260924173648.564561F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gdXNiOiBkd2MzOiB1
bmNvbmRpdGlvbmFsIGJsb2NrbGlzdCBicmVha3MgVVNCIGZhbGxiYWNrIHdpdGhvdXQgcm9ja2No
aXAgZ2x1ZQotLQoKY29tbWl0IGIxYzJhMTU3YmE0OTI4ZmFhNzgxMTg2MDJiNDUxNTc3ZTMyMTA3
ODYKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3Jh
LmNvbT4KCnVzYjogZHdjMzogcm9ja2NoaXA6IGludHJvZHVjZSBnbHVlIGRyaXZlcgoKVGhpcyBj
b21taXQgaW50cm9kdWNlcyBSb2NrY2hpcCBzcGVjaWZpYyBnbHVlIGNvZGUgZm9yIHRoZSBTeW5v
cHN5cyBEV0MzClVTQiBkcml2ZXIuIEl0IGN1cnJlbnRseSBoYW5kbGVzIHRoaW5ncyBpZGVudGlj
YWxseSB0byB0aGUgZGVmYXVsdCBnbHVlLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvZHdj
My9jb3JlLmMgYi9kcml2ZXJzL3VzYi9kd2MzL2NvcmUuYwo+IGluZGV4IGZkNWMyY2QzNmM1OTUu
LjRiNzEzMjg4N2EwMzAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy91c2IvZHdjMy9jb3JlLmMKPiAr
KysgYi9kcml2ZXJzL3VzYi9kd2MzL2NvcmUuYwo+IEBAIC0yNDQ4LDExICsyNDQ4LDI2IEBAIGlu
dCBkd2MzX2NvcmVfcHJvYmUoY29uc3Qgc3RydWN0IGR3YzNfcHJvYmVfZGF0YSAqZGF0YSkKPiAg
fQo+ICBFWFBPUlRfU1lNQk9MX0dQTChkd2MzX2NvcmVfcHJvYmUpOwo+ICAKPiArLyoKPiArICog
TGlzdCBvZiBjb21wYXRpYmxlcywgd2hpY2ggaGF2ZSAic3lub3BzeXMsZHdjMyIgYXMgYSBmYWxs
YmFjawo+ICsgKiBjb21wYXRpYmxlLCBidXQgaGF2ZSBhIHZlbmRvciBzcGVjaWZpYyBnbHVlIGRy
aXZlciB0aGF0IHNob3VsZAo+ICsgKiBiZSB1c2VkIGluc3RlYWQgb2YgdGhpcyBvbmUuCj4gKyAq
Lwo+ICtzdGF0aWMgY29uc3QgY2hhciAqY29uc3QgZHdjM19jb21wYXRpYmxlX2Jsb2NrbGlzdFtd
ID0gewo+ICsJInJvY2tjaGlwLHJrMzU4OC1kd2MzIiwKPiArCSJyb2NrY2hpcCxyazM1NzYtZHdj
MyIsCj4gK307Cj4gKwo+ICBzdGF0aWMgaW50IGR3YzNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPiAgewo+ICAJc3RydWN0IGR3YzNfcHJvYmVfZGF0YSBwcm9iZV9kYXRhID0g
e307Cj4gIAlzdHJ1Y3QgcmVzb3VyY2UgKnJlczsKPiAgCXN0cnVjdCBkd2MzICpkd2M7Cj4gKwlp
bnQgaTsKPiArCj4gKwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShkd2MzX2NvbXBhdGlibGVf
YmxvY2tsaXN0KTsgaSsrKQo+ICsJCWlmIChkZXZpY2VfaXNfY29tcGF0aWJsZSgmcGRldi0+ZGV2
LCBkd2MzX2NvbXBhdGlibGVfYmxvY2tsaXN0W2ldKSkKPiArCQkJcmV0dXJuIC1FTk9ERVY7Cgpb
U2V2ZXJpdHk6IE1lZGl1bV0KRG9lcyB0aGlzIHVuY29uZGl0aW9uYWwgYmxvY2tsaXN0IGJyZWFr
IHRoZSBVU0IgZmFsbGJhY2sgbWVjaGFuaXNtIHdoZW4gdGhlCmtlcm5lbCBpcyBidWlsdCB3aXRo
b3V0IENPTkZJR19VU0JfRFdDM19ST0NLQ0hJUD8KClRoZSBkZXZpY2UgdHJlZSBiaW5kaW5ncyBm
b3IgdGhlc2UgYm9hcmRzIHNwZWNpZnkgc25wcyxkd2MzIGFzIGEgZmFsbGJhY2sKc28gdGhlIGdl
bmVyaWMgZHJpdmVyIGNhbiBiaW5kIGlmIHRoZSBzcGVjaWFsaXplZCBSb2NrY2hpcCBkcml2ZXIg
aXMKdW5hdmFpbGFibGUuIEJ5IHVuY29uZGl0aW9uYWxseSBibG9ja2xpc3RpbmcgdGhlIFJvY2tj
aGlwIGNvbXBhdGlibGVzIGluCmR3YzNfcHJvYmUoKSwgdGhlIGZhbGxiYWNrIG1lY2hhbmlzbSBp
cyBkZWZlYXRlZC4KCklmIGEgdXNlciBjb25maWd1cmVzIHRoZWlyIGtlcm5lbCB3aXRob3V0IHRo
ZSBuZXdseSBhZGRlZApDT05GSUdfVVNCX0RXQzNfUk9DS0NISVAsIHdpbGwgdGhlIGRldmljZSBi
ZSByZWplY3RlZCBjb21wbGV0ZWx5IGFuZCBsZWF2ZQp0aGUgc3lzdGVtIHdpdGggbm8gVVNCIGZ1
bmN0aW9uYWxpdHk/IAoKQ291bGQgdGhlc2UgYmxvY2tsaXN0IGVudHJpZXMgYmUgY29uZGl0aW9u
YWxseSBjb21waWxlZCAoZm9yIGV4YW1wbGUsIHVzaW5nCklTX0VOQUJMRUQoQ09ORklHX1VTQl9E
V0MzX1JPQ0tDSElQKSkgc28gdGhlIGdlbmVyaWMgZHJpdmVyIGNhbiBzdGlsbCBzZXJ2ZQphcyBh
IGZhbGxiYWNrIHdoZW4gdGhlIGdsdWUgZHJpdmVyIGlzIG5vdCBidWlsdD8KCj4gIAo+ICAJcmVz
ID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsKPiAgCWlm
ICghcmVzKSB7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwOTI0LWI0LXJvY2tjaGlwLWR3YzMtcm9ja2NoaXAtZ2x1ZS12MTYtMC0x
MjZhMmU5MTMzYzNAY29sbGFib3JhLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
