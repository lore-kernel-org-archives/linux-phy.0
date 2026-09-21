Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C926DC982DA
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 05:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FdjmTtTLckYsZeR9kjLkme7E8crLGoDAOge573EqdN4=; b=YqdEQxRm/vzk0r
	Rezq8J6/yyq7/MufP+Uh4y75f2PKzntYjKUKNacCk/ywlAfYtULLdgysvzr7j/NPu/JJe0JEYd9+o
	Zxwpr192mZvXCl+DZJC6dlnIAUD4wtA7CfxaSaJChW6Dq+m7+mRU6jUUWQLi131Hm9zbu5f6bi8y0
	tL4i8eSnQC40i6sby1dVGujUQ7GZtjDLiJBkfWEqFDIx3lKgmDqzOrBuYUYTh3G4SXxImoSLUZx8y
	74vMq1QmrX3EVkEsTKpps3Tg99TPb1xtVpeEFK0RzK89c54RVsvZ4nxMsxJDBzZ04zVpGitRNV6WN
	pfNlx15p9tkRj1fxhUww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8X3B-00000000z0O-1Yy5;
	Mon, 21 Sep 2026 05:58:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8X3A-00000000z0C-1cu9
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 05:58:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7946D6021C;
	Mon, 21 Sep 2026 05:58:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5BAE1F000FF;
	Mon, 21 Sep 2026 05:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789970327;
	bh=mgcr85KsmTYdIXIqoA0MzDTrGO2EJEYc3deB7l5mHhI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RBuBGRNVHZs/jiwQ7qZI+bM1F9JLj7PE5JdBoArYPi7A9gRfTykbBIVV71JoxF7lU
	 mJ2h3aGeQRBWqXeB4b8nC7VC80ipoMNRTB9uBi4jpkm+KPMFyNw+W8GZw3gjPL6sQF
	 3j5OND1xrW3mc+tBdvwFSeaN1l8gxw488ABDrcanDhLAjQEM2I3tgtzqTb8ZbpfZVK
	 KmKBFwbtMPCZFPu2FyUUqJ6CLR5+rF3L8gar4p86d7I2akxLp/q7G8y754ByobAIEW
	 iBvUuO+kkhCg6Vwrua01N3w0GVB30MUCfg+oyf7J9bwevGAUY9GLY9P+3PNRZ+h7BK
	 UmZMsh93pLXbQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 6/6] phy: qcom: qmp-pcie: Add Nord Gen5x16 PCIe
 multi-PHY support
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260921-nord-v4-6-ed05c6e09240@oss.qualcomm.com>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
 <20260921-nord-v4-6-ed05c6e09240@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 05:58:46 +0000
Message-Id: <20260921055846.B5BAE1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVW51c2VkIHN0YXRpYyBh
cnJheSB2YXJpYWJsZXMgZHVlIHRvIG1hY3JvIHR5cG8KLS0KCmNvbW1pdCA0MjZlMDY1NDdmNzU1
ODBjMjUyZjI5MzVhZjkzMjNjZDM2YjBhY2VkCkF1dGhvcjogS3Jpc2huYSBDaGFpdGFueWEgQ2h1
bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+CgpwaHk6IHFjb206IHFtcC1w
Y2llOiBBZGQgTm9yZCBHZW41eDE2IFBDSWUgbXVsdGktUEhZIHN1cHBvcnQKClRoaXMgY29tbWl0
IGFkZHMgc3VwcG9ydCBmb3IgdGhlIE5vcmQgR2VuNXgxNiBiaWZ1cmNhdGVkIFFNUCBQQ0llIFBI
WS4gSXQKYWRkcyBjb25maWd1cmF0aW9ucyBmb3IgeDE2LCB4OCt4OCwgeDgreDQreDQsIGFuZCB4
OCt4NCt4Mit4MiBsYW5lIG1vZGVzLAphbG9uZyB3aXRoIHJlZ2lzdGVyIHByb2dyYW1taW5nIGFu
ZCBwb3dlciBzZXF1ZW5jaW5nLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0v
cGh5LXFjb20tcW1wLXBjaWUtbXVsdGlwaHkuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC1wY2llLW11bHRpcGh5LmMKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1xbXAtcGNpZS1tdWx0aXBoeS5jCj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tcW1wLXBjaWUtbXVsdGlwaHkuYwpbIC4uLiBdCj4gK3N0YXRpYyBjb25zdCBjaGFyICog
Y29uc3Qgbm9yZF9wY2llcGh5X3BvcnRfYV9ub2Nzcl9yZXNldF9sW10gPSB7Cj4gKwkicG9ydF9h
X25vY3NyIiwKPiArfTsKPiArCj4gK3N0YXRpYyBjb25zdCBjaGFyICogY29uc3Qgbm9yZF9wY2ll
cGh5X3BvcnRfYl9ub2Nzcl9yZXNldF9sW10gPSB7Cj4gKwkicG9ydF9iX25vY3NyIiwKPiArfTsK
WyAuLi4gXQo+ICtOT1JEX1FNUF9QQ0lFX1BPUlRfQ0ZHKGEsIHBjaWVwaHlfcG9ydF9hX3JlZ19s
LCBub3JkX3BjaWVwaHlfcG9ydF9hX3BkX2wsCj4gKwkJICAgICAgIG5vcmRfcGNpZXBoeV9wb3J0
X2FfcmVzZXRfbCwgcGNpZXBoeV9wb3J0X2Ffbm9jc3JfcmVzZXRfbCwKPiArCQkgICAgICAgbm9y
ZF9wY2llcGh5X3BvcnRfYV9waXBlY2xrX2wsIHRydWUpOwo+ICtOT1JEX1FNUF9QQ0lFX1BPUlRf
Q0ZHKGIsIHBjaWVwaHlfcG9ydF9iX3JlZ19sLCBub3JkX3BjaWVwaHlfcG9ydF9iX3BkX2wsCj4g
KwkJICAgICAgIG5vcmRfcGNpZXBoeV9wb3J0X2JfcmVzZXRfbCwgcGNpZXBoeV9wb3J0X2Jfbm9j
c3JfcmVzZXRfbCwKPiArCQkgICAgICAgbm9yZF9wY2llcGh5X3BvcnRfYl9waXBlY2xrX2wsIHRy
dWUpOwoKW1NldmVyaXR5OiBMb3ddCkRvZXMgdGhpcyBjb2RlIGFjY2lkZW50YWxseSBwYXNzIHBj
aWVwaHlfcG9ydF9hX25vY3NyX3Jlc2V0X2wgaW5zdGVhZCBvZgpub3JkX3BjaWVwaHlfcG9ydF9h
X25vY3NyX3Jlc2V0X2wgaW50byB0aGUgTk9SRF9RTVBfUENJRV9QT1JUX0NGRyBtYWNybyBmb3IK
cG9ydCBhIChhbmQgc2ltaWxhcmx5IGZvciBwb3J0IGIpPwoKVGhpcyBsZWF2ZXMgdGhlIG5ld2x5
IGRlZmluZWQgbm9yZF9wY2llcGh5X3BvcnRfYV9ub2Nzcl9yZXNldF9sIGFuZApub3JkX3BjaWVw
aHlfcG9ydF9iX25vY3NyX3Jlc2V0X2wgc3RhdGljIGFycmF5cyBlbnRpcmVseSB1bnVzZWQuCgpU
aGlzIHdpbGwgdHJpZ2dlciBhIC1XdW51c2VkLXZhcmlhYmxlIGNvbXBpbGVyIHdhcm5pbmcsIHdo
aWNoIGNhbiBjYXVzZQpidWlsZCBmYWlsdXJlcyB3aGVuIGNvbXBpbGluZyB0aGUga2VybmVsIHdp
dGggLVdlcnJvci4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2
LyMvcGF0Y2hzZXQvMjAyNjA5MjEtbm9yZC12NC0wLWVkMDVjNmUwOTI0MEBvc3MucXVhbGNvbW0u
Y29tP3BhcnQ9NgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
