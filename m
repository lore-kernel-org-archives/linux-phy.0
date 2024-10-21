Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E0EFD0E6C1
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 07:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AdaPNo3xi0ED1S3Atubp5XxXIiJV2aLuufWGN/06XhE=; b=Q/B3H8hWRZKYbR
	6kZ4pIkXmbgzDcOYEVlSGwMpO4CQ9SWdi8cDMMhyB5IqOpmB1cP+yPcCrOK1LBjp5Iq50OndyJxtb
	eWFx7jbnskRDGko2IGMdJQrhiOjnpVOMFA+DL2sAH2Ugm1SnNc0oqTFd6/26FJeoLy+/LcryC8Nxg
	WADuv1co6p+8bWSl3L1GIL0brzH/EAtUZ6CTxXiHEz3/dgG2zU5cX3dMczcWcgaHZGRTnoY4/HFSL
	oq6jhLat93XV5+UxZ6I7SPY1sbwz3c5DAsYaZUkRVr/Y81pI/D6wYyQGx/Dq9KjLwhmRvOz4ezioY
	9JpwB1fDwZXDfpvkZEMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2n2X-00000006PkE-3NVm;
	Mon, 21 Oct 2024 07:41:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mue-00000006Nx1-2sNY
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 07:33:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 27E135C583F;
	Mon, 21 Oct 2024 07:33:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43732C4CEC3;
	Mon, 21 Oct 2024 07:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729495991;
	bh=4TW3dWixNNFpQmCA9x5rxesnC5/3OcngBRf8IQiTnNQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hEkm3zepBCBryFT3g9Jo9z9pCYg1j1LEX8VwvV6DWA3eqeh2pvPbBaqfDvQcyRnu8
	 yRcpvZMStsaWjpY6BbJm0VspYPb5GnVl9CL7681pew4XiNwY99jy9IAa39UizeTMID
	 IimIiV2p0oTwG5uvGEUtFdleVRFe3NyN4jYoiYKZyLDghS8SeKDA5u7dXIryq7wbkx
	 HbfTf5eq6npTWYbxWbckCIYSHMWYXv0Cdimf9gTnWcC97H8i2Nlp/Ti0frr0bfx0fH
	 7P3r9sT0hKFq028Qw40L3HgVsv/cVWo0rznIPv+qTwNFqZ55DDOIagbWsLvyq3aaB5
	 33ecVGmHttTPw==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t2mum-000000001xk-2Lu1;
	Mon, 21 Oct 2024 09:33:20 +0200
Date: Mon, 21 Oct 2024 09:33:20 +0200
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Fix
 X1E80100 resets entries
Message-ID: <ZxYDwAUNV5Jhar4I@hovoldconsulting.com>
References: <20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v1-1-f543267a2dd8@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v1-1-f543267a2dd8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_003312_789530_D2784916 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
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

On Fri, Oct 18, 2024 at 04:37:36PM +0300, Abel Vesa wrote:
> The PCIe 6a PHY on X1E80100 uses both resets in 4-lanes mode as well.

Again, this is a bit misleading as PCIe6a is using the
'qcom,x1e80100-qmp-gen4x4-pcie-phy' compatible in both 4-lane and 2-lane
mode even if the original dtsi got this wrong.

PCIe6b will be using 'qcom,x1e80100-qmp-gen4x2-pcie-phy' as that one is
a 2-lane PHY.

Perhaps you can rephrase this so that it doesn't sound like you are
using compatibles to configure PCIe6a?

> So fix the resets entries for it by adding the Gen4 4-lanes compatible
> alongside the 2-lanes one.
> 
> Fixes: 0c5f4d23f776 ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHY Gen4 x4")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202410182029.n2zPkuGx-lkp@intel.com/
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

Patch itself looks good.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
