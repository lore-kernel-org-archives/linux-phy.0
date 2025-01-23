Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA330C02182
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jan 2025 08:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FenoAZvXPQI7S+bnsLqKAdFa/659AL7ute+lTOV9HbQ=; b=mO43Zrv0dqOljl
	rmMH1cD7x5REW7oyhExPrCEpWLstflP7+e6Itnmzs86j3UwTlqF0yclk29w6IpxVT4s5lVEhMroui
	0HCAWuHEYfiRJjAprkH95ocj11TGBVPlu0P1srzYXYhsRd5FpGm7GIEUQr9/7fCDktO9MgJDqw7a5
	/wJSaZSRN5ObxBDAkEYD7U16ITLwLlIYiYEHsXzW60jmigTpjPzZbizd1kxdAjEWju2NMCwUnh8cA
	F2TVKJEES7tuP5GmQbTviGqC6JFKP2Lw2mlg/1cWH5v8oSYRMLmz3XHzYWbeSKz0RuUQvS8Vh2wGm
	F+K3rh5Oj7OPYFlJ+Zag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tasZA-0000000BzAT-09TS;
	Thu, 23 Jan 2025 08:27:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tasZ7-0000000BzA2-1qED
	for linux-phy@lists.infradead.org;
	Thu, 23 Jan 2025 08:27:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 974CA5C577C;
	Thu, 23 Jan 2025 08:27:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20DB0C4CED3;
	Thu, 23 Jan 2025 08:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737620872;
	bh=vofYtrvUAsVCwLeaIG0II6eDROdU24GRLHxAawTP16s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S4HSz4ddizmKXlDfUpbexL5lqDvisjBwughjiTIiqpetYPrA0KTYHafRPjopFgPeq
	 Dnrt9LMSzVtO5AGqPoJK61sy3jGz7f9HXGBTIhqldeJi0CWcBBqSsWHtksjOk0Xn+0
	 25yghJlZrwZwtM5KzCjVaoiWTHpb8sgZdMEG1Dly2Ce3Ff7+dRWZV3v94hClNKnHUH
	 W80Ow9VoChYP3gCRnpynbeK6rHMXNDks0t1stCSJAUHVW7P+zBgagGM4UTUXqEcxCc
	 bcyvyzRSo93wrzlC+5/8N4+JF5GOEjea1o7f3jp9A8Ul0k0FWjL5QLTL38GjHyqrlG
	 QwUkQlo4449yw==
Date: Thu, 23 Jan 2025 09:27:49 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v7 5/7] dt-bindings: PCI: qcom: Document the IPQ5332 PCIe
 controller
Message-ID: <20250123-stereotyped-chupacabra-of-mathematics-10d9ce@krzk-bin>
References: <20250122063411.3503097-1-quic_varada@quicinc.com>
 <20250122063411.3503097-6-quic_varada@quicinc.com>
 <20250123-red-unicorn-of-piety-3c7de5@krzk-bin>
 <Z5H4UPhRjKhbbP9/@hu-varada-blr.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z5H4UPhRjKhbbP9/@hu-varada-blr.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_002753_561920_99F0F075 
X-CRM114-Status: GOOD (  23.59  )
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

On Thu, Jan 23, 2025 at 01:35:36PM +0530, Varadarajan Narayanan wrote:
> On Thu, Jan 23, 2025 at 08:58:29AM +0100, Krzysztof Kozlowski wrote:
> > On Wed, Jan 22, 2025 at 12:04:09PM +0530, Varadarajan Narayanan wrote:
> > > Document the PCIe controller on IPQ5332 platform. IPQ5332 will
> > > use IPQ9574 as the fall back compatible.
> > >
> > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > ---
> > > v7: Moved ipq9574 related changes to a separate patch
> > >     Add 'global' interrupt
> > >
> > > v6: Commit message update only. Add info regarding the moving of
> > >     ipq9574 from 5 "reg" definition to 5 or 6 reg definition.
> > >
> > > v5: Re-arrange 5332 and 9574 compatibles to handle fallback usage in dts
> > >
> > > v4: * v3 reused ipq9574 bindings for ipq5332. Instead add one for ipq5332
> > >     * DTS uses ipq9574 compatible as fallback. Hence move ipq9574 to be able
> > >       to use the 'reg' section for both ipq5332 and ipq9574. Else, dtbs_check
> > >       and dt_binding_check flag errors.
> > > ---
> > >  .../devicetree/bindings/pci/qcom,pcie.yaml          | 13 +++++++++++--
> > >  1 file changed, 11 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > > index 413c6b76c26c..ead97286fd41 100644
> > > --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > > @@ -34,6 +34,10 @@ properties:
> > >        - items:
> > >            - const: qcom,pcie-msm8998
> > >            - const: qcom,pcie-msm8996
> > > +      - items:
> > > +          - enum:
> > > +              - qcom,pcie-ipq5332
> > > +          - const: qcom,pcie-ipq9574
> >
> > Repeated many times on reviews to qcom: don't add to the end of the
> > lists. In case of multiple items, these are ordered by fallback, so this
> > goes next to other ipq entry... wait, that's already qcom,pcie-ipq9574,
> > so why are you duplicating?
> >
> > On what tree are you working?
> 
> Looks like ipq5424 changes got merged between the time I cloned
> linux-next, tested and posted the patch. Will fix this and post
> a new one.

Yeah, that would explain. Please grow the enum instead.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
