Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61DA9C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 23 Feb 2022 03:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j7JloKF7OzAJZbakTR685M4My07VLZiz5m4XY9DbsiE=; b=FuS8YKERrBzNzW/ClNWl/s4Vjq
	edD/+NHOBcs2TdqSIwBcJfpOXP2Jh8VSTEiLqMReMDltDvmpiAvH9LbmnmfIz7ytnq+E2dRRqqkfG
	IDlzXzt7Hrih8IMw7BaRz6bcsEF0VAXCuSLQ41Un1AU4pb2GgdY3g1b7gNzUyT+d78UphLXjeESAy
	wV2nqGATUER93M+cQI1Z/ci8Eu683Nwh+F4H8EyHfzsZbfPwgpcqV1lMWEyaUUdNBGviE1pGJZYG8
	y8Y/Dh4+lm9dla8lCgTzGMWrSFzGFzkiGyTvBGGQkllWtsvm7WEmc1M2dc4umyY2RuQ9T5I+147w4
	fAHq275A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMiaU-00Cax9-N4; Wed, 23 Feb 2022 03:45:10 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMia0-00CaqK-Gc; Wed, 23 Feb 2022 03:44:42 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id A28AD58020A;
 Tue, 22 Feb 2022 22:44:39 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Tue, 22 Feb 2022 22:44:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm2; bh=LAq/x+sjX1h3RY
 deEBmP+TCHY+nFbfG+PQIlZr63FDY=; b=elHl0afiXEziLWdOnRbl7oUM0gdPzJ
 QYZnjZmp2R7XAKpY2tQNincaBNWe4NaeSK+222l77EKsegdmxlt5oH1X/WDLnJWl
 B4BfZhC7gOg4LKkXVXb2sD0Qs8qy9bbxzAt5q4QkN5n88IrQ5xaQ/V13leDpOEtC
 WmvxOtqhlCfRsXFo4DLrk/7Yl1yaqTW72mgK2vZXoF2wk9gXGlZMa8Q9BzHNmQBT
 phmDa3YagziTnNa3V5rZ+TTkHkt5QYrqe4pv44rcQ/2cBqN5W5ibxLSSwajhL1MK
 Kmux8pjQ7E7fwEeK5KH4kL3DhvYNblYZJSg1aVbZpvpNPg1d7AOaeJKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=LAq/x+sjX1h3RYdeEBmP+TCHY+nFbfG+PQIlZr63F
 DY=; b=fHdn1PYE+BCM6+WUUC4nqAaHKOeKuL0gl8LceZPMWT4fk8TpmnlikKL5z
 fT46FJKlitdG3Rg7Ycmt1v836klQMWjOK7X8SuOtjxoH9O8QSwOGSb+HIlgMRAyR
 p33OViRrbv/etwYwCyIycpJUoJ4a0+mCE6OqGWZz2jB5viB7c3FKKmc076FkNrWq
 fM3jvp1seCdiBKy7etExc+HTvOJP1gOee7BAI2n0nV7S+G2lfZEaoxNUDSXkM44A
 jwGExwP3YQ7e1mkGyV2JFc1et0x6KCB34vYboKolUDZlN4kgwzBYncMq8W6Xy+cZ
 fEb/UEL7pn+PpXsv3xPuFiSVz4p5w==
X-ME-Sender: <xms:p60VYqjE462gq5F5hrEjkVgZADtwHafHh2Y6H7Y_RVfbVgzyO3Wziw>
 <xme:p60VYrDHf--zdazfym0pzgMHI2HvpadEC9EziZ5I9OrrwjjUBUwq7tUIU6s_ithGI
 loSOpdkO29PasbXLA>
X-ME-Received: <xmr:p60VYiF-cHSWoJxQo0UbJVPl_vlXnsbntJBQ_JvTqDcSw9kREw7rCTiQRnam-FIunKGAeNtbzu6zws4EkEszNgrOA6qhAV0WrDTX6qTY4wg7qG37T4U8hubg4Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrkeelgdeiudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpefgveffteelheffjeeukedvkedviedtheevgeefkeehueeiieeuteeu
 gfettdeggeenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:p60VYjTGhs7sqjKp-UEQ9kNQECvHjoy_hcCiy1Ydkitl3LFyoy-mhw>
 <xmx:p60VYnzgqBHYDJipdgKohR_K5EMY8xGF4VEremP6tKhp1bqoAvZY2g>
 <xmx:p60VYh6ZzTkoArf6KIir4xCJ-fCRitXdXNPo_0iyeY8uVIjbjabeRw>
 <xmx:p60VYqoiGYE3uKZQqzimgK7rjV6TQFbF1XfBsFKYjTsGjeu61Tlk7Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 22 Feb 2022 22:44:38 -0500 (EST)
Subject: Re: [PATCH v10 13/18] phy: sun4i-usb: Allow reset line to be shared
To: Andre Przywara <andre.przywara@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Ondrej Jirman <megous@megous.com>,
 Icenowy Zheng <icenowy@aosc.io>, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>
References: <20220211122643.1343315-1-andre.przywara@arm.com>
 <20220211122643.1343315-14-andre.przywara@arm.com>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <aac11817-5c3c-631e-ad10-0fecf83e4c41@sholland.org>
Date: Tue, 22 Feb 2022 21:44:38 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20220211122643.1343315-14-andre.przywara@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_194440_691798_672978B5 
X-CRM114-Status: GOOD (  10.88  )
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

On 2/11/22 6:26 AM, Andre Przywara wrote:
> The USB HCIs (and PHYs?) in Allwinner's newer generation SoCs (H616)
> rely on the reset line of USB PHY 2 to be de-asserted, even when only
> one of the other PHYs is actually in use.

Thankfully, so far this appears to be a quirk of H616 only.

> To make those ports work, we include this reset line in the HCIs' resets
> property, which requires this line to be shareable.
> 
> Change the call to allocate the reset line to mark it as shared, to
> enable the other ports on those SoCs.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

Acked-by: Samuel Holland <samuel@sholland.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
