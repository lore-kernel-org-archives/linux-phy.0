Return-Path: <SRS0=xS6O=O3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0FF6C433FE
	for <linux-phy@archiver.kernel.org>; Thu,  7 Oct 2021 08:56:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C71D560F41
	for <linux-phy@archiver.kernel.org>; Thu,  7 Oct 2021 08:56:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C71D560F41
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/T4Mc+Tc4NeCgnL+6AznOuNQnfxmJ2GGLGDeNpzN0wM=; b=Sjk68s8pwrrHGQ
	YlBvtgqHcX9IxI80kP2tevM0O3Kl7Q13r1kstBlb4+ZwLKcWXkfjemVDIFUfx7o/b/v1ba3wJrMrc
	A5iAkCtLWttZ9qWROcOqRl3EMZgqT5ds2uRvRphiEsENK5g78ae4MpRMabnzRhFIoPHUffpk9+4LU
	y0zcC7GvpQk7lJqk0pcqPh+Is+Jk1lzUCRXtccEsX2gPu20CppyQtj75zRMPg2y/oa3pk/Ds4c0/d
	kGfQsfk1mGYOnmWoMzA9bzeDAHvxrGnUY62dlEMJrv1PDXNL+CgSiHK9fyKhSLvQCMfpLrSTRNSth
	oh3wAmylRejF+QnK4jXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYPCz-00GdRV-CY; Thu, 07 Oct 2021 08:56:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYPCw-00GdQR-Hq
 for linux-phy@lists.infradead.org; Thu, 07 Oct 2021 08:56:55 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id ADB0560F59;
 Thu,  7 Oct 2021 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633597013;
 bh=tGpzmiv6pVVsRqKqVpTwy7imiBRGTLNRryr1xxIDdg4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hhYS54kF3UYSF0kSXd3keMiH+8Lv0ca2K0NQ9OxOrSDq3VxfPM6Y6tcz07d0Jt524
 MNXFs4OKPPad7AB9Dz5ujjdkXsNYK82btH6KA7F4c8vcPffWDomLoXzDUx+L2hB7EC
 J8Oz2kOpGTsfcsFadb9PZSTrWuus/WkQnugpbIdhl6dIQjofY2Iq3u0ylpxipE79H8
 03CdidP0g7tI3RDkh2iyk11dBDK3vLaBt5YMLMcGtpm2P4o9wt/baLwerapl+iCf/l
 loBIdt/FPzqa9li8UtzErLcot5StnFgZeIaKjFMAEgW52CcXzmIIKSkj718eHkQfct
 4CylOsvkl2u8A==
Date: Thu, 7 Oct 2021 14:26:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Shawn Guo <shawn.guo@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/10] dt-bindings: phy: qcom,qmp: IPQ6018 and IPQ8074
 PCIe PHY require no supply
Message-ID: <YV62USm8pSvAKdvo@matsya>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
 <20210929034253.24570-3-shawn.guo@linaro.org>
 <YVvx9jEGS3g9LD8X@matsya> <YVxzdiVKWOF9AVVV@ripper>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YVxzdiVKWOF9AVVV@ripper>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211007_015654_626273_74AC08FC 
X-CRM114-Status: GOOD (  10.94  )
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

On 05-10-21, 08:47, Bjorn Andersson wrote:
> On Mon 04 Oct 23:34 PDT 2021, Vinod Koul wrote:
> 
> > On 29-09-21, 11:42, Shawn Guo wrote:
> > > The qmp-phy driver suggests that 'vdda-phy-supply' and 'vdda-pll-supply'
> > > are not required for IPQ6018 and IPQ8074 QMP PCIe PHY.  Update the
> > > bindings to reflect it.
> > > 
> > > While at it, also correct the clock properies for IPQ8074 QMP PCIe PHY.
> > > And as the result, 'qcom,ipq8074-qmp-pcie-phy' and
> > > 'qcom,ipq6018-qmp-pcie-phy' share the same clock, reset and supply
> > > bindings.
> > 
> > Acked-By: Vinod Koul <vkoul@kernel.org>
> > 
> 
> I think it's better if you take the two dt-bindings through your tree,
> so we avoid any potential merge conflicts related to possible other
> changes.

Okay picked up the binding patches

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
