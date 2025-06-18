Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF7D4C7115C
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 07:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHVkb/CZlx99Kf7NJw6MlqnQFZYwkmTp9Gt1XYtkzAg=; b=n9Le6LP+jpPP2N
	1fIy7t4aMUsGGsYmvUD6jxZbU+RHjnZ5HLLIDwE3qHsBla08Y+2hecbCkRgroRIZ4grpbe5unbCn3
	SJ/YQv+FcnBrroHN9LIfT4Y78xUxxqIlyGIXke8juIcknhFa1hU1A7oLDUNdGEW3ZiJNoirygQKiT
	CnmhrtTTLidv+aykQ05l0TwN0wN0fcJQIHfyTVLVz81q+1j4DzsgibqE4ukNCaP5DIpf6fXEGqeSo
	wAVvL4RIVd8R82CeO1bBB+AbDW984WzL4g/S31j5X4G0zETZ8F+e3DR/b1yYczKe/4ZnsYZcsY2CF
	oAlmjF3G0ku8pimR/jDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRnVL-00000009K5O-1GjZ;
	Wed, 18 Jun 2025 07:46:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmVy-00000009Cuo-4AIb
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 06:43:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BB3D65C5D34;
	Wed, 18 Jun 2025 06:41:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC384C4CEE7;
	Wed, 18 Jun 2025 06:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750228998;
	bh=fd+2ts9YZSqCMtTtB+KJGnMfppJyTCgdswl9cDa/m24=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gDL7wT/0CxbYwfzBUEP+pw7diIEWwhOuEIhAUeQfknVUdSTLNLx01GTqe8zmew6ds
	 AqpS0DmT395GVjVuE2qVIbcKLupHH+KFruP8FnIMVErWIaoZwUOChOwwjhhvkgf1AH
	 PSq7l93fucwtm63T6jTwOEg0wnVCE7FCfX1taLcRnLozhev0fDWQBrHHr+HDBOLdmj
	 Y/bG4xsKFQbYNFwp6bRwIPSciv+HehhabjCfertganPAQmrz/nSZiX+xQFcOc/EYaR
	 Nl/5E1g0Ev90jBl0+Wl6qq1+rNa+woV0tESFZdud1phcMpjYGwfPN8iwf6DCkxt9h9
	 w38qqNl8hakew==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1uRmVv-0000000022u-2Juh;
	Wed, 18 Jun 2025 08:43:16 +0200
Date: Wed, 18 Jun 2025 08:43:15 +0200
From: Johan Hovold <johan@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org,
	manivannan.sadhasivam@linaro.org, robh@kernel.org,
	bhelgaas@google.com, krzk+dt@kernel.org, neil.armstrong@linaro.org,
	abel.vesa@linaro.org, kw@linux.com, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	quic_qianyu@quicinc.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com
Subject: Re: [PATCH v6 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for qcs8300
Message-ID: <aFJgA2NmHzBI4hF_@hovoldconsulting.com>
References: <20250529035635.4162149-1-quic_ziyuzhan@quicinc.com>
 <20250529035635.4162149-2-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250529035635.4162149-2-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_234319_070581_C26B7564 
X-CRM114-Status: UNSURE (   8.92  )
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

On Thu, May 29, 2025 at 11:56:30AM +0800, Ziyue Zhang wrote:
> The gcc_aux_clk is not required by the PCIe PHY on qcs8300 and is not
> specified in the device tree node. Hence, move the qcs8300 phy
> compatibility entry into the list of PHYs that require six clocks.

Ok, so here you fix also qcs8300, good.
 
> As no compatible need the entry which require seven clocks, delete it.

You still leave the bogus "phy_aux" clock under clock-names, that one
should also be dropped. And you should update clocks maxItems as well.

And please include a Fixes tag pointing out the commits that added this:

Fixes: e46e59b77a9e ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS8300 QMP PCIe PHY Gen4 x2")
Fixes: Fixes: fd2d4e4c1986 ("dt-bindings: phy: qcom,qmp: Add sa8775p QMP PCIe PHY")

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
