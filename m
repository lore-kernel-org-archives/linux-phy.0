Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45273C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 19:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=/erk45SftL1Y1/FUKl5IrR857gXOlfgcliiyx7jOGHM=; b=QmCqBzi8o0SrLP
	CK9+KaaYuFJCzaEUzTkFFW9kEbXUAiw4RhliIRzhbqZzWsjGsd1hLQbAZx3GqHFbndK4dO3ybZK6v
	eRS6C6xwXVGX7myYLqWpi09cB1UAM5074SOVF915xUrikMw3AMemTyFSPjs0Y1Opvb3lgJARjbOZI
	5hA50QfqL5sFV+aqgiISr+3h9Qvtqa0HYne449n6aAKXkPraC9SfZxfyxvmfQ6PNzwl76ESvUBvbk
	G7h0vzLxLwC9a/14IZT9Z161SGU5acBlUtP+pb1Y/92bZEyAeM9TR8/PGw8HEf68jgKLrf4HLqrU1
	WP3FNkhSCLFTH+IV7TFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedyQ-000000006od-3WgJ;
	Tue, 30 Jun 2026 19:18:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedyP-000000006oA-0DF8
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 19:18:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9DFEC43B66;
	Tue, 30 Jun 2026 19:18:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52C4C1F000E9;
	Tue, 30 Jun 2026 19:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782847100;
	bh=2VwH61PNxnmg27VmPypSLBntbvsP7xtRL4dPPxY7evI=;
	h=Date:From:To:Cc:Subject:In-Reply-To;
	b=IUUPhn7ghLH7E+O5Y9mLmsf17f/RsZ+peDy3mO6MNoAep1sx07SCCWnT1Y7cEC8+j
	 3G1HNqmo4s5yluF8WlIrnWt3ni+SqIr1uq2IFxCsuA+QTJ41I7OuRiSjunMiRbMBC5
	 HR3Irh9zeFICBQZrzBXGuEzHSwL5jGNF4kQM0MnVnfVSemRQrsqRrAgJ6IgZQTPXcy
	 tnavyPRi7KMZFK68XPOwQ6U9WMrG5fimZBS1qqQAkS9ndpsEyd/cyyQ/TJzky317x1
	 x3U9E4O37zyzp1X0dybhQoe10I6J8xE/SotKxylYJtZWIBZl/L3rL20CVyxT3uNyDR
	 cyKkbAxRr+wUQ==
Date: Tue, 30 Jun 2026 14:18:19 -0500
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
Subject: Re: [PATCH 2/9] dt-bindings: PCI: qcom: Document the Shikra PCIe
 Controller
Message-ID: <20260630191819.GA218584@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701-shikra-upstream-v1-2-e1a721eb8943@oss.qualcomm.com>
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

On Wed, Jul 01, 2026 at 12:32:44AM +0530, Sushrut Shree Trivedi wrote:
> Add a dedicated schema for the PCIe controller found on the Shikra
> platform.
> 
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/pci/qcom,shikra-pcie.yaml  | 211 +++++++++++++++++++++

Existing schema names are almost all "qcom,pcie-<SOC>", not
"qcom,<SOC>-pcie".

Subject lines typically include the SoC, e.g., see
"git log --oneline --no-merges Documentation/devicetree/bindings/pci/qcom*"

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
