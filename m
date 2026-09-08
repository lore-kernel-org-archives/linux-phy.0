Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5173DC79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 16:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AnXqw7x7X8xUaW/7wXqaWGiE2CpkYfZe3pBPgUVeILQ=; b=BgFN41tBkguwTr
	WmT/b8V48iNJKxIABufhYcz9Fbro5a0S5Qex4EV0pqmsDY0ES+CCpBkAtR/g/qdpv2VeZKr8UBW8B
	daFUq9sQJf0oURllvtbOu8qhMHwabdE16pyV7C2/8sIdMTDYhSE3qLAD7wST0/IVTpuATxr12WEy2
	YYpLw0z+rlBzpZ27Ih//vmfqKwf3JCXvN2uRNoWLLZy3W5lB2gaTk8BMNaUERi4QTYj4JRUA43tcB
	vbjE5QVXxEZx5XUrA0d1KWs0CjBCc2OqtoDMN66h3lzh8/2ApNacRViHuCiUjE71CnGyGHbnNuLCM
	BW44iO8ewPh8CLsg4eAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3yYR-00000009ciM-065Y;
	Tue, 08 Sep 2026 16:20:15 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3yYQ-00000009ciA-0SXa
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 16:20:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C1E0640A32;
	Tue,  8 Sep 2026 16:20:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61DD61F00A3A;
	Tue,  8 Sep 2026 16:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788884413;
	bh=S7H4oyysBID52TKxt5nkSOUoKP6DzwVqVvdEl2T1l8U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HileahKLvd3Q7sUWx1eKY8qLb8HdMEqGORYZmQ/+Yw6xb1dHyQNAnjaP4vPJCr1FK
	 tbAxTNxRLWkJ5aJSt9y0/iHxiwSkPuKelDkpeQbmjjETMyPbZUFV0fZy8AmxfW8vLk
	 SrwizbQa+NaQtRfoZW/mNYy/hpGwmbvfCyejdmajp/n/o3dW+yuGTrMWD2IpditSQZ
	 ziHTyUG533c/+LFsIfs+mGrlwiPe55Dp2RKtD9B3qGbN7BV3t3m6OVVLx7jrhDNQcY
	 Yz6jSztUf/jOf5UP4IabhKP/589sAWiYC2uamzJe1/mV0G9obj6RZ0qpv1bYL8Pdek
	 zA6GO9JIk2Gng==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: rockchip: inno-usb2: ensure PHY is running when
 clock is requested
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260908-phy-rockchip-inno-usb2-clock-fix-v1-1-f7d59c31b908@collabora.com>
References: <20260908-phy-rockchip-inno-usb2-clock-fix-v1-1-f7d59c31b908@collabora.com>
Date: Tue, 08 Sep 2026 16:20:12 +0000
Message-Id: <20260908162013.61DD61F00A3A@smtp.kernel.org>
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
IFtIaWdoXSBNaXNzaW5nIC5yZW1vdmUgY2FsbGJhY2sgbGVhdmVzIGRlbGF5ZWQgd29ya3MgcGVu
ZGluZyBhZnRlciBkcml2ZXIgdW5iaW5kLgotLQoKY29tbWl0IGJmNGEzOWU1ZGViNTgwY2E5ZmQx
Y2UyMzEzN2E0MWZjMzlhYTJiZTcKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFu
LnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IGlubm8tdXNiMjogZW5zdXJl
IFBIWSBpcyBydW5uaW5nIHdoZW4gY2xvY2sgaXMgcmVxdWVzdGVkCgpUaGlzIGNvbW1pdCByZXN1
bWVzIHRoZSBzdXNwZW5kZWQgUEhZIGluIHRoZSBjbG9jaydzIHByZXBhcmUgZnVuY3Rpb24uCkJ5
IGRvaW5nIHNvLCBpdCBlbnN1cmVzIHRoZSBQSFkncyA0ODBNSHogY2xvY2sgaXMgcnVubmluZyB3
aGVuIHJlcXVlc3RlZApieSB0aGUgT0hDSSBjb250cm9sbGVyIG9uIFJLMzU4OCwgd2hpY2ggcHJl
dmVudHMgYSBib2FyZCBoYW5nIGFmdGVyCnN5c3RlbSBzdXNwZW5kLgoKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIGIvZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jCj4gaW5kZXggN2Q4YTUzM2YyNGFl
YS4uMDdkNDAwOTY3ZGVmNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtaW5uby11c2IyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtaW5uby11c2IyLmMKClsgLi4uIF0KCltTZXZlcml0eTogSGlnaF0KVGhpcyBpc24ndCBh
IGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2gsIGJ1dCBpdCBpcyBhIHByZS1leGlzdGluZwpp
c3N1ZS4gRG9lcyB0aGUgbGFjayBvZiBhIC5yZW1vdmUgY2FsbGJhY2sgbGVhdmUgZGVsYXllZCB3
b3JrcyBwZW5kaW5nCmFmdGVyIHRoZSBkcml2ZXIgdW5iaW5kcz8KCkxvb2tpbmcgYXQgcm9ja2No
aXBfdXNiMnBoeV9kcml2ZXIsIGl0IGRvZXMgbm90IGRlZmluZSBhIC5yZW1vdmUgY2FsbGJhY2s6
Cgpkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmM6cm9ja2NoaXBf
dXNiMnBoeV9kcml2ZXIgewoJc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcm9ja2NoaXBf
dXNiMnBoeV9kcml2ZXIgPSB7CgkJLnByb2JlCQk9IHJvY2tjaGlwX3VzYjJwaHlfcHJvYmUsCgkJ
LmRyaXZlcgkJPSB7CgkJCS5uYW1lCT0gInJvY2tjaGlwLXVzYjJwaHkiLAoJCQkub2ZfbWF0Y2hf
dGFibGUgPSByb2NrY2hpcF91c2IycGh5X2R0X21hdGNoLAoJCX0sCgl9Owp9CgpBbmQgdGhlIGRl
bGF5ZWQgd29yayBzbV93b3JrIHJlc2NoZWR1bGVzIGl0c2VsZjoKCmRyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYzpyb2NrY2hpcF91c2IycGh5X3NtX3dvcmsoKSB7
CiAgICBbIC4uLiBdCiAgICBuZXh0X3NjaGVkdWxlOgoJbXV0ZXhfdW5sb2NrKCZycG9ydC0+bXV0
ZXgpOwoJc2NoZWR1bGVfZGVsYXllZF93b3JrKCZycG9ydC0+c21fd29yaywgU0NIRURVTEVfREVM
QVkpOwp9CgpJZiB0aGUgZHJpdmVyIGlzIHVuYm91bmQgd2hpbGUgZGVsYXllZCB3b3JrcyBsaWtl
IHNtX3dvcmsgYXJlIHNjaGVkdWxlZCwKZGV2cmVzIHdpbGwgaW1tZWRpYXRlbHkgZnJlZSB0aGUg
ZHJpdmVyJ3MgbWVtb3J5LiBCZWNhdXNlIHRoZSBkcml2ZXIgbGFja3MKYSAucmVtb3ZlIGNhbGxi
YWNrIHRvIHN5bmNocm9ub3VzbHkgY2FuY2VsIHRoZSB3b3JrLCB3aWxsIHRoZSBkZWxheWVkIHdv
cmtzCmFjY2VzcyBmcmVlZCBtZW1vcnkgd2hlbiB0aGV5IGV4ZWN1dGU/CgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTA4LXBoeS1y
b2NrY2hpcC1pbm5vLXVzYjItY2xvY2stZml4LXYxLTEtZjdkNTljMzFiOTA4QGNvbGxhYm9yYS5j
b20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
