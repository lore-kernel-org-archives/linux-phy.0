Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77097C47DD9
	for <linux-phy@archiver.kernel.org>; Wed, 28 Feb 2024 11:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpTR0jeKkw8xWxlWLDvZrFyJdHhZ2SPyU2XOY0NZkAk=; b=Z93VC42RqBdvNy
	kksDZDER9NPZ5bbtR+M97UG21r6m75hWGkrge9amLc1bUsEdLjOZA1F5xznA21pUKe0if3ZJyfH83
	Hj3F+gSIuaNnLulGAu9bSVXLZUqHFllIc2uzzGeJwKCwjEV9lyHyimGGBYxKgwxZwGV19GpSGPUnr
	oim5xA+6NelOwPH/G5uWZytmfN11pjxTnIwYq8vd8b248W1RM99c6RyeZZByZaoGT7ill0Slf4zNA
	eccQcZE6789izKZCdooKSX5C8FTVPvStjC23epXv0h0l6Wo6x++vZFw/E+7UqoEV9h3UDY+/6TLto
	XyJCjWhb53bcQnSn6oRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfITx-000000097cc-3eom;
	Wed, 28 Feb 2024 11:52:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfISc-0000000979r-3sos;
	Wed, 28 Feb 2024 11:50:56 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rfISU-0001E2-Ln; Wed, 28 Feb 2024 12:50:46 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Wang <frank.wang@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com,
 Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 01/10] dt-bindings: phy: add rockchip usbdp combo phy document
Date: Wed, 28 Feb 2024 12:50:45 +0100
Message-ID: <10751726.aFP6jjVeTY@diego>
In-Reply-To: <20240216170514.75200-2-sebastian.reichel@collabora.com>
References: <20240216170514.75200-1-sebastian.reichel@collabora.com>
 <20240216170514.75200-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_035055_078185_67B92E19 
X-CRM114-Status: UNSURE (   8.33  )
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

Am Freitag, 16. Februar 2024, 18:01:16 CET schrieb Sebastian Reichel:
> Add device tree binding document for Rockchip USBDP Combo PHY
> with Samsung IP block.
> 
> Co-developed-by: Frank Wang <frank.wang@rock-chips.com>
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
