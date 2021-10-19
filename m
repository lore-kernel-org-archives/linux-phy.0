Return-Path: <SRS0=JtrO=PH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC4FC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 19 Oct 2021 18:08:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B26D61373
	for <linux-phy@archiver.kernel.org>; Tue, 19 Oct 2021 18:08:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6B26D61373
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNT31Z7W8YBjT0oR7vkEjOgzBfcIuDUeR0MggMseybA=; b=hz/s0vYB1JQs0s
	XPOfrpRWCR7VPL1XZa1OyygvUVW5j6xoDaIdGrIfb8iYSJdtzauTotUaVjbS1eIooz/VlkBp1B01P
	KsOySqG5jWoOpjUA4gKCPp5kUyzJQAZkoRQvhRdZTxCO6djdMjZr6ZW4siKIiltUVTfuNMyPpshSj
	HK2sj5gs1q/3GCzZerhqSH0eEja6O7yCQ5h7eeVJEjE7Lho40yje0vUL9EXS2tiHucr/8g7jZvWCl
	KohntwiKBwjvEp3/DKbMCeR/kRBo8vy3YGuVNfWHbNpnm1Jgi5BCqg+X6PIhB61exQ5RyhI6HPmmn
	5HM0gDZllhE07fEA22Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mctWp-002NAJ-Ou; Tue, 19 Oct 2021 18:07:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mctWm-002N8Z-Nj
 for linux-phy@lists.infradead.org; Tue, 19 Oct 2021 18:07:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8A16860FC2;
 Tue, 19 Oct 2021 18:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634666876;
 bh=ugfD5oilf5sZAV+LUYkHhfUlgC/YPCB6tjBtG4YOD0M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uvnnD4OI+qKD9QmyuovZJzI+yKN041k3a+/rJK6zsDyjiEMQbOJxl2ZuDLF0TmQqn
 wv9NtGeXIpRbKp12+JvTnxuKGAiBbYDAnAGtBmfMFLRD5eCl6wTGX4ASH6fx+/zFyG
 VE26MCWV+Vaf1/OCJjC7diB4pSAStOI3wz3V/vjB9XWvsUDWasgD985mbJ5Anb7Xe3
 6ZDMjK1kObcgNkLaGzfEqQCtYyuLX8o2CaR2O+twDHxzuoNmjhfg7oxgHXAOT0IA5x
 u3RD3xBZG7NiQqS62YYd7r2EbImtIl80PpBNFzpVYDa3UeqrOVS5tXnX+eNtOC/q+p
 hOfjaY+MpsZKQ==
Date: Tue, 19 Oct 2021 23:37:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Shawn Guo <shawn.guo@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/10] dt-bindings: phy: qcom,qmp: IPQ6018 and IPQ8074
 PCIe PHY require no supply
Message-ID: <YW8JeJ6C9SzcGaqS@matsya>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
 <20210929034253.24570-3-shawn.guo@linaro.org>
 <YVvx9jEGS3g9LD8X@matsya> <YVxzdiVKWOF9AVVV@ripper>
 <YV62USm8pSvAKdvo@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YV62USm8pSvAKdvo@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_110756_835943_43A9ABCC 
X-CRM114-Status: GOOD (  13.47  )
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

Hi Shawn,

On 07-10-21, 14:26, Vinod Koul wrote:
> On 05-10-21, 08:47, Bjorn Andersson wrote:
> > On Mon 04 Oct 23:34 PDT 2021, Vinod Koul wrote:
> > 
> > > On 29-09-21, 11:42, Shawn Guo wrote:
> > > > The qmp-phy driver suggests that 'vdda-phy-supply' and 'vdda-pll-supply'
> > > > are not required for IPQ6018 and IPQ8074 QMP PCIe PHY.  Update the
> > > > bindings to reflect it.
> > > > 
> > > > While at it, also correct the clock properies for IPQ8074 QMP PCIe PHY.
> > > > And as the result, 'qcom,ipq8074-qmp-pcie-phy' and
> > > > 'qcom,ipq6018-qmp-pcie-phy' share the same clock, reset and supply
> > > > bindings.
> > > 
> > > Acked-By: Vinod Koul <vkoul@kernel.org>
> > > 
> > 
> > I think it's better if you take the two dt-bindings through your tree,
> > so we avoid any potential merge conflicts related to possible other
> > changes.
> 
> Okay picked up the binding patches

This failed to apply for me, can you please rebase and send

Thanks
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
