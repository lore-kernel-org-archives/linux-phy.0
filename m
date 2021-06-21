Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B695AC48BE5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 06:33:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 874F461003
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 06:33:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 874F461003
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMZDVUrVKNBZ0ujpfIaYqD7Osfdv39K0h1K5lrpm0ZE=; b=EIn6p1wynQet4U
	6TsDscENZhVmvTpUUC8OGN+lyjTyrNS5Gu0DungftdOkA2/WdpAcg6JErWJ+Q6IO9841MIzRontXa
	o1nT5utTmJW98Q4crTjjeVRrcw6U0F0+cXyEcDvnYkuyYoFl522WnQNxyGYTKw43/0f0JEaIEicFR
	0Mv2yEYV77h+OEX6t85NRjuNREELue0EgkSc3avBFHLkSmx3p8AMqiszqXaxHOKg+o0keCN1FabNx
	XGUg5zUSzB6u/MZ+7mL5vatMduGbXaXE4KDPkXszFuHIw9hqfde3rPk6kJCa8YsJOBGbUsmI3bTB1
	LMtgvx62aBdcrfBmtDaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvDUv-002KOY-0s; Mon, 21 Jun 2021 06:33:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvDUi-002KLq-DA; Mon, 21 Jun 2021 06:33:17 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E3ADD61003;
 Mon, 21 Jun 2021 06:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624257195;
 bh=4CHyizIg9hIDQpvR1sUF6YvkzCW5f0Mg81yRETpYfxM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Kkq/6Ie9xmSIeYZ0BVM7Kn12lEiK5wWTTUy2Odxg1XrCVA+Q+hve3E65qUukWEYUe
 C8Dl6tQm6Rol0GPks9qonx7BJW/+0hqC5DdNEXmxJZ6AsGqeRwefPV/gX370AQemD3
 0uNSntOyUmMJiY8Sztli/cHhWZcb1Z1AfFmIB20chdT3s2wYxMr7ErNKHnPXqczFsH
 HU2l7bp3nonEjEipvrdzq013S10bwUrXSagUO8w8CzNWXBpcYAEE5cCC/FhqIc/YSV
 Vdl3DxaXC2mQpVvkpTDBGTsfFqKnf0Ig5T55bG9lQKL3etV57yzSjk3RV/HIerC2CX
 tHIn22z54zpvg==
Date: Mon, 21 Jun 2021 12:03:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>
Subject: Re: [PATCH] phy: uniphier-pcie: Fix updating phy parameters
Message-ID: <YNAyqHH5PYSm9XMV@vkoul-mobl>
References: <1623037842-19363-1-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1623037842-19363-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_233316_506212_9C6D4D17 
X-CRM114-Status: UNSURE (   8.83  )
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

On 07-06-21, 12:50, Kunihiko Hayashi wrote:
> The current driver uses a value from register TEST_O as the original
> value for register TEST_I, though, the value is overwritten by "param",
> so there is a bug that the original value isn't no longer used.
> 
> The value of TEST_O[7:0] should be masked with "mask", replaced with
> "param", and placed in the bitfield TESTI_DAT_MASK as new TEST_I value.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
