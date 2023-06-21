Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85493EB64D7
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JkI2lImI01afnjf6kyoYCTWKtw8uRWbFfvuMGPiL1aQ=; b=NlWVqDw8lutZwa
	PtRKS+inbIeJlQqkXsSSxjPD9BNoRU35gcYW90dbtqUlrOJkB3ij7rVTGbeoGWRXeDMCyHCFqwFkx
	mGsFoo5Rc6A+WXl+CZ8XMbXFV2Dd6ShVU8zOd6aCc5Kw1Th+yayPuQqnhSPNogY97+D5B9F/+bCR+
	40Ulm96lI4aqBnx2PZ2yCf9ppCmst0Q+GRtLzzD/LlLt4PF4z/16Ut0vuZuKKkc+fCgYmVbgMfvQX
	o7Zb7daMz066WlBpszAKiEsL1RrI7duOSXYB7KQNGodUk9PxkW5Zp6VU+pqYxT2cXJuhj8FjPdTci
	rzlO/ebYkw14sAuXoxvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBuAb-00DrYy-0c;
	Wed, 21 Jun 2023 09:30:33 +0000
Received: from ex01.ufhost.com ([61.152.239.75])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBuAX-00DrTq-1G;
	Wed, 21 Jun 2023 09:30:32 +0000
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id D3D1824E208;
	Wed, 21 Jun 2023 17:29:37 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 21 Jun
 2023 17:29:37 +0800
Received: from [192.168.125.127] (113.72.145.217) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 21 Jun
 2023 17:29:36 +0800
Message-ID: <d4824941-85dd-d378-be5b-072907b1169d@starfivetech.com>
Date: Wed, 21 Jun 2023 17:29:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v7 4/5] phy: starfive: Add JH7110 PCIE 2.0 PHY driver
Content-Language: en-US
To: kernel test robot <lkp@intel.com>, Emil Renner Berthing
	<emil.renner.berthing@canonical.com>, Conor Dooley <conor@kernel.org>, "Vinod
 Koul" <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, "Roger
 Quadros" <rogerq@kernel.org>
CC: <oe-kbuild-all@lists.linux.dev>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-riscv@lists.infradead.org>, Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
	"Mason Huo" <mason.huo@starfivetech.com>
References: <20230619094759.21013-5-minda.chen@starfivetech.com>
 <202306192215.TvQco9m6-lkp@intel.com>
From: Minda Chen <minda.chen@starfivetech.com>
In-Reply-To: <202306192215.TvQco9m6-lkp@intel.com>
X-Originating-IP: [113.72.145.217]
X-ClientProxiedBy: EXCAS065.cuchost.com (172.16.6.25) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_023029_730670_EAE4D321 
X-CRM114-Status: GOOD (  12.69  )
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



On 2023/6/19 22:45, kernel test robot wrote:
> Hi Minda,
> 
> kernel test robot noticed the following build errors:
> 
> [auto build test ERROR on robh/for-next]
> [also build test ERROR on linus/master v6.4-rc7 next-20230619]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Minda-Chen/dt-bindings-phy-Add-StarFive-JH7110-PCIe-PHY/20230619-184756
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
> patch link:    https://lore.kernel.org/r/20230619094759.21013-5-minda.chen%40starfivetech.com
> patch subject: [PATCH v7 4/5] phy: starfive: Add JH7110 PCIE 2.0 PHY driver
> config: s390-allmodconfig (https://download.01.org/0day-ci/archive/20230619/202306192215.TvQco9m6-lkp@intel.com/config)
> compiler: s390-linux-gcc (GCC) 12.3.0
> reproduce: (https://download.01.org/0day-ci/archive/20230619/202306192215.TvQco9m6-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202306192215.TvQco9m6-lkp@intel.com/
> 
> All errors (new ones prefixed by >>, old ones prefixed by <<):
> 
>>> ERROR: modpost: "devm_platform_ioremap_resource" [drivers/phy/starfive/phy-jh7110-pcie.ko] undefined!
I can not find this error. devm_platform_ioremap_resource is an exported symbol
> ERROR: modpost: "devm_ioremap_resource" [drivers/dma/qcom/hdma.ko] undefined!
> ERROR: modpost: "devm_platform_ioremap_resource" [drivers/dma/fsl-edma.ko] undefined!
> ERROR: modpost: "devm_platform_ioremap_resource" [drivers/dma/idma64.ko] undefined!
> ERROR: modpost: "iounmap" [drivers/tty/ipwireless/ipwireless.ko] undefined!
> ERROR: modpost: "ioremap" [drivers/tty/ipwireless/ipwireless.ko] undefined!
> ERROR: modpost: "devm_platform_ioremap_resource" [drivers/char/xillybus/xillybus_of.ko] undefined!
> ERROR: modpost: "devm_memremap" [drivers/misc/open-dice.ko] undefined!
> ERROR: modpost: "devm_memunmap" [drivers/misc/open-dice.ko] undefined!
> ERROR: modpost: "iounmap" [drivers/net/ethernet/8390/pcnet_cs.ko] undefined!
> WARNING: modpost: suppressed 19 unresolved symbol warnings because there were too many)
>> Kconfig warnings: (for reference only)
>    WARNING: unmet direct dependencies detected for USB_PHY
>    Depends on [n]: USB_SUPPORT [=n]
>    Selected by [m]:
>    - PHY_STARFIVE_JH7110_PCIE [=m]
> 
I will fix it.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
