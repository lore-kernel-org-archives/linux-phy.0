Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8A8606A6A2
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 08:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gen0oCCx;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=a1Yq5IUJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Fp/Gs0y0IEsgzwpJknkMwQR+Oiu4wjYPUA9vfj69qqE=; b=gen0oCCxN5gh+8sSvaE6fB1Tdl
	qOg2OwEai7haNiC0eBDzrQxhWQJagXBUSa2pyuUobiiSNKLv5Sk84PsEunY5axFkfHwmtp5qib9O2
	3nzmJqp6hAlD5y6kBwqTgv/48r+fSOGRp2n4nzxG9DE05ePZgvo1jLOgkbsqI27xCT3Yg2GU3581A
	EbmosinVCb1H6Y5qOdeOG90zsvQLN44fJe93SsXXQI4eCtFgiFYOvavqghj579X3/3e8dwcPPRtBc
	WETT/WO5j7TWge2vUg9y9L1vj/rA2iC67v9EM+nPaUpEok8xSyVu5oDOxAD0KumkgHtEskW7Je76M
	JqKbvZ6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW8fW-000000099id-1KgU;
	Wed, 25 Nov 2026 08:47:58 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW8fV-000000099i2-06A5
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 08:47:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with UTF8SMTP id 5FCA242E10;
	Wed, 25 Nov 2026 08:47:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id 67F7A1F000C0;
	Wed, 25 Nov 2026 08:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795596476;
	bh=BoIN1YPmv8DT6xKw8t/C48kGStRshqPRywrtEu/9tJw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=a1Yq5IUJe5h2DOmnzMol/EHpXS/c7m73PJJ7A4ixGizh9qQlaXNc9cIv2gbKKJNEZ
	 YWXS2zZ+hvbEGuM+ujAJVM9e2EfrXsNjKgEAhthifSb+5jfiCzYvaWimZUYgYXlmL7
	 orQXbm2rbIKfkGx+lYz2NogM6WgJePltruEYNnUh152gmv3aCHd0gMxzyDRFJRtbaz
	 Y/Yt0o7y9OsMxmexCv+ti/tzVEJXqVrbn6J1BJxrcX6PKs+uMYpUaUb4IpKN8rJgU5
	 LZgqScUkOVOiKbNnDAnh4+u4Gcu6R/wWbWoZjzhFnOOg0qU+Df74tA7a8RRaWiyDqg
	 +qs9uDIGkNaww==
Date: Wed, 25 Nov 2026 09:47:52 +0100
From: Bartosz Golaszewski <brgl@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abelvesa@kernel.org>, Shawn Guo <shengchao.guo@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 0/3] phy: qcom: Describe the AHB2PHY bridge clock on
 Nord
Message-ID: <3e7tzpibli7hi3rb6fhrcfczndwwpjg7hlto5tajxwneap6bar@pj4dgukcl3gm>
References: <20261117-qcom-nord-ahb2phy-clk-v3-0-ce5ee1073208@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261117-qcom-nord-ahb2phy-clk-v3-0-ce5ee1073208@oss.qualcomm.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Nov 17, 2026 at 10:06:27AM +0100, Bartosz Golaszewski wrote:
> On Nord, the register space of all the USB PHYs (the two USB3-DP QMP
> PHYs and the three eUSB2 PHYs) sits behind the AHB2PHY_0 bridge, which
> is gated by NE_GCC_AHB2PHY_CLK. None of the PHYs currently describe or
> enable that clock, so clk_disable_unused() gates it before the PHYs are
> initialized. The PHY init sequences then never reach the hardware and
> the controllers fail to come up:
> 
>   dwc3-qcom a600000.usb: DWC3 controller soft reset failed.
>   dwc3-qcom a600000.usb: error -ETIMEDOUT: failed to initialize core
>   xhci-hcd xhci-hcd.2.auto: can't setup: -110
> 
> As a result, USB on Nord only works when booting with clk_ignore_unused.
> 
> An earlier attempt marked the clock always-on in the NE GCC driver. This
> series instead makes the PHYs consumers of the bridge clock, so it is
> only kept enabled while a PHY is in use:
> 
>  - Patch 1 adds a fifth "cfg_ahb" clock to the Nord QMP USB3-DP PHY
>    binding. No driver change is required.
>  - Patches 2 and 3 add a "bus" clock to the Nord eUSB2 PHY binding, and
>    Nord-specific match data in the snps-eusb2 driver that enables it
>    alongside the "ref" clock.
> 
> This should go into v7.4.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> ---

Vinod,

This series is reviewed and the only sashiko comment is a suggestion.
This is the final dependency for supporting USB on Qualcomm Nord. Could
you please consider queueing it?

Thanks in advance,
Bartosz

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
