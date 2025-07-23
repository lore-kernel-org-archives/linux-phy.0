Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1CCAC83F1A
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 09:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ya5tzPjzSd5p8U0eecT/SevMReM5CkHBW3dxvWCQtjI=; b=4wy0df0ZT0h7US
	FhZvvAb/PR1iiR7Jj4J1tXYWvH9qROcqINezdmw26Oc9hG33WR8M1N92bDupOUa928kVgvOtuCUES
	Pxl/7SYUCRuCrAaiC61vELTAOS1kmyr4KidPEAutj/B4vPRA2eQTD4dhbfds5VU6AGIGJRXWH9RU0
	jNE9D6XHCNuvwZ6XpVftcIgt3KVx+wPsuqWzY2jDxEboR+F0vXly9bkVVY90R3cwS4OoGaJn8NEdJ
	bop2uGuKv7WiGU8Lp1cNG2x+r0X0ZLbBLCVq4WmvVSEyE5cJwfw6D0UXIVJmptxqpjswkOr08UsGG
	u6zEp+rCypEA1HWEHMkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueVOm-00000004SHJ-1bM9;
	Wed, 23 Jul 2025 09:04:28 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueUzH-00000004OOv-27PX
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 08:38:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1753259888; x=1784795888;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=4qbZQMMBOmmLEL/u4/6u8vCeedLqEVOr855SNhW0HrM=;
  b=RiqrWl5GowWx3Srs9SRg7+hG0m3Ro3fTeyzxmo+483Mu0bdHamqiBtOy
   GJv+PMcwEZlkalAuElG6T7bVntGo4kGDVrVuFxLfiawzGm8rpTFMg/Trs
   nsWJEOo/oKozKAFB8AgUrB8fsDuLoLCoGUQVMrTxQ9h6LqcsEqObQG2zV
   wmGL8t9f2sgIkp2CxsS9hreY7Fe88Rt1OAHVY/qvVB4Q/LuIyImGfMHgB
   MHjTPeSJ/MIVx3hdRbmSswTVkQN3HEe4MrEZYE7BweQ1zFtR82UTOUpU9
   EaTdvgekkY3lfBngJIHzusG2nQDkkDEp2q3FzAKg+OpuAA1Q+zQ4qGI2X
   Q==;
X-CSE-ConnectionGUID: ZUf05UXBQOuiW5/bpeOm3g==
X-CSE-MsgGUID: zaSPy2HYQrimzeNc2qYV/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="55382778"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; 
   d="scan'208";a="55382778"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jul 2025 01:38:07 -0700
X-CSE-ConnectionGUID: LQ9Qcj+iT52wKy4Bwqf+PQ==
X-CSE-MsgGUID: i1lLUci5QUGmNhtoGsrTIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; 
   d="scan'208";a="190348638"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 23 Jul 2025 01:38:01 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1ueUz9-000J8l-16;
	Wed, 23 Jul 2025 08:37:59 +0000
Date: Wed, 23 Jul 2025 16:37:30 +0800
From: kernel test robot <lkp@intel.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	sboyd@kernel.org
Cc: oe-kbuild-all@lists.linux.dev, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
	gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, sre@kernel.org, krzysztof.kozlowski@linaro.org,
	u.kleine-koenig@baylibre.com,
	angelogioacchino.delregno@collabora.com,
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org,
	casey.connolly@linaro.org
Subject: Re: [PATCH v2 1/7] spmi: Implement spmi_subdevice_alloc_and_add()
 and devm variant
Message-ID: <202507231529.OH2sdMoF-lkp@intel.com>
References: <20250722101317.76729-2-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250722101317.76729-2-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_013807_618707_F380569C 
X-CRM114-Status: UNSURE (   9.73  )
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on next-20250722]
[also build test WARNING on v6.16-rc7]
[cannot apply to jic23-iio/togreg sre-power-supply/for-next char-misc/char-misc-testing char-misc/char-misc-next char-misc/char-misc-linus linus/master v6.16-rc7 v6.16-rc6 v6.16-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/AngeloGioacchino-Del-Regno/spmi-Implement-spmi_subdevice_alloc_and_add-and-devm-variant/20250722-181911
base:   next-20250722
patch link:    https://lore.kernel.org/r/20250722101317.76729-2-angelogioacchino.delregno%40collabora.com
patch subject: [PATCH v2 1/7] spmi: Implement spmi_subdevice_alloc_and_add() and devm variant
config: sparc-randconfig-001-20250723 (https://download.01.org/0day-ci/archive/20250723/202507231529.OH2sdMoF-lkp@intel.com/config)
compiler: sparc-linux-gcc (GCC) 8.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250723/202507231529.OH2sdMoF-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507231529.OH2sdMoF-lkp@intel.com/

All warnings (new ones prefixed by >>, old ones prefixed by <<):

>> WARNING: modpost: module spmi-devres uses symbol spmi_subdevice_remove from namespace SPMI, but does not import it.
>> WARNING: modpost: module spmi-devres uses symbol spmi_subdevice_alloc_and_add from namespace SPMI, but does not import it.

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
