Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FEA6CD342A
	for <linux-phy@archiver.kernel.org>; Sun,  1 Sep 2024 16:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bd973DwJG4g2UuBaoJHnyd5MQ0ABWX6MHKh2L2ZCZhQ=; b=vJcDySOKFuOd1E
	aZmBno/UR7Vfca0ZJ4RevCtXwcnNxIGJyt/Cb2p9ZH72TtfPOUz7+JwtVBq59xxWJmwgZra3PoNgN
	zCf/Z1PcJrBxP5gObsoaj9Ce9+a2KdZvMGPjcrNt32eNldhIpbmpF8ByMveyxibqlWPxshRXKw/q9
	wGZC0Y5pHY8MaRdbbaGFw07MSjg/ivhEvSYpQ62HqHedMB+FcXsM+XVsTjHmVS6zSnkK0l7nH2BHR
	qO4jh1TBZjTxHd1X2VaoT7bu1wDo5PkueVmhYCqTniHJSQfpasovew4BRyFiLEfglz1YcknxUG3Eg
	xzaRvHJyZycyY64bdHLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sknVk-0000000BxGv-2sN0;
	Sun, 01 Sep 2024 16:33:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sknVg-0000000BxCq-0Xv2
	for linux-phy@lists.infradead.org;
	Sun, 01 Sep 2024 16:33:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C6CD75C4B35;
	Sun,  1 Sep 2024 16:32:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B658C4CEC8;
	Sun,  1 Sep 2024 16:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725208382;
	bh=iMGDRvpGmErh3kT77LApW0C+MmED9uptTCxVciaFglc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qp0Dm8Xkyz6mVcS4CLaMgcdwI2IiOxMPJLS0MOSPfed0zjIYIUu82N2Y8pBciQppd
	 6Yu3j/FmCx5SGPd1jtQSwUnpOyBLiv6qo3+/Op0FTxP3CZCm4z3y3huJxF83Ov/Skm
	 T3enHKYTUF6118sa8SXSl2Pn8Dj+gz15PkKA+mHb0VIgGnLfki+DyAaRyTkfpl6c/h
	 pmuvOmDvWG8lUiGYn+k1jgWm2pzkNqTcSaAUum4q5U5/nlk2Dc3++Apu2hoTOaf5qv
	 lWyVG/ZOdIEqzWuKkCXko8jpwktL/UivpIIcliZBKoJCEl9fp6HXRUBCXQ4des7yLZ
	 CH2TIip3HFVFw==
Date: Sun, 1 Sep 2024 22:02:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v3 0/2] phy: qcom: qmp-pcie: Add support for Gen4 4-lane
 mode for X1E80100
Message-ID: <ZtSXNt5ZSrM2t5xK@vaman>
References: <20240823-x1e80100-phy-add-gen4x4-v3-0-b7765631ca01@linaro.org>
 <172495833400.405683.4328817324548517864.b4-ty@kernel.org>
 <4ab9dcb6-4a0b-493c-943b-5de05457c592@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4ab9dcb6-4a0b-493c-943b-5de05457c592@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_093304_232110_118125BD 
X-CRM114-Status: GOOD (  13.28  )
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

On 30-08-24, 12:01, Krzysztof Kozlowski wrote:
> On 29/08/2024 21:05, Vinod Koul wrote:
> > 
> > On Fri, 23 Aug 2024 10:04:14 +0300, Abel Vesa wrote:
> >> On all X Elite boards currently supported upstream, the NVMe sits
> >> on the PCIe 6. Until now that has been configured in dual lane mode
> >> only. The schematics reveal that the NVMe is actually using 4 lanes.
> >> So add support for the 4-lane mode and document the compatible for it.
> >>
> >> This patchset depends on:
> >> https://lore.kernel.org/all/20240805-phy-qcom-qmp-pcie-write-all-tbls-second-port-v3-1-6967c6bf61d1@linaro.org/
> >>
> >> [...]
> > 
> > Applied, thanks!
> > 
> > [1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHY Gen4 x4
> >       commit: 0c5f4d23f77631f657b60ef660676303f7620688
> 
> Heh, we discussed yesterday on IRC that this should wait.

I must have miseed that...
 
> Why do we keep discussing things in private...

This ideally should have followed up as a reply to this thread...

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
