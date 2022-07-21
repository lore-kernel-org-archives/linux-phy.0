Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A35FCC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 21 Jul 2022 20:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=WIl28dnFeT+ZoVszqRbVnfVmQdh3kjjOU0BFtNp1e2k=; b=aOzNcFyNl5FBnA
	lm2JtcUrmUOgS+oDs+6rdIO3I2bocRd5NNO2KOVS7Zb+4DfH0EAYyiBXXmVd2kK/ycz6p+E91ikQ1
	Hultrtp/sgdYH8ZWGuWLtBnkXApHl6hdGUsKLHKfKvpOUFNXRg9GxMwJ8nonCGEJJ1BIHMcQYhbQ4
	1zsrfLbSnFkDf5Z7jJZ79gDcWbXglmbeBrZjBgtqGkMeRwF3JYl69BsDf7BemdcRMs4KSiVFiETDG
	ZHMcoZiJkvNj4jxlkPk+8fBxmxx8v0XSzhVLjc0cScvzcp5grZnuJFhFLR8sOfA+h28dQGlN7mlQR
	kzNhSnwPnxOod9wW8ZBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEdFb-00CJr8-43; Thu, 21 Jul 2022 20:58:27 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEdFY-00CJpa-AH
	for linux-phy@lists.infradead.org; Thu, 21 Jul 2022 20:58:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D9A34B82671;
	Thu, 21 Jul 2022 20:58:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71230C3411E;
	Thu, 21 Jul 2022 20:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1658437101;
	bh=H/aHhtlRLOeWCCQ5QG+qxA0GsTmdnIKgv+5n5V0Q6n8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=KLeVB7ABm4ecgcmx0viupligXKNnNx1xb7evo72pn3Zlb4f9eDbW8miXjfzrZzyoE
	 FRiZz2NHq5lMMXydznLM7Q7iz+GaZAz8bIarL8okiQT673X1g0Wj/itVgSQrKUVjZS
	 Ww/Sd1cwfSQuLKvqe4oz5WZuRpcOyiOkRbRtp1aFR12hbBzDAvbGF6iN+4IAuJ0P18
	 xxyjw3TAuOlcTEOauJkLKoUVcL/AB3FBE6OCKZImLVtRjPmYzO6C64O4WgFgwzwgF6
	 daVATJG/L3yJWqYc4RcpjVzTk//ao+3Vun3a2HC7TXVVW/OAiSwydS/vidV7KXF892
	 ZUFONRMtOpNLg==
Date: Thu, 21 Jul 2022 15:58:19 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"kishon@ti.com" <kishon@ti.com>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
	"lars.persson@axis.com" <lars.persson@axis.com>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
	"kw@linux.com" <kw@linux.com>,
	"linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
	"kernel@axis.com" <kernel@axis.com>,
	Moon-Ki Jun <moonki.jun@samsung.com>,
	Sang Min Kim <hypmean.kim@samsung.com>,
	Dongjin Yang <dj76.yang@samsung.com>,
	Yeeun Kim <yeeun119.kim@samsung.com>
Subject: Re: [PATCH v4 3/5] PCI: axis: Add ARTPEC-8 PCIe controller driver
Message-ID: <20220721205819.GA1753070@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <226ac31e-2ac4-cb73-ab67-62f86d5e5783@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_135824_531236_B94EC6A1 
X-CRM114-Status: GOOD (  19.20  )
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

On Thu, Jul 21, 2022 at 11:04:00AM +0200, Krzysztof Kozlowski wrote:
> On 20/07/2022 08:01, Wangseok Lee wrote:
> > Add support Axis, ARTPEC-8 SoC. ARTPEC-8 is the SoC platform of Axis
> > Communications. This is based on arm64 and support GEN4 & 2lane. This
> > PCIe controller is based on DesignWare Hardware core and uses DesignWare
> > core functions to implement the driver. "pcie-artpec6. c" supports artpec6
> > and artpec7 H/W. artpec8 can not be expanded because H/W configuration is
> > completely different from artpec6/7. PHY and sub controller are different.
> > 
> > Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
> > Signed-off-by: Jaeho Cho <jaeho79.cho@samsung.com>
> > ---
> > v3->v4 :
> > -Remove unnecessary enum type
> > -Fix indentation
> > 
> 
> Thanks for the changes. This starts to look good, however I am not going
> to ack it. This is also not a strong NAK, as I would respect Bjorn and
> other maintainers decision.
> 
> I don't like the approach of creating only Artpec-8 specific driver.
> Samsung heavily reuses its block in all Exynos devices. Now it re-uses
> them for other designs as well. Therefore, even if merging with existing
> Exynos PCIe driver is not feasible (we had such discussions), I expect
> this to cover all Samsung Foundry PCIe devices. From all current designs
> up to future licensed blocks, including some new Samsung Exynos SoC. Or
> at least be ready for it.

I would certainly prefer fewer drivers but I don't know enough about
the underlying IP and the places it's integrated to to know what's
practical.  The only way I could figure that out would be by manually
comparing the drivers for similarity.  I assume/expect all driver
authors are doing that.

Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
