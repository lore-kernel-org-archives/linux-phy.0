Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE7E2D2502E
	for <linux-phy@archiver.kernel.org>; Sun, 11 Jan 2026 11:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hjLdrXakA82OoAynkSzKkEXKOxU540q+73IHTLi/rhs=; b=2D5CwgfZnwBpJ+
	zuCrDlb5OsgRiIgB90x7qfSbCWyNTo8IjkICFgVN7QZlGizh1EroaYd/pVWo8oad0XKK2lbC3nzKU
	8Cfkw/7MeT5HeQLpBwoR6LDYRqlhd7IeGyBwVe/uhYziNhqnPooxJgqKvGj+3MOaYeDisADRpE8dg
	eyyhNfyl4WqTw27rsjtGYIVuPdW6MXLIIolrIwIcKR7WM/mVFUYTn2046ONiFHt1MhAeEdQscEw6R
	KdClaBGyEdH3RHAkRxfwdXh0245QHIdsehvVE5pS4d4zEhLLZ7QUep0i1r/W2GDG84XO/VHq1JDKC
	9Ze+A7D+kOfIuFybpHsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veu0y-00000004B1y-2qIi;
	Sun, 11 Jan 2026 11:53:48 +0000
Received: from dilbert.mork.no ([2a01:4f9:c010:a439::d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veu0v-00000004B1U-11vA;
	Sun, 11 Jan 2026 11:53:47 +0000
Authentication-Results: dilbert.mork.no;
	dkim=pass (1024-bit key; secure) header.d=mork.no header.i=@mork.no header.a=rsa-sha256 header.s=b header.b=fXbUnhQa;
	dkim-atps=neutral
Received: from canardo.dyn.mork.no ([IPv6:2a01:799:10e2:d900:0:0:0:1])
	(authenticated bits=0)
	by dilbert.mork.no (8.18.1/8.18.1) with ESMTPSA id 60BBrFAW050203
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
	Sun, 11 Jan 2026 11:53:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
	t=1768132395; bh=GhOetxFDMeDhYbefSfq2TFJ9faSnhBK5OhkfJG4g/0A=;
	h=From:To:Cc:Subject:References:Date:Message-ID:From;
	b=fXbUnhQafZvq1kWpyrH38IcXXKX2qNZtY0JZ5UpNgLOjoKgxTWUUf0xn87J92YIXp
	 YpIJIJqIq9gfHjWQCluPnXUlkuPsFNo0dAmSBe3Kx6AtoOW+Wy32sKT+IEIk/YBGAt
	 gwQ+EGIGqnYKOfbKPWowZ3n44xiM7CygfyEqcQ0M=
Received: from miraculix.mork.no ([IPv6:2a01:799:10e2:d90a:6f50:7559:681d:630c])
	(authenticated bits=0)
	by canardo.dyn.mork.no (8.18.1/8.18.1) with ESMTPSA id 60BBrFuL932582
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
	Sun, 11 Jan 2026 12:53:15 +0100
Received: (nullmailer pid 71986 invoked by uid 1000);
	Sun, 11 Jan 2026 11:53:15 -0000
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
Subject: Re: [PATCH v3 net-next 05/10] phy: add phy_get_rx_polarity() and
 phy_get_tx_polarity()
In-Reply-To: <20260111093940.975359-6-vladimir.oltean@nxp.com> (Vladimir
	Oltean's message of "Sun, 11 Jan 2026 11:39:34 +0200")
Organization: m
References: <20260111093940.975359-1-vladimir.oltean@nxp.com>
	<20260111093940.975359-6-vladimir.oltean@nxp.com>
Date: Sun, 11 Jan 2026 12:53:15 +0100
Message-ID: <87o6n04b84.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 1.4.3 at canardo.mork.no
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_035346_438975_BAFF5670 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
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

VmxhZGltaXIgT2x0ZWFuIDx2bGFkaW1pci5vbHRlYW5AbnhwLmNvbT4gd3JpdGVzOgoKPiBBZGQg
aGVscGVycyBpbiB0aGUgZ2VuZXJpYyBQSFkgZm9sZGVyIHdoaWNoIGNhbiBiZSB1c2VkIHVzaW5n
ICdzZWxlY3QKPiBHRU5FUklDX1BIWV9DT01NT05fUFJPUFMnIGZyb20gS2NvbmZpZwoKVGhlIGNv
ZGUgbG9va3MgZ29vZCB0byBtZSBub3cuCgpCdXQgcmVuYW1pbmcgc3R1ZmYgaXMgaGFyZC4gTGVm
dG92ZXIgb2xkIGNvbmZpZyBzeW1ib2wgaW4gdGhlIGNvbW1pdApkZXNjcmlwdGlvbiBoZXJlLiBD
b3VsZCBiZSBmaXhlZCB1cCBvbiBtZXJnZSwgbWF5YmU/CgoKQmrDuHJuCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
