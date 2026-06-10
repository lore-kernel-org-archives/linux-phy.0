Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C900CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 12:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q5q9YgccR+XIPyBRgHfgw5Uu5Q6wPrrtVpQxFNfrpSs=; b=LWf9KSWFtYlM5X
	wlMPIPVjtAupPzjwZYJeORmuP0nwj4NHMUh9OBdw4le7DR+aevC29dvpOxSwJDw2hsqNjC1A6ZLiC
	pgr4+Wgk+vq5qLr/C0QQBtUGUady9Oqrt9dBZenQWJ6VH4gHa2hOGhxw5X+IS7vSq2kqGGyvicrXR
	tzYbfVufmdZBKKbsPtQw4yiZ0QohhXUzmJtZfDWhg0jjkzlsqxOGYWsF2IVH9ZPuQwDNtrEmvZ4NF
	2p7etkgAhXrgOzgziBZibzPyoUSXTpmFFDTpqO6liZUjQqjbmHgrSdOTdFizIjIrWMTQT0h7xLyjN
	b/9f4ZNo3B3+qf8GSZTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHt3-00000007d9e-42Vu;
	Wed, 10 Jun 2026 12:18:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHt2-00000007d9Y-3noz
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 12:18:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 901C940467;
	Wed, 10 Jun 2026 12:18:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 111631F00893;
	Wed, 10 Jun 2026 12:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781093904;
	bh=lmexZrCeU9+HbvwvfuRt3zc3yavo3Y5jIZGJuSHvWJk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DCCOFGerpZT4/5t0XFPU+bxutUTEZIrxuV8k0+1lezWxaMM2uKTp30g9ztP0SuzM1
	 +qQe549k8TqPSoSQ2tvBo6MB0lGWFT7hlBR9aE4+RoZBVUbxK4c8TzsYVA7TZt0nZc
	 qJh2axSsA5lnjubpG7hkE4DpblnFzyBYtCIQ/wxkBYfHLVcdC8sywCGQdGN38cRiD0
	 MHfehvh5ZRjbanAa2z/qBaPnc8x3pdhYkQMxcQ4F60rX+OENPZHKc1UOrjAMJocGiE
	 OPsGAMyr9Ec0EgDGGz/bNDIl+2r1I1OjxiQyjuNj1MP0hWxd59IoEFf4CvdLDJioAb
	 DJDGmkCS4KWvw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: msm8996: Add VDD_MX to QUSB2 PHYs
To: "Konrad Dybcio" <konradybcio@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260610-topic-8996_61x5_qusb2phy-v1-3-d7135980e78f@oss.qualcomm.com>
References: <20260610-topic-8996_61x5_qusb2phy-v1-3-d7135980e78f@oss.qualcomm.com>
Date: Wed, 10 Jun 2026 12:18:23 +0000
Message-Id: <20260610121824.111631F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEFkZGluZyB0aGUgVkRE
X01YIHBvd2VyIGRvbWFpbiBpbnRlcmFjdHMgYnJva2VubHkgd2l0aCB0aGUgUEhZIGRyaXZlcidz
IHJ1bnRpbWUgUE0gaW1wbGVtZW50YXRpb24sIHBlcm1hbmVudGx5IHBpbm5pbmcgdGhlIFZERF9N
WCBwb3dlciByYWlsIGFuZCBjYXVzaW5nIGEgc2V2ZXJlIGJhdHRlcnkgZHJhaW4gcmVncmVzc2lv
biBkdXJpbmcgc3lzdGVtIGlkbGUuCi0tCgpjb21taXQgZjM3MzViNmRmY2M0MmYwZjU1NDQzZDBm
ODFjN2IyNTY1MzJiMGUyNQpBdXRob3I6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5keWJjaW9Ab3Nz
LnF1YWxjb21tLmNvbT4KCmFybTY0OiBkdHM6IHFjb206IG1zbTg5OTY6IEFkZCBWRERfTVggdG8g
UVVTQjIgUEhZcwoKVGhpcyBjb21taXQgYWRkcyB0aGUgVkREX01YIHBvd2VyIHJhaWwgZGVzY3Jp
cHRpb24gdG8gdGhlIFFVU0IyIFBIWXMgaW4gdGhlCm1zbTg5OTYgZGV2aWNlIHRyZWUuIEl0IGV4
cGxpY2l0bHkgc2V0cyB0aGUgcG93ZXIgZG9tYWluIGFuZCByZXF1aXJlZCBPUFBzCmZvciBib3Ro
IHByaW1hcnkgYW5kIHNlY29uZGFyeSBQSFkgbm9kZXMuCgo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3Fjb20vbXNtODk5Ni5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L21zbTg5OTYuZHRzaQo+IGluZGV4IDJmNjdlNjY1OTk2ZjMuLmI3Y2QxOTI4MzM1YzggMTAwNjQ0
Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL21zbTg5OTYuZHRzaQo+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9tc204OTk2LmR0c2kKPiBAQCAtMzE5Miw3ICszMTkyLDEy
IEBAIGhzdXNiX3BoeTE6IHBoeUA3NDExMDAwIHsKPiAgCQkJY2xvY2stbmFtZXMgPSAiY2ZnX2Fo
YiIsICJyZWYiOwo+ICAKPiAgCQkJcmVzZXRzID0gPCZnY2MgR0NDX1FVU0IyUEhZX1BSSU1fQkNS
PjsKPiArCj4gKwkJCXBvd2VyLWRvbWFpbnMgPSA8JnJwbXBkIE1TTTg5OTZfVkRETVg+Owo+ICsJ
CQlyZXF1aXJlZC1vcHBzID0gPCZycG1wZF9vcHA0PjsKCltTZXZlcml0eTogSGlnaF0KRG9lcyBh
ZGRpbmcgdGhpcyBwb3dlciBkb21haW4gcGVybWFuZW50bHkgcGluIHRoZSBWRERfTVggcmFpbD8K
Ckxvb2tpbmcgYXQgdGhlIGRyaXZlciBpbiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1x
dXNiMi5jLApxdXNiMl9waHlfcHJvYmUoKSBzZXRzIHVwIHJ1bnRpbWUgUE0gbGlrZSB0aGlzOgoK
CXBtX3J1bnRpbWVfc2V0X2FjdGl2ZShkZXYpOwoJcG1fcnVudGltZV9mb3JiaWQoZGV2KTsKCXJl
dCA9IGRldm1fcG1fcnVudGltZV9lbmFibGUoZGV2KTsKCkJlY2F1c2UgdGhlIGRyaXZlciBmb3Ji
aWRzIHJ1bnRpbWUgc3VzcGVuZCBieSBkZWZhdWx0LCB0aGUgZGV2aWNlIHN0YXlzCnBlcm1hbmVu
dGx5IGFjdGl2ZS4gCgpJZiB3ZSBhdHRhY2ggdGhlIFBNIGRvbWFpbiBhbmQgcmVxdWlyZSBhbiBP
UFAgaGVyZSwgd29uJ3QgdGhlIGdlbmVyaWMgUE0KZG9tYWluIGZyYW1ld29yayBhcHBseSB0aGUg
T1BQNCBwZXJmb3JtYW5jZSBzdGF0ZSBwZXJtYW5lbnRseSwgcHJldmVudGluZyB0aGUKU29DIGZy
b20gc2NhbGluZyBkb3duIGl0cyBsb2dpYyB2b2x0YWdlIGR1cmluZyBzeXN0ZW0gaWRsZT8KCj4g
Kwo+ICAJCQludm1lbS1jZWxscyA9IDwmcXVzYjJwX2hzdHhfdHJpbT47Cj4gKwo+ICAJCQlzdGF0
dXMgPSAiZGlzYWJsZWQiOwo+ICAJCX07Cj4gIAo+IEBAIC0zMjA2LDcgKzMyMTEsMTIgQEAgaHN1
c2JfcGh5MjogcGh5QDc0MTIwMDAgewo+ICAJCQljbG9jay1uYW1lcyA9ICJjZmdfYWhiIiwgInJl
ZiI7Cj4gIAo+ICAJCQlyZXNldHMgPSA8JmdjYyBHQ0NfUVVTQjJQSFlfU0VDX0JDUj47Cj4gKwo+
ICsJCQlwb3dlci1kb21haW5zID0gPCZycG1wZCBNU004OTk2X1ZERE1YPjsKPiArCQkJcmVxdWly
ZWQtb3BwcyA9IDwmcnBtcGRfb3BwND47Cj4gKwo+ICAJCQludm1lbS1jZWxscyA9IDwmcXVzYjJz
X2hzdHhfdHJpbT47Cj4gKwo+ICAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAJCX07CgotLSAK
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYw
NjEwLXRvcGljLTg5OTZfNjF4NV9xdXNiMnBoeS12MS0wLWQ3MTM1OTgwZTc4ZkBvc3MucXVhbGNv
bW0uY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
