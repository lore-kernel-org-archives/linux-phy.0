Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E8CCC44503
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 08:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2XC7d4ri6CR0HvZYEYmAeHoIuMYGxiqG3Gyj0uoXjY=; b=rVlqG/tsrHKN2m
	zC0lq2JnIpS3q0UM8og6K99kcqn8ft3Uo9rGzHaiZoAdpQjfufUFBu6bGwFvKhDPhVpRXQlDg3YRX
	WjTpQOxbd8dN9YyMgy1ObWHkcJMR8lIwIunqOkdsLt9k8YZbkDImp5gL1+iTm/tzhquvI8tgR/Rtz
	f/QYbHmeb/2bIoUvDFHb27ixsNSmjYgOq83h6HirDClohKW6+mHzWJkCTQ/rfiqe9OlCEl5Jnvxro
	TTyubUUbHgRkNghVu/wY+w5fHA2/iAcAKV6J17fIJPC4m/12H8flvNExh5ZOvlcBJJcXZjoIjYxiZ
	Y9Eu4yFDMuyN3rG9E8eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viTwm-000000057dj-3tBU;
	Wed, 21 Jan 2026 08:52:16 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viTwl-000000057cg-1s0z;
	Wed, 21 Jan 2026 08:52:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DF84A6011E;
	Wed, 21 Jan 2026 08:52:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35377C19424;
	Wed, 21 Jan 2026 08:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768985534;
	bh=jgRIhCmAaFipOkGH+vdMQTIQ3U/7dYSKGd7V7jJZOpQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=gCajSL74VRRWMeuogyEQFdrV7BWypTWkDAt07WMUnZd8pKYp2jgA0bJ0MAq4u12qm
	 vLlcPwJ8dSjsfKn/D5kESRONoyKniO1zW2rLVPuK3vj6UfSEOpXxqbC/FUQ0yaFctj
	 eBSttlRyC1+Qyp2VZb3ihGB71pe/1VYONJRlMDqw6PH7pqmJAZb5hm7PfzmuLzXhSM
	 d82xAzLPBcXTD6siR6kygVU5DoOrTTew1l6luHrX0GQ00NkVyyV3KjtLPHitG4LY4A
	 6hhSpsnsgXf0aYinVbsHCHyBYuQnBVBDyoSAb++/c+hnEMny6AAByV99ws/NZRdNkL
	 Dp7KoMNp7hibQ==
From: Vinod Koul <vkoul@kernel.org>
To: neil.armstrong@linaro.org, shawnguo@kernel.org, kernel@pengutronix.de, 
 festevam@gmail.com, jun.li@nxp.com, Frank.Li@nxp.com, 
 Xu Yang <xu.yang_2@nxp.com>
Cc: linux-phy@lists.infradead.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260116101835.1810675-1-xu.yang_2@nxp.com>
References: <20260116101835.1810675-1-xu.yang_2@nxp.com>
Subject: Re: [PATCH v3] phy: fsl-imx8mq-usb: enable RX Termination override
Message-Id: <176898552763.1268719.6857926656823193062.b4-ty@kernel.org>
Date: Wed, 21 Jan 2026 14:22:07 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Fri, 16 Jan 2026 18:18:35 +0800, Xu Yang wrote:
> This is to resolve the problem of wakeup system by USB3 device insertion
> if HSIOMIX on, in that case, the USB3 device detects RX term on so the
> USB3 device doesn't downgrade to high-speed, we can't expect CONN wakeup
> (for USB3) happen because the 24MHz OSC is required ON to trigger it.
> Because the device works at Super-speed so DP/DM wakeup can't happen
> either. Then the entire systen can't be waken up by such device attach
> event.
> 
> [...]

Applied, thanks!

[1/1] phy: fsl-imx8mq-usb: enable RX Termination override
      commit: 05b56ef347495239da896f310c9d613e9bd1a015

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
