Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF98BD206A5
	for <linux-phy@archiver.kernel.org>; Wed, 16 Oct 2024 07:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfhHepbfMF0W2FKAyJ3kVEM40wwjQGfq8WX//zpsi1Y=; b=2FPDAYcNAo8BL6
	Tkb6kWiY3YK48O4cUb3q9Zx7Wy5G2oNCiHp/nI2VLtUjmaDdjBWgzjgPSXG0tEvCSzGtBrXcSeyI5
	P1zgaR/v93jBLI/frjg59evNssZaF6M2crPb57xjCRLoiD42Q/FD+bFc6f8/n1u+X46lZjOg/Jym3
	bFWixQ8Zt2trN3fKKvG5vGOEsrEHmRaziCFu2KhGqQ36KeXwvkERK6N9gm8nMZVxy7OXlTkebEm95
	io57B/PIfS7k/PDwJFHKTapJs1tGCRJoCe9Ypga6SEDerfwe8ujd7Z8s6mvRRvbaYXLcmO83AwhQB
	i31LcK7DzaG4a/YDU3jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ykt-0000000Aslq-2BKo;
	Wed, 16 Oct 2024 07:47:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ygo-0000000Arx8-0ONI
	for linux-phy@lists.infradead.org;
	Wed, 16 Oct 2024 07:43:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A6B1B5C587F;
	Wed, 16 Oct 2024 07:43:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5FDBC4CECE;
	Wed, 16 Oct 2024 07:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729064604;
	bh=dV5m/aN/2YsxFvGILikTbXo8kwHU55b6t5psOt2j2/o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dx8OTe1m4AHpptQw0HFc9mfJm3zNVu9Ifd0mi6YgD9PJhMpYeurb/tCVPA0gjw+sh
	 0pR9Vt7kPTJftyQ6jiRYvv+mMSp5vsdDXN3MDHePLZ0XLhtumHlF6d+stCj4+UIva7
	 wpy5WDXtHlqWDwwdtetcf+F39euZLRupP2IfxjgsWbdGDTe4JkloTkcfDjmdKAdlMN
	 gGVlRK8sAsP3O2mkzahKbfBFzQe4B9CS0S5emI3ZzJfhCu7G0oj5sZJy43L8GTd2mp
	 pmDkXeXG+kZuGG0OQr0rdsl2NVDpaswdl/f18y/Nh2w7HHbh4pXoCa/X7eMFhYUcyy
	 OCA32Jp9noxBA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t0ygt-000000006FS-1bnL;
	Wed, 16 Oct 2024 09:43:31 +0200
Date: Wed, 16 Oct 2024 09:43:31 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/4] phy: qcom: qmp-usb: fix NULL-deref on runtime suspend
Message-ID: <Zw9uowy2_Rcl0yp3@hovoldconsulting.com>
References: <20240911115253.10920-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240911115253.10920-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_004326_314413_6F2238DD 
X-CRM114-Status: UNSURE (   8.63  )
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

Hi Vinod,

On Wed, Sep 11, 2024 at 01:52:49PM +0200, Johan Hovold wrote:
> When working on suspend support for Qualcomm platforms like x1e80100, I
> ran into a NULL-pointer dereference in one of the QMP drivers. Turns out
> this issue has since been reproduced in two more drivers.

> Johan Hovold (4):
>   phy: qcom: qmp-usb: fix NULL-deref on runtime suspend
>   phy: qcom: qmp-usb-legacy: fix NULL-deref on runtime suspend
>   phy: qcom: qmp-usbc: fix NULL-deref on runtime suspend
>   phy: qcom: qmp-usb: move driver data initialisation earlier

It's been a month (and a merge window) so sending a reminder.

Could you pick these up for 6.12-rc?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
