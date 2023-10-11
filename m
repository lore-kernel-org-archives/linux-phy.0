Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28CDECD6E71
	for <linux-phy@archiver.kernel.org>; Wed, 11 Oct 2023 13:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZM4nsGGZ9PKTTkJequ0wLMzbicr6FPbOlLp8ZiBvVqs=; b=IT9yNnamhjQmzh
	TgX7014p7WErWA43wi4qtYbCSRgDubDdBSRDhh8i9RS32NE+2UzC8axY5k+0S16g3Cx2okPv1vsHN
	9EyaHOM7jHkQ6MKxq5cfMR5EPM/WVYBSKCT2Oqfw+Ii85Tkvc2QnEPyaO9tSAMNgTF/fP9oTgfAl+
	OEZU4ZPT2hwDrweC9BsNBlU0p3DROGk3WjqkFfLvFRUTZCI6p7DQQUJLU/Ei4or65hBxLlT8+LrlQ
	4B8Muav3wgaasCQj9F2VG5bSXavGhItWrsHLOzKEuiLIRYom/zwsBcfVkPBrkoemrMy4SpoEZvuX7
	VU8SbYt4KFgOBGCfe6bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqZUD-00G0WR-2a;
	Wed, 11 Oct 2023 13:42:53 +0000
Received: from mgamail.intel.com ([134.134.136.31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqZUA-00G0VG-2R
	for linux-phy@lists.infradead.org;
	Wed, 11 Oct 2023 13:42:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1697031770; x=1728567770;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=7YfsHhsopKCCqEyes/Zq8paien7jAELVx6130kYHaq0=;
  b=aMZGehik/arjfT6zzp6JUrKOp1r4/8slpduT58vWy92OBORcab+5iEbS
   csJlvp3g9MV8bBC+EOPSnIMwNBwSZML04jFHJDpd9BcJovXRHZR2Q1a1T
   x+rYt9V7OiR53cjkFTNE5GG4Pvr8FTzZFeNACQSZSSFFCXZTtLo27ScPN
   QTpp1Lj36dXaejxxYJ3MV4EjVS8VGgfYKBgsT5wfmdUu95qLigjZel3Mz
   /phQMXzFW+7ARiFZpxDmC1aeltUXPQoO8S4+DVAWd2qF+pmoIdmxoIb4s
   fY8lB5IKhkOCxtiet5J5PPGjMKBtNfqKEE8sSL3HIVX4WbViWrp8Go1wH
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="448864023"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; 
   d="scan'208";a="448864023"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2023 06:42:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="753823924"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; 
   d="scan'208";a="753823924"
Received: from lkp-server02.sh.intel.com (HELO f64821696465) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 11 Oct 2023 06:42:39 -0700
Received: from kbuild by f64821696465 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qqZTq-0002Fv-2r;
	Wed, 11 Oct 2023 13:42:32 +0000
Date: Wed, 11 Oct 2023 21:42:13 +0800
From: kernel test robot <lkp@intel.com>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
	andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: oe-kbuild-all@lists.linux.dev, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, dmitry.baryshkov@linaro.org,
	robh@kernel.org, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
	Mrinmay Sarkar <quic_msarkar@quicinc.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <helgaas@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 3/4] PCI: epf-mhi: Add support for SA8775P
Message-ID: <202310112157.VcDgcECw-lkp@intel.com>
References: <1697023109-23671-4-git-send-email-quic_msarkar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1697023109-23671-4-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_064250_840439_3A9E2864 
X-CRM114-Status: GOOD (  12.66  )
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

Hi Mrinmay,

kernel test robot noticed the following build warnings:

[auto build test WARNING on pci/next]
[also build test WARNING on pci/for-linus robh/for-next linus/master v6.6-rc5 next-20231011]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Mrinmay-Sarkar/dt-bindings-PCI-qcom-ep-Add-support-for-SA8775P-SoC/20231011-192329
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
patch link:    https://lore.kernel.org/r/1697023109-23671-4-git-send-email-quic_msarkar%40quicinc.com
patch subject: [PATCH v2 3/4] PCI: epf-mhi: Add support for SA8775P
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20231011/202310112157.VcDgcECw-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231011/202310112157.VcDgcECw-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310112157.VcDgcECw-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/pci/endpoint/functions/pci-epf-mhi.c:126:23: warning: initialization discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
     126 |         .epf_header = &sa8775p_header,
         |                       ^


vim +/const +126 drivers/pci/endpoint/functions/pci-epf-mhi.c

   123	
   124	static const struct pci_epf_mhi_ep_info sa8775p_info = {
   125		.config = &mhi_v1_config,
 > 126		.epf_header = &sa8775p_header,
   127		.bar_num = BAR_0,
   128		.epf_flags = PCI_BASE_ADDRESS_MEM_TYPE_32,
   129		.msi_count = 32,
   130		.mru = 0x8000,
   131	};
   132	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
