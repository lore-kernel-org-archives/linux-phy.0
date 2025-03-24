Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84F00C36002
	for <linux-phy@archiver.kernel.org>; Mon, 24 Mar 2025 07:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pj+2zznauOhma50TiFM2kXf1xtQOANHqWzKl8pVzHac=; b=e8Zq9KqD7dQkHg
	dUq60OMmsL6nnGEH8dTx6/IE1WXMI4iEBLGmrFXZ+kNjRSrIf4JBGhmaCiuHhFBDmWWbv7oePtq9k
	myb+iEH60SWTCKjh5WG97tDqDaSRzb0s+L7R4bLdT8gx2cGyvmDGasyfpDa8E61OSINZ2pgfUf4UY
	uWMdiT5bNpTdnSWVQA6clFVkuCHTpinpVrvVvPtPC2sNJDzNtf46C9BhUebiIWReiKDiFbPrAmRWT
	xI6zkEcNV//WGmTdSp8fkbhIPWJUOST0aKwNK5WvQ7ZJ931n1hj89L6t3qqdubdwHqYHSlKLujpFE
	gdikAvLFKhAAtjcB24BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twcX8-00000002UUb-0Mzt;
	Mon, 24 Mar 2025 07:47:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twcX6-00000002UUP-3psr
	for linux-phy@lists.infradead.org;
	Mon, 24 Mar 2025 07:47:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4EDD761149;
	Mon, 24 Mar 2025 07:47:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A27FDC4CEDD;
	Mon, 24 Mar 2025 07:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742802459;
	bh=6SxKcj4gUIOYK9hOLL2QqT3WFOWrHJL1z+V3xAU4HWY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D0tyseSFxU48myJcXGHrQB2TW2AnkXD2C/jDngzz5RL/CNYsjCJnGs57CZNZ34y5q
	 /I2syGM1xIJ3kXqKyUCe9ITk9r69JaTQZisUvY3nm8tE1mKmjNyy75RDgeHeMAzQoC
	 DQ416BwJ4gUyFp2J2WKlmjf4kUw3P5K/x8CIgZt1/4cIhamVL4iFzQDA9AKmJIUdJ+
	 JFuJHbtc/NK0kF3A3nu9bqdRDTD0+qbsd06WEZAAp17AJmUeDsz1XxUwU+s/AMIj24
	 c10wvpKsyPMQ8y0dBSQvSBqDwMlZUz6DPCGTPB5bMGzPcdAGV/5wAzeB3uVpidCGuH
	 LsvdFyPrtK/gg==
Date: Mon, 24 Mar 2025 08:47:35 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	20250317100029.881286-2-quic_varada@quicinc.com, Sricharan Ramabadhran <quic_srichara@quicinc.com>
Subject: Re: [PATCH v6 0/6] Enable IPQ5018 PCI support
Message-ID: <20250324-shrew-of-total-philosophy-4fddc2@krzk-bin>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
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

On Fri, Mar 21, 2025 at 04:14:38PM +0400, George Moussalem wrote:
> This patch series adds the relevant phy and controller
> DT configurations for enabling PCI gen2 support
> on IPQ5018. IPQ5018 has two phys and two controllers, 
> one dual-lane and one single-lane.
> 
> Last patch series (v3) submitted dates back to August 30, 2024.
> As I've worked to add IPQ5018 platform support in OpenWrt, I'm
> continuing the efforts to add Linux kernel support.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
> Changes in v6:
> - Fixed issues reported by 'make dt_bindings_check' as per Rob's bot
> - Removed Krzysztof's Ack-tag on  

Why?

Again, I cannot compare this serie:

  b4 diff '20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com'
  Grabbing thread from lore.kernel.org/all/20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com/t.mbox.gz
  Checking for older revisions
  Grabbing search results from lore.kernel.org
  Nothing matching that query.
  ---
  Analyzing 12 messages in the thread
  Could not find lower series to compare against.



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
