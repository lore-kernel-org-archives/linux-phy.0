Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAA38C43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 21:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujpN1XmKiDptz+cKJNdvZHsrt4OaUCRiCMWmwas20ak=; b=vYHnolg+L8AJVQ
	A520pXwudbA3m1uD/YyvpGMrCB0rd8jd9HTf5ys1WX32pbcJ3BHfU5VD7TUbGSNB0fRqY1I6qcgD9
	LEKuLmMkWEZrntvuilcJnAhfEdIEFnwaLH5EXJJnWGb4PpUjHBNZ19x8BWgIVd7tfqLKL5gPxMMlU
	AU46bGgGI7atKeiFUXJPS//v6hybOleV/a1QuC36+U0/+BeRoygjq+gfelGHUHVZva3089ssrhIKF
	xxIEsBviiowTTxcistl4n2qY4CRWN9W24zNarScInkWayZ3Bpggc0agxx9XZ8Qb7GCHq3yvZW80e1
	7htUA5kxTWjr4j298SxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIgc-00000005orz-31yG;
	Fri, 10 Jul 2026 21:23:06 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIgb-00000005orr-36ie
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 21:23:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1CB4E60052;
	Fri, 10 Jul 2026 21:23:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61CA71F000E9;
	Fri, 10 Jul 2026 21:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718584;
	bh=rLu1s6acMApeaTTTTx6XZckWnxGdT3vp0+avcOoZfeM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gOtZOByI4S9NJ5GYu7A/HgwGGyfDEjyNAIfyjtyDq6kKvKI/m3k3NtFgWZI1A8wXc
	 MNgLv+GZDn4eeGCAbzaoGHybn2r0F4XaaHixwA7AfiCo8uSL9Zlu8/0nxPG7Sh2caY
	 AlKLsKgsB0N+/0m9/XZNBTnw3/LCyliiai9G6vM3d8/QkEBysBxh6N8Z1xyUoVMXmc
	 cQTp8hTcMkOZjYa/3WXKLdCtZ4Sv1hDrV2MYj7PZ66/ESWds2Cs6tMKbOVMpO/tIeS
	 w1RqiRgkJIacmyJL1Km2E45gOD+Cb3Y9aNZzRdQgr1/wfCGLHm+N2qHryjcIHQLdJV
	 hzeLcLFGHt5zQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 33/36] phy: rockchip: usbdp: Rename mode to hw_mode
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-33-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-33-8b41a9a9bef0@collabora.com>
Date: Fri, 10 Jul 2026 21:23:03 +0000
Message-Id: <20260710212304.61CA71F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gQ29tcGlsYXRpb24gZmFp
bHVyZSBkdWUgdG8gYW4gaW5jb21wbGV0ZSByZW5hbWUgb2YgYHVkcGh5LT5tb2RlYCB0byBgdWRw
aHktPmh3X21vZGVgIGluIGBya191ZHBoeV9wb3dlcl9vbigpYC4KLS0KCi0tLSBQYXRjaCBbMzNd
OiBbUEFUQ0ggdjEyIDMzLzM2XSBwaHk6IHJvY2tjaGlwOiB1c2JkcDogUmVuYW1lIG1vZGUgdG8g
aHdfbW9kZSAtLS0KY29tbWl0IGUxMjJiZjhmOTAxNzA1ZDNhMDk5N2QyMGNkZDY1ZjYxYzU4ZDMx
YzkKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3Jh
LmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBSZW5hbWUgbW9kZSB0byBod19tb2RlCgpUaGlz
IGNvbW1pdCByZW5hbWVzIHRoZSBtb2RlIGZpZWxkIGluIHN0cnVjdCBya191ZHBoeSB0byBod19t
b2RlLiBJdAp1cGRhdGVzIHJlZmVyZW5jZXMgYWNyb3NzIHRoZSBkcml2ZXIgdG8gY2xhcmlmeSB0
aGF0IHRoaXMgcmVwcmVzZW50cyB0aGUKaGFyZHdhcmUtc3VwcG9ydGVkIG1vZGVzLgoKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IGluZGV4IGNmMTczMjc2YmZj
MDEuLjdiY2U2NDJmMWU5NjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5
LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtdXNiZHAuYwoKWyAuLi4gXQoKPiBAQCAtMTAwNiw3ICsxMDA2LDcgQEAgc3RhdGljIGludCBy
a191ZHBoeV9wb3dlcl9vbihzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5LCB1OCBtb2RlKQo+ICAJCQly
ZXR1cm4gcmV0Owo+ICAJCX0KPiAgCj4gLQkJaWYgKCF1ZHBoeS0+aHMgJiYgdWRwaHktPm1vZGUg
JiBVRFBIWV9NT0RFX1VTQikKPiArCQlpZiAoIXVkcGh5LT5ocyAmJiB1ZHBoeS0+aHdfbW9kZSAm
IFVEUEhZX01PREVfVVNCKQo+ICAJCQlya191ZHBoeV91M19wb3J0X2Rpc2FibGUodWRwaHksIGZh
bHNlKTsKPiAgCQl1ZHBoeS0+cGh5X25lZWRzX3JlaW5pdCA9IGZhbHNlOwo+ICAKCltTZXZlcml0
eTogTG93XQpEb2VzIHRoaXMgY29kZSBtaXNzIGFub3RoZXIgcmVuYW1lIG9mIHRoZSBtb2RlIGZp
ZWxkIHNsaWdodGx5IGZ1cnRoZXIgZG93biBpbgpya191ZHBoeV9wb3dlcl9vbigpPwoKTG9va2lu
ZyBhdCB0aGUgZWxzZSBpZiAodWRwaHktPnBoeV9uZWVkc19yZWluaXQpIGJyYW5jaCBpbiB0aGUg
c2FtZSBmdW5jdGlvbiwKdGhlcmUgaXMgYW5vdGhlciByZWZlcmVuY2UgdG8gdGhlIG9sZCBtb2Rl
IGZpZWxkOgoKCQlpZiAodWRwaHktPm1vZGUgJiBVRFBIWV9NT0RFX1VTQikKCQkJcmtfdWRwaHlf
dTNfcG9ydF9kaXNhYmxlKHVkcGh5LCBmYWxzZSk7CgpXaWxsIHRoaXMgY2F1c2UgYSBjb21waWxh
dGlvbiBmYWlsdXJlIHNpbmNlIHRoZSBtb2RlIGZpZWxkIHdhcyByZW1vdmVkIGZyb20Kc3RydWN0
IHJrX3VkcGh5PwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDcxMC1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXYxMi0wLThiNDFhOWE5
YmVmMEBjb2xsYWJvcmEuY29tP3BhcnQ9MzMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
