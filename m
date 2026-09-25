Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2A72C9830D
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 13:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cd7GQfY9+Am73nU6MfIaEtI9SdCYFdXPr4CJhit8wnc=; b=KpHTJKvJNA+M6g
	Bji7viPOyz1P3pjWy8UKN1ZKoY9OPoOoTbESrawbgQsclzmNFhIxHltgVMIkzG3pSa0P/yuixrFJr
	Csb8XZZyNazLYLNkr2ZiEVeoT3l0c58pcrMqEMwJXa4vdC1rF3j1MoaOOCEyIryS8OBMNve3JiL8F
	fvQcR6adIAHv+rinEZocOwrcb/jcn8EF1j6QLgBR0jGdQ1oI9mRxFcgoneIFDYLtC7XBIlz27Pt8e
	YDxTi4bemse2SJ9uHru7x1sRH3Zj8by3STiCN/kQmNUIWPzFDBs9OVAvcXrypNWRpN1swDWdBMVk3
	TQwZTgFzdL+OKayBuTnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA61B-0000000DQvh-2Hcj;
	Fri, 25 Sep 2026 13:31:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA61A-0000000DQvL-31tS
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 13:31:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E971860230;
	Fri, 25 Sep 2026 13:31:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D2A21F00893;
	Fri, 25 Sep 2026 13:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790343071;
	bh=/BWoJjOrHMAdBeXgBB8M/kgJ5cTz5y5hKqJZbYXGsGI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=btZN1r5WoiqMAlMgzyXg4HEJ3VOeY8Uk1UVfp8e7cjwcPzUE9b6MyMdbQ4RtP/UJW
	 X+rjjFCog0/USMjb1VRmYBNTRETy/Yy7k+2o5xedWFP3u3SIlZtfew9olb9qFQNWl4
	 dyMKfni48Zstr54gpzmaVzdd/OgAGods9ZBJWHu7oEQyZ1RKANM0388msUVw8Rf+TV
	 o8eppLOaL3x9JYEsH8fX9JiuWeS9HX0EPrmvDi3wA5CwBYHld3g+wiwk07zPNBeYc2
	 CkLujpayJPSTvPWhfmOPLFUXSNFdJOp4xPQ8w8QHWOH5SALGOlwEryt6gTCqfFAHp5
	 0Px5S+VyLgrmA==
Date: Fri, 25 Sep 2026 15:31:07 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@kernel.org>, 
	JC Kuo <jckuo@nvidia.com>, Thierry Reding <thierry.reding@gmail.com>, 
	Wayne Chang <waynec@nvidia.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: tegra194: Add compatible for
 Tegra238
Message-ID: <20260925-new-academic-lyrebird-ce1a52@quoll>
References: <20260921-tegra-phy-v1-0-83466bf9a7cd@nvidia.com>
 <20260921-tegra-phy-v1-1-83466bf9a7cd@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-tegra-phy-v1-1-83466bf9a7cd@nvidia.com>
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

On Mon, Sep 21, 2026 at 01:14:45PM +0100, Jon Hunter wrote:
> The Tegra238 XUSB pad controller is similar to that found on the
> Tegra194 and Tegra234, but only has three USB2 ports and three USB3
> ports.
> 
> Add the Tegra238 compatible string for the XUSB pad controller and
> constrain the binding so that a Tegra238 device tree can only have three
> USB2 and three USB3 ports.
> 
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---
>  .../bindings/phy/nvidia,tegra194-xusb-padctl.yaml  | 38 ++++++++++++++++++++++
>  1 file changed, 38 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
