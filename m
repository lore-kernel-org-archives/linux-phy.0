Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D84FDC001DE
	for <linux-phy@archiver.kernel.org>; Sun,  6 Aug 2023 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syEi5Kzu4DKAWRHKI2kPrsdgEbCnjSTdLEqW65kX0A0=; b=D53VW/W+UB8lB6
	aYCZvKYBrf29h9BhVfPpUUvYEb1ksrZpbdeWQrLY2eBPx9VoYRYkOdzTAkkez4N3rVEJRRqrlg5pw
	xK41kVoaooEIuNBoVbwdVgEwn/z0J6Vn+G7geQMifCyR/ISpgrybWWJ8OD7k2Jx2uHSt6rJGOLYsx
	SstbfNxIHZQrCoH5RRCGCgGZUs7m7kEHOCgo3II4WF2BCQslC6FU2fcTUT4+A8ArBB0qYg+4/+3Dd
	ydEHPDVKCoUri9c5uvq//zdgBsTWx9tDBAEep6ESjK86ROVE0sWpHhwJLCOvEPqSNVajmCTaYS8Dw
	XsqPJ2Mgali7u0fJhKiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qScuq-00FPNR-39;
	Sun, 06 Aug 2023 12:31:25 +0000
Received: from mgamail.intel.com ([134.134.136.31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qScun-00FPMI-37
	for linux-phy@lists.infradead.org;
	Sun, 06 Aug 2023 12:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1691325081; x=1722861081;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=WG+jMRSs1giuugV7/S2AhBZlclIgxIwrnVuxY1rUKxk=;
  b=PxzI3Z6ZWHUrDn67x7Am/Dj/yjvJG6bJZshcZzE5tOlWa1YDkfjOojN3
   AbtWK5ixGXZC5ar8SvhHJl50wsGf+WkNnloABuk3CVXwjHKize+rTrEH5
   Blw6iPUREJpGdRpv1wjRIR5nYA8ezFfgiP9l8KlGGkgLjdzUyRmltQend
   4BEClJZ8wE6vZ1pYccEfKa4sQw+LnlxLxTDJoMa04eR5U4H8YT7p5MLzM
   YcPyAg7ghprPfdofjJhOcPW05Fqwz2QSTI++udFi90VTHr8BV4brN4kVF
   wk+/BX2pk02RS3aOYEy3zcgE1OmzdhRQQfXUqp16fIkhTuM8RF6Gi9aum
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="434222197"
X-IronPort-AV: E=Sophos;i="6.01,259,1684825200"; 
   d="scan'208";a="434222197"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Aug 2023 05:31:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="760144574"
X-IronPort-AV: E=Sophos;i="6.01,259,1684825200"; 
   d="scan'208";a="760144574"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 06 Aug 2023 05:31:11 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qScub-0004Df-34;
	Sun, 06 Aug 2023 12:31:09 +0000
Date: Sun, 6 Aug 2023 20:30:35 +0800
From: kernel test robot <lkp@intel.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
	freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 1/3] drm/display: add transparent bridge helper
Message-ID: <202308062017.iKU92hML-lkp@intel.com>
References: <20230802011845.4176631-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230802011845.4176631-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230806_053122_044432_EA512FDC 
X-CRM114-Status: UNSURE (   9.76  )
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

Hi Dmitry,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-misc/drm-misc-next]
[also build test WARNING on usb/usb-testing usb/usb-next usb/usb-linus drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.5-rc4 next-20230804]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Dmitry-Baryshkov/drm-display-add-transparent-bridge-helper/20230802-091932
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20230802011845.4176631-2-dmitry.baryshkov%40linaro.org
patch subject: [PATCH v3 1/3] drm/display: add transparent bridge helper
config: i386-randconfig-r072-20230806 (https://download.01.org/0day-ci/archive/20230806/202308062017.iKU92hML-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20230806/202308062017.iKU92hML-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308062017.iKU92hML-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/display/drm_simple_bridge.c:118:25: sparse: sparse: symbol 'drm_simple_bridge_drv' was not declared. Should it be static?

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
