Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A0EED37E39
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 14:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqEc8m44ZxAZAIrDN6WI82fqtOT1PzhZzc2rrI9sNok=; b=UQYDmWtVWQDv6b
	LF/DCY+prCNamQ9Yy1qrDsfl25i0wWthD6pXTjibdt1evV6VZ3CD48j8nvc238XKt1kHU2kfEgmlh
	KT6LmkuahZC7xFtL0Jug0EiOBIcB9g0/DfcSo0Y3I+/Ru67olbialfl2H0IuFDhRxrdDLXHJbxYeN
	ElbDYGeXUyk2mkgn4zzLCems0284e6dUVlwqM+m5rc9MJZMe/wf70/x+hwwCdIOTCwfGG8oP2gHJf
	pEK0mNtuaBrJPV9WNuLisxPJ4J6RRgoaANzfh+NEFM5464fD8sd5SN4tXav5eCzPAmJSMvSMc8awi
	iwtu3ozNYiGxr4yHAFrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1Ro-00000009RU2-1Uvm;
	Wed, 14 Jan 2026 14:02:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1Rm-00000009RSh-0WPY;
	Wed, 14 Jan 2026 14:02:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A154F43624;
	Wed, 14 Jan 2026 14:02:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1352C2BC86;
	Wed, 14 Jan 2026 14:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768399325;
	bh=haCM6T+YzB8uXZZd8uUQUcECd5pePHN87zdScN5Eg9c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=M8EystbPzjf3hIbat0l79Q5+uB24T3/rSm58fwr9j9jsIzZ6HHh1yxy06+ycFdWzA
	 kCQ/MsWRHRVcN9TXxklMfR/x8Gk1woAJjz6RiF50A5XDghuMMg7BczGpkZ01mlMkeB
	 g5um/0dqrqfSquRa4qmC5hiqJhsuVU9WMvitJ2M1N6PNGw1Un8+te/jW4S3aatLO8Z
	 kkE/AwbTuxO/UzQVfVgNXt56CiAQLxiqLQfvk/vFy/Bid+4YUXdVf3S6I9vRQCiADp
	 FNOY60maEkzw6Ms0vCj/ulWN2D6c4GcZWL99ODS+so9OJciWAK+JmthSByE0ctjfYo
	 WvWwYUk6P2leQ==
From: Vinod Koul <vkoul@kernel.org>
To: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, Daniel Golle <daniel@makrotopia.org>, 
 Horatiu Vultur <horatiu.vultur@microchip.com>, 
 =?utf-8?q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Eric Woudstra <ericwouds@gmail.com>, 
 =?utf-8?q?Marek_Beh=C3=BAn?= <kabel@kernel.org>, Lee Jones <lee@kernel.org>, 
 Patrice Chotard <patrice.chotard@foss.st.com>
In-Reply-To: <20260111093940.975359-1-vladimir.oltean@nxp.com>
References: <20260111093940.975359-1-vladimir.oltean@nxp.com>
Subject: Re: (subset) [PATCH v3 net-next 00/10] PHY polarity inversion via
 generic device tree properties
Message-Id: <176839931828.937923.5236613118963138163.b4-ty@kernel.org>
Date: Wed, 14 Jan 2026 19:31:58 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_060206_187247_470FDEE9 
X-CRM114-Status: UNSURE (   6.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On Sun, 11 Jan 2026 11:39:29 +0200, Vladimir Oltean wrote:
> Introduce "rx-polarity" and "tx-polarity" device tree properties.
> Convert two existing networking use cases - the EN8811H Ethernet PHY and
> the Mediatek LynxI PCS.
> 
> Requested merge strategy:
> Patches 1-5 through linux-phy
> linux-phy provides stable branch or tag to netdev
> patches 6-10 through netdev
> 
> [...]

Applied, thanks!

[01/10] dt-bindings: phy: rename transmit-amplitude.yaml to phy-common-props.yaml
        commit: b7b4dcd96e3dfbb955d152c9ce4b490498b0f4b4
[02/10] dt-bindings: phy-common-props: create a reusable "protocol-names" definition
        commit: 33c79865c7d3cc84705ed133c101794902e60269
[03/10] dt-bindings: phy-common-props: ensure protocol-names are unique
        commit: 01fc2215940c20bbb22fa196a331ec9d50e45452
[04/10] dt-bindings: phy-common-props: RX and TX lane polarity inversion
        commit: fceb17ac05e772ffc82f1f008e876bf7752f0576
[05/10] phy: add phy_get_rx_polarity() and phy_get_tx_polarity()
        commit: e7556b59ba65179612bce3fa56bb53d1b4fb20db

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
