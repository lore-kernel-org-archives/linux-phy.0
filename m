Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FBB9C61DD6
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 13:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXnhoGSSXcRKSMAhZJkvWLj1sUknXv/Q1TL1Aq5+bJU=; b=xjhjORmLBSNNKy
	2CUkPBK3MAIPvW5Q8D4ghQqHcr7YpuHUMlFTToaqTLn/CCR0HEPlOHxzr6514ekdaJuJdJEIusVRL
	5nhrV8xDl7FlXWr2aWIDdY4lIlnOCuUKXnxD5CjeFwjFPGNYkqz46t154cg7gmhTnq/bilVgvS9I0
	RNcHzMT6iSncp8fedmifRFccHXIxGaEmRi9GKOO/OSTwG76qzB1UfS+kcT5zvizdX1onj0DCk5V16
	4xWydS1jJEdmWUu/acPKPiZUzqF54CEnuHlWR5Owk9QyYQDVnNhQ4pQ4P2zYkNy6Xeh03qOIWDbrY
	tIg5CKQMwedJW7sPsOrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2ULM-00000002Hio-3j8l;
	Fri, 04 Sep 2026 13:52:37 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2ULM-00000002Hid-0Xyq
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 13:52:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4AAE4601F0;
	Fri,  4 Sep 2026 13:52:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D8241F00A3D;
	Fri,  4 Sep 2026 13:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788529955;
	bh=JLgwTSSCpM3L6iDJ0ynlXolF/uJm18acCEZZpWdVymM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gpBXPqMS9xzgulJaIs2j+/CHJyl9XJXcCIVop/7FoAmnGIGxVjkGQ0Bt1M3HHXZU5
	 0szWoycEbq0vzieUVJayBYrhMw6lrAUWTc6CVrWItFRaUJ0/xyxyP21URl5HAjCeIi
	 4+GaztiJvJvT+NwE72sl5AVtstCxs2iD5F0AbxJpR/+6J1Sut+AuX+txXwkAs5nuhp
	 tcprpCwS+eLJ442vVGtmiYiIo9ghEacZaF65eMZ8+KhzKuSL5qvzj2ATVyO78te9MD
	 fJnbQO3t+DYnCJspgko0DhxABsc9yGxx9Q8/I/rjfE0mLelE175kHc8IY5hP0Ev8CR
	 e0UlTKnHDPSnA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 11/19] soc: starfive: Add jh7110-hdmi-subsystem
 driver
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, lee@kernel.org, mfd@lists.linux.dev, linux-phy@lists.infradead.org, vkoul@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260904-jh7110-clean-send-v3-11-484f9ae72715@samsung.com>
References: <20260904-jh7110-clean-send-v3-0-484f9ae72715@samsung.com>
 <CGME20260904132729eucas1p1bd78eb90feaf90b6265c13fc7bf43ada@eucas1p1.samsung.com>
 <20260904-jh7110-clean-send-v3-11-484f9ae72715@samsung.com>
Date: Fri, 04 Sep 2026 13:52:33 +0000
Message-Id: <20260904135234.5D8241F00A3D@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEluY29ycmVjdCByZWdt
YXAgY29uZmlndXJhdGlvbiAoLnZhbF9iaXRzID0gOCkgZm9yY2VzIGJ5dGUtd2lzZSBhY2Nlc3Nl
cyBvbiBhIDMyLWJpdCByZWdpc3RlciBmaWxlLCB3aGljaCBtYXkgY2F1c2UgYnVzIGZhdWx0cyBv
ciBpZ25vcmVkIHdyaXRlcy4KLS0KCmNvbW1pdCA4M2FjOTY5MzhmYzBmMTVkNTNjZGFlMDUwMWM2
ZTQzMGExN2MxYzFkCkF1dGhvcjogTWljaGFsIFdpbGN6eW5za2kgPG0ud2lsY3p5bnNraUBzYW1z
dW5nLmNvbT4Kc29jOiBzdGFyZml2ZTogQWRkIGpoNzExMC1oZG1pLXN1YnN5c3RlbSBkcml2ZXIK
ClRoaXMgY29tbWl0IGludHJvZHVjZXMgYSBwYXJlbnQgZHJpdmVyIGZvciB0aGUgbW9ub2xpdGhp
YyBTdGFyRml2ZSBKSDcxMTAKSERNSSBJUCBibG9jay4gSXQgbWFwcyB0aGUgc2hhcmVkIHJlZ2lz
dGVyIGJsb2NrIGFuZCBjcmVhdGVzIGNoaWxkIGRldmljZXMKZm9yIHRoZSBQSFkgYW5kIGNvbnRy
b2xsZXIgdXNpbmcgYSBzaGFyZWQgcmVnbWFwLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2Mv
c3RhcmZpdmUvamg3MTEwLWhkbWktc3Vic3lzdGVtLmMgYi9kcml2ZXJzL3NvYy9zdGFyZml2ZS9q
aDcxMTAtaGRtaS1zdWJzeXN0ZW0uYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAw
MDAwMDAwMDAwMC4uZTA1YjkxODI1YmU0ZAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJz
L3NvYy9zdGFyZml2ZS9qaDcxMTAtaGRtaS1zdWJzeXN0ZW0uYwpbIC4uLiBdCj4gK3N0YXRpYyBj
b25zdCBzdHJ1Y3QgcmVnbWFwX2NvbmZpZyBzdGFyZml2ZV9oZG1pX3JlZ21hcF9jb25maWcgPSB7
Cj4gKwkucmVnX2JpdHMgPSAzMiwKPiArCS52YWxfYml0cyA9IDgsCgpbU2V2ZXJpdHk6IEhpZ2hd
CldpbGwgdGhpcyByZWdtYXAgY29uZmlndXJhdGlvbiBjYXVzZSBieXRlLXdpc2UgbWVtb3J5IGFj
Y2Vzc2VzIG9uIGEgMzItYml0CnJlZ2lzdGVyIGZpbGU/IAoKU2V0dGluZyAudmFsX2JpdHMgPSA4
IGZvcmNlcyB0aGUgcmVnbWFwIGNvcmUgdG8gdXNlIDgtYml0IHJlYWRiKCkvd3JpdGViKCkKYWNj
ZXNzZXMgaW5zdGVhZCBvZiAzMi1iaXQgcmVhZGwoKS93cml0ZWwoKS4gVGhlIHVuZGVybHlpbmcg
SW5ub3NpbGljb24KSERNSSBJUCBoYXMgcmVnaXN0ZXJzIHNwYWNlZCBieSA0IGJ5dGVzIGFuZCBu
YXRpdmVseSBleHBlY3RzIDMyLWJpdAphY2Nlc3Nlcy4KCk9uIFJJU0MtViBwbGF0Zm9ybXMgbGlr
ZSB0aGUgSkg3MTEwLCBieXRlLXdpc2UgYWNjZXNzIHRvIDMyLWJpdCBBUEIKcGVyaXBoZXJhbHMg
dHlwaWNhbGx5IHRyaWdnZXJzIGEgU3RvcmUvTG9hZCBBY2Nlc3MgRmF1bHQgb3IgcmVzdWx0cyBp
bgpzaWxlbnRseSBpZ25vcmVkIHdyaXRlcy4KCj4gKwkubWF4X3JlZ2lzdGVyID0gMHgzZmZmLAo+
ICt9OwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRj
aHNldC8yMDI2MDkwNC1qaDcxMTAtY2xlYW4tc2VuZC12My0wLTQ4NGY5YWU3MjcxNUBzYW1zdW5n
LmNvbT9wYXJ0PTExCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
