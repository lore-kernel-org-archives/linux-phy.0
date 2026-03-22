Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F2DED58CB0
	for <linux-phy@archiver.kernel.org>; Sun, 22 Mar 2026 23:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pxkzzNFMNx95Hzvdxxap2zuGZRtokgzMcl/QAzPTYGA=; b=dtCSRHmbYjMVfB
	e8d6T0IjT7NID3f4k8JTaMDGcQAN2FGnFtmHfjKG3nBtjNZv8dGC4tl3w5gtMw7iYps8TzVXqk7wR
	1ovZZAyE2OjceVC3JlgicsvcqE/fAN1+HBqzrNqYSeaTW7dATNkErOO2SSnOjphuEmeqTKvB+ijKL
	rWvlJVPp5//r1pyu8GpGLggBbqIS/qW+IHjhHIZ/1U6T053BBIUo9sNYVWMdfGCNf0dA0M/PqF21S
	8gkRMLrEbw4BGM3rVhxxdWxyLy3HIBkCEOpDNchDUzaY7tfPnPcbBq4q4Iw9JK91BlJVkjXg7hagL
	zKr8V0aD1O+dIsKoAWvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4SIi-0000000Fl8i-2Q1G;
	Sun, 22 Mar 2026 23:33:44 +0000
Received: from mgamail.intel.com ([192.198.163.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4SIg-0000000Fl8P-1ZIK
	for linux-phy@lists.infradead.org;
	Sun, 22 Mar 2026 23:33:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774222422; x=1805758422;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Iyq/kR8m/ROKeqOrN3lBBgrhZ0QikXX9ty57LXSzHu0=;
  b=jhvKPZt3TN5WA4MRJ2XBr/+SErkOiNcnBZS8e/cMUxKjmgGFxzMdk4D1
   aG2JlIgS/8uxLoCZVzxFZCOifUYLOqIqnTMCElDl7BrE2pWkIy7K3GwqI
   kYl5aTqqS/1f+rzt1Zp1OeECtZA6w+QXtC48F1sQ1k4x87DVbwxJizinp
   vbXDE4xkeTwfKuhoyDxryOKHEQ7ZppE08Y9E8NOTG/Pll8zTsR5njXXqi
   QsfyoKKFPhDRptP3G+n5Z+Jy/OBXQa14gDxe3cUaFKxW1Kc9//p25D8Kg
   C+QTY9xgn3bB4+Jx/emPj7dLTyg0ULmNFBVfDkQfxuPQWoqDtLuOh7+Pz
   Q==;
X-CSE-ConnectionGUID: qi4JOAAISH+utMxMWcZVGg==
X-CSE-MsgGUID: oNbxEv4rQvGqpxnIp42BAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="75343994"
X-IronPort-AV: E=Sophos;i="6.23,136,1770624000"; 
   d="scan'208";a="75343994"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Mar 2026 16:33:41 -0700
X-CSE-ConnectionGUID: L5lU3e1hSneBMqQipXjSAA==
X-CSE-MsgGUID: LXf5SMqNRLiXfBtk9LP7DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,136,1770624000"; 
   d="scan'208";a="261766636"
Received: from lkp-server02.sh.intel.com (HELO 391eea459618) ([10.239.97.151])
  by orviesa001.jf.intel.com with ESMTP; 22 Mar 2026 16:32:45 -0700
Received: from kbuild by 391eea459618 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1w4SHh-0000000007Z-2kCJ;
	Sun, 22 Mar 2026 23:32:41 +0000
Date: Mon, 23 Mar 2026 07:31:52 +0800
From: kernel test robot <lkp@intel.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	Bryan O'Donoghue <bod@kernel.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Message-ID: <202603230713.5uOUC5EI-lkp@intel.com>
References: <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_163342_445668_E4DD9EFF 
X-CRM114-Status: UNSURE (   9.93  )
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

Hi Bryan,

kernel test robot noticed the following build errors:

[auto build test ERROR on c824345288d11e269ce41b36c105715bc2286050]

url:    https://github.com/intel-lab-lkp/linux/commits/Bryan-O-Donoghue/dt-bindings-phy-qcom-Add-CSI2-C-PHY-DPHY-schema/20260316-081353
base:   c824345288d11e269ce41b36c105715bc2286050
patch link:    https://lore.kernel.org/r/20260315-x1e-csi2-phy-v4-2-90c09203888d%40linaro.org
patch subject: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
config: riscv-allyesconfig (https://download.01.org/0day-ci/archive/20260323/202603230713.5uOUC5EI-lkp@intel.com/config)
compiler: clang version 16.0.6 (https://github.com/llvm/llvm-project 7cbf1a2591520c2491aa35339f227775f4d3adf6)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260323/202603230713.5uOUC5EI-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603230713.5uOUC5EI-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c:360:13: error: initializer element is not a compile-time constant
           .opp_clk = x1e_clks[2],
                      ^~~~~~~~~~~
   1 error generated.


vim +360 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c

   347	
   348	const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
   349		.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
   350		.reg_info = {
   351			.init_seq = lane_regs_x1e80100,
   352			.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
   353			.common_regs_offset = 0x1000,
   354			.generation = GEN2,
   355		},
   356		.supply_names = (const char **)x1e_supplies,
   357		.num_supplies = ARRAY_SIZE(x1e_supplies),
   358		.clk_names = (const char **)x1e_clks,
   359		.num_clk = ARRAY_SIZE(x1e_clks),
 > 360		.opp_clk = x1e_clks[2],

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
