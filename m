Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1D78C71135
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 09:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGaDh6ZJnm5eSULzukz1cbg7e+TvFZ+Z5v69nweNGgA=; b=X0Mp/MBbxjlPbe
	/S25OpVQYLbJn/rRHupHa+8DlW0yfn6W13NHmO4dZc9x+kY8EZFda6mRbiwfcgmNDBAa4LxXoMuYw
	7ME1Zg/aROOS+B/77/yVYOfvPgAnUz1Ijd8tKCMcdrxs7Qzhgi5axcub9t9Z6y/EtcTLsZ4F/+TH6
	LW+d3rqqPAXzPD4vDrRJDBgeDiZXKyyXi66KfnQ1thJYZiOwVcPyJunVn08sl80X+8qtYzIT1HAxS
	0jNEZLmweJ4XOnX7DiHItnoxYt5RrPOy/Oq8OsDtW/eLl3Qiu/ljMrBfUnbCFm3K1DaRVPLNxfVli
	RsoWjPNGMiurb+btT52g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR5nP-00000003sQO-1h62;
	Mon, 16 Jun 2025 09:06:27 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR50b-00000003lUw-0yZa;
	Mon, 16 Jun 2025 08:16:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A765C60008;
	Mon, 16 Jun 2025 08:16:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4611C4CEEA;
	Mon, 16 Jun 2025 08:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750061760;
	bh=MzI1E+oOIoSk80d4S3TvWsn/IU5ID9KI4c1rk+PvR4c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YAsx8iw2J+P8iF16mbNBojULCRJaBQw2oBbEDuBkQ4KNUNupDYsn5kl7aR6HTar7O
	 YdWPfQkHo8709sXukjS939uiygkNpS4JS8ltNiIGeVw6Y8eodN2WSjXJIlC9DfsTob
	 okqRDWrx6uFdjHOp2vnZYiv08M+qBEl3ZwBFH6fSE79y6q8xupKhdhrYLTNJ7mM/L2
	 7vdMZh+59JlJJhWlzt0FPpf+n+jYG3MFE6qitS+ZNudIp6OQkBFVe7fBPVkVEyArDU
	 7YQZd3mmgsXC2vvxrZMs0XWEnB8nsv5j21HienB9q4WF9SBFWJaEVAjg8kXiO7xbvk
	 f2CH+5CV2EqHA==
Date: Mon, 16 Jun 2025 10:15:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com, 
	andre.draszik@linaro.org, peter.griffin@linaro.org, kauschluss@disroot.org, 
	ivo.ivanov.ivanov1@gmail.com, m.szyprowski@samsung.com, s.nawrocki@samsung.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com, 
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com, 
	selvarasu.g@samsung.com
Subject: Re: [PATCH v3 4/9] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo HS phy
Message-ID: <20250616-snobbish-chimpanzee-from-arcadia-bd9fcb@kuoka>
References: <20250613055613.866909-1-pritam.sutar@samsung.com>
 <CGME20250613055050epcas5p3f995a6696ccf4f7eeb0b5d76382f71f7@epcas5p3.samsung.com>
 <20250613055613.866909-5-pritam.sutar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250613055613.866909-5-pritam.sutar@samsung.com>
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

On Fri, Jun 13, 2025 at 11:26:08AM GMT, Pritam Manohar Sutar wrote:
> Add a dedicated compatible string for USB combo HS phy found in this

I reviewed patch #1, then went here and see that this is HS PHY. So
patch #1 is not HS PHY?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
