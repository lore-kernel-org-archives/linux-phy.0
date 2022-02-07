Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7435C433F5
	for <linux-phy@archiver.kernel.org>; Mon,  7 Feb 2022 18:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=8HQIpkJ9rZ0MhvTPL4XJqNzsjhfP5SqpsUKFxozlRgk=; b=LJ3qfNt8TqUtZ7
	rJCwTGXrZc4F0eV1aqS7ui7xcWxAqjz8mVlFVbm5I8bc4bqv1WHFQvPTaEo4NVgBz3pKdD/cGF0QV
	j0tw48wM8DTXYvuagjgIegFly3oB+3jAwP4feKtm0TDTHfD2wl/F2HCZt8y4kvthwvXA8cDu6f/DX
	kLdVbzqg8n3y3YqISEnItkRz5FOqgEXsHtgE2OWRzrD/NzsMG0RhJv6WWUet57iHtY3ZofihV38CF
	qPnf4Gpzu18dX2YgYw1NABYQaInwOCjqtr5Ar7bx3lrxgbfQtu5C9SSMtoNunI8XSegP6EvbGw4bw
	p28fGC/aNqxFCTFRyP5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH8cK-00BOLB-94; Mon, 07 Feb 2022 18:20:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH8cI-00BOKa-2l
 for linux-phy@lists.infradead.org; Mon, 07 Feb 2022 18:19:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 84DC46134B;
 Mon,  7 Feb 2022 18:19:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97E27C340EE;
 Mon,  7 Feb 2022 18:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644257996;
 bh=Pn51NOBNr1hKEsHOlr0Wztr3o+6cLRvr8UUIea4mfNM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=Vi7nyWHM6I2FbeXRzzUmIxGqGot0X4pDHvK+1sp9Q/rsT6ZKy37CrxN3HL5RwdZKP
 hYed5PNqtSLMDdKKBsbsnceFf28XsNxDEJ68rsmUdkxJDjxwr5fH3e97AAH3NwFWPf
 wcGpYPEXQqMC7MsyQiZ+o1ffmOZF5xvp9KOij9gNTPLj2aqQ84vqmLgryLcWFc0xVH
 gB2WIpQRBGfBQnyuqsxE8k52pjJ9n1DKxXgfpu5o7BDrTz9+BP8aanPgZjkcNkIQTZ
 1ZL1oFUCDxIbeKzAGVSoUVKF5CPFKgenlsaJseCALicG70jmrzlF9siVwmAq3c4phI
 kIo6Zn0iZwTqQ==
Date: Mon, 7 Feb 2022 12:19:55 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh+dt@kernel.org,
 thierry.reding@gmail.com, jonathanh@nvidia.com, kishon@ti.com,
 vkoul@kernel.org, kw@linux.com, krzysztof.kozlowski@canonical.com,
 p.zabel@pengutronix.de, mperttunen@nvidia.com,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kthota@nvidia.com,
 mmaddireddy@nvidia.com, sagar.tv@gmail.com
Subject: Re: [PATCH V1 10/10] PCI: tegra: Add Tegra234 PCIe support
Message-ID: <20220207181955.GA407458@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220205162144.30240-11-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_101958_183509_C0A23988 
X-CRM114-Status: UNSURE (   9.49  )
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

On Sat, Feb 05, 2022 at 09:51:44PM +0530, Vidya Sagar wrote:
> Add support for Synopsys DesignWare core IP based PCIe host controllers
> present in the Tegra234 SoC.

Can you please split this into two patches?

  - A patch that does the struct tegra194_pcie_of_data to struct
    tegra_pcie_of_data conversion but doesn't change any
    functionality, and

  - A patch that adds Tegra234 support?

It would be really helpful to be able to see the Tegra234 stuff by
itself.

Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
