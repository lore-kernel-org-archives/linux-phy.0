Return-Path: <SRS0=wJWm=NQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A03C4338F
	for <linux-phy@archiver.kernel.org>; Wed, 25 Aug 2021 16:58:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9192961058
	for <linux-phy@archiver.kernel.org>; Wed, 25 Aug 2021 16:58:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9192961058
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=QlKsnfOUzDwIyqKO+2qSlMWGgaCc7DTLr3onzt1X8kQ=; b=eE0ji+ib3aDanI
	eyOVyDErIgIdiNqzO4mXiFEBWlHRvjFYblTirZ2U11Uuj4eXtUY0sCdDwwj+XJwfx+aKPIu2llwNA
	PpSNsw5vk3SqOo0ukMQpuxp6946OKsLFQWZiPlagLj5/9/3RDnuf872ontqM8uexfWygLRiL6fdyU
	Knr/7lxE2w+4HsaUIe8/XYD/MqWFRLuSorGQm1it3nnFbGyY08P1fFeeo9HWOn6ggfeDTEKJfSZjI
	4TcdMbh4neKAOvWudqeTzGDVgO9qeNOrncBl+Gtb/p3MZlFdaPUIc+favLqQJ5E3eqB05vDrAod2s
	emhyzuI2HBLZWNDe/C1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIwES-007zm0-ND; Wed, 25 Aug 2021 16:58:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIvuG-007qPS-N2; Wed, 25 Aug 2021 16:37:41 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1563860F5C;
 Wed, 25 Aug 2021 16:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629909460;
 bh=N72KKszat2eurPq6Rq0lAoXAPysG/3U7/Mw/+e7I324=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=omCp8M1WBd8MHOqFiIUGp0HkP5mgHlX3wnDg2GdzRdfC46d+zijrDdu+ZkgK7hVZI
 iM/uog3O6yv+2UOR6CLYIyQ8WdIJDmGS/IzQmavks/9uW1xsFOENSuYW6mpBRnogJ+
 C39dTfoEVo+iXeciXDYTaPqDhxNkfYQEx/IwtKC36aNpPBwaKiLVY3tKCdHyNDspwN
 IcfMjgOqN5UVwM2+irGa+rAi/WRNDfSkY4q7j4tbyhi9yVuzyVgaXTVytICyMznu34
 8ioVnYZdBqBzAW2BQK2fKAvPm8EhTeOtoZRqdbxxDGnG2qrLIRpmYJxQJEonFgSgcv
 k/vh/srhvHd0Q==
Date: Wed, 25 Aug 2021 11:37:38 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Baruch Siach <baruch@tkos.co.il>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Robert Marko <robert.marko@sartura.hr>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org
Subject: Re: [PATCH v2 2/6] PCI: qcom: add support for IPQ60xx PCIe controller
Message-ID: <20210825163738.GA3576149@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e17461407cf4bb79fed5925ec81196a0b84e7827.1620203062.git.baruch@tkos.co.il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_093740_834958_DF1F79E6 
X-CRM114-Status: GOOD (  11.47  )
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

In subject:

s/add support/Add support/ to match previous history.

On Wed, May 05, 2021 at 12:18:30PM +0300, Baruch Siach wrote:
> From: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
> 
> IPQ60xx series of SoCs have one port of PCIe gen 3. Add support for that
> platform.
> 
> The code is based on downstream Codeaurora kernel v5.4. Split out the
> DBI registers access part from .init into .post_init. DBI registers are
> only accessible after phy_power_on().

The "downstream Codeaurora kernel v5.4" reference would be more useful
if there were a URL reference to that driver.

> +#define AXI_CLK_RATE				200000000
> +#define RCHNG_CLK_RATE				100000000

These are unused.

> +	for (i = 0;i < 256;i++)

Add spaces after semicolons.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
