Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E98DBC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 05:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d17x1Ba+LbJWlugLiTrmACjs4j3mB+WWbCkpmuwCDdw=; b=lF5eD0ShsMeMl4
	y6b9VLvAsKaLRke5Lp5+Qr4MrEgyk2OS8jtum6kocJJPh/rcw3/Ie7FjyHJHY9Dkr9yb7HIgWSu1A
	8Jdpmlyp1MRSt/rMWwFqmcvznVe0zCAUX+6+W57IpVjDRZh/Ka2Tz/x5u0YmKaIbI1X8YTk4U6xtR
	E37hwQpgMOa0W6j1H6ZL7cY9UOAgzdw85G+9tUbDihh+XHqCsZ5Qnymrhi746xN7YwE8+FiLVe9Ti
	vNCmcwoJCralHSAkkVa/7ddpEXryU5wzvVTXht3tK1vPM2CVwwsyV/J5dmYMey25U9UdEpt+1L4a6
	xMHVTRZCL1gTcUVmnSrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwGym-00DwLJ-3k; Wed, 01 Jun 2022 05:33:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwGyW-00DwFq-IF; Wed, 01 Jun 2022 05:32:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 22DF4611B7;
	Wed,  1 Jun 2022 05:32:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8DB0C385A5;
	Wed,  1 Jun 2022 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654061574;
	bh=iQER32CU/sUTRxMxTf/FVOO/vpKLn4BYxmNWOMU1Q5A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=py1GvzmMMyjfRNmngOj/y8UvpccVWhIIU9HkNDRPc+VIpmfUT5xzceY16Ml6a7YF8
	 JZpnQQC9kuU7m1I0xBjJK4+y2sjajb4kmqbZnZWACbXOvqMG2+ClNL6hOYaY/IgsQr
	 ZHnVKFYVypiskCsbyu8HcWz7G5bKq4uz1XcLLD4a4gHvRWsGOfDyA8BBRd7T+fips4
	 k2/fMrgoYK02fldXgqKnRL45L6ESGmYzNZNy+aQOj8V/LlviXvkKL8fkk8ICsnENsO
	 +PjLJ5Cc0sbGWQq1xnuVlCJPYgmKiyf3RHwHKcKEnifcbRKy0FlAMHIx3mCiO+8RBY
	 9EtQrISZve5rQ==
Date: Wed, 1 Jun 2022 11:02:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jianjun Wang <jianjun.wang@mediatek.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Wei-Shun Chang <weishunc@google.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	rex-bc.chen@mediatek.com, randy.wu@mediatek.com,
	jieyy.yang@mediatek.com, chuanjia.liu@mediatek.com,
	qizhong.cheng@mediatek.com, jian.yang@mediatek.com
Subject: Re: [PATCH v9 0/2] phy: mediatek: Add PCIe PHY driver
Message-ID: <Ypb6AS6oj2en/Roi@matsya>
References: <20220520064920.27313-1-jianjun.wang@mediatek.com>
 <96f7cc90171bb6e088ce0ed88e10ad14f06a98bb.camel@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96f7cc90171bb6e088ce0ed88e10ad14f06a98bb.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_223256_722087_EA5402D7 
X-CRM114-Status: GOOD (  22.51  )
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

On 01-06-22, 10:21, Jianjun Wang wrote:
> Hello Maintainers,
> 
> Gentle ping for this patch series, if there is anything I can do to get
> these patches merged, please let me know.

Patience my friend patience. This was received very late in cycle and I
will review after merge window closes..


> 
> Thanks.
> 
> On Fri, 2022-05-20 at 14:49 +0800, Jianjun Wang wrote:
> > These series patches add support for PCIe PHY driver on MediaTek
> > chipsets.
> > 
> > Changes in v9:
> > 1. Check if the return value is -ENOMEM when reading efuse data
> > fails.
> > 
> > Changes in v8:
> > 1. Use "device_property_present()" to increase human readability;
> > 2. Use "GPL" as recommended in commit bf7fbeeae6db ("module: Cure
> >    the MODULE_LICENSE "GPL" vs. "GPL v2" bogosity").
> > 
> > Changes in v7:
> > 1. Add bitfield.h header to fix the build error on non-arm64
> > platforms.
> > 
> > Changes in v6:
> > 1. Remove unnecessary header files;
> > 2. Use FILELD_PREP in bitfield.h to set value.
> > 
> > Changes in v5:
> > 1. Fix typo in kerneldoc: "eFues" => "eFuse".
> > 
> > Changes in v4:
> > 1. Fix no return when calling dev_err_probe.
> > 
> > Changes in v3:
> > 1. Add introductions for structure members;
> > 2. Add SoC dependent data;
> > 3. Dynamically allocate efuse data;
> > 4. Check return value if it's an -EPROBE_DEFER.
> > 
> > Changes in v2:
> > 1. Add specific compatible name;
> > 2. Read NVMEM data at probe time;
> > 3. Fix typos.
> > 
> > Jianjun Wang (2):
> >   dt-bindings: phy: mediatek: Add YAML schema for PCIe PHY
> >   phy: mediatek: Add PCIe PHY driver
> > 
> >  .../bindings/phy/mediatek,pcie-phy.yaml       |  75 +++++
> >  drivers/phy/mediatek/Kconfig                  |  11 +
> >  drivers/phy/mediatek/Makefile                 |   1 +
> >  drivers/phy/mediatek/phy-mtk-pcie.c           | 267
> > ++++++++++++++++++
> >  4 files changed, 354 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/phy/mediatek,pcie-phy.yaml
> >  create mode 100644 drivers/phy/mediatek/phy-mtk-pcie.c
> > 

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
