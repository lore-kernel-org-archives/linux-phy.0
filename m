Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E2C0C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 12 Dec 2023 16:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nu25rrHFIQAiUzDAOFxHOxdxPwlYz1gESratqOVdNTU=; b=v1fbA45Gec5Bkw
	eS5tUGqdJWxWjJpMhPUQS6WtmcahlBX9JLKXN5+PXKAck+f9K/gFYoEb3OYYCQDgAPxvuhFq1qGLS
	01brAH1AgmE7heUocwMVTAq2GXAb+2pwGylwYARCcVvw37L/6RJb66EudhdQPdkUvFY7V6PFgOlQL
	H9MsfeAchNAkDFxMMD9EqZk+jlfAtAj8oB5B0FXtxrTdcgUpq8z58E2EXaQ/QqEHTlK8gN0/88LfJ
	F8UIOt2n9ZmO8a7jTYu0mJVl3G7JOvrBlS80b1D/hcibABQ0C7JkL/sUyza8B7X31Jn30xwVnXLln
	q6gWi6Rvusb+Nr7QTn+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD5qr-00CH0g-04;
	Tue, 12 Dec 2023 16:43:21 +0000
Received: from pidgin.makrotopia.org ([185.142.180.65])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rD5qn-00CGzA-2d;
	Tue, 12 Dec 2023 16:43:19 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1rD5qP-0006en-2c;
	Tue, 12 Dec 2023 16:42:55 +0000
Date: Tue, 12 Dec 2023 16:42:45 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Conor Dooley <conor@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felix Fietkau <nbd@nbd.name>, John Crispin <john@phrozen.org>,
	Sean Wang <sean.wang@mediatek.com>,
	Mark Lee <Mark-MC.Lee@mediatek.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Alexander Couzens <lynxis@fe80.eu>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH net-next v3 1/8] dt-bindings: phy:
 mediatek,xfi-pextp: add new bindings
Message-ID: <ZXiNhSYDbowUiNvy@makrotopia.org>
References: <cover.1702352117.git.daniel@makrotopia.org>
 <b875f693f6d4367a610a12ef324584f3bf3a1c1c.1702352117.git.daniel@makrotopia.org>
 <20231212-renderer-strobe-2b46652cd6e7@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231212-renderer-strobe-2b46652cd6e7@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_084317_856121_8FA55AA3 
X-CRM114-Status: GOOD (  13.46  )
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

On Tue, Dec 12, 2023 at 04:21:38PM +0000, Conor Dooley wrote:
> On Tue, Dec 12, 2023 at 03:46:26AM +0000, Daniel Golle wrote:
> 
> > +  mediatek,usxgmii-performance-errata:
> > +    $ref: /schemas/types.yaml#/definitions/flag
> > +    description:
> > +      USXGMII0 on MT7988 suffers from a performance problem in 10GBase-R
> > +      mode which needs a work-around in the driver. The work-around is
> > +      enabled using this flag.
> 
> Why do you need a property for this if you know that it is present on
> the MT7988?

Because it is only present in one of the two SerDes channels.
Channel 0 needs the work-around, Channel 1 doesn't.

See also this commit in the vendor driver for reference[1].

We previously discussed that[2] and it was decided that a property
would be the prefered way to represent this as there aren't any other
per-instance differences which would justify another compatible.


[1]: https://git01.mediatek.com/plugins/gitiles/openwrt/feeds/mtk-openwrt-feeds/+/a500d94cd47e279015ce22947e1ce396a7516598%5E%21/#F0

[2]: https://patchwork.kernel.org/comment/25592845/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
