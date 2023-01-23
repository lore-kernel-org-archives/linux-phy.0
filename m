Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38054C38142
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 14:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wYE+4YmzMd8HpBL+spKlqhbv9MHCyKEwc6WEInqZTpA=; b=1tXgAaw9dCWkpR
	MqOXqaO/IEwlQvPzxdx95wO+ma9HjJgJUAkaf16ckxBFgJPbrwjn5buO5QOz3sIxDn2Nx+Iu5mpyu
	Un7jqWzXADSUhOkyJx1Zj7q7WsipYZCIM0REgw5F5u2hbf1X58BpJuobl9sTtZ0ZeZVSjs/T2Jtc5
	VRw81OxqK124KiALAo6mabGcn/rIu7QPganVe8LdNUsDV9blgNrmRtMAsYXhowdfPOua5rdMxYJei
	CXEnYGwpncHyDNqSkw1olvISY5bIybxEerDgf4K+00wCrncrr7u0WG14eYQRQONr8B/XjvX9YpvzV
	mAuYAA+zRK9JO9EqPvoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJxdR-00HYYB-Ji; Mon, 23 Jan 2023 14:17:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJxdP-00HYXg-7C
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 14:17:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BA67960F33;
	Mon, 23 Jan 2023 14:17:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A6A8C433EF;
	Mon, 23 Jan 2023 14:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674483438;
	bh=oARpShREgynxaPbK8Ov7RvXgvvHmNN/Z6I795Bq13vI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iM+x2sLrGQKFJxuGbun9XAJPrr99iQ59q3Jx0fcAynZy2b5lTkdBDkKbmJDq0r4tq
	 E4IsfP9bb/haM3BwuzSZayi2uue2+QcjJROHfTNdymVw954x9Ov9w/Yymu4whA0sPj
	 oERESoDOFnYpYEsMq5Sq+xpdtRBgmc98aGk4KNeokrhD6N+Nk/vMAs+wXDdY1/TVPj
	 VT9vNRtWEIXvR+H0y6NKSMQa5Co/M0DyozE/vuWEllFiHGP6q2gOpS8+3zHY36yN3a
	 Eu951O1Xp8uEpge/KepBK7vAxMN4uzjz/5VY+9ZOSCb/BRPyZTd5il/Twfkwspekxq
	 FfP1aAANnArug==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pJxdL-0003cs-Mo; Mon, 23 Jan 2023 15:17:15 +0100
Date: Mon, 23 Jan 2023 15:17:15 +0100
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
Message-ID: <Y86W60Lsh1zyiECF@hovoldconsulting.com>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
 <20230119140453.3942340-12-abel.vesa@linaro.org>
 <Y85KiKD+iQamchB5@hovoldconsulting.com>
 <Y86AG7ev++wYiza4@linaro.org>
 <Y86HjPwj2Fb3t09r@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y86HjPwj2Fb3t09r@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_061719_334800_73D3DC72 
X-CRM114-Status: GOOD (  17.74  )
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

On Mon, Jan 23, 2023 at 03:11:40PM +0200, Abel Vesa wrote:
> On 23-01-23 14:39:55, Abel Vesa wrote:
> > On 23-01-23 09:51:20, Johan Hovold wrote:
> > > On Thu, Jan 19, 2023 at 04:04:52PM +0200, Abel Vesa wrote:
> > > > Add PCIe controllers and PHY nodes.
> > > > 
> > > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

> > > > +			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> > > > +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> > > > +				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
> > > > +				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
> > > > +				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
> > > > +				 <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
> > > > +				 <&gcc GCC_AGGRE_NOC_PCIE_AXI_CLK>;
> > > > +			clock-names = "aux",
> > > > +				      "cfg",
> > > > +				      "bus_master",
> > > > +				      "bus_slave",
> > > > +				      "slave_q2a",
> > > > +				      "ddrss_sf_tbu",
> > > 
> > > You're reusing a clock name which doesn't seem to match this SoC. I
> > > don't know what "QTB" refers to here and if it's just some Qualcomm
> > > alternate name for "TBU" which could make this ok.
> > 
> > I'll come back later with an answer here, once I know exactly what QTB
> > means.
> 
> So, AFAICT, they replaced the TBU with QTB, which basically does the
> same thing. It is part of the SMMU. So, yes, it is just an alternate
> name, at least from the clock point of view.

Good, thanks for checking.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
