Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CE4AE77188
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jan 2025 15:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdrQq+PpWPgMkoGzWrWp8Z0ozPPLlqKoOwrm8VGru58=; b=QVyaAtAwsLpNv5
	06GRcmGcxbwpGFOBWQPgwFavz6+ywgARzPE5CGD7pjJALQdzUIn7kVRV5lVdVM2Y98qllbFHT2Pzl
	gDB/Y8am+jg41Je4Uh3N2NX6DSqvlDHW283T5g+b4lnqBy7yZf9q7Zb313EAUNkjgahPz9OqjgZpc
	AeXFdggs5gp2C/Jfpdj50swrr6jNQvuoKWLfR/owQR6u36qw+9jWD4jTjB0ujbccbcBGfIaU9lyOW
	spHqX6ZREBSDDB99CMSU0bUwmX8i4fMXoX+kp6R9x0XpNze2OQjREc6X770F9+eBH4fcIjL/AsmRT
	cCZTLuVushW41WmM2AnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXj8y-00000008vKK-2m0r;
	Tue, 14 Jan 2025 15:47:52 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXj7i-00000008uvG-1k7o;
	Tue, 14 Jan 2025 15:46:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C884E11FB;
	Tue, 14 Jan 2025 07:47:01 -0800 (PST)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 81B6E3F673;
	Tue, 14 Jan 2025 07:46:28 -0800 (PST)
Date: Tue, 14 Jan 2025 15:46:25 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Parthiban Nallathambi <parthiban@linumiz.com>, Joerg Roedel
 <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy
 <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai
 <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland
 <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, Michael Turquette <mturquette@baylibre.com>, Stephen
 Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH 10/22] pinctrl: sunxi: add missed lvds pins for
 a100/a133
Message-ID: <20250114154625.7d82c858@donnerap.manchester.arm.com>
In-Reply-To: <CACRpkdY29s6Cz3zvtksLO8sESwxhkVdmGUipVAqiEtix3E1=Vw@mail.gmail.com>
References: <20241227-a133-display-support-v1-0-13b52f71fb14@linumiz.com>
	<20241227-a133-display-support-v1-10-13b52f71fb14@linumiz.com>
	<CACRpkdY29s6Cz3zvtksLO8sESwxhkVdmGUipVAqiEtix3E1=Vw@mail.gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_074634_497604_5B66FC00 
X-CRM114-Status: GOOD (  10.90  )
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

T24gTW9uLCAxMyBKYW4gMjAyNSAxNTozMDoyNCArMDEwMApMaW51cyBXYWxsZWlqIDxsaW51cy53
YWxsZWlqQGxpbmFyby5vcmc+IHdyb3RlOgoKPiBPbiBGcmksIERlYyAyNywgMjAyNCBhdCAxMjow
OeKAr1BNIFBhcnRoaWJhbiBOYWxsYXRoYW1iaQo+IDxwYXJ0aGliYW5AbGludW1pei5jb20+IHdy
b3RlOgo+IAo+ID4gbHZkcywgbGNkLCBkc2kgYWxsIHNoYXJlcyB0aGUgc2FtZSBHUElPIEQgYmFu
ayBhbmQgbHZkczAKPiA+IGRhdGEgMyBsaW5lcyBhbmQgbHZkczEgcGlucyBhcmUgbWlzc2VkLCBh
ZGQgdGhlbS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBQYXJ0aGliYW4gTmFsbGF0aGFtYmkgPHBh
cnRoaWJhbkBsaW51bWl6LmNvbT4gIAo+IAo+IE5vYm9keSBzZWVtcyB0byBoYXZlIGFueSBvYmpl
Y3Rpb25zIGFib3V0IHRoaXMgcGF0Y2ggYW5kIGl0IHNlZW1zCj4gdGVjaG5pY2FsbHkgY29ycmVj
dCBzbyBJIGp1c3QgYXBwbGllZCBpdCB0byB0aGUgcGluIGNvbnRyb2wgdHJlZS4KCkkgdGhpbmsg
UGFydGhpYmFuIGhhZCB0cm91YmxlcyB3aXRoIGhpcyBlbWFpbCBzZXJ2ZXIsIHNvIG5vdCB0aGUg
d2hvbGUKc2VyaWVzIHdhcyBzZW50IG91dDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgt
c3VueGkvMzE0YjZiYmUtNjEzZS00MWE2LTk1NWUtNTBkYjZlMTFlZjhlQGxpbnVtaXouY29tL1Qv
I3UKQXQgbGVhc3QgdGhhdCBwdXQgbWUgb2ZmIGZyb20gcmV2aWV3aW5nIGl0IGluIGFuZ2VyLgoK
SSBkbyBoYXZlIGEgY29tbWVudCBvbiB0aGlzLCB3aWxsIHJlcGx5IGluIGFub3RoZXIgbWFpbC4g
U28gY2FuIHlvdSBob2xkCnRoaXMgcGF0Y2ggYmFjayBzdGlsbCwgZm9yIG5vdz8KCkNoZWVycywK
QW5kcmUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
