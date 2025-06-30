Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FE40C83029
	for <linux-phy@archiver.kernel.org>; Mon, 30 Jun 2025 17:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=rwLik1py0Mt+TtLpA8IXoz/1Dtfi3l7s2nYCq+qEIfI=; b=xPgxSy85ckGa4u
	Uz8YoWbZv+5JuqcHaYUfQfMrnSq2mnSwaqDqFjivbjpRrUtO1YWp0jlmQQs1iU2r9XuHp9ssX1lBf
	bOznN6Te2D30PENztP6cdndKlYZTjAqXbVwo2YcEVEoH2S2L1e8g80aeFIptWqQ0li8+akmytdOI3
	Vp0JJKEXugpsKayVTGq75yDPLGl7UagxFVTqzRItfMfuI+C7QGk/xaP0uDLsIsI3ZzZIQXLWqH3tY
	Oq9aWQA45eWCMNsS1NNUCRPQjDVsdhAiwbQCtseX5QWtiB+BZ8ANIuWWUJ8LZOZaUSLyodbD922a0
	8WBxg0RfwECpIPwRhtOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWIXg-000000036UR-3pcZ;
	Mon, 30 Jun 2025 17:43:44 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWHL4-00000002v6Y-3O02
	for linux-phy@lists.infradead.org;
	Mon, 30 Jun 2025 16:26:40 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-6099d89a19cso4686634a12.2
        for <linux-phy@lists.infradead.org>; Mon, 30 Jun 2025 09:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751300797; x=1751905597; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=535W8k9pU5sUVdNwdQXzTxnf8TouFsbPOMvqYlYzbaQ=;
        b=bRoHoZU3E03tkEz0sDz/dIa4KI8Qi95j1sRQAjyhZGUoN4cwqrdrz1lXWlM5nYXGGH
         uDEuGLOke9Yyw22yfHEvwSRlmp2CbZxCpcQIcexB7IEUhkqOGuWs9oekDOCezFLe+/wO
         EB8iC+NSWz/2on8pFgzpzC1p3cK3zlJOV2DV2HH6kt3uroFs73e4HxrO9VmgW0U+jC3C
         44IQxPRNu2uhpZM++Fsr05OnbDg+nD1CFfKY9tL1ENF3oaWBzNjGiyAwTCB7hK8k4hgV
         lSO7+8e7OdNpL8JTCXxJbPgwLtFMRq902YSL7c4eyQeN2LIb7vDxBQYaIeR+CMpGDS0I
         Zraw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751300797; x=1751905597;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=535W8k9pU5sUVdNwdQXzTxnf8TouFsbPOMvqYlYzbaQ=;
        b=HDn3S14w5ftgR99sUWPQ8svLeN/onMDOPj9vMShSFOCnz/LGfAa0X9j+LF5CxfCko+
         8v9PuQwwDbnQAelt4EsE1i+/EhxRRQ+aUCLxUrDzovV43+AakbBltYmGmDtSJashMbXU
         DOO3KhPeLyD7hfXbC1i4KMTEJhm/hEyA2k5+TErXf9pTnX7tnT80TCcFAin+NqvIDDYw
         ksVPPzLkAqFaFQdCm2xJ/tiqmgfZDu6j9qqx56vN1F7cM9oqRek+CtjaphgOaGfkBi/t
         N0G6vl47sm0CQjBfgUWxMm5S6IfYjreAHxgqB4Co2NLLQUMAHBp4ziypafTb6lv9eQl1
         VF4A==
X-Forwarded-Encrypted: i=1; AJvYcCVLZVifiBpmKBW01ru/ARodnfDEYpTOrbkzOVW7uTGNvJ0X06GOI0Pl8w5B3NEYH0dA7frLJoLpyeQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzAo3fUbzOcEsJeMyb/u8GdmPouDdqCEMY3bAtHlC99jcYzY6cL
	SM2sB0cd0HvMDJaAo9ygc79vhlG+LGPEZ3Vl6S4PyF+WAEbNKO6nj6qEd18PQT/3Pxw=
X-Gm-Gg: ASbGncsH2Qp3cS8qlEEFxUbcoxE2OI7IAkkXoIE9k+Ui/TYQ8/62kDD63nzCzNPrLNp
	Oq0RkZewfrzYBISHsChjS6yyUBrhUg+vSDsbiBFmdk4EpS2rFO/izDhdtOyrDmyC1qDUIkk20IX
	0/6Z5goE+lNHoWwRxDjJSw4AiFjKJjav0PQJtDrIZcqlRAJKZS136IMBmyXzi1xjCbJBSeFBDR3
	oaDa93wpCHxsV8lBmH7M9t2L6KJmGSwzVVvfBge3n8LYNuv+FcjLvEGSRanTF6XQ5dY7DQkNsjC
	z5QANxD1R7a0qzKWyEboDVxnyatxCTxc5BKcVq3MH7kBStahytFOyS2t/odGUM5SxsDb4jYOK17
	jptg=
X-Google-Smtp-Source: AGHT+IEZUFYK3OlqCsPYEUjbY6KleNynpLo18SzDo4cGFtE9VgvfMNqI4nas16gqs6EKpGcliuTGQg==
X-Received: by 2002:a17:907:94cc:b0:ad8:8719:f6f3 with SMTP id a640c23a62f3a-ae34fdbbadfmr1268647466b.22.1751300797043;
        Mon, 30 Jun 2025 09:26:37 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:fb67:363d:328:e253])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae35776d0ebsm685350066b.155.2025.06.30.09.26.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 09:26:36 -0700 (PDT)
Date: Mon, 30 Jun 2025 19:26:34 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Shradha Todi <shradha.t@samsung.com>,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-fsd@tesla.com
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org,
	kw@linux.com, robh@kernel.org, bhelgaas@google.com,
	jingoohan1@gmail.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	alim.akhtar@samsung.com, vkoul@kernel.org, kishon@kernel.org,
	arnd@arndb.de, m.szyprowski@samsung.com, jh80.chung@samsung.com,
	pankaj.dubey@samsung.com, Shradha Todi <shradha.t@samsung.com>
Subject: Re: [PATCH v2 09/10] PCI: exynos: Add support for Tesla FSD SoC
Message-ID: <5ed352de-8319-4e3f-8cce-43a4bb332e66@suswa.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250625165229.3458-10-shradha.t@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_092638_845509_4367FE3A 
X-CRM114-Status: UNSURE (   8.34  )
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

Hi Shradha,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Shradha-Todi/PCI-exynos-Remove-unused-MACROs-in-exynos-PCI-file/20250626-104154
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
patch link:    https://lore.kernel.org/r/20250625165229.3458-10-shradha.t%40samsung.com
patch subject: [PATCH v2 09/10] PCI: exynos: Add support for Tesla FSD SoC
config: um-randconfig-r071-20250630 (https://download.01.org/0day-ci/archive/20250630/202506301329.VWoiH0yn-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14+deb12u1) 12.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202506301329.VWoiH0yn-lkp@intel.com/

smatch warnings:
drivers/pci/controller/dwc/pci-exynos.c:621 exynos_pcie_probe() error: we previously assumed 'pdata->res_ops' could be null (see line 609)
drivers/pci/controller/dwc/pci-exynos.c:655 exynos_pcie_probe() warn: missing error code 'ret'

vim +621 drivers/pci/controller/dwc/pci-exynos.c

b9388ee21b4e79 drivers/pci/controller/dwc/pci-exynos.c Shradha Todi       2025-06-25  595  			dev_err(dev, "couldn't get the register offset for syscon!\n");
b9388ee21b4e79 drivers/pci/controller/dwc/pci-exynos.c Shradha Todi       2025-06-25  596  			return ret;
b9388ee21b4e79 drivers/pci/controller/dwc/pci-exynos.c Shradha Todi       2025-06-25  597  		}
b9388ee21b4e79 drivers/pci/controller/dwc/pci-exynos.c Shradha Todi       2025-06-25  598  	}
b9388ee21b4e79 drivers/pci/controller/dwc/pci-exynos.c Shradha Todi       2025-06-25  599  
778f7c194b1dac drivers/pci/controller/dwc/pci-exynos.c Jaehoon Chung      2020-11-13  600  	/* External Local Bus interface (ELBI) registers */
778f7c194b1dac drivers/pci/controller/dwc/pci-exynos.c Jaehoon Chung      2020-11-13  601  	ep->elbi_base = devm_platform_ioremap_resource_byname(pdev, "elbi");
778f7c194b1dac drivers/pci/controller/dwc/pci-exynos.c Jaehoon Chung      2020-11-13  602  	if (IS_ERR(ep->elbi_base))
778f7c194b1dac drivers/pci/controller/dwc/pci-exynos.c Jaehoon Chung      2020-11-13  603  		return PTR_ERR(ep->elbi_base);
778f7c194b1dac drivers/pci/controller/dwc/pci-exynos.c Jaehoon Chung      2020-11-13  604  
10106d5c1f9cee drivers/pci/controller/dwc/pci-exynos.c Cristian Ciocaltea 2024-12-17  605  	ret = devm_clk_bulk_get_all_enabled(dev, &ep->clks);
6b11143f9344dd dripdata->res_opsvers/pci/controller/dwc/pci-exynos.c Shradha Todi       2024-02-20  606  	if (ret < 0)
6b11143f9344dd drivers/pci/controller/dwc/pci-exynos.c Shradha Todi       2024-02-20  607  		return ret;
4b1ced841b2e31 drivers/pci/host/pci-exynos.c           Jingoo Han         2013-07-31  608  
ed1b6ec2c47ce8 drivers/pci/controller/dwc/pci-exynos.c Shradha Todi       2025-06-25 @609  	if (pdata->res_ops && pdata->res_ops->init_regulator) {
                                                                                                    ^^^^^^^^^^^^^^
This code assumes pdata->res_ops can be NULL

ed1b6ec2c47ce8 drivers/pci/controller/dwc/pci-exynos.c Shradha Todi       2025-06-25  610  		ret = ep->pdata->res_ops->init_regulator(ep);
4b1ced841b2e31 drivers/pci/host/pci-exynos.c           Jingoo Han         2013-07-31  611  		if (ret)
4b1ced841b2e31 drivers/pci/host/pci-exynos.c           Jingoo Han         2013-07-31  612  			return ret;
ed1b6ec2c47ce8 drivers/pci/controller/dwc/pci-exynos.c Shradha Todi       2025-06-25  613  	}
4b1ced841b2e31 drivers/pci/host/pci-exynos.c           Jingoo Han         2013-07-31  614  
ed1b6ec2c47ce8 drivers/pci/controller/dwc/pci-exynos.c Shradha Todi       2025-06-25  615  	ret = samsung_regulator_enable(ep);
3278478084747c drivers/pci/host/pci-exynos.c           Niyas Ahmed S T    2017-02-01  616  	if (ret)
3278478084747c drivers/pci/host/pci-exynos.c           Niyas Ahmed S T    2017-02-01  617  		return ret;
4b1ced841b2e31 drivers/pci/host/pci-exynos.c           Jingoo Han         2013-07-31  618  
b2e6d3055d5545 drivers/pci/dwc/pci-exynos.c            Bjorn Helgaas      2017-02-21  619  	platform_set_drvdata(pdev, ep);
b9388ee21b4e79 drivers/pci/controller/dwc/pci-exynos.c Shradha Todi       2025-06-25  620  
b9388ee21b4e79 drivers/pci/controller/dwc/pci-exynos.c Shradha Todi       2025-06-25 @621  	if (pdata->res_ops->set_device_mode)
                                                                                                    ^^^^^^^^^^^^^^
But this dereferences it without checking.  Most likely the
NULL check should be removed?

b9388ee21b4e79 drivers/pci/controller/dwc/pci-exynos.c Shradha Todi       2025-06-25  622  		pdata->res_ops->set_device_mode(ep);
b9388ee21b4e79 drivers/pci/controller/dwc/pci-exynos.c Shradha Todi       2025-06-25  623  
b9388ee21b4e79 drivers/pci/controller/dwc/pci-exynos.c Shradha Todi       2025-06-25  624  	switch (ep->pdata->device_mode) {

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
