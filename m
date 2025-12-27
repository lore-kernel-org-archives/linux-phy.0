Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 906AEE92714
	for <linux-phy@archiver.kernel.org>; Sat, 27 Dec 2025 16:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q45CbH9TsWy1qAAbH8jS8/qwagb5On4Ll/paW6EJiqQ=; b=Wa7wpsteiBNIJU
	4D88hpGkMDCiJg6tNMnkS2i3G91zap1pSBy88iFHHelSH30D0ToxEZME/9cmqye4a2WUDq6zHhkyI
	O0ttH7uzXLgMF6duEaJINZLM2QdMUqg/7C57TtmxPO+YtLc09svjIUoFWY79MBYHsVOEF7lIPp/TB
	JoULLirfosxJF7dZat/qL3jA1oI9w8mOGHdrxygiDz1P9Ko5F9v1b0fuK4uxDZloIsAdwR6BwdQiW
	Tg47SyB5YQYAThmCDl9lkv8DQ69EmLKzLkC+v5fxvbn3nDa3WMiEiOk/kDj4GKbX9p2a1O4gpCzbe
	pB+kMqypBO0A9vRDN7OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZWut-000000024Su-3Njm;
	Sat, 27 Dec 2025 16:13:19 +0000
Received: from dilbert.mork.no ([2a01:4f9:c010:a439::d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZWup-000000024SP-2Cr0;
	Sat, 27 Dec 2025 16:13:17 +0000
Authentication-Results: dilbert.mork.no;
	dkim=pass (1024-bit key; secure) header.d=mork.no header.i=@mork.no header.a=rsa-sha256 header.s=b header.b=k57w20PL;
	dkim-atps=neutral
Received: from canardo.dyn.mork.no ([IPv6:2a01:799:10e2:d900:0:0:0:1])
	(authenticated bits=0)
	by dilbert.mork.no (8.18.1/8.18.1) with ESMTPSA id 5BRGCXea1092612
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
	Sat, 27 Dec 2025 16:12:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
	t=1766851953; bh=6xQepFKbLSgWwslvs/nMpOgMMovKMH4umS/FdNhEKCI=;
	h=From:To:Cc:Subject:References:Date:Message-ID:From;
	b=k57w20PLkK0NnQT97ZSgjxTiFyMawI1HfymwWSj/dmV9dfAS0qmWGBcJ1DeXhHDTB
	 Ikjv2Rf43hQPgRm2SkAZK5mFlF3fTrfTBplyddiW09dNafUsFVtDwDIDFTy2FmJol/
	 uX9FVRLcPgMDx6rz8X0io7qVVg3U2DMkmysnOspg=
Received: from miraculix.mork.no ([IPv6:2a01:799:10e2:d90a:6f50:7559:681d:630c])
	(authenticated bits=0)
	by canardo.dyn.mork.no (8.18.1/8.18.1) with ESMTPSA id 5BRGCXAq1173802
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
	Sat, 27 Dec 2025 17:12:33 +0100
Received: (nullmailer pid 1325881 invoked by uid 1000);
	Sat, 27 Dec 2025 16:12:33 -0000
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
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Eric Woudstra <ericwouds@gmail.com>,
        Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>,
        Lee Jones <lee@kernel.org>,
        Patrice Chotard <patrice.chotard@foss.st.com>
Subject: Re: [PATCH net-next 0/9] XPCS polarity inversion via generic device
 tree properties
In-Reply-To: <20251122193341.332324-1-vladimir.oltean@nxp.com> (Vladimir
	Oltean's message of "Sat, 22 Nov 2025 21:33:32 +0200")
Organization: m
References: <20251122193341.332324-1-vladimir.oltean@nxp.com>
Date: Sat, 27 Dec 2025 17:12:33 +0100
Message-ID: <87qzsfewem.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 1.4.3 at canardo.mork.no
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251227_081316_226447_36252159 
X-CRM114-Status: GOOD (  11.02  )
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

VmxhZGltaXIgT2x0ZWFuIDx2bGFkaW1pci5vbHRlYW5AbnhwLmNvbT4gd3JpdGVzOgoKPiBUaGlz
IHNldCBjb250YWlucyBhbiBpbXBsZW1lbnRhdGlvbiBvZiBhIGdlbmVyaWMgZmVhdHVyZSB0aGF0
IHNob3VsZAo+IGNhdGVyIHRvIGFsbCBrbm93biBuZWVkcyB0aGF0IHdlcmUgaWRlbnRpZmllZCBk
dXJpbmcgbXkgZG9jdW1lbnRhdGlvbgo+IHBoYXNlLiBJJ3ZlIGFkZGVkIGEgbmV3IHVzZXIgLSB0
aGUgWFBDUyAtIGFuZCBJJ3ZlIGNvbnZlcnRlZCBhbiBleGlzdGluZwo+IHVzZXIgLSB0aGUgRU44
ODExSCBFdGhlcm5ldCBQSFkuCgpIZWxsbyBWbGFkaW1pciEKCldpbGwgdGhlcmUgYmUgYSBuZXcg
dmVyc2lvbiBvZiB0aGlzIHBhdGNoIHNldD8KClRoZSBmaXJtd2FyZSBmb3IgQU44ODExSEIgaGFz
IG5vdyBiZWVuIHN1Ym1pdHRlZCBbMV0sIHNvIEkgcGxhbiB0byBtb3ZlCmZvcndhcmQgd2l0aCB0
aGUgZHJpdmVyLiBBbmQgd2l0aG91dCB0aGlzIHNlcmllcyB0aGVuIEkgZG9uJ3Qgc2VlIGFueQpv
dGhlciByZWFzb25hYmxlIGFsdGVybmF0aXZlIHRoYW4gY29udGludWluZyB3aXRoICJhaXJvaGEs
cG5zd2FwLXJ4L3R4IiwKbGlrZSB0aGUgZXhpc3RpbmcgRU44ODExSCBkcml2ZXIuCgoKQmrDuHJu
CgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtZmlybXdhcmUvMjAyNTEyMjUxNjMw
MDMuNDc5Ny0xLWx1Y2llbnp4MTU5QGdtYWlsLmNvbS9ULyN1CgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
