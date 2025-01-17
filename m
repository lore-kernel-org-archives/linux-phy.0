Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE387C02183
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jan 2025 20:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=8l6kz61RQBeGopWRN2zRUTkUx2qT0NoWo4HuTZVK1sg=; b=mxdKt17yS2Tjif
	PgWm3hEf23Vy1Kx9ef140Mvw6vSdqF3atgYg2xueHbRgYAsh4pdEoeWzcBRvusHO6vnH8tG5XXqxf
	pIXq8fxj48MtOU5toOYdcsc8Je3VA3BhVS6nXlT80ZdrzaNPrvQwhcVZcsc4cK97uGXXbsUGQXHoH
	Aw5Ow0xadvyZu8YLc5aPc908rSmaBjEZdd8R66/dlVx5uBLD113ZsoxLVXoiM5jCjNFpMefc7wwFo
	BbVywqaBMZ2a+JCW6owbcyuMnjVfrIS3jA7fTutEKWa1Z117nddVimHRn19LXwemWN8A9z0pN32l6
	fs86Ux6TlxeN0BNxkUSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYsvy-00000001JZa-1PAd;
	Fri, 17 Jan 2025 20:27:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYsvv-00000001JYy-2FCB
	for linux-phy@lists.infradead.org;
	Fri, 17 Jan 2025 20:27:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 039405C4427;
	Fri, 17 Jan 2025 20:26:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23304C4CEDD;
	Fri, 17 Jan 2025 20:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737145630;
	bh=Ct2YwrpPXaoKNAMpYvMgQTLQEkb+M++rRR9iD27FrGs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=WePJh3Pd3VRkENxPcR2AjlfdrFrhh6XiJCNEs5yil1pXBj1r7qSUqyRAAIhUr0tTe
	 yLw/0awyrdE0kFMpTrQUxFAHKNV6rb8Ld7SwKsxUt+uFTcW2pH5vvZhn3u7a9ZlQuL
	 E1DiIf54u25Wha4Kcx5n0D2YsLVfey3VtB4rr7wVybECAUi1jWc5IQ8xMvciQsbDW+
	 fLgcAocAs2EC0a2398UniivYGe/K1iqxkqCzPzhIV8tF7AW9JBL/vS7RIoSWTSvVPq
	 0ExGWvIVc/F2vO4/QYxNCoCpmiSBVycmx0sYSfTQxlA6ULNVU9ihg+yd52bJtEcQAw
	 u5f9J7U4tAyCg==
Date: Fri, 17 Jan 2025 14:27:08 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	manivannan.sadhasivam@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com,
	dmitry.baryshkov@linaro.org, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Praveenkumar I <quic_ipkumar@quicinc.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 4/5] arm64: dts: qcom: ipq5332: Add PCIe related nodes
Message-ID: <20250117202708.GA655559@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z4dqnr9+MTue3VbX@hu-varada-blr.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250117_122711_665357_9D661256 
X-CRM114-Status: GOOD (  27.54  )
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

On Wed, Jan 15, 2025 at 01:28:22PM +0530, Varadarajan Narayanan wrote:
> On Wed, Jan 08, 2025 at 12:32:35PM -0600, Bjorn Helgaas wrote:
> > On Thu, Jan 02, 2025 at 05:00:18PM +0530, Varadarajan Narayanan wrote:
> > > From: Praveenkumar I <quic_ipkumar@quicinc.com>
> > >
> > > Add phy and controller nodes for pcie0_x1 and pcie1_x2.

> > > +		pcie1: pcie@18000000 {
> > > +			compatible = "qcom,pcie-ipq5332", "qcom,pcie-ipq9574";
> > > +			reg = <0x00088000 0x3000>,
> > > +			      <0x18000000 0xf1d>,
> > > +			      <0x18000f20 0xa8>,
> > > +			      <0x18001000 0x1000>,
> > > +			      <0x18100000 0x1000>,
> > > +			      <0x0008b000 0x1000>;
> > > +			reg-names = "parf",
> > > +				    "dbi",
> > > +				    "elbi",
> > > +				    "atu",
> > > +				    "config",
> > > +				    "mhi";
> > > +			device_type = "pci";
> > > +			linux,pci-domain = <1>;
> > > +			bus-range = <0x00 0xff>;

> > > +			num-lanes = <2>;
> > > +			phys = <&pcie1_phy>;
> > > +			phy-names = "pciephy";
> >
> > I think num-lanes and PHY info are per-Root Port properties, not a
> > host controller properties, aren't they?  Some of the clock and reset
> > properties might also be per-Root Port.
> >
> > Ideally, I think per-Root Port properties should be in a child device
> > as they are here:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/pci/mvebu-pci.txt?id=v6.12#n137
> > but it looks like the num-lanes parsing is done in
> > dw_pcie_get_resources(), which can only handle a single num-lanes per
> > DWC controller, so maybe it's impractical to add a child device here.
> >
> > But I wonder if it would be useful to at least group the per-Root Port
> > things together in the binding to help us start thinking about the
> > difference between the controller and the Root Port(s).
> 
> This looks like a big change and might impact the existing
> SoCs/platforms. To minimize the impact, should we continue
> supporting the legacy method in addition to the new per-Root port
> approach. Should we take this up separately? Kindly advice.

I just meant to change the order they're listed in the binding, not
add any new device stanzas.

E.g., maybe it could be arranged like this, where things that apply to
the Root Complex as a whole (bus-range, #address-cells, #size-cells,
ranges, etc) are listed first, and the Root Port-related things
(num-lanes, phys, etc) are listed later:

+               pcie1: pcie@18000000 {
+                       compatible = "qcom,pcie-ipq5332", "qcom,pcie-ipq9574";
+                       device_type = "pci";
+                       linux,pci-domain = <1>;
+                       bus-range = <0x00 0xff>;
+                       #address-cells = <3>;
+                       #size-cells = <2>;
+
+                       ranges = <0x01000000 0 0x18200000 0x18200000 0 0x00100000>,
+                                <0x02000000 0 0x18300000 0x18300000 0 0x07d00000>;
+                       interrupts = <GIC_SPI 403 IRQ_TYPE_LEVEL_HIGH>, ...
+                       clocks = <&gcc GCC_PCIE3X2_AXI_M_CLK>, ...
+                       resets = <&gcc GCC_PCIE3X2_PIPE_ARES>, ...
+                       interconnects = <&gcc MASTER_SNOC_PCIE3_2_M ...

Everything above is potentially shared; everything below applies to a
single (the only one in this case) Root Port.

+                       num-lanes = <2>;
+                       phys = <&pcie1_phy>;
+
+                       status = "disabled";
+               };

I want people to think about which things belong to the Root Port and
which are shared for the whole Root Complex.

For new drivers, I think we should actually add "pcie@1,0" stanzas for
each Root Port, even if there is only one.

But for existing drivers that would have to be modified to comprehend
new stanzas, collecting the Root Port things so they are together in
the PCI controller stanza would be a good start (unless the order of
properties in the DT makes a functional difference, of course).

Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
