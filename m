Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E88A7CD11DD
	for <linux-phy@archiver.kernel.org>; Thu, 28 Mar 2024 22:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=/V8ljCbrPgDH+YG/eYomLnRisTx5OJUE0zxUP93/i1c=; b=IWPi1c7knR+uU3
	QrXiW1Ca04hfe3ks+zXpwrVODgigLsOj+xxtgRVLiDYmb/et/AiXdO+RIOC7WVeI6PwWOyaKKZMaJ
	L9hqiiw2+64PVJnSONhTO884+g+kUPbDk5PtOTRB89XJpHVMpk3zeI7uYIu/uVH3z+EyW1JI57Zok
	ztcSW964NTaZvSSraZAUkhsY5IX3m3pRS34po/oUyEIY/4DPZqTu4CBZCgiJeJ++08e/Gviqi5tP2
	EEMY33tiRW9gus9dml6CKu1lVuqfpI2ZmWopVzgTmoYa8rcgPFtyt/QNuBrFvXL4TnpW6LFFPq+If
	/cI466ojzBt8NMh85EVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpxui-0000000FrII-20r1;
	Thu, 28 Mar 2024 22:08:00 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpxud-0000000FrFT-3n0S;
	Thu, 28 Mar 2024 22:07:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id BE565CE2D33;
	Thu, 28 Mar 2024 22:07:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6A53C43390;
	Thu, 28 Mar 2024 22:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711663673;
	bh=W4ByrRn+4LKetxSuLsKEBOpQVyml+dZHE4/n83TVljc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=V4OxVoCDai/enFPnJBLQJykhNDl1EcgFkrrTcoUNMqRgYCsT3pKvCQ4pUMTw9c5EV
	 7ps/B6RtmKls0wISTrTzJx0RlRfQcXeF2RY8SZiUL7i0ypKS1dLF7N6aZlbm0pweIC
	 LFaO67i9Oj0i3UhJ3KHZ10ZxkwNoNG3eWgoSsLtZLbS17N4z+u64fF8VEx1yoq97/0
	 DXM6Ed5G/l+aHVasdfhXppVn+Eekxz/UclPWyo1nU2dcbxkOitwfFqOYiBb1FSY4lh
	 yJrHD6RSB0jUdgMYWUg5JYyO1xllzQfHIzDRgLwalJClI3LBKR5WgpTPQRC9/uy9D8
	 EmwXkoGdDd/1w==
Date: Thu, 28 Mar 2024 17:07:51 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com
Subject: Re: [PATCH v4 18/18] PCI: j721e: Add suspend and resume support
Message-ID: <20240328220751.GA1613553@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v4-18-6f1f53390c85@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_150756_137871_DBB827A4 
X-CRM114-Status: GOOD (  12.18  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBNYXIgMDQsIDIwMjQgYXQgMDQ6MzY6MDFQTSArMDEwMCwgVGhvbWFzIFJpY2hhcmQg
d3JvdGU6Cj4gRnJvbTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KPiAK
PiBBZGQgc3VzcGVuZCBhbmQgcmVzdW1lIHN1cHBvcnQuIE9ubHkgdGhlIHJjIG1vZGUgaXMgc3Vw
cG9ydGVkLgo+IAo+IER1cmluZyB0aGUgc3VzcGVuZCBzdGFnZSBQRVJTVCMgaXMgYXNzZXJ0ZWQs
IHRoZW4gZGVhc3NlcnRlZCBkdXJpbmcgdGhlCj4gcmVzdW1lIHN0YWdlLgoKPiArCQkgKiAiUG93
ZXIgU2VxdWVuY2luZyBhbmQgUmVzZXQgU2lnbmFsIFRpbWluZ3MiIHRhYmxlIGluCj4gKwkJICog
UENJIEVYUFJFU1MgQ0FSRCBFTEVDVFJPTUVDSEFOSUNBTCBTUEVDSUZJQ0FUSU9OLCBSRVYuIDMu
MAo+ICsJCSAqIGluZGljYXRlcyBQRVJTVCMgc2hvdWxkIGJlIGRlYXNzZXJ0ZWQgYWZ0ZXIgbWlu
aW11bSBvZiAxMDB1cwo+ICsJCSAqIG9uY2UgUkVGQ0xLIGlzIHN0YWJsZS4gVGhlIFJFRkNMSyB0
byB0aGUgY29ubmVjdG9yIGluIFJDCj4gKwkJICogbW9kZSBpcyBzZWxlY3RlZCB3aGlsZSBlbmFi
bGluZyB0aGUgUEhZLiBTbyBkZWFzc2VydCBQRVJTVCMKPiArCQkgKiBhZnRlciAxMDAgdXMuCgpQ
bGVhc2UgY2l0ZSBjdXJyZW50IHNwZWMgKHI1LjEgd2FzIHB1Ymxpc2hlZCBBdWd1c3QgMjAyMyks
IHNlY3Rpb24sCmFuZCBwYXJhbWV0ZXIgbmFtZS4gIEkgdGhpbmsgdGhpcyBpcyBUX1BFUlNULUNM
SywgIlJFRkNMSyBzdGFibGUKYmVmb3JlIFBFUlNUIyBpbmFjdGl2ZSIsIGZyb20gc2VjIDIuOS4y
LgoKPiArCQkgKi8KPiArCQlpZiAocGNpZS0+cmVzZXRfZ3Bpbykgewo+ICsJCQlmc2xlZXAoMTAw
KTsKCkknZCBsaWtlIHRvIHNlZSBhIG1hY3JvIHVzZWQgaGVyZSBpbnN0ZWFkIG9mIGEgYmFyZSBu
dW1iZXIuICBTaW5jZQp0aGlzIGlzbid0IGFueXRoaW5nIHNwZWNpZmljIHRvIGo3MjFlLCBtYXli
ZSBhZGQgc29tZXRoaW5nIGxpa2UKI2RlZmluZSBQQ0lFX1RfUEVSU1RfQ0xLX1VTIGFsb25nc2lk
ZSBQQ0lFX1RfUFZQRVJMX01TLgoKPiArCQkJZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHBjaWUt
PnJlc2V0X2dwaW8sIDEpOwo+ICsJCX0KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
