Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02311CEFCEC
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 19:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+xBGuXP8cnjWj8HrdWfG4fmQWveRIFiO/aQyA3WTnw=; b=SCs1pG2VI2XFKF
	xKLBaT/1MgvIPrlMa9aeyYcsMQIqdvMQjc34XA6zjORP09J/2nXKfJ2m37raM32t1wG3Q1wAgzcr+
	86T3Lj+HZvIjTp9xD2mKqGXu5/ZZNU3l+MiYTZwZuBFhV1eze4e6avlYTt/OVnjge3uXl+p0+pTd7
	fJnvIA57TYsenopV6LgPFvTXVTvlkZAKS8NWM4Lo+kg5cHK+OdTLGt2Kcpeb27Xwz/mHXc1Zpko6N
	2gBQzf0cxUbq3d+Z3hLvLRJVFR67MT9z9OVPRpgBkGmUzmv5+2mRmUVelQ6XVYg+XSAr1Z5hBo6sE
	41kPlXD9GzSDtQOUxlmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdCM8-0000000DjtE-1IN8;
	Tue, 06 Jan 2026 19:04:36 +0000
Received: from dilbert.mork.no ([2a01:4f9:c010:a439::d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdCM5-0000000DjsZ-0yDr;
	Tue, 06 Jan 2026 19:04:35 +0000
Authentication-Results: dilbert.mork.no;
	dkim=pass (1024-bit key; secure) header.d=mork.no header.i=@mork.no header.a=rsa-sha256 header.s=b header.b=OaArPkna;
	dkim-atps=neutral
Received: from canardo.dyn.mork.no ([IPv6:2a01:799:10e2:d900:0:0:0:1])
	(authenticated bits=0)
	by dilbert.mork.no (8.18.1/8.18.1) with ESMTPSA id 606J3pAR245901
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
	Tue, 6 Jan 2026 19:03:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
	t=1767726231; bh=2A66euThQPenJG2KEd8CaRBqOlB3WqSPAAMrbx7aFzg=;
	h=From:To:Cc:Subject:References:Date:Message-ID:From;
	b=OaArPknaMBsAYMuaq+tE2ybZt2qjucvuf7QIlgekae4B0sR6nr28biT5g1R1+uXxB
	 MlORgrtRyQcLsXMDqpCXl4OufIxKdvhxL2ge3sW0IIol4hr8PpqY+YlUBf29+iVjig
	 RCiJf7ehJ219xozbMNnCVYrZ7DI5HT1W5imubuF0=
Received: from miraculix.mork.no ([IPv6:2a01:799:10e2:d90a:6f50:7559:681d:630c])
	(authenticated bits=0)
	by canardo.dyn.mork.no (8.18.1/8.18.1) with ESMTPSA id 606J3oDj1248715
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
	Tue, 6 Jan 2026 20:03:50 +0100
Received: (nullmailer pid 602062 invoked by uid 1000);
	Tue, 06 Jan 2026 19:03:50 -0000
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
Subject: Re: [PATCH v2 net-next 07/10] net: phy: air_en8811h: deprecate
 "airoha,pnswap-rx" and "airoha,pnswap-tx"
In-Reply-To: <20260103210403.438687-8-vladimir.oltean@nxp.com> (Vladimir
	Oltean's message of "Sat, 3 Jan 2026 23:04:00 +0200")
Organization: m
References: <20260103210403.438687-1-vladimir.oltean@nxp.com>
	<20260103210403.438687-8-vladimir.oltean@nxp.com>
Date: Tue, 06 Jan 2026 20:03:50 +0100
Message-ID: <87qzs2a7hl.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 1.4.3 at canardo.mork.no
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_110433_954953_70A2C707 
X-CRM114-Status: UNSURE (   8.68  )
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

VmxhZGltaXIgT2x0ZWFuIDx2bGFkaW1pci5vbHRlYW5AbnhwLmNvbT4gd3JpdGVzOgoKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvcGh5L0tjb25maWcgYi9kcml2ZXJzL25ldC9waHkvS2NvbmZp
Zwo+IGluZGV4IGE3YWRlN2I5NWEyZS4uN2I3MzMzMmExM2Q5IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvbmV0L3BoeS9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9uZXQvcGh5L0tjb25maWcKPiBAQCAt
OTgsNiArOTgsNyBAQCBjb25maWcgQVMyMVhYWF9QSFkKPiAgCj4gIGNvbmZpZyBBSVJfRU44ODEx
SF9QSFkKPiAgCXRyaXN0YXRlICJBaXJvaGEgRU44ODExSCAyLjUgR2lnYWJpdCBQSFkiCj4gKwlz
ZWxlY3QgUEhZX0NPTU1PTl9QUk9QUwoKR0VORVJJQ19QSFlfQ09NTU9OX1BST1BTIG1heWJlPwoK
CkJqw7hybgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
