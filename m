Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71C6AC88E72
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 11:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9NJbS9tvpfoTQXRaJtD2gIaWTfWgsJxbBofKxbyNoic=; b=TgGDngVK5wUqiC
	6f02TXCisDkIUwVRtETGHmN+QOwwfshFzoCsweZQLPpyUn/cZGXQlVWj9YqO/LCVWkt5HQFnsOQKM
	Bl8yOZYH+GiWGFFwiFzo99J4KxvOhMmKxU8JdCzu1XbKR7bxCP7clOpd+ufjtM1qrydNUSz5vVDNH
	Ls28vWS4wP84g7m/1jPSW7y27q+g6w1VOboQQJxgNxFRyy9NuSGll373CbQ0OG/CMN+NMBCFTR0Gr
	6aC7O873xMlE2prPqX+/6s47qu37eFN4RnyrPZejJid3yJmkmSS0lS3EaC8s4TptKfu0v/R7BWwfg
	O5EUoduMJBBd/f7453pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7A9e-0000000BArb-0Z3V;
	Thu, 17 Sep 2026 11:19:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7A9c-0000000BArV-34jc
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 11:19:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7DF2640244;
	Thu, 17 Sep 2026 11:19:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D88BE1F000FF;
	Thu, 17 Sep 2026 11:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789643988;
	bh=+gYBqCu155OhLXvJ/oea/vKBeIQvwk1zdpOhFSgJ2yw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lzgtyKtcQYqvt6AA69miMM6AqL+YAX/O7Ukz6yeIsVIQK+0O3hHHKS8nGP4Dbgjfh
	 Ugl+K9DOyf/FwueXB+mEjWudNxXmJeW3/u52lj2pgDsY5eAc5SM3kDUOD3d1gyM/rF
	 jzV8yfhNNyohxN/ahO3VKMC5n7b7mpSHmU2Z99k7zarSdcqQJLXBR5Hgz1KaRFeKBq
	 +g2JT3Z178BFB9dWUuJGsrARQ1ZTREbTvaJX6XCuQ+9ipRnBHYRCFpMCM6l7HYCsro
	 dn0PwRRKcoijoViBe6MWr+LxTOrvssZ01jcgSeTxyE24EX9l9XwoD7zfq0zlKiOoV/
	 ZUEbkwxf5K3Bw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v18 4/5] media: qcom: camss: Add support for PHY API
 devices
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: media-ci@linuxtv.org, devicetree@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-4-f85c9103177e@linaro.org>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-0-f85c9103177e@linaro.org>
 <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-4-f85c9103177e@linaro.org>
Date: Thu, 17 Sep 2026 11:19:47 +0000
Message-Id: <20260917111947.D88BE1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10ga2NvbmZpZzogc2VsZWN0
IG9mIG5vbi1leGlzdGVudCBzeW1ib2wgUEhZX1FDT01fTUlQSV9DU0kyCi0tCgpjb21taXQgYjAz
NTczZmNkMWYxMmQ0ZDA3YzQwZGM0ZjFkMzdiYjRhYTAyMDQwYgpBdXRob3I6IEJyeWFuIE8nRG9u
b2dodWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgoKbWVkaWE6IHFjb206IGNhbXNzOiBB
ZGQgc3VwcG9ydCBmb3IgUEhZIEFQSSBkZXZpY2VzCgpUaGlzIHBhdGNoIGFkZHMgc3VwcG9ydCBm
b3IgdXNpbmcgYSBQSFkgcG9pbnRlciB0aGF0IGludGVyYWN0cyB3aXRoIHRoZQpzdGFuZGFyZCBQ
SFkgQVBJLiBJdCB3aWxsIHRyeSB0byB1c2UgdGhlIG5ldyBpbnRlcmZhY2UgZmlyc3QsIGFuZCBm
YWxsIGJhY2sKdG8gdGhlIGxlZ2FjeSBtZXRob2QgaWYgbm8gUEhZcyBhcmUgcHJlc2VudCBpbiB0
aGUgZGV2aWNlIHRyZWUuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fj
b20vY2Ftc3MvS2NvbmZpZyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9LY29u
ZmlnCj4gaW5kZXggNGVkYTQ4Y2IxYWRmMC4uMWVkYzVlNWExODI5ZSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9LY29uZmlnCj4gQEAgLTcsMyArNyw0IEBAIGNvbmZp
ZyBWSURFT19RQ09NX0NBTVNTCj4gIAlzZWxlY3QgVklERU9fVjRMMl9TVUJERVZfQVBJCj4gIAlz
ZWxlY3QgVklERU9CVUYyX0RNQV9TRwo+ICAJc2VsZWN0IFY0TDJfRldOT0RFCj4gKwlzZWxlY3Qg
UEhZX1FDT01fTUlQSV9DU0kyCgpbU2V2ZXJpdHk6IExvd10KSXMgdGhlIHN5bWJvbCBQSFlfUUNP
TV9NSVBJX0NTSTIgZGVmaW5lZCBzb21ld2hlcmUgaW4gdGhlIGtlcm5lbCB0cmVlPwoKU2VsZWN0
aW5nIGEgbm9uLWV4aXN0ZW50IGNvbmZpZyBzeW1ib2wgaGFzIG5vIGVmZmVjdC4gVGhpcyBtZWFu
cyB0aGUKcmVxdWlyZWQgUEhZIGRyaXZlciBtaWdodCBub3QgYmUgYXV0b21hdGljYWxseSBlbmFi
bGVkIGFzIGludGVuZGVkLCBvciBpdApjb3VsZCBjYXVzZSBLY29uZmlnIGJ1aWxkIHdhcm5pbmdz
IHdoZW4gY29uZmlndXJpbmcgdGhlIGtlcm5lbCB3aXRoClZJREVPX1FDT01fQ0FNU1MgZW5hYmxl
ZC4KClsgLi4uIF0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2
LyMvcGF0Y2hzZXQvMjAyNjA5MTctYjQtbGludXgtbmV4dC0yNS0wMy0xMy1kdHNpLXgxZTgwMTAw
LWNhbXNzLXYxOC0wLWY4NWM5MTAzMTc3ZUBsaW5hcm8ub3JnP3BhcnQ9NAoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
