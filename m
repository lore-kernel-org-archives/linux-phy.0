Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 937E5C83F34
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 10:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ydp0gbU66v6J2SuJ/Yi4Rv4G02XwjnY3zXKOFiolPN4=; b=YJLV0umbli6vk8
	WH1M2i+yiVUCcd4VYRs0J8j5lPQruEAgOlewpGV3ddK/hOVhbxCnJAXOpb0uvJmqBjGgsjGc3SBnk
	LDy3wuh7+smGR8JLmYMCZsCGRpBwWUIqP3P4AOrDNaruDlVVhXlvAMR8qJ3Pko+wwwa3QJ+LiquXf
	ikKbtT6vY8pCr22iybb0sBmfEtVsaWruIWQiVWcgnML0pQR5FTif8ySR4T1btDKxSwUbI4em+UQDN
	g14P3W+hcTIKKiOsEJJwflJy0yVVVi/NWeVbesbYjd0NxWMq/HnGrmjZSRtNAvrxxzeYdLKKc83zH
	uE9T6Y5gpoJCsrVa+0Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWSi-00000004dtW-0xrs;
	Wed, 23 Jul 2025 10:12:36 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueW92-00000004ZV8-25aa
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 09:52:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1753264337; x=1784800337;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=S7rUueZYDWfi2XdfEF4FIRPsKPUm1VdHKBUcSJ4JCHc=;
  b=PG7X9VyeLqAk8q4hPPh2CC8a+k0nIfD92OqF9ww2rajHERYL6viNWj+5
   k3udZw8c+mUFZfxaB0t07vdBQttpEqo93bkU+UtJS4WHAyImItJFsnjSL
   dGb2rG+Nl5A6wq1psyh3YIN4pCnhKDbBjwrlUBBDXJYC8dNobpT8MDnRC
   4wBl0qHKGV7XrvP0bdHWa0WkjYbNjc3aKUCu7IDYb9sXG1H5wYz+6a5LQ
   9Pal1UpELl+uOZQ03OAvLzMtRfSUbRl+eOUc4b5zzoCU91d4ZyKx6hI/a
   ORzbLE1AYeYqxl3E8RatqyRd/vC0eiH7h/fZzSYdgMMoTDXhnwLCYuQYu
   A==;
X-CSE-ConnectionGUID: 5CI8CxIfTzyAd0FcNyPBjg==
X-CSE-MsgGUID: Qsr6iSFTT3iHXgwDsBjnvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="72997167"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; 
   d="scan'208";a="72997167"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jul 2025 02:52:16 -0700
X-CSE-ConnectionGUID: 6/y5p3vKShivz3vJh21Bow==
X-CSE-MsgGUID: xj2c8mPEQvC8svMxzk3i0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; 
   d="scan'208";a="164843926"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
  by fmviesa004.fm.intel.com with ESMTP; 23 Jul 2025 02:52:10 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1ueW8u-000JCZ-0M;
	Wed, 23 Jul 2025 09:52:08 +0000
Date: Wed, 23 Jul 2025 17:52:03 +0800
From: kernel test robot <lkp@intel.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	sboyd@kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, jic23@kernel.org,
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
	arnd@arndb.de, gregkh@linuxfoundation.org, srini@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, sre@kernel.org,
	krzysztof.kozlowski@linaro.org, u.kleine-koenig@baylibre.com,
	angelogioacchino.delregno@collabora.com,
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org,
	casey.connolly@linaro.org
Subject: Re: [PATCH v2 1/7] spmi: Implement spmi_subdevice_alloc_and_add()
 and devm variant
Message-ID: <202507231731.VakdiYEM-lkp@intel.com>
References: <20250722101317.76729-2-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250722101317.76729-2-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_025216_602250_A8C96C0B 
X-CRM114-Status: UNSURE (   9.14  )
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

Hi AngeloGioacchino,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20250722]
[also build test ERROR on v6.16-rc7]
[cannot apply to jic23-iio/togreg sre-power-supply/for-next char-misc/char-misc-testing char-misc/char-misc-next char-misc/char-misc-linus linus/master v6.16-rc7 v6.16-rc6 v6.16-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/AngeloGioacchino-Del-Regno/spmi-Implement-spmi_subdevice_alloc_and_add-and-devm-variant/20250722-181911
base:   next-20250722
patch link:    https://lore.kernel.org/r/20250722101317.76729-2-angelogioacchino.delregno%40collabora.com
patch subject: [PATCH v2 1/7] spmi: Implement spmi_subdevice_alloc_and_add() and devm variant
config: riscv-randconfig-002-20250723 (https://download.01.org/0day-ci/archive/20250723/202507231731.VakdiYEM-lkp@intel.com/config)
compiler: clang version 22.0.0git (https://github.com/llvm/llvm-project 853c343b45b3e83cc5eeef5a52fc8cc9d8a09252)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250723/202507231731.VakdiYEM-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507231731.VakdiYEM-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: module spmi-devres uses symbol spmi_subdevice_alloc_and_add from namespace SPMI, but does not import it.
>> ERROR: modpost: module spmi-devres uses symbol spmi_subdevice_remove from namespace SPMI, but does not import it.

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
