Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0BA5E77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 09:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJHpMNzG7jB9fZqk7U4yo/CJmHoWwPRT+digOg9iHkg=; b=z3zV9FxBOYQcYe
	Wsm2txSYGpwpJpgLcNN0hQDse4uajc47Q48pInMoYvZuH2ot1d5ONbWBaDC8c8WIxxrdIEpPOB2hq
	aGQrsr/AZoaeyKe2CH93WegI2Gw/6SSrZp5B1puIfxWZ9N2mT/77FDUiM4SLcasXXXYVwKyo23Knb
	88vCDUMQcRIWikFncfm1M9s65qyDdB6d/8ncRWhB+yltVRyrth8DlLzLVTK8xrDPSjOVZEuTRrbLZ
	5Q34f39uKTh9eqqy2gujAzKBMxndAZLr8/+nlHYDBvJzuN/QSujTZk7SQl7ybTv6tDlJ0XFLGFPfJ
	gijsVZzFvT726H58KCUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1Nd-0000000BcBd-2zqm;
	Tue, 24 Dec 2024 09:39:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1LM-0000000BbrC-3LVS;
	Tue, 24 Dec 2024 09:36:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3049B5C5DBD;
	Tue, 24 Dec 2024 09:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CAC8C4CED0;
	Tue, 24 Dec 2024 09:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735033007;
	bh=7CoSrZ3e9UDAyDEUzqMEvSsGqADAYZH5CAhzI1dteeQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aZU1Y1CXY4pRoKTbD8WCPCczFvueol8DojEYbuztpMtqslP4iQ4bFsyJq6vsN1P8B
	 pjwNlA2I0vecEEpZ7vW78FAWmFNK4w6yJHupq1Xq5xZEiHpz8UNKdyJ73M02HSNYFH
	 L3iqHQvwggCASZamlcKJUEghoUWzteeh6HoENmlAy0WK0Bf5HBXbCxvkzV9CAH0Eoh
	 9lR77s24JNPOMBrTtB4yJsiZg0LEkIJGROe4t1VExpKr92qSfbCOEZJklZqXzP83UW
	 QpHNo1tqBrfcCzI2hEEYnrdU6uAN9viKIyKw5ncZQJNSo3Xa2+7fKf7cS+t1Q7pPRJ
	 OFiDFgnZTxaMQ==
Date: Tue, 24 Dec 2024 10:36:44 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 10/15] dt-bindings: display: rockchip: analogix-dp:
 Add support to get panel from the DP AUX bus
Message-ID: <6ycjcteeornplagnwnl2l3xlsaanvyobg5clr6ie5gewti32ll@fnvu6ankyum3>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-11-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-11-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_013648_884183_F99C40AA 
X-CRM114-Status: UNSURE (   8.65  )
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

On Thu, Dec 19, 2024 at 04:05:59PM +0800, Damon Ding wrote:
> According to Documentation/devicetree/bindings/display/dp-aux-bus.yaml,
> it is a good way to get panel through the DP AUX bus.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../bindings/display/rockchip/rockchip,analogix-dp.yaml        | 3 +++
>  1 file changed, 3 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
