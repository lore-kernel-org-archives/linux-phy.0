Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D357CCD183
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 20:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6J1oyjfYnYLmvgAadzI7Pm+hl2LFz6oL/nHZYAQi4DM=; b=Hpq51yys6y2/Rw
	fj6v3rEIBdPsGMiR0XC+rUvcLgQamWmB1RpfPwAGcTfs8w93z4yBCt36aTT+IsQzDe5tEVvd2slzE
	idsD42zwaWPHKQOYI8jQ7QajyFo3NcnNiXlERmDo6mu8rw2BpO/7p5+0DPNU1lP1ggS9SOEO8Meak
	QfSohnOvoD9YZm/SKwmIxmsx1V44pIds1EX+lpRO3mfER+4cnkQYASkB6C6wohfBDtuV7nID0EMRp
	Bvm/C5rfycuMQ6p8PCuKzs/WPwKcKBlOh3g+kepiPgK5L15LkV7RmtZfTB1tke/+RCa6O7VWC8BnL
	Oero4DL4KvpPDroo3G0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6x70-000000074J1-3olp;
	Thu, 09 Oct 2025 20:19:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6x6z-000000074Ia-2P4Y
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 20:19:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id F0D9D60211;
	Thu,  9 Oct 2025 20:19:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DFA0C4CEE7;
	Thu,  9 Oct 2025 20:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760041180;
	bh=Walqh5a8kXanT1LhuuUh7J1+eh9oalVte1fOpfe1J5M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X/F6qN7g58WK+WrVTXd2fgPq8Iaj0rj6WipTL30vjmo6h3MgqoiLwCLPCTBeHGnU4
	 fYd54h3WUmdRpikfX3gNK5vNrFdqb9Vw3bSQ3dhQoXyg2wQP8lOHgPfLQRE4u2hf9O
	 X0+gPuxe8jwwWbzKb8lSxBAhur4H/2YX8lEsQx6s+RHuDhgB7WEIDjnqwOyhltrhHb
	 VNuxCTgh8MaxzgvLFhYoaOjbndFaR4jxN20HLgLrrdmapR81SVgxhvVI27CwYDbuM/
	 YUhDsLhJhxu9dAg/z81L40e6PFkzB0PsOV6qaZQb0i0UFg8oRn0MKP8CyzJ3BWZE5y
	 mY1UdRw34JQHw==
Date: Thu, 9 Oct 2025 15:19:39 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] Revert "dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp:
 Reference usb-switch.yaml to allow mode-switch"
Message-ID: <176004117839.3288724.61530273334679572.robh@kernel.org>
References: <20251006-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v2-1-3249e511013b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251006-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v2-1-3249e511013b@linaro.org>
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


On Mon, 06 Oct 2025 10:49:04 +0200, Neil Armstrong wrote:
> This reverts commit 3bad7fe22796a420c6e16b591c37ed1bd6cc2a30.
> 
> Referencing the usb-switch.yaml also imports the ports definition which
> collides with the definition in the qcom,sc8280xp-qmp-usb43dp bindings
> and also enforces ports as required which breaks DT bidnings check on
> a lot of boards DT.
> 
> Until the granularity of the usb-switch.yaml bindings allows us to
> only reference the mode-switch & orientation-switch, it's simpler to
> revert the change and start again.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> Changes in v2:
> - Instead of splitting or loosely referencing usb-switch, just revert and start again
> - Link to v1: https://lore.kernel.org/r/20250930-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-060568de9538@linaro.org
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml     | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
