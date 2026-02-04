Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AC40E9D405
	for <linux-phy@archiver.kernel.org>; Wed,  4 Feb 2026 15:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dDuBmu+LlLlJ/KGUAQjoxMOOAXoujFrbcer77ZCBYRU=; b=BHAVBT/SZcgHBl
	jBrEincuCuDsk1j7yjaRyn3LuE0miQoqjwOwGeQWTjI3fF4EtBZo19ic28GpCJLgVvO8AASWIHgQu
	yl9a8umirpUsvLDJ+Dl/UNneuVXzJ/zfIv9QM8sNqqXG+e9rHO+4UC7s24L1/ZZeN1leIouaB9xmU
	Qb4iuekvuipJ/+FvbJo+5FL+FoP06G1s9K1pFgQ8m+ZULVGHCAVMJ035eeO9aGHCVqlQyvD5xfhGx
	3g3V9AxCFKjutkjTNmTPzibcHyi6l7uqKj7PDFbpdrtC0I5Sa1TElRRX9iScHjq2c+IkczqP1pM/8
	HPtW7YANh9/cV8744bqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnf3G-00000008gyA-0wph;
	Wed, 04 Feb 2026 15:44:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnf3E-00000008gxG-0wtU
	for linux-phy@lists.infradead.org;
	Wed, 04 Feb 2026 15:44:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E4D79436E5;
	Wed,  4 Feb 2026 15:44:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6231C4AF09;
	Wed,  4 Feb 2026 15:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770219859;
	bh=tpM2cWDZ1DBwS/647zz9YtPE7D712SNfpFteoFYoiHQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=R5aEQslLkHyDEtbpw0WoLKBUJFMOjjU4OwvYdFugzArlcmpq9OVLOvhbejNPX8fwT
	 6CLDLCJ17YCmlKaMF13uSMUtX755quM50iq0APPcjbZX5Mat9eHltadSiBTqVr83zp
	 uquBU9neRuzi6dv80mt8r2Q0Qnn42H1LwZt4JqS4NxTp7w85XVZBbI7WpFCebI8jxk
	 kIttulnma0NFg7KZy5mng4NGOKZoEYCwb724noZ8+fcWq+IWAwKeh0QsZNchvrm3Xj
	 uocO7u5w0d81n7z0tgWAp2HTlMNYUbLWZ+5ONFmD4azTFJ5mcbZYdpu8WZrb3P9NqM
	 wy/SQwyn5V+5w==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Roger Quadros <rogerq@ti.com>, Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
In-Reply-To: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
References: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
Subject: Re: (subset) [PATCH v4 0/3] dt-bindings: phy: Convert TI OMAP
 control and PIPE3 PHY to DT schema
Message-Id: <177021985530.133434.13436195442562231016.b4-ty@kernel.org>
Date: Wed, 04 Feb 2026 21:14:15 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_074420_307425_731A4502 
X-CRM114-Status: UNSURE (   4.39  )
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


On Fri, 23 Jan 2026 15:39:01 +0000, Charan Pedumuru wrote:
> This series converts the old text-based DeviceTree bindings for TI OMAP
> Control PHY and TI PIPE3 PHY to modern JSON-schema (YAML) format.
> 
> 

Applied, thanks!

[2/3] dt-bindings: phy: ti,phy-usb3: convert to DT schema
      commit: 62c9ff8fc20d23c0dc36be1330734fdafb3e8585
[3/3] dt-bindings: phy: ti,control-phy-otghs: convert to DT schema
      commit: 7878306d182a1750583a325a29e5ccab9ce0235b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
