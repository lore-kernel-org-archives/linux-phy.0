Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86470D0E6D1
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 08:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uxUszgR4jWhPBs92gwJWgzeTulKk8vWz5IBW79p8sU=; b=XiEe86Zt3QnKxr
	9nEDaChfroI/zr7o3ZSrJftqwt4onHeYolieQCyc4bvp7O6IDUk5FhskQrumAl0MzFu/bGAotExFk
	ltSc03U5jlY8veCjN0Wf/9fsCkdqTIc+wdFKCDn03EJbFPVGtliO7Ss+cBigua3Tw9UFMGXHkw3Cy
	NYEVETnNpTvBtsr0yVWHyTDL7W9mU2hfWLditT1GbGZb+zItCqIKG513/0iVByjliW7hgz9peofAO
	1qr9m85Y4HPo1sMzvNnDRcZdrx+C/mkHUtIu8sJDv6AzyN4xrhGhWkBc9J7Qt0ADCHs58LM24PZ8U
	soRO9yudfhQDJWdQTooA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oGU-00000006dz0-49n3;
	Mon, 21 Oct 2024 08:59:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oGR-00000006dxy-1XED
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 08:59:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 454335C5B59;
	Mon, 21 Oct 2024 08:59:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 543ECC4CEC3;
	Mon, 21 Oct 2024 08:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729501186;
	bh=PH3c7sNRlTJQ8UrMesvwHDTPplIjFX9uGGS2GepOphY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KgPpQAztCmoZykb3o5x0lzRd4ouldK7IOtBUBz104yoqChexZnNU2D9BfEwsH7HMn
	 ZYab+IFFin0h6Fc5LOC1Hu6+Ltu7ZxqjWq53tf1xneDsK/CJx6RmWkgLXGADHy7Hn0
	 5lsmTvLNLFlyz+NyybuUrprYgFzDmorcT1gPzz/JENfqQ+0x018NoL8KT6xITo2kXt
	 cYMOH3NpwZqRL5gomgWqwcz4tZIHHT6biZi2elpEVLRv4LQBmPy5siQaJGLvl2nF9V
	 B6cvpqPalcDTuWit3eJ4AxgJ7dei3M+/O5UusF1kAAb0+XO6xcyT20zdn94yGm/0LF
	 7ziQtXW2xyN+w==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t2oGY-000000004GJ-0biB;
	Mon, 21 Oct 2024 10:59:54 +0200
Date: Mon, 21 Oct 2024 10:59:54 +0200
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
Message-ID: <ZxYYCvwTn5V2cw3m@hovoldconsulting.com>
References: <20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v1-1-f543267a2dd8@linaro.org>
 <ZxYDwAUNV5Jhar4I@hovoldconsulting.com>
 <ZxYWiwMzmU6wneu/@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZxYWiwMzmU6wneu/@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_015947_470808_981AF293 
X-CRM114-Status: GOOD (  19.48  )
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

On Mon, Oct 21, 2024 at 11:53:31AM +0300, Abel Vesa wrote:
> On 24-10-21 09:33:20, Johan Hovold wrote:
> > On Fri, Oct 18, 2024 at 04:37:36PM +0300, Abel Vesa wrote:
> > > The PCIe 6a PHY on X1E80100 uses both resets in 4-lanes mode as well.
> > 
> > Again, this is a bit misleading as PCIe6a is using the
> > 'qcom,x1e80100-qmp-gen4x4-pcie-phy' compatible in both 4-lane and 2-lane
> > mode even if the original dtsi got this wrong.
> 
> But the lane config within the phy driver differs based on the
> compatible.

No, it differs based on the value of the TCSR register.

> > PCIe6b will be using 'qcom,x1e80100-qmp-gen4x2-pcie-phy' as that one is
> > a 2-lane PHY.
> 
> Wouldn't the PCIe6a also have to switch to gen4x2 compatible on a board
> where PCIe6b is used?

Nope, it stays the same (e.g. as the hardware block is the same).

> > Perhaps you can rephrase this so that it doesn't sound like you are
> > using compatibles to configure PCIe6a?
> 
> But currently we do configure PCIe6a based on compatibles.
> 
> What am I missing ?

No, as we've discussed in multiple threads already:

	https://lore.kernel.org/all/ZwPDxd9JJbgDeJTi@hovoldconsulting.com/	
	https://lore.kernel.org/lkml/ZtG2dUVkdwBpBbix@hovoldconsulting.com/

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
