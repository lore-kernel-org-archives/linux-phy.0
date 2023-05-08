Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A9EFC77B75
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 07:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ca0iMe1w4saj4K/ZG8XXSmxmOgbuAcHJbjZ5/r4O9bc=; b=HTjJ3J3wWRo47v
	5EqE0yz9Z9U+SypY3wew/IFxaxC0qx0SMqu59tI7rwhxBagFs/mBfmMjNC2XKuCLQfqNwJRkQ0Tv0
	0VEnL70cKA0ghqlMuScAYDxRJmx+mzv2DMaNePD7UKNka2DSinq/yB/rx9etxZ2Gmlj4B/qDF3UeJ
	Z5QFrI5XxCwPQ5TO9DgUUY+ikv0vZ/4DQtlvxBiP+QKaLaX51XAL/sM6K6NvpsyGnKdHkME9DH0QZ
	TdkDz+KJvR6KeRh4hAkzzL3pEGY7BKpto0RVNFGnaV6VXafx03Dw3P7B87w8JfaIbH44NaRA66IpN
	VGlRx/4trHnxmyigMN3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvvby-00HWWN-0h;
	Mon, 08 May 2023 07:48:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvvbu-00HWVI-3D;
	Mon, 08 May 2023 07:48:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 292F760F04;
	Mon,  8 May 2023 07:48:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9BBEC433D2;
	Mon,  8 May 2023 07:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683532121;
	bh=G9HdM1QJziMzpOUvCuJGpW3lxswdvThqfd4Irkdvc78=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SFLrL35w0Msv/Ut1ZxVUaSrWlMrdhAImX35jJa+vNdjFsaccU4K/Tmt46yGGcK/ab
	 ShGUwgzPb0DXnrbmb7y+amP1uv5G7AULBvvpwkxkCI8F/TrVO4X4k20OUy7LQhW354
	 VQpewPMkAJfEPC2bALgNFB95LK7BWdgiYlJlZMw70TcptzYNU6cjXZ08Hv2+wil21O
	 sidC919sGP4/xfCnp+E8wq+yejJrbmLzoCSv8Fv6Ym+qsqV0c+COSzCe4/6DDVgAN6
	 SxgSWWuqvXXfvXnWitxgoPYDeztdtBvZsyFeoeZX5IbsFy458+BM+3hXZi1UEKlP5S
	 A2B38BMSM4HgQ==
Date: Mon, 8 May 2023 13:18:37 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Tom Rix <trix@redhat.com>, chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de, chunfeng.yun@mediatek.com,
	kishon@kernel.org, angelogioacchino.delregno@collabora.com,
	nathan@kernel.org, ndesaulniers@google.com, granquet@baylibre.com,
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev
Subject: Re: [PATCH] phy: mediatek: fix returning garbage
Message-ID: <ZFipVfhLVyye/eud@matsya>
References: <20230414122253.3171524-1-trix@redhat.com>
 <ZFTMPWp8LhwA9uHz@matsya>
 <db9c3190-28d8-199f-f4f0-a12524d0451e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <db9c3190-28d8-199f-f4f0-a12524d0451e@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_004843_072789_75A53341 
X-CRM114-Status: GOOD (  13.73  )
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

On 05-05-23, 17:37, Matthias Brugger wrote:
> 
> 
> On 05/05/2023 11:28, Vinod Koul wrote:
> > On 14-04-23, 08:22, Tom Rix wrote:
> > > clang reports
> > > drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c:298:6: error: variable
> > >    'ret' is uninitialized when used here [-Werror,-Wuninitialized]
> > >          if (ret)
> > >              ^~~
> > > ret should have been set by the preceding call to mtk_hdmi_pll_set_hw.
> > 
> > I have applied "phy: mediatek: hdmi: mt8195: fix uninitialized variable
> > usage in pll_calc"
> 
> Thanks Vinod, that was on my list for today as well. I was a bit puzzled
> because you took the patch that added it, but I wasn't sure if you would
> take the fix. How do you want to handle things like this in the future?

Fixes should be sent as Fixes patch

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
