Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0097CF9C71
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 09:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K7X35qHE30ERU/ig41cBHFOYB11pKYv4oxIPVhSZBPE=; b=4hvZMt0KjxSz6L
	t3Xq4Au/SYHjitxG4eo6NiYv/cwnscaYUQ4pEa0TJkStBeJy0tddhgLIIZdCfFHHMFp6BRkNTtyoB
	jdYJxRdzjkGQd3EHh2G3EZvccQm9NNk/IbetmIsSuJyFwdnamD0IWcIyMYSLoRjAqnVbnmHNapWCO
	L+d9O1PreswbDw6izgnXkYUw+tqBZFF1XVB+9npzGHPJw7nKA6qozAkpRF09Ij8ZtP1Cau1yxW8IM
	Vm5eeKf2sJO/brkLtIDAs56Ora5g44JOBj1G7FzlJAE+sjN3Ag9MEygAjchvUGle/mAZ24Fmq25Wn
	gTZUQGGgm27fDcQTP7jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st260-00000001rfv-2DnB;
	Tue, 24 Sep 2024 09:44:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st22j-00000001qtx-1wro;
	Tue, 24 Sep 2024 09:41:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Cc:
	References:In-Reply-To:Subject:To:From:Date:Message-ID:Sender:Reply-To:
	MIME-Version:Content-Type:Content-ID:Content-Description;
	bh=c/HM5LeotlD1yxyJgRnBwWpd9qjgVOP1gDuN4cOjCIA=; b=C8qjLfZYui8pago0dNE/ePSPOg
	nvn2q/ypicTRYkVszS8ZgQ1uWgJL/DBwmMZKD/nPfIiO8kuh9fe4MaltaeQrD8o+tJRJQNFEuKS/c
	5VWPbk+qRtR6hdcW/nLh4FZhBzYzZRk5E9mfhivv3hAjwrUHa0q6bXSijgskqj4XGw85cpV662i59
	NRCHyL4pWg4e46EvQ9Mltw6UmCu63e8lDJv32xHFRTYa9a2Fo2AdJSY5a+CCb+IZmXOkSGIDP9g84
	TvFzEifzuMd5rr6BVBB09xc0x6kDCOsmTHmlbzsxqh3VLGQvRnabVA3AIX6NKucyJuJUZ08X0hs/t
	uJKbgaYw==;
Received: from nyc.source.kernel.org ([147.75.193.91])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st22g-00000001o4s-1MXb;
	Tue, 24 Sep 2024 09:41:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E2D7BA40DA8;
	Tue, 24 Sep 2024 09:40:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BE78C4CEC4;
	Tue, 24 Sep 2024 09:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727170866;
	bh=9R/JeGA/tbNjcHBGgjfglgjkxBOJ7el7zfZvshWkQt4=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=sFyUFJiCVY1kqIuviL6F3RbN0r5ajQexdKXFZ4FrXsYJ5Ib7D5KIV+K1IfS8nr7mm
	 KZ+i+JKLl4cAu6BzG2uIP04AeKaMIMKZ80f+hbdNLpEhIU+uTz9qrnPY/KRB7JV9vr
	 PPilUygYW0bcjG1o1JMC8fcUpAcLAhLq2Qy11dH6H+a06sBcX8nUKe/MYXcXX3wKn/
	 yRONaDRJnBj2NSzWG05c0r9ZT19i6inklpqkzW9bpH8mQODa+1IvCeXXi8iEo2Vf2+
	 ME4xo9WrjExQ8kJ1bwyBWvjPj/AFNxS/d9YzEU3qzkstE4zxuLyYqa8dLN3R1lUZ56
	 tz/wJLeObopaQ==
Message-ID: <5c67dc9b6c0ef3942e933b4a0f7bb605@kernel.org>
Date: Tue, 24 Sep 2024 09:41:04 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Sandor Yu" <Sandor.yu@nxp.com>
Subject: Re: [PATCH v17 2/8] phy: Add HDMI configuration options
In-Reply-To: <c9c0c1c2e156731a46ffe0cfa3529e6f0e6a1e5f.1727159906.git.Sandor.yu@nxp.com>
References: <c9c0c1c2e156731a46ffe0cfa3529e6f0e6a1e5f.1727159906.git.Sandor.yu@nxp.com>
Cc: Laurent.pinchart@ideasonboard.com, Sandor.yu@nxp.com, airlied@gmail.com, alexander.stein@ew.tq-group.com, andrzej.hajda@intel.com, daniel@ffwll.ch, devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, festevam@gmail.com, jernej.skrabec@gmail.com, jonas@kwiboo.se, kernel@pengutronix.de, krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, mripard@kernel.org, neil.armstrong@linaro.org, oliver.brown@nxp.com, robh+dt@kernel.org, s.hauer@pengutronix.de, sam@ravnborg.org, shawnguo@kernel.org, vkoul@kernel.org, "Maxime
 Ripard" <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_104110_579897_D099F318 
X-CRM114-Status: UNSURE (   6.82  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, 24 Sep 2024 15:36:47 +0800, Sandor Yu wrote:
> Allow HDMI PHYs to be configured through the generic
> functions through a custom structure added to the generic union.
> 
> The parameters added here are based on HDMI PHY
> implementation practices.  The current set of parameters
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
