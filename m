Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36007C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 19:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=jeNxAtyY9c88CAnM1psBwlOJEzws9z7fgYiWK5Xm0J4=; b=B8aWuTNKm9Q6yb
	5fhRnj7V3g+RyDTyE90XScW4CWx1bgZqqg3WV3NG26sebQFW6BckJicFWeZmgUVpAa0DoeYcKxijf
	SWcHinJjyCjMQugGfem2xhI1iN6sv+ooFXDsaQIqCmgjNfgdLNZ1CTdTUdxq6Q6oiDLzrV6lQwNsF
	IZPZttMTUzKE8lUb7fFepjo9PxQvGBaWZQTs/O9EzEizILYbYo4zzf/l/ycC3gyhrtCPMepfAAcuD
	TAnsjGFl0CSAqh6fFpNDNdEdCXxp99TLMRZVjOhfqHIgRzk8yp3ZaZWyjOb8OCaq9Nhz7Cpcjy6Y4
	zNH8UnaPRxnMbaoMHn5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weeAf-000000007su-410M;
	Tue, 30 Jun 2026 19:31:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weeAf-000000007so-1u0x
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 19:31:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CE53A40103;
	Tue, 30 Jun 2026 19:31:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82D0F1F000E9;
	Tue, 30 Jun 2026 19:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782847860;
	bh=NbhZJUGJY7sFP1hmNAqTzufrLxATMRY8jzOc360bLeQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To;
	b=JR5SiuS8mdLBZXGnDcx7YChTvK2UhAhsoecyiqWAjEK8YieU6hnMxYO2wi8LnPu+W
	 ixrAyB4fPn7FwhtiH5yRCRY3qoT6JfjQRe7H1BE/oj770B666T3L5G3G/jrWKxTJPP
	 ft9A0q4yApboMknGkELvNnEkr4CbBI9CA9KqHtmpTcLRqU6a/b4bc/atg2Iyzi/8A0
	 Ol9TWY1z8ptOv0TF3iR78TVJa/b0Hh4K8jI7iAGU54Y9ZOcwLpSQG36+VGYm2cfPLk
	 BmjfOrrDkdHnI4klR/OeRXsT0koSc+rgFy6Xb0IOq+kOwPie4CgPDNwGzckLXN7O7z
	 ridPQXL0cCcvQ==
Date: Tue, 30 Jun 2026 14:30:59 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH 8/9] arm64: dts: qcom: shikra-evk: Add TC9563 PCIe switch
 node for PCIe
Message-ID: <20260630193059.GA225112@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701-shikra-upstream-v1-8-e1a721eb8943@oss.qualcomm.com>
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

On Wed, Jul 01, 2026 at 12:32:50AM +0530, Sushrut Shree Trivedi wrote:
> Add a node for the TC9563 PCIe switch connected to PCIe. The switch
> has three downstream ports.Two embedded Ethernet devices are present
> on one of the downstream ports. All the ports present in the
> node represent the downstream ports and embedded endpoints.
> 
> Power to the TC9563 is supplied through two LDO regulators, which
> are on by default and are added as fixed regulators. TC9563 can be
> configured through I2C.

s/ports.Two/ports. Two/

Possibly subject doesn't need two uses of "PCIe".

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
