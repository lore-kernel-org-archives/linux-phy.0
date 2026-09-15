Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90DA1C88E7F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZpb9Xq7b3ZYVWEpOIdbg/MbRctyWm6n9L+iM8n1HCg=; b=yWHjvoXBGvqdOS
	HTEW8kAtZuIjHFOVrltzCwNtAjSY1aJ32+O3WkFtL+ROMIVV1+gcp8yZ4FQIrIfy/WFEP1N0GEk/9
	0xeOE048cqJlUskgLyGCiwaLupdKFv0KUxmfcxpZn/9qZsN+gjwr3jkgMz9sF2UGzUtBmT8y/5P4O
	plnljDAxxEiNgwg+8+riq8gLN4hIV+by7EqncFziqsY1x/CDWhI1eJXzgH7VimoFVJwnaugjJ4uA7
	kAJ0Ow25eNTXwsANFkl7Mk/ZfD1mmdUJMO3AJ5vQLUt4zii4NsTqumPzzlv9JJ2MzzyJ4jRilRrOs
	W8sU0zXA2eZSEQi1Fr9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VL6-00000007H3A-0rn5;
	Tue, 15 Sep 2026 15:44:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VL4-00000007H2g-2MFx
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:44:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 05491600D1;
	Tue, 15 Sep 2026 15:44:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E758B1F00893;
	Tue, 15 Sep 2026 15:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789487093;
	bh=QEBXUCGA3t5aIDeoUC+JSqnO28lAavBO8vWCn83qxws=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RxB4aWbEruBsnXKfNLqbKvd6g9+7Poo7Pnm3+LUo9+LVGTrgtFDCaKPkmxzdVW7ne
	 Dsy6w+dNLDG0aYz1QO9z3U1dx7JLTtyXyCGuvx3fmueF+pFM3KZQUD4wzaRatbfs21
	 ZdeQ3lYggrSs0YE+aTjFnpL0A0xEmiibJQyRGcrF+78htalUhqvCp4exAGrMf1Asqn
	 w120kqakOTpg+sYPWjbPp9hOl1XdK8ddze5sdqzTfQKTG6OQuAw5NHCfJhMPKkDCqK
	 /JbNrXTSXBSzwyjkNELDcSDZOs9kgUfRX7+wD5PGvd02D40E7VnjzIH9/RFhM5aLiE
	 Zn3mg6Pnw9CVQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 12/20] soc: starfive: Add jh7110-hdmi-subsystem
 driver
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org, mfd@lists.linux.dev, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, olteanv@gmail.com, dri-devel@lists.freedesktop.org, vkoul@kernel.org, lee@kernel.org
In-Reply-To: <20260915-jh7110-clean-send-v4-12-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153234eucas1p221dd53b5f1bccb6228c0a5a7d0be8394@eucas1p2.samsung.com>
 <20260915-jh7110-clean-send-v4-12-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:44:52 +0000
Message-Id: <20260915154452.E758B1F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHNvYzogc3RhcmZpdmU6
IHVuc2FmZSA4LWJpdCByZWdtYXAgTU1JTyBhY2Nlc3NlcyBmb3IgMzItYml0IEhETUkgSVAKLS0K
CmNvbW1pdCAwZTUzMjA1YzY0MzAyNzJmZGE4MjkzNmUzMmQ0ZGQxMTY5NGE4ODQ3CkF1dGhvcjog
TWljaGFsIFdpbGN6eW5za2kgPG0ud2lsY3p5bnNraUBzYW1zdW5nLmNvbT4KCiAgICBzb2M6IHN0
YXJmaXZlOiBBZGQgamg3MTEwLWhkbWktc3Vic3lzdGVtIGRyaXZlcgoKVGhpcyBjb21taXQgYWRk
cyB0aGUgcGFyZW50IGRyaXZlciBmb3IgdGhlIG1vbm9saXRoaWMgSkg3MTEwIEhETUkgSVAgYmxv
Y2suCkl0IGJpbmRzIHRvIHRoZSBzdGFyZml2ZSxqaDcxMTAtaGRtaS1zdWJzeXN0ZW0gbm9kZSwg
bWFwcyB0aGUgc2hhcmVkCnJlZ2lzdGVyIGJsb2NrLCBjcmVhdGVzIGEgcmVnbWFwLCBhbmQgcG9w
dWxhdGVzIGNoaWxkIGRldmljZXMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9zdGFyZml2
ZS9qaDcxMTAtaGRtaS1zdWJzeXN0ZW0uYyBiL2RyaXZlcnMvc29jL3N0YXJmaXZlL2poNzExMC1o
ZG1pLXN1YnN5c3RlbS5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAw
MDAwLi5lNjRhMjIyNjMwNDU5Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvc29jL3N0
YXJmaXZlL2poNzExMC1oZG1pLXN1YnN5c3RlbS5jClsgLi4uIF0KPiArI2luY2x1ZGUgPGxpbnV4
L21vZHVsZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4KPiArI2luY2x1ZGUgPGxpbnV4L29m
X3BsYXRmb3JtLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiArI2lu
Y2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCByZWdtYXBf
Y29uZmlnIHN0YXJmaXZlX2hkbWlfcmVnbWFwX2NvbmZpZyA9IHsKPiArCS5yZWdfYml0cyA9IDMy
LAo+ICsJLnZhbF9iaXRzID0gOCwKCltTZXZlcml0eTogSGlnaF0KRG9lcyBjb25maWd1cmluZyAu
dmFsX2JpdHMgPSA4IGNhdXNlIHRoZSByZWdtYXAtbW1pbyBiYWNrZW5kIHRvIHNlbGVjdCA4LWJp
dAptZW1vcnkgYWNjZXNzb3JzICh3cml0ZWIoKS9yZWFkYigpKT8gCgpPbiBtYW55IDMyLWJpdCBB
UEIvQUhCIGJ1cyBmYWJyaWNzLCBpc3N1aW5nIGJ5dGUtd2lkZSBtZW1vcnkgdHJhbnNhY3Rpb25z
IHRvCjMyLWJpdCBJUCByZWdpc3RlcnMgdHJpZ2dlcnMgc3luY2hyb25vdXMgZXh0ZXJuYWwgYWJv
cnRzIChidXMgZXJyb3JzIGxlYWRpbmcKdG8gYSBrZXJuZWwgcGFuaWMpIG9yIHJlc3VsdHMgaW4g
cGFydGlhbCByZWdpc3RlciBjb3JydXB0aW9uLiBUaGlzIGNhbiBiZQp0cmlnZ2VyZWQgYXV0b25v
bW91c2x5IHdoZW4gdGhlIGNoaWxkIGRyaXZlcnMgcHJvYmUgYW5kIGF0dGVtcHQgdG8gcmVhZCBv
cgp3cml0ZSBIRE1JIHJlZ2lzdGVycyB2aWEgdGhlIHNoYXJlZCByZWdtYXAuCgpTaW5jZSB0aGUg
ZmFsbGJhY2sgTU1JTyBpbXBsZW1lbnRhdGlvbiBpbiB0aGUgaW5uby1oZG1pIGNoaWxkIGRyaXZl
ciB1c2VzCnJlYWRsX3JlbGF4ZWQoKSBhbmQgd3JpdGVsX3JlbGF4ZWQoKSwgaXQgYXBwZWFycyB0
aGUgSVAgbmF0aXZlbHkgZXhwZWN0cwozMi1iaXQgcGh5c2ljYWwgYWNjZXNzZXMuCgpTaG91bGQg
LnZhbF9iaXRzID0gMzIgYmUgdXNlZCBoZXJlIHRvIGd1YXJhbnRlZSByZWdtYXAtbW1pbyBtYXBz
IHRvIHNhZmUKMzItYml0IHBoeXNpY2FsIGFjY2Vzc29ycz8KCj4gKwkubWF4X3JlZ2lzdGVyID0g
MHgzZmZmLAo+ICt9Owo+ICsKPiArc3RhdGljIGludCBzdGFyZml2ZV9oZG1pX3N1YnN5c19wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTE1LWpoNzExMC1j
bGVhbi1zZW5kLXY0LTAtZjBlNGZkNmYyY2M4QHNhbXN1bmcuY29tP3BhcnQ9MTIKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
