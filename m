Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A23D1C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 18 Oct 2022 15:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+XbBpPdWljwUegYy3kN3MvrqT5MC/tTT5ZloeN9fsI=; b=3rpg3j9MXN1e0C
	vfjSaHgWBkJ2Ent6mUJCg0OHgeOaiqEPKdTk4V45lQ7RahGM3dPc1fZa1T6b/+ICoKo8PnJc9qzsI
	Q9dT+UMFfaH3sAqcQZZUpjzD++w3mwfhRo8WenYT6wIGu0k8eeyKoYD1NJP0XlzUqWw9BB+GkmlK9
	YuBjkTF23rHIX98M1H6ZrOl8thrPO6rmPHBcXtJuZirk4CuY/k5a9GVgqqcEN6icX7vpsNyOCzwJz
	LlEHZUgWCPpYGAtpZQU23b4k4YSz+NM1/Tlz9tgHDmGAAXDSAcLv9VwwKKxX55sZi4j9mqnS17Lv/
	zLgfwCI/sMigx24z3gew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okoqj-007xjf-01; Tue, 18 Oct 2022 15:49:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okoqf-007xh6-K7
	for linux-phy@lists.infradead.org; Tue, 18 Oct 2022 15:49:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 02CD661553;
	Tue, 18 Oct 2022 15:49:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD369C433D6;
	Tue, 18 Oct 2022 15:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666108184;
	bh=faiWi9Fv88r87TFCv9RWuPCZH2dQowLZP52ycV61wcM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GXjx2sByRNEdhb9E81G9wveBcyZU5RAVWNT2tAg7ss4TCz5bSz3cAX56ZMzw7CjB+
	 l/bPMBR2EXaCaAEd1tqNoFCalHktyoFzuQrX9KNcAFiNBgTRpcHia6tNnYPnApkcll
	 5weOkIB0ZgvvOPHPWir4g8nUUS2Dmwr4fn4HIuQ5tIADRsdanC0uacof2qY4g43vd0
	 mDpLeqvSJJG3Z8engRbEeUfahReaAthQR7JpFHCf2qJKys8zgD9fh4hD8p2+9kk4R2
	 VF1I8iHvhxUbtmuhXjupw1Pt9sgCy0E3a7j2hFx9sIrf9YgGyF5vQXZFUa2gevJktL
	 rVIw9tTGyaelg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1okoqT-00065D-9n; Tue, 18 Oct 2022 17:49:33 +0200
Date: Tue, 18 Oct 2022 17:49:33 +0200
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
Subject: Re: [PATCH 09/15] dt-bindings: phy: qcom,qmp-pcie: mark current
 bindings as legacy
Message-ID: <Y07LDeMvAsiceOfO@hovoldconsulting.com>
References: <20221017145328.22090-1-johan+linaro@kernel.org>
 <20221017145328.22090-10-johan+linaro@kernel.org>
 <5e153119-f853-ff57-8277-2d782e255be2@linaro.org>
 <Y05Qf2nDCIVg23Zh@hovoldconsulting.com>
 <39a7d2d1-06c2-4002-e222-54c24c5eb31f@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39a7d2d1-06c2-4002-e222-54c24c5eb31f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_084945_784128_BF30C4E2 
X-CRM114-Status: GOOD (  32.10  )
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

On Tue, Oct 18, 2022 at 11:27:35AM -0400, Krzysztof Kozlowski wrote:
> On 18/10/2022 03:06, Johan Hovold wrote:
> > On Mon, Oct 17, 2022 at 01:15:45PM -0400, Krzysztof Kozlowski wrote:
> >> On 17/10/2022 10:53, Johan Hovold wrote:
> >>> The current QMP PCIe PHY bindings are based on the original MSM8996
> >>> binding which provided multiple PHYs per IP block and these in turn were
> >>> described by child nodes.

> >>> In preparation for adding new bindings for SC8280XP which further
> >>> bindings can be based on, mark the current bindings as "legacy".
> >>>
> >>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> >>> ---
> >>>  .../{qcom,qmp-pcie-phy.yaml => qcom,qmp-pcie-phy-legacy.yaml} | 4 ++--
> >>
> >> I don't think we should rename anything as legacy. These are "normal"
> >> platforms, not legacy ones. SM8450 is not even that old.
> > 
> > I'm not really referring to the platforms as legacy, but the rather the
> > format of the bindings. The intent is that by marking the current ones
> > as such, people will not base new bindings on the old scheme.
> > 
> > There's no problem supporting both schemes in the driver also for the
> > current compatibles, but expressing such a deprecation in DT schema
> > sounds like it would be painful. We instead decided to simple draw the
> > line at SC8280XP and have future bindings be based on its binding.
> > 
> >> The recommendation is to keep names matching the compatibles, not adding
> >> some legacy/newer/newest suffixes.
> > 
> > Yeah, I know, but that's not what the current bindings do. And if we
> > keep 
> > 
> > 	qcom,qmp-pcie-phy.yaml
> > 
> > and add
> > 
> > 	qcom,sc8280xp-qmp-pcie-phy.yaml
> > 
> > then I fear that people will base their bindings on the former rather
> > than the latter.
> 
> Then how about renaming this file to something matching the oldest
> supported SoC? Like: qcom,msm8998-qmp-pcie-phy.yaml
> (I don't know which one is the oldest there)
> 
> Or ipq6018 as the first one appearing in the list.

Sounds good. :)

> > I could also rename the old schema file after one of the old platforms
> > platforms therein (e.g. qcom,msm8998-qmp-pcie-phy) to make it sounds
> > less like a generic schema for new bindings.
> 
> Oh, we thought about the same.
> 
> > 
> > That is
> > 
> > 	qcom,msm8998-qmp-pcie-phy.yaml + comment (for current bindings)
> > 	qcom,sc8280xp-qmp-pcie-phy.yaml (for new bindings)
> 
> Yes, please.

I'll go with that then. Thanks!

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
