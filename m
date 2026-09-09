Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28EFCC79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 15:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SX8mUuvKhRzXmddV+LZPWJJ7nd9fmiGrLnsPcHEX8WM=; b=PZd7rYj0YqwgMv
	OfcDr+4YENnW374nPiWDohWdMouat3REg6Hw/qrzbmRKkgGmrkAn94hh9Bfw96ZfzbRLW7L/z3+LO
	Q4sBE54CT++ZasmDQWdFVnQqtpACXyPVaJX66R1KSutS77IKW0OoOK6OqsL2pyPvbZQcwV0U3EwuO
	TDuUMgU/HPzmZhtUg2HIEyAoY8gZ5WYXMB91p+NKdBwdxIH6HWjoQpZRV+gE0cnBNVQvlwDxQ1Z7L
	XL5h924xxtGMsPN9z6KKNFMz0gR1sgTQHsVGvcYQz6zmMfM864s79qcf3mfv3WnfVVJQWex/P+Hx+
	Yyan127/mNtER8MxRLsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4K5n-0000000C7ed-3ZN3;
	Wed, 09 Sep 2026 15:20:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4K5m-0000000C7eR-1JTQ
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 15:20:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BDBEE60211;
	Wed,  9 Sep 2026 15:20:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 927A71F00A3D;
	Wed,  9 Sep 2026 15:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788967205;
	bh=BCrgQdZDo3aLB7xh/LkoFLAu6AOAJTFKPiP9EgRixRg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PeC8LSHLI5XHUn2A06mQpcJs5ZdXNvUNb3idIWAJsDTh9QQxbPGDGTozG1i8azmYA
	 jFtoAKTgM2ToU7+E3Itjsn/88If/it86QQ2g9Ef80U8ig+mENAvX5HVcWPrOQCfIFg
	 0blWn0cCVYG9EEbd6cVN92eRVafHnhRZjpbHVp9cUehnVIZrgotHJC/Ns78zw72zyG
	 ff86mR7Db+lMB5+oIun531Q/+iq3IJv+OCwsnuZKE6I1QhLlypm3NFu62AGf3R5es0
	 u+SVtihCUii2hW82R3HElQ95Ok+SKrp68hYpORU0un1EVzgq/xRmsW9kbizr5hsXaR
	 ejZ/Vo6XMnjZg==
Date: Wed, 9 Sep 2026 17:19:55 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Linus Walleij <linusw@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [PATCH v5 0/7] phy: cpcap-usb: improve charger detection and
 export cable state
Message-ID: <bb6uewt4jilrgeruehxl44ewuvkqhnl47ujgglhdk77zdvawas@avmjll6c6bgg>
References: <20260711204210.197144-1-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260711204210.197144-1-ivo.g.dimitrov.75@gmail.com>
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

T24gU2F0LCBKdWwgMTEsIDIwMjYgYXQgMTE6NDI6MDNQTSArMDMwMCwgSXZheWxvIERpbWl0cm92
IHdyb3RlOgo+IFRoZSBNb3Rvcm9sYSBDUENBUCBVU0IgUEhZIGNvbnRhaW5zIHRoZSBoYXJkd2Fy
ZSBzdGF0ZSBtYWNoaW5lIHVzZWQgZm9yCj4gVVNCIGNhYmxlIGRldGVjdGlvbi4gQmVzaWRlcyBk
aXN0aW5ndWlzaGluZyBVU0IgcGVyaXBoZXJhbCBhbmQgaG9zdAo+IGNvbm5lY3Rpb25zLCBpdCBj
YW4gYWxzbyBkZXRlY3QgZGVkaWNhdGVkIGNoYXJnaW5nIHBvcnRzIChEQ1ApLgo+IAo+IFRoaXMg
c2VyaWVzIGV4dGVuZHMgdGhlIENQQ0FQIFVTQiBQSFkgZHJpdmVyIHRvIGRldGVjdCBEQ1AgY29u
bmVjdGlvbnMKPiBhbmQgZXhwb3J0IHRoZSBkZXRlY3RlZCBjYWJsZSBzdGF0ZSB0aHJvdWdoIHRo
ZSBFeHRjb24gZnJhbWV3b3JrLiBJdCBhbHNvCj4gbWFrZXMgdGhlIGlkbGUgVUFSVCBtb2RlIG9w
dGlvbmFsLCBhbGxvd2luZyB0aGUgUEhZIHRvIHJlbWFpbiBpbiBpdHMKPiBkZWZhdWx0IFVTQiBk
ZXRlY3Rpb24gY29uZmlndXJhdGlvbiB1bmxlc3MgVUFSVCBzdXBwb3J0IGlzIGV4cGxpY2l0bHkK
PiByZXF1ZXN0ZWQuCj4gCj4gVGhlIHNlcmllcyB1cGRhdGVzIHRoZSBEZXZpY2UgVHJlZSBiaW5k
aW5nIGZvciB0aGUgb3B0aW9uYWwgY2hhcmdlcgo+IGRldGVjdGlvbiBpbnRlcnJ1cHQgYW5kIHRo
ZSBvcHRpb25hbCAic2FmZSIgcGluY3RybCBzdGF0ZS4gQ29ycmVzcG9uZGluZwo+IG1hcHBob25l
IERldmljZSBUcmVlIGVudHJpZXMgYXJlIGFkZGVkIHRvIGRlc2NyaWJlIHRoZSBjaGFyZ2VyIGRl
dGVjdGlvbgo+IGludGVycnVwdCBhbmQgZW5hYmxlIHRoZSBzYWZlIHBpbmN0cmwgc3RhdGUuCj4g
Cj4gVGhlIGNoYXJnZXIgZGV0ZWN0aW9uIGludGVycnVwdCBpcyBub3QgY3VycmVudGx5IHVzZWQg
YnkgdGhlIGRyaXZlci4KPiBIb3dldmVyLCBpdCBpcyBhZGRlZCB0byB0aGUgYmluZGluZyBhbmQg
RGV2aWNlIFRyZWUgYmVjYXVzZSBpdCBkZXNjcmliZXMKPiBhIGhhcmR3YXJlIGNhcGFiaWxpdHkg
b2YgdGhlIENQQ0FQIFVTQiBQSFkuCj4gCj4gVGhlIHNlcmllcyBoYXMgYmVlbiB0ZXN0ZWQgb24g
TW90b3JvbGEgRHJvaWQgNCBoYXJkd2FyZS4KPiAKCkR1ZSB0byBtYW5nbGVkIENDICItLWNjPWxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnIiBQSFkgbGlzdCB3YXMgbm90IENDZWQgdG8KdGhp
cyBzZXJpZXMuIFBsZWFzZSBmaXggaXQgaW4gdGhlIG5leHQgdmVyc2lvbi4KCi0gTWFuaQoKLS0g
CuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
