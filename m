Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 826E7CD8CA8
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jun 2026 10:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7H6nR0k5gK0oh9PKXmM6LbYHz5spVb8n51krBINnl0=; b=Qyf8ghUm9gWMkK
	aaE/WS467nK03tP1/2PtzvYtWvczStMcOzT9NnC0ZE3U14F5PGMrU7Yxq5yViZj4imqlo2YJ/07Ih
	ntOwscqyWfLwkAli3XuJSVjwjfolz+hJwKwTQg61TCASHPnTdN17gmS3ZyHYdoZnIFLo5LtEzHsoN
	bLbpK92uD8icixRAH/yKX7FAnsmnCAc1IxrbxWAsbC33E35dM/J+j5iX1t8a9XbcM4Bg6+ng65sKH
	duhSZ1cYyCRmQ3koTFnO4Ce119zYSyvgHA9Tb8RedB16TRTtL4puy2xRWeuSh0xQtrSL2J6lvsKEy
	SVv2/OaY+vIB31jWLKzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYLnF-0000000CCBp-35yA;
	Sat, 13 Jun 2026 10:40:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYLnE-0000000CCBU-0LyX
	for linux-phy@lists.infradead.org;
	Sat, 13 Jun 2026 10:40:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 27E0960018;
	Sat, 13 Jun 2026 10:40:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41E201F000E9;
	Sat, 13 Jun 2026 10:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781347246;
	bh=nWOk3abyiQHdHW4G8RTGKQ2z2ZistSp8ZODaxHo3anI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=V4XpbPhDcpbDM6anoxdey5ApfNSDXT0NFEPXRiFm1XD2/fOiLZn0WcCmBt6pqquE4
	 CvPP+d/J6J0Fp/hMFzaa9EKsikx1dzgm4TjhZEoOtowo75GbpD46ufUPr7V0pRY38n
	 /Qu6kpT95Irncoekgl8sXx6wxzKIU/fcli5U3DL6hrlRJskjO2o8UaxLJvuDNbLSzj
	 dWA+K3EHXC9IbnDkWMVznsmUiTeLQBpZ7Q1yZs2NN3a1XygkqU6CEEdPHIdVXtqLEo
	 KrNoOcDyjhv4bpok3qFJAa/2bI5BlcxBCOQ90xXiTPvHVHLRg4qa+N9Q+qBYZu/awZ
	 pcd/DdvH2zenw==
Date: Sat, 13 Jun 2026 12:40:44 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Biju <biju.das.au@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 02/11] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/G3L PHY bindings
Message-ID: <20260613-authentic-eagle-of-enhancement-aefda8@quoll>
References: <20260612143048.317907-1-biju.das.jz@bp.renesas.com>
 <20260612143048.317907-3-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612143048.317907-3-biju.das.jz@bp.renesas.com>
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

On Fri, Jun 12, 2026 at 03:30:30PM +0100, Biju wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
> 
> Add device tree binding support for the RZ/G3L (r9a08g046) USB2 PHY.
> The RZ/G3L USB PHY is almost identical to the RZ/G3S USB PHY, the
> difference being 2 OTG blocks on RZ/G3L compared to 1 on RZ/G3S.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
>  Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
