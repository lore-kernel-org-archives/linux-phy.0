Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0CD8C3ABB2
	for <linux-phy@archiver.kernel.org>; Mon, 16 Sep 2024 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYIKbxbbv1adW3iL5XEqZL0TEQ7qGgzIVhPC9EW0njs=; b=Li7EF7Vi8JRUg7
	TuyqqyKLE+OC1ROIhZnQSuCEea197Xlby5MDNdoJFUy4GELtKkUI+HuMSuy1sMXa0pe+XFEOr6zPp
	DfBZdfcqwIw6K1piFcpGTw2CSpkK2ehQgcF5U0SL4hHapwwfABYvGnspN4bqwchlzFOCIaZNhdiXj
	5lctIfs/oRHSgNqK/Pdtfi7BylgZeInPsHLTxmeAd9Xw/fp//USSL4jKWJTERKIPqiAq4YdRjwOVM
	L0v2cq5Wc9z2NW/Ejwy8wxStToPm94fM/DodX4xqypNsIFrGE9WrnsRTyZ3C07EjDpMkgzKvq1DnP
	rx4SF3++WhBSWL9stXtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqDWj-00000004KTI-0f1W;
	Mon, 16 Sep 2024 15:20:33 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqDWg-00000004KSf-1mHE
	for linux-phy@lists.infradead.org;
	Mon, 16 Sep 2024 15:20:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C47B5A42990;
	Mon, 16 Sep 2024 15:20:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 984C2C4CECE;
	Mon, 16 Sep 2024 15:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726500029;
	bh=dI8QA7UEh9kQ4aiH5s1VwA/ah6vGvZinGPk/2zxpCWs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mwMtQmJ9gaRprRQtCndPijrsfTrBfedlVjsFa2vL3ichPSWdEQ/7LmfE+RvhOdO1c
	 0PEoK4ACAi5iNCLycGMHDPuhb6iFUQSq1dXfkkg1EE02oBTkm/PNatMEVf1+ZdRchJ
	 XCxmwHvHifr157iq+xtAaBq7W7RI8x6kwtyAwbYNUpTuepMj/a1ciTLgvVb5e3moFm
	 AMfiFr80svPV9y2bD/injtAIfF28T0KFJpR45Ld4MlEjmKekE25oZfpTEOL6ki3h71
	 SUVuB8p/KeBhd+VTJBUgzR0N8K6TaEvmckyqEXBdOb4wCtvH15ykvi2SC0JexcaB+l
	 OgTUWSBiJKYqw==
Date: Mon, 16 Sep 2024 17:20:25 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Qiang Yu <quic_qianyu@quicinc.com>, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com, 
	quic_devipriy@quicinc.com, kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 2/5] dt-bindings: PCI: qcom: Add OPP table for X1E80100
Message-ID: <npm3szetf55hw6ghmscol2rl5jb5h3neywit2axea53vbgarvh@pgqq5j5y5pcb>
References: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
 <20240913083724.1217691-3-quic_qianyu@quicinc.com>
 <tf4z475uqjenohdgqj4ltoty3j3gopxnbdhrrn6zo3ug5yuvyq@us2nysv2ggxh>
 <20240913133619.z7cc4whhpvs2uecb@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240913133619.z7cc4whhpvs2uecb@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_082030_544899_32A83541 
X-CRM114-Status: GOOD (  16.58  )
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

On Fri, Sep 13, 2024 at 07:06:19PM +0530, Manivannan Sadhasivam wrote:
> On Fri, Sep 13, 2024 at 03:30:59PM +0300, Dmitry Baryshkov wrote:
> > On Fri, Sep 13, 2024 at 01:37:21AM GMT, Qiang Yu wrote:
> > > Add OPP table so that PCIe is able to adjust power domain performance
> > > state and ICC peak bw according to PCIe gen speed and link width.
> > > 
> > > Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> > > ---
> > >  Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> > > index a9db0a231563..e2d6719ca54d 100644
> > > --- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> > > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> > > @@ -70,6 +70,10 @@ properties:
> > >        - const: pci # PCIe core reset
> > >        - const: link_down # PCIe link down reset
> > >  
> > > +  operating-points-v2: true
> > > +  opp-table:
> > > +    type: object
> > 
> > I think these properties are generic enough and we might want to have
> > them for most if not all platforms. Maybe we should move them to
> > qcom,pcie-common.yaml?
> > 
> 
> Agree. It should be moved to qcom,pcie-common.yaml.

Yep, ack.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
