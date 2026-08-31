Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAE8DC624C6
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 13:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldQe+GWF1cdipS+1N0+VgjQJ35o4ZDim7mOyo6zc3VM=; b=daV+Tt6YnvleBZ
	g4W5847zlD7Q7lgDw1tOP56mHdtPsgQSPaG6t8NppV65C7VjxwIyrWq7slqlPygTQS5zdCkoRg6lO
	neaFS9qinrm6Fc0gc+e0ElHe/UZpZhPNz7nKHgJa7jp6SiCl/RPupKjGmlBOx59uL1U3AYu7IdmZg
	miFMDMNgcJZAG3TzaAbB/vYjH4SYdgZJw7hbAUWYpDjzRXmGoKB9QB0Ezzo6Wy0DPnqlb6jdkhtgU
	k6UblBFtksCWMoTRA2V9fGDeQKwOlqgecoIkCktG8fQLIHmLu3ClUGt2GTiYH8902LhNtYtZT+5nl
	w/j3G4yB8F5LZ3W8WxjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12Pw-00000009YN6-2aIK;
	Mon, 31 Aug 2026 13:51:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12Pv-00000009YMh-1wIx
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 13:51:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 388B241193;
	Mon, 31 Aug 2026 13:51:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E25CB1F00A3E;
	Mon, 31 Aug 2026 13:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788184279;
	bh=y4IRaCf20yPxkwDQVxSHxKx3Orf5PlsmI9OWlWAa9Q8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=KOANNUDFBJ+uHPZf8IJcY+JYButcvHpUnztsqXR3sadF7hHLw8ka2ATpDvwzOFdb4
	 E4JCsc/mmSuyWNQZL339gkUNNdQbc9V4uK2fytnkwXkAx5KfhhADGhYYC5AdYXSX4/
	 nEwzFgttL5956vWjSTO8aOh/wil4qwLUb0ze3P5jBwTu+f+Zc1slRKj31DRJ03XG4g
	 YIQLKrraPrB99cMmoP6MppRTJJWLDAjHuj0ZFYCapEDcyKG5bV6lB6Q555uo3RKet9
	 nUxmyl/BW5Jt/OGuUW1LmZgldY2kdU8VWLbSkzy/OrgZy/dlsZOy7mVwoLA9dHmzIn
	 chQFWVKWQw+cg==
Date: Mon, 31 Aug 2026 08:51:18 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Bhargav Joshi <j.bhargav.u@gmail.com>
Cc: Tony Lindgren <tony@atomide.com>, Frank Li <Frank.Li@kernel.org>,
	simona.toaca@nxp.com, linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-usb@vger.kernel.org,
	Sergei Shtylyov <sshtylyov@ru.mvista.com>,
	linux-kernel@vger.kernel.org, Kumar Gupta <ajay.gupta@ti.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Roger Quadros <rogerq@kernel.org>, m-chawdhry@ti.com,
	Kevin Hilman <khilman@baylibre.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrzej Siewior <bigeasy@linutronix.de>,
	Aaro Koskinen <aaro.koskinen@iki.fi>, daniel.baluta@gmail.com,
	Ravi B <ravibabu@ti.com>, goledhruva@gmail.com,
	Vignesh Raghavendra <vigneshr@ti.com>, linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org, dmaengine@vger.kernel.org,
	Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH v2 4/7] dt-bindings: usb: ti,musb-am33xx: Convert to DT
 schema
Message-ID: <178818427788.762177.6804931155762512398.robh@kernel.org>
References: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
 <20260818-ti-am33-usb-v2-4-66fd44d66824@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260818-ti-am33-usb-v2-4-66fd44d66824@gmail.com>
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


On Tue, 18 Aug 2026 19:58:46 +0530, Bhargav Joshi wrote:
> Convert the TI AM33xx MUSB text bindings to DT schema.
> Changes during conversion:
> - Allow an optional vbus interrupt used in am335x-bone-common.
> - Add the interface-type and phy-names properties natively used by the
>   dm816x hardware.
> - Allow 0 or 1 for mentor,multipoint. While the text binding mandated 1,
>   the Mentor USB IP natively supports both single and multipoint
>   configurations as used in existing DTS.
> 
> Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
> ---
>  .../devicetree/bindings/usb/am33xx-usb.txt         |  25 -----
>  .../devicetree/bindings/usb/ti,musb-am33xx.yaml    | 113 +++++++++++++++++++++
>  2 files changed, 113 insertions(+), 25 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
