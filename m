Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 207ABCF6BFB
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 08:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqIoEO3P/ReinQGYlS/KmuyJSsguJRgTc2oobVbAYxQ=; b=TAMMEVrn2xj4BD
	RKqHTy0saXfT0XBbLOYzFFCbmSoP5pQ57OC5uFp0TvjJETV5WHXt8M6En/Jr1TMmm+Sfa5yCLPjo3
	h7eccJJxP4kC97audLGv+n0ZvYbi+uQfZTp4gbZKcI9XnTVSws70EjLNQsDShc8TJdIsKHTByrw9i
	jzKEQnfrVjmr3umCesBS01lFKt0qNrxy4P4KTsk71r0R4YUwQ0BW5LLA5vz8jPiMTKG7GjU0nUjai
	RZhP2/JTbZFQw2gqTbDhdbYZGlWlHTs5G3oJAf361mu2++CvCSrYAFB/+kt1YqvfBf+s1xoof/I25
	OmeD84rKXCMwuxeUTC2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOf9-0000000EMvh-3fxl;
	Wed, 07 Jan 2026 08:13:03 +0000
Received: from dilbert.mork.no ([2a01:4f9:c010:a439::d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOf7-0000000EMvC-2jCG;
	Wed, 07 Jan 2026 08:13:03 +0000
Authentication-Results: dilbert.mork.no;
	dkim=pass (1024-bit key; secure) header.d=mork.no header.i=@mork.no header.a=rsa-sha256 header.s=b header.b=ankoLIDO;
	dkim-atps=neutral
Received: from canardo.dyn.mork.no ([IPv6:2a01:799:10e2:d900:0:0:0:1])
	(authenticated bits=0)
	by dilbert.mork.no (8.18.1/8.18.1) with ESMTPSA id 6078CTcF325307
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
	Wed, 7 Jan 2026 08:12:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
	t=1767773549; bh=GMHhwOjApnNmIM/IGLBoV1hrqPEAl7/n8Dd5Zu2tbRI=;
	h=From:To:Cc:Subject:References:Date:Message-ID:From;
	b=ankoLIDOlBbWRMEwsPRzbCSIiwL+79ngKEnXu1Sw/jG25R6BG0iCcr78w5FCqaLGe
	 qL/S5kvI5XRfoQJA0iBOuWGsaC+rhmo2TMFDiqI9zl8XQfc9y9CM/Fniri9jDTFzTJ
	 IVvvoNkkDHUzvcXmdsNBSxYtQTJfH5vU5ssD3dH4=
Received: from miraculix.mork.no ([IPv6:2a01:799:10e2:d90a:6f50:7559:681d:630c])
	(authenticated bits=0)
	by canardo.dyn.mork.no (8.18.1/8.18.1) with ESMTPSA id 6078CTBl1975768
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
	Wed, 7 Jan 2026 09:12:29 +0100
Received: (nullmailer pid 651874 invoked by uid 1000);
	Wed, 07 Jan 2026 08:12:28 -0000
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Daniel Golle <daniel@makrotopia.org>,
        Horatiu Vultur <horatiu.vultur@microchip.com>,
        Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Eric Woudstra <ericwouds@gmail.com>,
        Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>,
        Lee Jones <lee@kernel.org>,
        Patrice Chotard <patrice.chotard@foss.st.com>
Subject: Re: [PATCH v2 net-next 05/10] phy: add phy_get_rx_polarity() and
 phy_get_tx_polarity()
In-Reply-To: <20260103210403.438687-6-vladimir.oltean@nxp.com> (Vladimir
	Oltean's message of "Sat, 3 Jan 2026 23:03:58 +0200")
Organization: m
References: <20260103210403.438687-1-vladimir.oltean@nxp.com>
	<20260103210403.438687-6-vladimir.oltean@nxp.com>
Date: Wed, 07 Jan 2026 09:12:28 +0100
Message-ID: <87jyxtaljn.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 1.4.3 at canardo.mork.no
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_001302_021549_AB69A425 
X-CRM114-Status: GOOD (  14.35  )
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

VmxhZGltaXIgT2x0ZWFuIDx2bGFkaW1pci5vbHRlYW5AbnhwLmNvbT4gd3JpdGVzOgoKPiArc3Rh
dGljIGludCBmd25vZGVfZ2V0X3UzMl9wcm9wX2Zvcl9uYW1lKHN0cnVjdCBmd25vZGVfaGFuZGxl
ICpmd25vZGUsCj4gKwkJCQkJY29uc3QgY2hhciAqbmFtZSwKPiArCQkJCQljb25zdCBjaGFyICpw
cm9wc190aXRsZSwKPiArCQkJCQljb25zdCBjaGFyICpuYW1lc190aXRsZSwKPiArCQkJCQl1bnNp
Z25lZCBpbnQgZGVmYXVsdF92YWwsCj4gKwkJCQkJdW5zaWduZWQgaW50ICp2YWwpCj4gK3sKPiAr
CWludCBlcnIsIG5fcHJvcHMsIG5fbmFtZXMsIGlkeCA9IC0xOwo+ICsJdTMyICpwcm9wczsKPiAr
Cj4gKwlpZiAoIW5hbWUpIHsKPiArCQlwcl9lcnIoIkxvb2t1cCBrZXkgaW5zaWRlIFwiJXNcIiBp
cyBtYW5kYXRvcnlcbiIsIG5hbWVzX3RpdGxlKTsKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCX0K
PiArCj4gKwlpZiAoIWZ3bm9kZSkgewo+ICsJCSp2YWwgPSBkZWZhdWx0X3ZhbDsKPiArCQlyZXR1
cm4gMDsKPiArCX0KPiArCj4gKwllcnIgPSBmd25vZGVfcHJvcGVydHlfY291bnRfdTMyKGZ3bm9k
ZSwgcHJvcHNfdGl0bGUpOwo+ICsJaWYgKGVyciA8IDApCj4gKwkJcmV0dXJuIGVycjsKPiArCWlm
IChlcnIgPT0gMCkgewo+ICsJCSp2YWwgPSBkZWZhdWx0X3ZhbDsKPiArCQlyZXR1cm4gMDsKPiAr
CX0KPiArCW5fcHJvcHMgPSBlcnI7CgpJIHRyaWVkIHVzaW5nIHRoaXMgaW4gdGhlIGFpcl9lbjg4
MTFoIGRyaXZlciBhbmQgc3RhcnRlZCB3b25kZXJpbmcgaWYgSQpoYXZlIG1pc3VuZGVyc3Rvb2Qg
c29tZXRoaW5nLgoKVGhlIHByb2JsZW0gSSBoYXZlIGlzIHRoYXQgZndub2RlX3Byb3BlcnR5X2Nv
dW50X3UzMigpIHJldHVybnMgLUVJTlZBTAppZiBwcm9wc190aXRsZSBpcyBtaXNzaW5nLiAgU28g
aWYgeW91IGhhdmUgYSBub2RlIHdpdGggdGhlIGxlZ2FjeQoiYWlyb2hhLHBuc3dhcC1yeCIgcHJv
cGVydHkgaW5zdGVhZCBvZiAicngtcG9sYXJpdHkiLCBvciBtb3JlIGNvbW1vbjogbm8KcG9sYXJp
eSBwcm9wZXJ0eSBhdCBhbGwsIHRoZW4gd2Ugc2VlIC1FSU5WQUwgcmV0dXJuZWQgZnJvbQpwaHlf
Z2V0X3J4X3BvbGFyaXR5KCkuICBXaGljaCBpcyBwcm9wYWdhdGVkIGJhY2sgdG8gY29uZmlnX2lu
aXQoKSBhbmQKdGhlIHBoeSBmYWlscyB0byBhdHRhY2guICBUaGF0IGNhbid0IGJlIHRoZSBpbnRl
bnRpb24/CgpUaGUgYmVoYXZpb3VyIEkgZXhwZWN0ZWQgaXMgZGVzY3JpYmVkIGJ5IHRoaXMgdGVz
dDoKCgovKiBUZXN0OiB0eC1wb2xhcml0eSBwcm9wZXJ0eSBpcyBtaXNzaW5nICovCnN0YXRpYyB2
b2lkIHBoeV90ZXN0X3R4X3BvbGFyaXR5X2lzX21pc3Npbmcoc3RydWN0IGt1bml0ICp0ZXN0KQp7
CglzdGF0aWMgY29uc3Qgc3RydWN0IHByb3BlcnR5X2VudHJ5IGVudHJpZXNbXSA9IHsKCQl7fQoJ
fTsKCXN0cnVjdCBmd25vZGVfaGFuZGxlICpub2RlOwoJdW5zaWduZWQgaW50IHZhbDsKCWludCBy
ZXQ7CgoJbm9kZSA9IGZ3bm9kZV9jcmVhdGVfc29mdHdhcmVfbm9kZShlbnRyaWVzLCBOVUxMKTsK
CUtVTklUX0FTU0VSVF9OT1RfRVJSX09SX05VTEwodGVzdCwgbm9kZSk7CgoJcmV0ID0gcGh5X2dl
dF9tYW51YWxfdHhfcG9sYXJpdHkobm9kZSwgInNnbWkiLCAmdmFsKTsKCUtVTklUX0VYUEVDVF9F
USh0ZXN0LCByZXQsIDApOwoJS1VOSVRfRVhQRUNUX0VRKHRlc3QsIHZhbCwgUEhZX1BPTF9OT1JN
QUwpOwoKCWZ3bm9kZV9yZW1vdmVfc29mdHdhcmVfbm9kZShub2RlKTsKfQoKCgpCasO4cm4KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
