Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F4E2EB64D8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 11:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YlJLmNlik6kX6rItaJfQoZtsGDxdBdaPNk9NS8Qsb+c=; b=omP/esPdQZpFz+
	Wx47FrKDQf95KwMs/VfdJ4thBuvmo/enbqfFZ7qQiLFfjh00SB94Wiji/OUVxMpsEcjtJHjbKiP09
	uKF/Ts6Pe004GG+huGaAczf4E9pEdGOjaQ+CuCdrxRrAGXhEKIW0/thrQQab5vxsl/c63TEP4zR9q
	vLsXU9gexhe1176q7Al1lUjScS6FAWp6pi2VG9+SxjIaNh606zJi3MxxPRYUSihAQaTV8qepvgSAB
	zw3ayzXP2uhFIgFdVQ6equPz5k+53sev0e94rzox3zpmUpA/9gA9AllMhGPO0LyrTXCehW3SahXcy
	AeUap+nuavDKmfsSc03g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBvhs-00EKmA-0l;
	Wed, 21 Jun 2023 11:09:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBvhp-00EKki-2J;
	Wed, 21 Jun 2023 11:08:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4430C614FB;
	Wed, 21 Jun 2023 11:08:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C31C7C433C8;
	Wed, 21 Jun 2023 11:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687345732;
	bh=pDMlNd8ACfLvQmNU6tj/DpiQ1icRIIy6rldPkFKNQNY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nDaFj5hbkaoHpWVX2S1kRS79PjrjwDvtc3au5R9O09gR8LnTBUfvAscY33QWPoJLa
	 yG1HfWL9Fzzwy7p48+VhvhQ3m3vY/tSdrFjR19RDbrGSRLUbfrsrnBLEmyseqKEyO1
	 gkrRs4YuNMqo7H4GOqa4HnZb3vz2TwdAKEmMcqxaWSDspLJRNag+Pv4O8tFYXNagBf
	 yZ/ijC3toU9H2EHmufaz74OxJ1I12W9ymtu9lPpf93uJvo2+OWdqG1f0PChBz6mY8c
	 YIlp/CGFJF9HfHNIJrfqmxiI7j+jAqQwd7eP10mTPdLdPoZXMlKFjVMRkVJ6MJrp/y
	 Vhhi+/RiEOIzA==
Date: Wed, 21 Jun 2023 16:38:48 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Minda Chen <minda.chen@starfivetech.com>
Cc: kernel test robot <lkp@intel.com>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Conor Dooley <conor@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Roger Quadros <rogerq@kernel.org>, oe-kbuild-all@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-riscv@lists.infradead.org,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Mason Huo <mason.huo@starfivetech.com>
Subject: Re: [PATCH v7 4/5] phy: starfive: Add JH7110 PCIE 2.0 PHY driver
Message-ID: <ZJLaQB7UB56+/mtN@matsya>
References: <20230619094759.21013-5-minda.chen@starfivetech.com>
 <202306192215.TvQco9m6-lkp@intel.com>
 <d4824941-85dd-d378-be5b-072907b1169d@starfivetech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d4824941-85dd-d378-be5b-072907b1169d@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_040857_797196_FDA46C67 
X-CRM114-Status: GOOD (  16.59  )
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

On 21-06-23, 17:29, Minda Chen wrote:
> 
> 
> On 2023/6/19 22:45, kernel test robot wrote:
> > Hi Minda,
> > 
> > kernel test robot noticed the following build errors:
> > 
> > [auto build test ERROR on robh/for-next]
> > [also build test ERROR on linus/master v6.4-rc7 next-20230619]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch#_base_tree_information]
> > 
> > url:    https://github.com/intel-lab-lkp/linux/commits/Minda-Chen/dt-bindings-phy-Add-StarFive-JH7110-PCIe-PHY/20230619-184756
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
> > patch link:    https://lore.kernel.org/r/20230619094759.21013-5-minda.chen%40starfivetech.com
> > patch subject: [PATCH v7 4/5] phy: starfive: Add JH7110 PCIE 2.0 PHY driver
> > config: s390-allmodconfig (https://download.01.org/0day-ci/archive/20230619/202306192215.TvQco9m6-lkp@intel.com/config)
> > compiler: s390-linux-gcc (GCC) 12.3.0
> > reproduce: (https://download.01.org/0day-ci/archive/20230619/202306192215.TvQco9m6-lkp@intel.com/reproduce)
> > 
> > If you fix the issue in a separate patch/commit (i.e. not just a new version of
> > the same patch/commit), kindly add following tags
> > | Reported-by: kernel test robot <lkp@intel.com>
> > | Closes: https://lore.kernel.org/oe-kbuild-all/202306192215.TvQco9m6-lkp@intel.com/
> > 
> > All errors (new ones prefixed by >>, old ones prefixed by <<):
> > 
> >>> ERROR: modpost: "devm_platform_ioremap_resource" [drivers/phy/starfive/phy-jh7110-pcie.ko] undefined!
> I can not find this error. devm_platform_ioremap_resource is an exported symbol

Use the config and compiler provided in the report to repro this

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
