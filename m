Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D07D2C4345F
	for <linux-phy@archiver.kernel.org>; Thu, 18 Apr 2024 13:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RKX+/ovqSshNPpwlBYJuaduISUtpr9/we2HNMVJWwak=; b=IOvjTJf0aY2nAM
	vDKiqLDUtvVAQsOajmrlZZxtY2KlfRCYqJqzIVCaTUfkpxT6TB3mSrNCk1+nnN7MzxyMPClIMyPU2
	D0o2bm29IGoj4iSNsAhjOZ63y8rPy6hZTItgH/bTqK+dGsAmwZNWbNtnEzj+SU5QzmghPVBfdaP3F
	leFm00nh0oO5KwsM3vyTAEczBPrDR5UbsJDiOVWIj3+MO34jSyiwLqENR8M8wZ/ATywnx0je71hbz
	W4LEqwU6VXuKGSDUGP98TVSXcwAgOchZVAKN7Si/VBFNequOuVYbd3snTvMHifHQGcuHJRU5OcOnV
	6I70EERnMZyuE3u+CDuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxRN8-00000002HWf-2JH1;
	Thu, 18 Apr 2024 13:00:14 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxRN6-00000002HVw-29zi
	for linux-phy@lists.infradead.org;
	Thu, 18 Apr 2024 13:00:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8EBE1CE1708;
	Thu, 18 Apr 2024 13:00:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8061EC113CC;
	Thu, 18 Apr 2024 13:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713445209;
	bh=vm4bIQBAxi4Xoz63tgQyruT6TXicEBFDFLnbQKnXuB4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r5M0Sa66zBazmQ0plp4CTA+za6eXf+bzoRotQB3uGFF8urAF1j9Cynhefyw7gxrpu
	 7cUPh/a+S5trV+8m1PE9SDLXn6G0km5qKpPQ5Z1RVa/cyttP8+nTZAYE7zVhn6tURM
	 lqurX97CHbjQ7wJJYWfnzCm+WaEOj4XFRw043MWFHpH96v6G2k6Zw+kdZY7bPI89Jb
	 mwUtWpzwSHgg11xyEOqezng+rb+wmPFFDqPTKTxDZE2W6fvp8uZ2zuGFKPMFzAtUrc
	 jRFKTCPWumPF/zDUyibBqpq4dGfDFVG8I/3vjFQ94RnHsPcFbSG7sqwABoLfaIu+YT
	 w9dJ6pSoOvebA==
Date: Thu, 18 Apr 2024 08:00:07 -0500
From: Rob Herring <robh@kernel.org>
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v3 5/7] dt-bindings: phy: qcom,ipq8074-qmp-pcie: add
 ipq9574 gen3x2 PHY
Message-ID: <171344517596.1015522.2277492006177883527.robh@kernel.org>
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
 <20240415182052.374494-6-mr.nuke.me@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240415182052.374494-6-mr.nuke.me@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_060012_806248_700B9FC7 
X-CRM114-Status: UNSURE (   8.28  )
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


On Mon, 15 Apr 2024 13:20:50 -0500, Alexandru Gagniuc wrote:
> The IPQ9574 gen3x2 PHY is very similar to IPQ6018. It requires two
> extra clocks named "anoc" and "snoc". Document this, and add a
> new compatible string for this PHY.
> 
> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> ---
>  .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 36 ++++++++++++++++++-
>  1 file changed, 35 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
