Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB77AC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 18 Oct 2022 15:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+1rG1krMhVebeJ6DxCeXAoiraxyWntyO0+bXfOXFb0=; b=WrV8RkeGp6iqdF
	fFcvn8/9tYkuv/Uo5NxCaEI+iWOFuM9TsSbjhZ8LVk96DQDbSkInGw4oUeaOtKyZlPvinJ97zj5Oz
	SXANM8PziQ9cKupaKoRh/9sn1zrUUQqgZr4wIB78NytrWhDeUF2IbkL27C6RJcC258GNUJ3gfAmTW
	IdlyzLpoxgnhT7gSJ39Gx90OCDoaB5T3jAvaAsKQ/laV1qJ0+sFJqhxaw2XgOuQ1C60jMrDHcAJ2R
	LS29TcOYsqpgBWL6vPCEgD5PT4IJp+7J14FP25dXoNbqtJOiaBMJmKs2Oqhf5Im1+AjFUOJwrHsKV
	HWTxbUU7cNcdNthIB2rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okopT-007wgQ-GZ; Tue, 18 Oct 2022 15:48:31 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okooF-007vQ9-K8
	for linux-phy@lists.infradead.org; Tue, 18 Oct 2022 15:47:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A3DEF615DB;
	Tue, 18 Oct 2022 15:47:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2F73C433D7;
	Tue, 18 Oct 2022 15:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666108034;
	bh=qcKyENMx6mTmZ0TU9r5WLxS2rM0ANcBloLaQCW9lMtI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qFi1Cd9XrbdgMzYwbGl4PpeXf9TywiyD/tym7bUZFa0kqOiJLEWRrHv/uMUWjPQpW
	 cbP0etVbeG0b0t6fwTSu5WRCiqGj1yr9KvbyQYUiWSdqrvmQIMFxMMCsWw88sJtayj
	 aIjiU8+WM+3QAWo3YzBWq7JZWevaBFNhFWcpBs2cyxWyxC3MsbBmDglXAlhz8p/lq+
	 Tq4UdU6eHQuv97yZk3R47af/6g5RsH6HLNzTg5Ma/XlX8wsGx+bDRaGqd4ueiMQoDS
	 dyMSOAXV6v0G/Mis30/70XcoNfBlUnhRftp1QIHKvFw0cK4xZbvhr4hHLbh+fSCUTI
	 IA9fEDh46Y6Ug==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1okoo2-00062o-FW; Tue, 18 Oct 2022 17:47:02 +0200
Date: Tue, 18 Oct 2022 17:47:02 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 10/15] dt-bindings: phy: qcom,qmp-pcie: add sc8280xp
 bindings
Message-ID: <Y07Kdo5oG4gw82k4@hovoldconsulting.com>
References: <20221017145328.22090-1-johan+linaro@kernel.org>
 <20221017145328.22090-11-johan+linaro@kernel.org>
 <d6642028-3fb9-4e39-a349-666625dabb9d@linaro.org>
 <Y050nxCaFXIgczrA@hovoldconsulting.com>
 <7a2b1617-5e57-994e-a246-2e6f9fd69262@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7a2b1617-5e57-994e-a246-2e6f9fd69262@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_084715_779000_F8B85A62 
X-CRM114-Status: GOOD (  27.31  )
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

On Tue, Oct 18, 2022 at 11:22:13AM -0400, Krzysztof Kozlowski wrote:
> On 18/10/2022 05:40, Johan Hovold wrote:
> > On Mon, Oct 17, 2022 at 01:20:49PM -0400, Krzysztof Kozlowski wrote:
> >> On 17/10/2022 10:53, Johan Hovold wrote:
> >>> Add bindings for the PCIe QMP PHYs found on SC8280XP.

> >>> --- /dev/null
> >>> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> >>
> >> Filename based on compatible, so for example:
> >>
> >> qcom,sc8280xp-qmp-pcie-phy.yaml
> > 
> > Ok, but as I mentioned in my reply to the previous patch, this file is
> > the one that is expected to be extended with new bindings.
> 
> I would still propose to use compatible of this series and treat it as a
> family name of compatible or similar devices. What other choice we have?
> 
> If new (third) PHY bindings appear, then rename older to "-legacies" and
> this one to "-legacy"?

We could also continue using

	qcom,qmp-pcie-phy.yaml

for the latest generic binding were new devices should be added and
rename the "deprecated" ones after one of the compatibles to make it
sound less generic.

But I get your point.
	
> > I can't seem to find where this naming scheme is documented now even if
> > I'm quite sure I've seen it before. Do you have a pointer?
> 
> If you need the source of authority, then:
> https://lore.kernel.org/linux-devicetree/YlhkwvGdcf4ozTzG@robh.at.kernel.org/
> 
> If you need unofficial documentation, then slides here:
> https://osseu2022.sched.com/event/15z0W
> 
> If you need something official, that's on TODO list. :)

Heh. Ok.

> > And does this imply that the file name should also include the gen infix
> > of one of the original compatibles (e.g.
> > "qcom,sc8280xp-qmp-gen3x4-pcie-phy.yaml")?
> 
> Since you already have here three compatibles, you cannot have one
> filename matching exactly all of them, so we already accept something
> generic. Therefore I proposed the common part - matching SoC component.

Yeah, that's what I was alluding too. As soon you add one more SoC to
the same document, the common part is no longer

	qcom,sc8280xp-qmp-pcie-phy

but rather

	qcom,qmp-pcie-phy

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
