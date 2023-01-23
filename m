Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A61E1C61D97
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 14:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8ch3IpnhLP90G440Fr6zCGYIVVvxdnr5UjA3z3IdD8=; b=Dj+Sn2rUibjzN2
	De4FCTjvgQUMv/ALGwElx6oKyQ4E5Qv5P5ROBiw1EyN0/Ev/OqIkfJ6YrUjR0vCjfCHO5UyH/GlPF
	hLaJcEFH0rtZh5AMZXrpjGES8NOxb2XGtu+Pk/sPaw3SH1KvRbPyT8ZDP5Mo4D3GXskDLnBidK+IT
	61YOr6BaYOTXvBLOvN68Q3QbIdDroyfT3aHgmhH1ASPg66IyTb//wzNisXVth+uOGy+VnUJDe8sFN
	rxLUgHfIHzZe441ixo6MZBwK1/H9kihLybbColdEoMMgDU3ukVzZ/NZhCTGvobh/RC4cy/5lp5nA0
	t+tE8lymu1tD8rjp+tpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJxkT-00HZB5-2n; Mon, 23 Jan 2023 14:24:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJxkP-00HZAf-Vg
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 14:24:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 82FEF60F31;
	Mon, 23 Jan 2023 14:24:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAECFC433EF;
	Mon, 23 Jan 2023 14:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674483871;
	bh=ebj5u9dzYTnqnlc6aYkM6fkr6bAweecaoU1qF2KA9ow=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RgjmabJGqw1ELqa2NhEcYDmnv9A+oZ7Jeoe9tjjYxnArTElg9uV49XTPjcZqKt8x4
	 yRq//o7h8iv2Dm1Fa+1LROKmU5jLMf5PVL3QIcYwWhBPYwlTRZzR3x5gQfOF0YAT+K
	 S/a0OjPr47JrZFVSXDO5NUsxChgjY/6juNkrn1ZUNmHMtdiRIf6ReWDef2nFqytE6f
	 greUtAF/btPyWKuE7k+2j1QR158+15cGvqqqHqIzHzYaLbUbKd5IxqGruJyRWYUM7G
	 mZflMGn0ezQ+1YCVcCzo/UCxF4NSip2beVVwmMYk242fZYCwrJ+CelMdttPkXHpj1M
	 LHDjhQhortKww==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pJxkK-0003jJ-TX; Mon, 23 Jan 2023 15:24:29 +0100
Date: Mon, 23 Jan 2023 15:24:28 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 11/12] arm64: dts: qcom: sm8550: Add PCIe PHYs and
 controllers nodes
Message-ID: <Y86YnAxmTcQTmqwH@hovoldconsulting.com>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
 <20230119140453.3942340-12-abel.vesa@linaro.org>
 <Y85KiKD+iQamchB5@hovoldconsulting.com>
 <Y86AG7ev++wYiza4@linaro.org>
 <Y86WqGW6pj5re3FU@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y86WqGW6pj5re3FU@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_062434_130775_1BF6656D 
X-CRM114-Status: GOOD (  23.70  )
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

On Mon, Jan 23, 2023 at 03:16:09PM +0100, Johan Hovold wrote:
> On Mon, Jan 23, 2023 at 02:39:55PM +0200, Abel Vesa wrote:
> > On 23-01-23 09:51:20, Johan Hovold wrote:
 
> > > > +		pcie1_phy: phy@1c0e000 {
> > > > +			compatible = "qcom,sm8550-qmp-gen4x2-pcie-phy";
> > > > +			reg = <0x0 0x01c0e000 0x0 0x2000>;
> > > > +
> > > > +			clocks = <&gcc GCC_PCIE_1_PHY_AUX_CLK>,
> > > > +				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> > > > +				 <&tcsr TCSR_PCIE_1_CLKREF_EN>,
> > > > +				 <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>,
> > > > +				 <&gcc GCC_PCIE_1_PIPE_CLK>;
> > > > +			clock-names = "aux", "cfg_ahb", "ref", "rchng",
> > > > +				      "pipe";
> > > > +
> > > > +			resets = <&gcc GCC_PCIE_1_PHY_BCR>,
> > > > +				 <&gcc GCC_PCIE_1_NOCSR_COM_PHY_BCR>;
> > > > +			reset-names = "phy", "nocsr";
> > > 
> > > Do you know why only the second PHY uses two resets here? Did you intend
> > > to add it also for the first PHY?
> > 
> > Please notice that this is a g4x2 phy. The documentation specifically
> > says that both the pciephy_reset and pciephy_nocsr_reset should be
> > asserted on power-up. Now, even the g3x2 has the nocsr reset (at least
> > in GCC) but its documentation doesn't seem to say anything about
> > nocsr needed to be asserted (ever).
> 
> Ok. Thanks for confirming. I did not notice the difference in generation
> at first.
> 
> > > Both of these resets exists also on sc8280xp, and I believe downstream
> > > used the NOCSR_COM variant, which does not reset all registers in the
> > > PHY so you could unknowingly be relying on firmware to setup things up
> > > for you.
> > 
> > That is also the case for the g3x2 phy on sm8550.

One more thing: Shouldn't the second reset be named 'nocsr_com' or
similar?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
