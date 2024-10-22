Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8C11D1CDA3
	for <linux-phy@archiver.kernel.org>; Tue, 22 Oct 2024 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPUH5CFoHbqr81gldJTk39tDNA8/I4RAa2QHd6/Wvw4=; b=vK9YPz+U/vnwHN
	Y5Pn+9+yJ1eL82MAu3Lcrzj1H+8e6V5UO6ClhuYgd0w0CjNbG3s1G9SWixrwbJp5nygjKgixiphh/
	uSjQZzTfFpJcU+ZRjKCf7DH58PEtOR1WECA1lMy3ub5wkVQBB65v81/iQswtCzqQtrpVi84qx/CIV
	Nj2mOlvKgWAmtbp8nG7CVhtYbl6pwLEZZwtBocm1KQxLLTAEvUWO324xXv+DfAIL7yGmuS+EePDdW
	ZZDzL1qcjMfIsopzuFdUos5k21lbs1bVJjuuB4ZEpAFyUpZDlfIK/BvFzKKIStJeYEKYwMenm6t19
	SZFCF6wy6HqQhbyxc5Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t37nB-00000009ieI-1Ukh;
	Tue, 22 Oct 2024 05:50:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t37iJ-00000009hxI-2SD2
	for linux-phy@bombadil.infradead.org;
	Tue, 22 Oct 2024 05:45:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=PCezPWeNS4sobF12gRJ+E8IWGOoCesIJ3Sx9tY4qRWY=; b=NbmF5ydKhQM1Jw6cfR7Kxqd1Dm
	F3VL92ut8Z3hw75GQ9S9uR0XTfzk4IKNRj+TKA+1L9xBX5xwTyAG7gcNLW2nUczBokNFLBy7Y00FW
	4Ud/BOoAlNtg2b4JykBzjO87CMHvIeHk+LG/EizmrI8ceV/lk/E2cIpMO2EVTWmmo5+Z8OrqQ1FPx
	b4NcqYeMpXBb/ZCEkvvFGSRto5XMdm89aQ0l1vV/fyGMA35N/u7/PfFPYh08ZHtNbRowRjpN/djNU
	Dn3HxIZFUssQMF2mc7xc0kLe5ByXSBB4EmM78E1RvJYop6l+Oyu2oc2U1KFGe3EhZfaXIOxGMF6Fr
	3wzZF5Qg==;
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t37i9-000000088I8-2lGP
	for linux-phy@lists.infradead.org;
	Tue, 22 Oct 2024 05:45:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 63965A439B5;
	Tue, 22 Oct 2024 05:45:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF4DAC4CEC3;
	Tue, 22 Oct 2024 05:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729575937;
	bh=Nda+QGcrrYhxDlDk8aov3JtGDNSWzbu92v6mmZYkIhY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N3/fPyxwgALqjM8oTiXjGvSshq0o2+XjXTUtapmOoZ9kOA+JPCoCBkjUyGKzo8lxx
	 wNrO/3vOaCHdHcM6qmdgkHJdwhG5YOddC8P9M/rLcYTNMZaVWB107VRTaiyqYzQPNl
	 9sDBYtA6Hyvrz9U0Hxp5TBOX0t6oUpze0FBC7Un/Ysb2quC9eV2sysAbD++nlDBT9p
	 nXYSxIh2RZLBs11ZmwyzKys0yKe6Mg/iVloKo/5kzIXQxrte9yCTT/hE6EmVy6Aheo
	 1VVUw+t2K9Dn4bbBdbsj35vtCCPYZypVJz4PuXrVfyQ8IgbHi7BOShVEWqfGIX2XUa
	 cNvfkIuQmAtfA==
Date: Tue, 22 Oct 2024 07:45:34 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 SAR2130P compatible
Message-ID: <6ntsgzceya46cdxgqvflkirmbjpxdltc627aa6ehv7lyo3dryu@ledk7jg25m6h>
References: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
 <20241021-sar2130p-phys-v2-2-d883acf170f7@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241021-sar2130p-phys-v2-2-d883acf170f7@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_064542_938278_D2740C89 
X-CRM114-Status: UNSURE (   8.32  )
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

On Mon, Oct 21, 2024 at 01:33:08PM +0300, Dmitry Baryshkov wrote:
> Document compatible for the QMP PCIe PHY on SAR2130P platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
