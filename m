Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDDD0C4828D
	for <linux-phy@archiver.kernel.org>; Tue,  6 Feb 2024 15:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etOShV/TwgZH29TIjiN8zL1wi6LuVFl+Z4tIeka3dKE=; b=e9nIp3ZEueIPKc
	AOzjQM7pXeHri3qrfjakc2zQ0lXjcH7a0nkP1VQ9WzQX5s4DVA+s6ERhsDCwiYw25kSL81yyv+np1
	0ehv3mDW8tE4zltGX5jDvRFBA9mMrmVPKS/ZlzNMReLIepko1wATiakYmCyh8G/aO/AD9/vqAkAeq
	9QgEfK12kjXGPlzmoDX73mdlVPsxq5/Yu4X1OqjtN8/oVhgoK6HyhpL4zRw5sJnQp4KioDZVvjn0E
	W5claKWjVSj5SRr7a5lXVHC4Yp8K1CTjSvF7WC6diuM3V2D6AdER93IraTxnYaFY9bNaT8EIJtS++
	y1d8cC/kXzezn/d0QkTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXNQK-000000086Xr-1yyj;
	Tue, 06 Feb 2024 15:31:48 +0000
Received: from pidgin.makrotopia.org ([185.142.180.65])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXNQF-000000086Wp-2tfI;
	Tue, 06 Feb 2024 15:31:45 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1rXNQ4-0000nG-2R;
	Tue, 06 Feb 2024 15:31:32 +0000
Date: Tue, 6 Feb 2024 15:31:21 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Bc-bocun Chen <bc-bocun.chen@mediatek.com>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Qingfang Deng <dqfext@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: mediatek,mt7988-xfi-tphy: add
 new bindings
Message-ID: <ZcJQyaTotW_bCWGU@makrotopia.org>
References: <3251ac3db1a739e0c18ded0a824edae981c1e2df.1707153425.git.daniel@makrotopia.org>
 <31d2c56a-5108-4265-a267-6733e1ba328e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <31d2c56a-5108-4265-a267-6733e1ba328e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_073143_750801_C2DE79E8 
X-CRM114-Status: GOOD (  19.39  )
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

Hi Krzysztof,

On Tue, Feb 06, 2024 at 11:53:55AM +0100, Krzysztof Kozlowski wrote:
> On 05/02/2024 18:28, Daniel Golle wrote:
> > Add bindings for the MediaTek XFI Ethernet SerDes T-PHY found in the
> > MediaTek MT7988 SoC which can operate at various interfaces modes:
> > 
> > via USXGMII PCS:
> >  * USXGMII
> >  * 10GBase-R
> >  * 5GBase-R
> > 
> > via LynxI SGMII PCS:
> >  * 2500Base-X
> >  * 1000Base-X
> >  * Cisco SGMII (MAC side)
> > 
> > Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> > ---
> > v2: unify filename and compatible as requested
> 
> Several comments, from me and Rob, were ignored. Please respond to them.

I'm sorry if I have missed something. I just checked again on
patchwork, just in case I would have missed an email reply to this or
any of the preceding posts of this patch as part of the old series
going to netdev.

Comments you have made which I have addressed:
 - removed $nodename
 - use compatible as filename

And the only thing I found that I didn't either fix or reply to is this:
> Can you explain what is this issue and errata about (except performance)?

Not overwriting that (undocumented) value in that (undocumented)
register results in 10GBase-R having performance issues according to a
commit in MediaTek's SDK, see here:

https://git01.mediatek.com/plugins/gitiles/openwrt/feeds/mtk-openwrt-feeds/+/a500d94cd%5E%21/#F0

Maybe Bc or SkyLake of MediaTek (added to Cc) can explain this in more
detail?


What I did miss was Rob's comment at the very bottom of this reply:
> What is PEXTP?

I can again only answer by referencing to MediaTek's SDK sources:

https://git01.mediatek.com/plugins/gitiles/openwrt/feeds/mtk-openwrt-feeds/+/refs/heads/master/21.02/files/target/linux/mediatek/files-5.4/drivers/net/ethernet/mediatek/mtk_sgmii.c#96

Here this reset is called XFI_PEXTP0_GRST.

I personally find that name confusing (as this PHY has nothing to do with
_P_ci _EX_press) and have tried to get rid of it where it isn't either part
of official documentation or already merged drivers (like Sam's clock driver).

If there have been any other issues with this patch which I'm not aware
of, please point them out to me.


Thank you


Best regards


Daniel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
