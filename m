Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0099C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Apr 2022 15:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QGtcvCVawixs8GV4w/knFu3dksX10pzZARI7EoW9xTU=; b=BlqWIRMcNOt4Lb
	3rR/chPACa7CZB4wELYzaGfbpSYljqVd9Jki2PvOvanlFPap+2sCc1bjoPPHDVXq7PpqBgSSs7uYC
	Kx6zf4wAkm24MBwjxCsnqa+miEpKrNgfFUi418FWMNdpsmWqyVIkgXZZ8tjxFz/rjhCDxZq6hRHd2
	R5mcJdfgllZUPEViXty+xuV8nt150Xo94urEfsnlLL6zrBYpX8X1Mb4MlL8zO1iySg8Abgwj86S5E
	KmI+obx+5PZ188khZSkGbtu0uyQrnUVswE2PKSnfBfuJQWtRmhe50+MVU/OkSjILsEE2U1CM9EgwH
	473KiRePPzr1Wo9DcVCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc7kU-006tGR-OC; Wed, 06 Apr 2022 15:39:10 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc7kB-006t6W-2P; Wed, 06 Apr 2022 15:38:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A03AFB824B8;
 Wed,  6 Apr 2022 15:38:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 649ADC385AB;
 Wed,  6 Apr 2022 15:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649259527;
 bh=j/cHGt1Adp/5ckJatmOAtFz8YwOh1uG9kyL0/rqOdAI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZxMGCv64eYBNc1avTLYsfD8OTSDZAzQlny1jcKpgW7cpaNUn7n2lzRAB8KA+0J+lc
 blAso325sUH2hSDdGMBvrLnlq7sBAn7rt+3e0nMPFHgiaqm3WW7oDk8r6r0EjD/33C
 3zJFZhJkYKMkbll+HRI/2m9zRNN7EtPN7AGtPU93fqfe75x7mw7W9LpfxSs0yNy968
 c3gGMTbxAhAO8iPe+QiMSfuQiT/dcs7TPgHbp29GUwEK7hdb12Zraumk5vV7L3JElu
 /kqCfIhCb3N2mHJnynG8r5EIciy+D8KcqFnwwcCTHtxXDyo3TtxOG/OZ8g9SvONgYu
 KHxSDu2GKbKkg==
Received: by mail-pg1-f169.google.com with SMTP id 66so2494806pga.12;
 Wed, 06 Apr 2022 08:38:47 -0700 (PDT)
X-Gm-Message-State: AOAM532iFU52KEse7fX7rOtPoO7XHuB1/HvLHG206LtFvuiYB5nF6tNb
 NuC2zWUS1ogwGjWGrnDypPgMdqA3Afa3hSRoLag=
X-Google-Smtp-Source: ABdhPJx6nrBYoOc7Poen+QC3GhpAJV8qLRa+XzbVgFrkIodhg2moVi8VEmGesevH2qrojOojIBiXA0F7l3qLHy9jsCo=
X-Received: by 2002:a05:6a00:1501:b0:4fb:2d19:b6a8 with SMTP id
 q1-20020a056a00150100b004fb2d19b6a8mr9579739pfu.21.1649259526810; Wed, 06 Apr
 2022 08:38:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220326022728.2969-1-jianjun.wang@mediatek.com>
 <06c9f2f8236f8dab6b27da9db0332b4ca45a1039.camel@mediatek.com>
In-Reply-To: <06c9f2f8236f8dab6b27da9db0332b4ca45a1039.camel@mediatek.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 6 Apr 2022 17:38:35 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfWH-XSogkWVy0Q5LcHSk9SXinR7AA_Odo-oTc32y1Ykg@mail.gmail.com>
Message-ID: <CAJKOXPfWH-XSogkWVy0Q5LcHSk9SXinR7AA_Odo-oTc32y1Ykg@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] phy: mediatek: Add PCIe PHY driver
To: Jianjun Wang <jianjun.wang@mediatek.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, 
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, Chen-Yu Tsai <wenst@chromium.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Wei-Shun Chang <weishunc@google.com>, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 rex-bc.chen@mediatek.com, 
 randy.wu@mediatek.com, jieyy.yang@mediatek.com, chuanjia.liu@mediatek.com, 
 qizhong.cheng@mediatek.com, jian.yang@mediatek.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_083851_314233_8C872243 
X-CRM114-Status: GOOD (  10.78  )
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

On Wed, 6 Apr 2022 at 07:47, Jianjun Wang <jianjun.wang@mediatek.com> wrote:
>
> Hello Maintainers,
>
> Is there anything I can do to get these patches merged?

Patience. :) You posted a patch during the merge window which finished
three days ago, so basically one can assume you ping folks after three
days. Three days is too fast for pinging. :(

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
