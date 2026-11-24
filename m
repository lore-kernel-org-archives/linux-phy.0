Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D48606A32E
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 10:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=j1qKxnq5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=SgIqTliG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=N6/+Ra9nSFaBIsVqhJ1rfEcJkcIuuc4uW91Ts5Itlxo=; b=j1qKxnq5tVwrmOOHrmKOXHew8w
	nuh0GvjE+ULf+rq93SFFZzsodRlqPRcZwjIO79A+TvR5ivFoYP3bEJZI6v6+vPQ3fn5G5Th8JL12T
	9SelZq9ZqIKk3/bcTv2bK9ACcH7tIKHjp+CQomfZ5z6tl/dntbvUIbzJaHAc+7wlp5FaKmUUk+ZEl
	OoS6KSc53HLvAe91FPdR1fDbHOchmBniSKxNR989aiywaKjPLPcWGTzxMBViFUCql8jcX18IXshiU
	QVf42Wa7E0NTJRwDQkRFHHHOqDQX7VOE8r8G1Rq9eVdLiMdmJ7Hlx+8cRid114fiCIedSx0R5FWBX
	vbQBwGTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnOn-00000006BBL-3iEX;
	Tue, 24 Nov 2026 10:05:17 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnOj-00000006B9Z-2Yqh;
	Tue, 24 Nov 2026 10:05:15 +0000
Received: from [IPv6:2a0a:edc0:0:900:1d::4e] (lupine.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::4e])
	(Authenticated sender: pza@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B49642020DC;
	Tue, 24 Nov 2026 11:05:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795514710;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=H8p63jVzqspLS/yYDkgn0Or4vozMPrWlrtlpK8EIjBA=;
	b=SgIqTliGQ/EujMYD5rdTmMNePrv7K80ns5GjscE8pXQb5WmWt2WxIV5auO9EwDNnBk/jfN
	IFFc9LY9/DEHEaABfr8yTqtBU+SRKxY+vD3TZ/s046CcKIvtciUk27SZJ1guyaV1b/ohIN
	6emn8hoU+LX3hi6wSN5AJZI47MowPRXoWA/JTjLYKuMwn4t5n7S+KEpTar5Mf0NLa2hALq
	FY/r3FftvfIEVFIYQDrwSd4uoEfPXo6qAvlVgC967pdmDqc3UeKogpV/mZKGHS7rc+izAy
	y+hcoC9iiLhVBBSHSStkOLtbB6NGXvqSyQ6y3DxvLXuPzEhOXNgurOGHx9XrLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795514710;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=H8p63jVzqspLS/yYDkgn0Or4vozMPrWlrtlpK8EIjBA=;
	b=NNCIxjoisA3DfJ9YhHLwZXERhJ+CbYJvR+LxwY5j4hf1serGJihnU/85QxYu8QpEne4GzG
	B26aocmUzhxl+CvYx267940TLNbMTKITo4rYBF9Z8mS8vOLDdP+PRfOjIYlLBnafsOfKhU
	XJwlGMCE1ExIalEDjt5KAF5sCuotjTJXu7Lcyalsn2ylZyi1heyApDpEAMkT6LRdMVxiMN
	66qoqK/ErlsIciMABD9EAMUYqFo3Rb4ZsImjFz+4/fdj7yecRTqHgcZ/BVLx10RF9z9sjd
	F6l0Da1ERUCp3MPhf4fxAbryUzCmeG1VfSpu9/yhtPZFZAOlEOPmvgdetAzLwg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=pza@pengutronix.de smtp.mailfrom=p.zabel@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795514710; a=rsa-sha256;
	cv=none;
	b=S0JYSQRGdMO84u/k49CDmLAsD9YPXdZ/QiwFcLxS9EWH7/srhpQTYZNuygCEZjKSiZJjpy
	VZEz47+rHNMQL7iQYimPElyMzb3kP6AOYSaWpoROOc8OSek0LXb4+oqxqc6FeDPL+Twh1X
	1pKY0BzvnuJ67cpgJEOUeZQhHxyVU0cxcWGk7usxnj6zVWTccCs0d/F79czRIALCMtlfwE
	6HCiBCu73M8viEUe+won2xPJjK078UxF7SsMtOMP4Rl5lbrmZw+T+YW4IzGp5kUrjgUBma
	/WZ6Tpp1cfgROGhrZe60KCqhowvOIdxDp8ejleYjub0ImuXWdUs0r0N8q5LSPw==
Message-ID: <f5d30781ae9502cd76ee2b6757f96a0e5ffa8b71.camel@pengutronix.de>
Subject: Re: [PATCH v2 7/8] PCI: cs7542: Add CS7542 PCIe host support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: filipp.dunsky@gmail.com, Manivannan Sadhasivam <mani@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>, Lorenzo Pieralisi
 <lpieralisi@kernel.org>,  Krzysztof Wilczynski <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Brian
 Masney <bmasney+clk@redhat.com>, Jerome Brunet <jbrunet+clk@baylibre.com>,
 Neil Armstrong	 <neil.armstrong@linaro.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 24 Nov 2026 11:05:10 +0100
In-Reply-To: <20261123-b4-cs7542-pcie-v2-7-f589a9cd0bef@gmail.com>
References: <20261123-b4-cs7542-pcie-v2-0-f589a9cd0bef@gmail.com>
	 <20261123-b4-cs7542-pcie-v2-7-f589a9cd0bef@gmail.com>
User-Agent: Evolution 3.56.2-0+deb13u1 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_020514_275561_F40F09F6 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mo, 2026-11-23 at 23:32 +0300, Fil Dunsky via B4 Relay wrote:
> From: Fil Dunsky <filipp.dunsky@gmail.com>
> 
> Add DesignWare host glue consuming separate clock, reset and PHY
> providers. Use live link status and stop previous training before
> enumeration. Finish endpoint teardown before draining the shared IRQ and
> freeing MSI domains. Dispatch enabled INTx/MSI sources through one
> application interrupt and use its MSI target window.
> 
> Prevent root configuration accesses at and above 0x200, including direct
> DesignWare DBI reads, while preserving the private CSR bank and separate
> iATU callback base. Unwind power and IRQ domains on failure and removal.
> 
> Read live link/LTSSM state through the application wrapper. After link
> loss, block configuration and DBI accesses until controller reset and
> reprobe.
> 
> Signed-off-by: Fil Dunsky <filipp.dunsky@gmail.com>
> ---
>  drivers/pci/controller/dwc/Kconfig       |  12 +
>  drivers/pci/controller/dwc/Makefile      |   2 +
>  drivers/pci/controller/dwc/pcie-cs7542.c | 551 +++++++++++++++++++++++++++++++
>  3 files changed, 565 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> index 0a0d56fcf..2ebaa8db1 100644
> --- a/drivers/pci/controller/dwc/Kconfig
> +++ b/drivers/pci/controller/dwc/Kconfig
> @@ -577,4 +577,16 @@ config PCIE_ULTRARISC
>  	  By default, this symbol is enabled when ARCH_ULTRARISC is active,
>  	  requiring no further configuration on that platform.
>  
> +config PCIE_CS7542
> +	tristate "Cortina Systems CS7542 PCIe controller"
> +	depends on OF && HAS_IOMEM && PCI_MSI && COMMON_CLK
> +	select PCIE_DW_HOST
> +	select GENERIC_PHY
> +	select RESET_CONTROLLER

Drop RESET_CONTROLLER, this is not a reset controller driver.
The consumer API has stubs.

[...]
> diff --git a/drivers/pci/controller/dwc/pcie-cs7542.c b/drivers/pci/controller/dwc/pcie-cs7542.c
> new file mode 100644
> index 000000000..5487e667d
> --- /dev/null
> +++ b/drivers/pci/controller/dwc/pcie-cs7542.c
> @@ -0,0 +1,551 @@
[...]
> +static int cortina_pcie_probe(struct platform_device *pdev)
> +{
[...]
> +	cp->reset = devm_reset_control_get_exclusive(dev, NULL);
> +	if (IS_ERR(cp->reset))
> +		return dev_err_probe(dev, PTR_ERR(cp->reset), "controller reset\n");
[...]
> +	ret = reset_control_reset(cp->reset);

Please use assert/deassert, this is not a self-clearing reset.
See my comments on the reset controller driver.

Would a convenience function like [1] be helpful?

[1] https://lore.kernel.org/all/20261112-reset-control-pulse-v1-1-25cea105883e@pengutronix.de/


regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
