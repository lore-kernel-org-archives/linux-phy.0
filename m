Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98FDECCD183
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 20:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pds1R7soGHAb1M9jOgiazt4d4yegzVizyn1gtfJQc5s=; b=1gcbs9OQwUC1Oc
	7fNXHsprbVU4t2naSU/ttzAMJSCTaoQFKqiofDiudNig1kqj8dw7r3zKXB05zYkAzemreRvB0l8lm
	/1SD8T9fv3C8ByILqaPgJuF3f95akxC0KOBRN99pZoiMxNYbkO4x/DHfmhtffliJ7Orb5dFxCbk9V
	8UHzDPBhuz+LgrMY/L1WtG6tgSyMFfTEUq3g11CA9DpL8lBe7IYkphq62fkTJl6GyTRAf2KKYD0Wd
	whEmCGRNxaRWddAhCje2KxKCTSkM4x3vEo+W01fhl3w29ZEpZjn143fsWkPTzzb8mVYVJ/ygc5O7a
	elwXMs5GcxKFA0pqUA2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6x8C-000000074Qp-110E;
	Thu, 09 Oct 2025 20:20:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6x8B-000000074Qh-1s9V
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 20:20:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D844461FA7;
	Thu,  9 Oct 2025 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E163C4CEE7;
	Thu,  9 Oct 2025 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760041254;
	bh=oA2uaCZRnNGs1M5Uw0XEpZ5pPtd9ck21xoINfY+pXQc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eX6SLVRqrZ3oxHM/cbevFHH5RfW2ewBDheS3mCX1fM+xaCN/e7Z7vvWSb5Gu3Qtun
	 2K9TflgQzlrE+i38oZ8sR1hw0pIeBSH6Liq64Q8qPlAtIcqyx39YT3oVkwHjEgWi1R
	 0dsQ2EhDurCJolfI0jVOZXkaGViTDMK53rdc5/TdFIDEqMeQoQa6oxnc4VCZJ0S635
	 dXJucQ+eo6hKkfQh6YVBQUMSCesCnj6X+dOnI9VN5W00R8XvgWKlF7HZMoUAR97IG+
	 Vq24cBlt6anuhdLLt4V869XCLoWvEhL772J8AbUjinWmQWzjcQGciA1Cjd9tmlkADe
	 yYeJYb7mO00pg==
Date: Thu, 9 Oct 2025 15:20:53 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add
 mode-switch
Message-ID: <20251009202053.GA3288920-robh@kernel.org>
References: <20251006-topic-sm8x50-qmp-combo-allow-mode-switch-v1-1-3d79e7ea6824@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251006-topic-sm8x50-qmp-combo-allow-mode-switch-v1-1-3d79e7ea6824@linaro.org>
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

On Mon, Oct 06, 2025 at 03:51:53PM +0200, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY can work in 3 modes:
> - DisplayPort Only
> - USB3 Only
> - USB3 + DisplayPort Combo mode
> 
> In order to switch between those modes, the PHY needs to receive
> Type-C events, allow marking to the phy with the mode-switch
> property in order to allow the PHY to receive Type-C events.
> 
> Referencing usb-switch.yaml lookkied like as a simpler way to allow
> the mode-switch property instead of duplicating the property
> definition but it causes some issues with the ports definitions.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> Depends on:
> [1] https://lore.kernel.org/all/20251006-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v2-1-3249e511013b@linaro.org/

That's a series then...

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
