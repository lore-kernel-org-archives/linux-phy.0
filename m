Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E47E5C67861
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 17:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liokrQ+KYQtVJUzm5SvRFQOdu3sElTsgrm/wrHHHGEs=; b=K9/hK23RyDZctJ
	Uiy5bisOACnJAQ4rFRiD4WGR9ZtXshieZxhnXi8UGqgykkAqeP+Fn+T/+jDXKyyKYIzvNT8Ej5w/i
	bu3uNOrDGZq0XfJpzmxAR3WC5jCOjiYwDS64wdExe5UAgAXw0l7+FCtptnDtUpRziO0Bdcs0Rssvd
	+SPkLtvLVwRUPt1e2e989FMjltJWkysZ+7E25h5bwxf/tYuezyftX7Um+Mr5AA2TCRB/Yj8BMBko9
	NIv9VRjNliYXVV9GEADdWvCMd43NYmwfAps6vPNioGeT/QLBz91+zBNE/nFN/lJjfECf4VC84kUPK
	ez388mOpzrsQSatXMo1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsn8x-00000008Bf3-2D5f;
	Fri, 05 Apr 2024 17:14:23 +0000
Received: from mgamail.intel.com ([192.198.163.10])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsn8u-00000008Bd0-2rWB;
	Fri, 05 Apr 2024 17:14:21 +0000
X-CSE-ConnectionGUID: E3rQcZVFQcWIsry1bDKh4Q==
X-CSE-MsgGUID: WolsT3ZEQ9CYjsfe3lTiHA==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="19031171"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="19031171"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Apr 2024 10:14:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="915259793"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="915259793"
Received: from smile.fi.intel.com (HELO smile) ([10.237.72.54])
  by fmsmga002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Apr 2024 10:14:13 -0700
Received: from andy by smile with local (Exim 4.97)
	(envelope-from <andy@kernel.org>)
	id 1rsn8k-00000001oG4-1imE;
	Fri, 05 Apr 2024 20:14:10 +0300
Date: Fri, 5 Apr 2024 20:14:10 +0300
From: Andy Shevchenko <andy@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Thomas Richard <thomas.richard@bootlin.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Tony Lindgren <tony@atomide.com>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com
Subject: Re: [PATCH v4 08/18] phy: ti: phy-j721e-wiz: add resume support
Message-ID: <ZhAxYjMgLToZWh_m@smile.fi.intel.com>
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
 <20240102-j7200-pcie-s2r-v4-8-6f1f53390c85@bootlin.com>
 <ZhAqWWdZvGcFDWlM@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZhAqWWdZvGcFDWlM@matsya>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_101420_746964_BB7D7A48 
X-CRM114-Status: GOOD (  10.08  )
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

On Fri, Apr 05, 2024 at 10:14:09PM +0530, Vinod Koul wrote:
> On 04-03-24, 16:35, Thomas Richard wrote:

...

> > +static int wiz_resume_noirq(struct device *dev)
> 
> I think this should be annotated with __maybe_unused

No...

> > +		.pm	= pm_sleep_ptr(&wiz_pm_ops),

...because of magic of PTR_IF() here.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
