Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FA71C48BC1
	for <linux-phy@archiver.kernel.org>; Wed, 14 Feb 2024 11:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2c9kGVtj45aI2EzcaJOOB5IQQk1YMaYBDJBVvi7TNJI=; b=0bgn/Qocna80Mz
	w4XnNW9LyM7asL0ZeD8C/xHGf61sETFo9jDdTJiodE5u9Sm5c92c7a07Rph5PkZw0uhof5DYp3Hi0
	JlBtu+VQvCqEY33PDh+NSW6b7hYKJapbW3kvSgGRlMjoCc/1bUQT/aJs5LdGTFs5DqGFOfv/Vlb5c
	1F1QlwTbZqmgJeadl6NYjEdhTsO/J/EdVh/hEMuzhPmb9jvfQGI5dhVqwnWX/66MNe9sOAVpU/+fw
	NyQYacgNz6v9zhib2wzbkU3Li0pAKchRkbkpaYFkGH5rrnngY/Ho0syE2MgHzcQWYfAreq5ys2Tgd
	/WM/ZsXy6MaqagpQE8CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDDz-0000000Ccg0-3Pjb;
	Wed, 14 Feb 2024 11:14:47 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDDw-0000000Ccec-0tKZ;
	Wed, 14 Feb 2024 11:14:45 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id A01D91BF206;
	Wed, 14 Feb 2024 11:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1707909281;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SFE52PNY0PA+F+7I+xnGT+orJnrsDWlnFLaYnniFSWk=;
	b=AbEKSgj7YizzA9FSXFNoFGNM2c+Dd77VOoKF3E2vxFCl/IGSUYHAJIKtCmT3qktxNJm03X
	uG9ZaNxs+6988esaoIRk7bVW3BSO0Bg0b0+6Apw7eNG8xbfGGqywxGMhA3MnmY35eTXskR
	CR4pS6cxtdRPpT6JB8kMUVjHQYQzCTwSAh0fg1fGFg2BDuZLA8c2yLjq/ES2ZlUDx/XdtR
	dvVppER5XIOGw8hE+kcJmpa9jqQozeM8D+QfIqNgxXUcXJ1w5I1l7ZsVsdpXBsEdh3ck0k
	QOUoNqgrFv07yTRpd/0jo72K5XlBwjDAxWKqkxdJk51j8+iAXpx/n9L1Ia574Q==
Date: Wed, 14 Feb 2024 12:14:38 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de,
 aford@beaconembedded.com, Lucas Stach <l.stach@pengutronix.de>, Krzysztof
 Kozlowski <krzysztof.kozlowski@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH V4 1/6] dt-bindings: phy: add binding for the i.MX8MP
 HDMI PHY
Message-ID: <20240214121438.331a9f20@booty>
In-Reply-To: <20240210204606.11944-2-aford173@gmail.com>
References: <20240210204606.11944-1-aford173@gmail.com>
	<20240210204606.11944-2-aford173@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_031444_416829_F9521ADA 
X-CRM114-Status: UNSURE (   9.35  )
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

Hi Adam,

On Sat, 10 Feb 2024 14:45:57 -0600
Adam Ford <aford173@gmail.com> wrote:

> From: Lucas Stach <l.stach@pengutronix.de>
> 
> Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

I was a bit puzzled by this v4 series as it comes after v8... however
thanks for keeping up!

This patch is identical to the v8 I already reviewed, so:

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
