Return-Path: <SRS0=/0rM=KC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22CDC433ED
	for <linux-phy@archiver.kernel.org>; Fri,  7 May 2021 06:13:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 227D2613D8
	for <linux-phy@archiver.kernel.org>; Fri,  7 May 2021 06:13:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 227D2613D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cu4m2HDjzVD2/FHdq0/ylkJsgidhMlvrNRw864OL1a0=; b=LFLa/O/rqyCKlUBjCQLQtEKTf
	KnY9szEkxizB6ss88u8JHNolTw3GaiOurOPJN48F6WW5DNp2zGRI5cHE00zOCAJa6DNpRhbcGG0yg
	92CexqmMBvVLjaG2wfCRbirDjNXgv5ugMlU2ahiIC2MwpopBd3FsyJqsEXrK5OrnqPz0rp0zl60Es
	/zl5BJ3K/+LDOKJb4XoLOTELHSYoyKEbfqyFu3/KgmuBatmrE/h824Ylywod2B475apHc6cLoQ9AX
	0z9kiPeIk5IPHVSwTVjYDXhgpfP91pVDVhC10//TbbIrws+dsAspIQCwDPfYar00ccORA8IvMHthV
	yMBI3GkCw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1letk9-006ECi-FT; Fri, 07 May 2021 06:13:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1letk7-006ECT-Fa
 for linux-phy@desiato.infradead.org; Fri, 07 May 2021 06:13:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jssVR0Ke4gLMQ/8TddZ8ZY5oO2gPFQyrLTbIarga+9o=; b=1Wt9xyFPFGVuwnbqfbuJS75ziQ
 Ck5CwVy9m5wfeTeXjKjMitu4pgnh18UBTi/3xU/QhTTmC3TpPT6LwqFO/bJUThVkoW6knL6KBaNit
 h3DrV7rXA+LGJOMG9UnxmkZtZyR6omChZhzqsztBn+uXR8VAa/8PfZKM0OIXnWsnWQh2+q8OzfEJO
 LXoYXcb+wYBMJLNW901i25m5CgI3Ldi+U/dx4+GRLz24qxxO7/dkP109KtruvuKe3Xund0PU3Ny8X
 8bUmevsydZ6SDKk0gDUIONLdCird07O0L0z43CbpZr1SWRXpDW4qjNK6v9U1An2TsGX18+jSKDAF2
 uhLbsXCg==;
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1letk4-006c1B-82
 for linux-phy@lists.infradead.org; Fri, 07 May 2021 06:13:42 +0000
Received: by mail-oi1-x236.google.com with SMTP id o16so2654974oiw.3
 for <linux-phy@lists.infradead.org>; Thu, 06 May 2021 23:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jssVR0Ke4gLMQ/8TddZ8ZY5oO2gPFQyrLTbIarga+9o=;
 b=hbTeQO65TovJ3XcoFIDfpyfG+aTqL2MFmbcAfnRM+lIuOuDHW6ZUDRi4c90QMRwROS
 cBbKBWLJTbsZnTrS2Qw4mn/5PONi1q1BLH/1oXyo4BvAcoJ4TF4v9bSWDsOQpo0PwMRA
 fgijnAyNMg3xBP+JnMglxxEz9p9Znvfggu0x2oduB01wVNGIQKYoZ9eVddFtcD0P4jQ1
 PtPh7yL1+O83VksUXCSP+u6Lq6Pf06KJa6Gj27SiHxbyMP+2MbRyK91e6c9wrqRl2cRO
 qmP9B6JCwKmMaH/q1sryxUHfgPOVArBZvfcfEqgzBqYPDkdhlWwNnsRMLRqacHxos3ci
 BnAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jssVR0Ke4gLMQ/8TddZ8ZY5oO2gPFQyrLTbIarga+9o=;
 b=r8i/jpLfwCmC14DyBptyKigzuxz7ir9yth14m/bXQWF+wG+v4HTJ9kjLerzl+Dhu+F
 qvJmzcL1BryfvsYlqFZejQieof4dMU30IgqtmvlK9em1IeBL+XBsg9zAn8E4GINHGeJM
 fTeVwwea1D1oIXAKvvJdTsi8Q3TxfxTt/sT6coHvzR9SniTCxUfVDh/GNZoyZ7GwMgpV
 mV97CZBW0YE8GFyvvbM5jRwuKT0eI49EzhDzr8fo+wFBIPjYyEss0KfzuJMqP8j+zI+w
 rfNsn0ZwN9sU1i2bHAz+oahf2CHGn7LHYW1hOEkvyHtGBh0wPiL5cl2+mPSIhh6huisP
 OJ7Q==
X-Gm-Message-State: AOAM5305dBQl1sySIFZroL3/bgZwrhYOrI0sAoll5AUsVwr2BY/ACShn
 o7I8sxsp9HbrK+wuuAbPxYp1cnH0foUzEQNNFMU=
X-Google-Smtp-Source: ABdhPJyoCPd33xMnPAYYHlpG8rCeh13HzqdvvU0flD8iFLlastr/nnkeqFI4ZxJsRbHXTOG6T9CIRSgCjWLQxzpQeXs=
X-Received: by 2002:aca:2813:: with SMTP id 19mr13972251oix.23.1620368012432; 
 Thu, 06 May 2021 23:13:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210506111531.21978-5-sergio.paracuellos@gmail.com>
 <202105062302.YjXZOAuy-lkp@intel.com>
In-Reply-To: <202105062302.YjXZOAuy-lkp@intel.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 7 May 2021 08:13:21 +0200
Message-ID: <CAMhs-H9Y=Q7PVT0sS02LzwHSj2PbePF2_qgLM+U569PyFBmAEA@mail.gmail.com>
Subject: Re: [PATCH 4/5] phy: ralink: Kconfig: enable COMPILE_TEST on
 mt7621-pci-phy driver
To: kernel test robot <lkp@intel.com>
Cc: Vinod Koul <vkoul@kernel.org>, kbuild-all@lists.01.org, 
 linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
 linux-staging@lists.linux.dev, Greg KH <gregkh@linuxfoundation.org>, 
 NeilBrown <neil@brown.name>, Ilya Lipnitskiy <ilya.lipnitskiy@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_231340_312072_0E8B2778 
X-CRM114-Status: GOOD (  21.13  )
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

Hi,

On Thu, May 6, 2021 at 5:59 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Sergio,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on staging/staging-testing]
> [also build test WARNING on linus/master next-20210506]
> [cannot apply to robh/for-next v5.12]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Sergio-Paracuellos/phy-ralink-mt7621-pci-phy-some-improvements/20210506-191714
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git e120332923e13d8d9386594a83dc7cbf327e3edf
> config: sparc-allyesconfig (attached as .config)
> compiler: sparc64-linux-gcc (GCC) 9.3.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/0day-ci/linux/commit/44e8bb824a0a4af6fc41d67b70ec3a678bd8125f
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Sergio-Paracuellos/phy-ralink-mt7621-pci-phy-some-improvements/20210506-191714
>         git checkout 44e8bb824a0a4af6fc41d67b70ec3a678bd8125f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross W=1 ARCH=sparc
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    In file included from include/linux/device.h:15,
>                     from include/linux/node.h:18,
>                     from include/linux/cpu.h:17,
>                     from include/linux/of_device.h:5,
>                     from drivers/phy/ralink/phy-mt7621-pci.c:13:
>    drivers/phy/ralink/phy-mt7621-pci.c: In function 'mt7621_pcie_phy_of_xlate':
> >> drivers/phy/ralink/phy-mt7621-pci.c:277:4: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
>      277 |    (unsigned int)mt7621_phy->port_base, mt7621_phy->has_dual_port);
>          |    ^
>    include/linux/dev_printk.h:118:33: note: in definition of macro 'dev_info'
>      118 |  _dev_info(dev, dev_fmt(fmt), ##__VA_ARGS__)
>          |                                 ^~~~~~~~~~~
>

Thanks!, COMPILE_TEST is doing a good job there :). Ok, so I have just
sent a patch for this:
See: https://lkml.org/lkml/2021/5/7/28

Best regards,
    Sergio Paracuellos

>
> vim +277 drivers/phy/ralink/phy-mt7621-pci.c
>
> d87da32372a03c Sergio Paracuellos 2020-11-21  265
> d87da32372a03c Sergio Paracuellos 2020-11-21  266  static struct phy *mt7621_pcie_phy_of_xlate(struct device *dev,
> d87da32372a03c Sergio Paracuellos 2020-11-21  267                                           struct of_phandle_args *args)
> d87da32372a03c Sergio Paracuellos 2020-11-21  268  {
> d87da32372a03c Sergio Paracuellos 2020-11-21  269       struct mt7621_pci_phy *mt7621_phy = dev_get_drvdata(dev);
> d87da32372a03c Sergio Paracuellos 2020-11-21  270
> d87da32372a03c Sergio Paracuellos 2020-11-21  271       if (WARN_ON(args->args[0] >= MAX_PHYS))
> d87da32372a03c Sergio Paracuellos 2020-11-21  272               return ERR_PTR(-ENODEV);
> d87da32372a03c Sergio Paracuellos 2020-11-21  273
> d87da32372a03c Sergio Paracuellos 2020-11-21  274       mt7621_phy->has_dual_port = args->args[0];
> d87da32372a03c Sergio Paracuellos 2020-11-21  275
> d87da32372a03c Sergio Paracuellos 2020-11-21  276       dev_info(dev, "PHY for 0x%08x (dual port = %d)\n",
> d87da32372a03c Sergio Paracuellos 2020-11-21 @277                (unsigned int)mt7621_phy->port_base, mt7621_phy->has_dual_port);
> d87da32372a03c Sergio Paracuellos 2020-11-21  278
> d87da32372a03c Sergio Paracuellos 2020-11-21  279       return mt7621_phy->phy;
> d87da32372a03c Sergio Paracuellos 2020-11-21  280  }
> d87da32372a03c Sergio Paracuellos 2020-11-21  281
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
