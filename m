Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D43C4F588C3
	for <linux-phy@archiver.kernel.org>; Mon, 20 Apr 2026 13:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFytahfSV4wuWzWvM95dbnR65Y9sb9i/37vKjR4vj94=; b=KQuZ2t2UZ0RIL/
	Bu0T3d6XumxLqJNRemJ9EFI/hqnoQEFo/ZHMu3NCC7cZsPH1yMpJ3TSJAZZUsrgYjeHnYL2FpWJvg
	iSVH7XYLk5PJ/OMoRppqQyLYio8kg1POdb2w1Xij1AdtivdzSim+4AkfIeh9EtNShFXQb0s5XGMy8
	ZACOZAMspasKwn+iNGhJVyCfo7nZXRkN2P3niGH0nW15/Cx74wyDerdbRBQCMKRwBJBe/PTaZAwVA
	OfDgTS7WxJBAbslL3eiCX3WsCB642G0YPwy26ljp4VDrgIY/v5f/DE8wafMrM6nfeoCQ2WfK0jXIP
	1iqamppCjKnQCSyg5r1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEobr-00000006ziJ-1Rka;
	Mon, 20 Apr 2026 13:24:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEobp-00000006zhw-353w
	for linux-phy@lists.infradead.org;
	Mon, 20 Apr 2026 13:24:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 572CE60180;
	Mon, 20 Apr 2026 13:23:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FBD4C4AF09;
	Mon, 20 Apr 2026 13:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776691426;
	bh=ywo/K+m8g61aFuYUwjJngKFcWB+wO9RjNtkZ4THPkfY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=j2IllhUII1LeigQu/LhVqMjlicGgoRx0s29c4Rh2H8muX/VKwlTyHTUYdI9YJax2n
	 F9Mt4ouIcD0BQdEevVWK41HZ+jCyMstdvCyvPqx3Qx3t34y8IsY3cHsrjF5p+PYVCP
	 fLrIuFZJKDoHavwu+b1wMcXkxvmvssbbruQoFRRU3lVr1n22SG561k1PfXckYWTPLZ
	 EzCry+M5RLD2ISQnscbPMNJZb2ZN57b8iGw0dxhjCnx4ZjCvyA6iySosXff3BKaolQ
	 foIw+bN4+DtnR+4A1Z+GrpMlTxq5GUEpvrDFYph6yuRUPNGpAQvJ+1/4DQj5ZsXzFK
	 K1MffoiFVDUMQ==
Date: Mon, 20 Apr 2026 15:23:43 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 support for glymur Gen5 x8 bifurcation mode
Message-ID: <20260420-optimistic-unnatural-stingray-80da35@quoll>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
 <20260412-glymur_gen5x8_phy_0413-v3-1-affcebc16b8b@oss.qualcomm.com>
 <20260415-wooden-prawn-of-lightning-dc1ddc@quoll>
 <aeBQRStG3imY0cOe@hu-qianyu-lv.qualcomm.com>
 <20260417-awesome-tacky-coot-e59a30@quoll>
 <aeXUZ1uSEJ9InUtw@hu-qianyu-lv.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aeXUZ1uSEJ9InUtw@hu-qianyu-lv.qualcomm.com>
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

On Mon, Apr 20, 2026 at 12:23:19AM -0700, Qiang Yu wrote:
> On Fri, Apr 17, 2026 at 11:18:08AM +0200, Krzysztof Kozlowski wrote:
> > On Wed, Apr 15, 2026 at 07:58:13PM -0700, Qiang Yu wrote:
> > > On Wed, Apr 15, 2026 at 09:50:28AM +0200, Krzysztof Kozlowski wrote:
> > > > On Sun, Apr 12, 2026 at 11:25:56PM -0700, Qiang Yu wrote:
> > > > > The Glymur SoC has pcie3a and pcie3b PHYs that can operate in two modes:
> > > > > 
> > > > > 1. Independent 4-lane mode: Each PHY operates as a separate PCIe Gen5
> > > > >    4-lane interface, compatible with qcom,glymur-qmp-gen5x4-pcie-phy
> > > > > 2. Bifurcation mode (8-lane): pcie3a phy acts as leader and pcie3b phy as
> > > > >    follower to form a single 8-lane PCIe Gen5 interface
> > > > > 
> > > > > In bifurcation mode, the hardware design requires controlling additional
> > > > > resources beyond the standard pcie3a PHY configuration:
> > > > > 
> > > > > - pcie3b's aux_clk (phy_b_aux)
> > > > > - pcie3b's phy_gdsc power domain
> > > > > - pcie3b's bcr/nocsr reset
> > > > > 
> > > > > Add qcom,glymur-qmp-gen5x8-pcie-phy compatible string to document this
> > > > > 8-lane bifurcation configuration.
> > > > 
> > > > Do you describe PCI3A or PCI3B or something combined PCI3?
> > > 
> > > I describe a single x8 PHY with resources from both the pcie3a and pcie3b
> > > PHY blocks for x8 operation.
> > > 
> > > > 
> > > > > 
> > > > > The phy_b_aux clock is used as the 6th clock instead of pipediv2,
> > > > > requiring the clock-names enum to be extended to support both
> > > > > [phy_b_aux, pipediv2] options at index 5. This follows the existing
> > > > > pattern used for [rchng, refgen] clocks at index 3.
> > > > > 
> > > > > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > > > ---
> > > > >  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 53 ++++++++++++++++++----
> > > > >  1 file changed, 45 insertions(+), 8 deletions(-)
> > > > > 
> > > > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > > > > index 3a35120a77ec0ceb814a1cdcacff32fef32b4f7b..14eba5d705b1956c1bb00cc8c95171ed6488299b 100644
> > > > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > > > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > > > > @@ -18,6 +18,7 @@ properties:
> > > > >      enum:
> > > > >        - qcom,glymur-qmp-gen4x2-pcie-phy
> > > > >        - qcom,glymur-qmp-gen5x4-pcie-phy
> > > > > +      - qcom,glymur-qmp-gen5x8-pcie-phy
> > > > 
> > > > That's the same device as 5x4, no? One device, one compatible and this
> > > > suggests you will have three PCI phys in the DT - two 5x4 and one 5x8?
> > > > 
> > > 
> > > It is not the same as the 5x4 PHY. In DT, we model three PHY nodes:
> > > phy_3a (1x4), phy_3b (1x4), and a separate phy_1x8 node for x8 mode.
> > 
> > OK, that's what I wanted to hear. And that's what should not be done,
> > 
> > You should not have a separate node for the same hardware. First, DTC
> > will give you a W=1 warning, although warning itself should be moved to
> > W=2.
> > 
> > Second, the warning tells important story - same hardware is described
> > twice.
> > 
> > You only need phy_3a and phy_3b, so only two in total.
> 
> We can keep only phy_3a and phy_3b, but still add new compatible
> qcom,glymur-qmp-gen5x8-pcie-phy in binding, right?
> 
> For boards that support pcie3a(1x4) + pcie3b(1x4), DTS would be:
> 
> pcie3a_phy { compatible = "qcom,glymur-qmp-gen5x4-pcie-phy"; };
> pcie3b_phy { compatible = "qcom,glymur-qmp-gen5x4-pcie-phy"; };
> 
> For boards that support 1x8, we would override pcie3a_phy with:
> 
> pcie3a_phy { compatible = "qcom,glymur-qmp-gen5x8-pcie-phy"; /* additional resources */ };
> pcie3b_phy { compatible = "qcom,glymur-qmp-gen5x4-pcie-phy"; };
> 
> This still uses only two PHY nodes and DTC will not report warning.

IMO, you do not need another compatible. Device is exactly the same. If
wiring on the board differs, e.g. you have 8x instead of 4x, you:
1. disable unused 3B phy.
2. Add to 3A missing resources or the phandle to companion node.

At least that is what I tought till now, when I opened the HPG/manual
for Glymur phy.  Someone skipped important information when PCIe PHY was
upstreamed first and glymur.dtsi already got PHY 3B described.

Reminder: writing bindings asks you explicitly to post COMPLETE
bindings.

If you posted COMPLETE bindings we would question all this and you would
have to check in user manual that this is actually ONE device.

There is no 5x4 phy 3A and 3B, at least HPG is pretty clear here.

And you should start with that.

But you posted first incomplete binding, hiding the rest and now you
have 5x4 merged into DTSI.

So let's rephrase based on manual:
You have only one PCIE phy3. Not 3A + 3B. That one phy3 can be
configured by consumers (board) differently, e.g. by requesting 8-lane
or twice 4-lane phys.

Let me send correction note for glymur.dtsi.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
