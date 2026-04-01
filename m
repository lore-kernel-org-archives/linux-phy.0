Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE36B1076382
	for <linux-phy@archiver.kernel.org>; Wed,  1 Apr 2026 14:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qoxkk+hwcSO9Pxbh19lg1zp7IG14nmokTtMNZ/EIHR8=; b=vTKKEGfHjg+xAJ
	gUzzVb+6J+Yt3lFWmRIgackKjaljHHxBfZM1rYDgQoSuqLBw0xGLr+WUElzCHZcQwmiwpI2LpCuLb
	oZp6ZpbHADGfuJhcMsZi4QyNcC5PB/IhI/KQsF2KZV8g4Lh1xqGQoMj6ixSupveq90XuXkIJ/JFne
	iXnC/tjSxnwePY61h+mZecNHiFpH8dbNDWjkiUpiKDOfcQl+02ZhxSd3Hsc5GZcH+uHO12jgnDGse
	vllyW9sgTA31fux7gRBK32D0Alh/5MLbnybmm3wZZqOs0WH1GuL3BfP6vUkpdq0R1naabdVO0kDXv
	mXcL85Ls1f4ez5s2QjQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7wWk-0000000FUEm-1CH9;
	Wed, 01 Apr 2026 14:26:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7wWi-0000000FUDj-1vX2
	for linux-phy@bombadil.infradead.org;
	Wed, 01 Apr 2026 14:26:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=M2w21oun33WgtlPUcXSFT/DHhBGpx/SI0UcRMiFXjvw=; b=W/jaX7rv1ARItTzLLOOKocl+aI
	YLW8EzI5t73MzK55dswQfCATzC1rTVkREN+8pRWukO+lAyM77YWJf4m4+p/P4D57Fu/jMYKuasIvg
	t7G3xa4GEnWC4KIjWIr4uspEUEdEjOKQLoG2HjunlVR31PQrhaLrobNHvVdJTidGMwiYFChe8+gj2
	jCn7OpuXiMje8u/2klsR2HUKf8spf1F12mc2YMTkMcYm3n1fvQ/4fGAj2OTXKjAB4BsDbzKj0IJBK
	XSSu7+YMGOb7Hlpj9p4OJJQdgf9iF80BBQNyqGgIvP4TRpjjXr5WdstPD7DCd91a333IeOoAAlA1L
	/zeg0mcg==;
Received: from layka.disroot.org ([178.21.23.139])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7wWf-00000000bk0-2nLM
	for linux-phy@lists.infradead.org;
	Wed, 01 Apr 2026 14:26:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 254D025B54;
	Wed,  1 Apr 2026 16:16:32 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QwdR6VfRREnd; Wed,  1 Apr 2026 16:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1775052991; bh=l/kKl2NbggH/pZZmWsvlyPmIQF3xYezbfisa6juo6xk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=co9WldhhChMYGL0aGxYa7Ajvf5zeeUHeZEZPR23Vw45J63PCqhmu6ccCq6PfcNpVA
	 QcsR+dgG91m46cTQvk478EodHHFTqVXRjAhcXJPrU+cralUgEPgJ0+LojtLO9YSrXv
	 8/e4+kQ6mROpCmTMtuIBQIbecGtdA7MKgZbviC8j4OFfdrqjIloxMaBNF9VvnOxraq
	 h1R62jdQf90dkNJLdxgWhyuLDN96R/fH5RZgXPNpYToQ+0mmIKTXeNiV1KpzVCu16Q
	 8m7M1oHJv6OCuJnJO2X5wsqdgqZVDaotLZalLvpd3f+0qaRtXFpbWo6RXHYRjfkb0O
	 LnMH2iabY2mgw==
MIME-Version: 1.0
Date: Wed, 01 Apr 2026 14:16:31 +0000
From: Rustam Adilov <adilov@disroot.org>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Stanley
 Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Michael Zavertkin
 <misha.zavertkin@mail.ru>
Subject: Re: [PATCH v2 5/6] phy: realtek: usb2: add support for RTL9607C USB2
 PHY
In-Reply-To: <20260331193647.nhaej266v4gudrek@skbuf>
References: <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-6-adilov@disroot.org>
 <20260327160638.15134-6-adilov@disroot.org>
 <20260330215033.ven3bllyw3jverfg@skbuf>
 <1884dee6134e1c069e9f68edb2fdcd7f@disroot.org>
 <20260331193647.nhaej266v4gudrek@skbuf>
Message-ID: <a01c9b92e70a7274ed56355fbe559828@disroot.org>
X-Sender: adilov@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_152633_787533_7102C3ED 
X-CRM114-Status: UNSURE (   7.74  )
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

On 2026-03-31 19:36, Vladimir Oltean wrote:
> On Tue, Mar 31, 2026 at 04:48:08PM +0000, Rustam Adilov wrote:
>> I am personally fine with removing the "force_host_disconnect = false" and other
>> falses in rtl9607_phy_cfg but i am debating because it wouldn't line up with the rest.
> 
> You can also remove the other unnecessary initializations.

After thinking about it, removing other unnecessary initializations would be out of scope
for this patch series but i can remove unnecessary things introduced by my patch series,
i.e force_host_disconnect, and specifically things inside the rtl9607_phy_cfg.

Later on, someone else can clean up the rest as a separate patch.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
