Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E6DBC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 05:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLVf77uUDY8+MBGTjS4nYq7FMIZyQ4Ni1szVqE3GBMo=; b=e5YTUxVkUQ9xas
	iQ0L7Fjpy5/xK/VrN5tw6aiZ4UCb5LU/T2T+DPyltC/xhjQD4D+d/y5W33Kgy6unqh586pWlwiGAO
	RZEvNk5qa/9Oa+H2Ll3aA/xvXVp4zqM1nfrMwaGD5nEQGkejaZgbkdXiQV+C3fi2ZqcJ/FPKEZ73m
	ZemQUSQR+CP1wkIgOmdDTTUH5rC9bT0mq8QZ43f69vE6M9QEataNSmZ0wEV614Dm8rQZnrr3+lGbt
	AKZBYOF1RkT69biZG3ec+nNyssJXitXXLKWcp1gug9+9eB4s2072z6XJGNmLlQUBynsZzZp5KnfrF
	SJ45Lj737NDrJnUj8l6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okISH-007NN8-Nd; Mon, 17 Oct 2022 05:14:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okIS6-007NKf-I5; Mon, 17 Oct 2022 05:14:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 91C7160DF2;
	Mon, 17 Oct 2022 05:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F411EC433C1;
	Mon, 17 Oct 2022 05:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665983648;
	bh=CvDPdY6BUqMC/ABP5UUSw2rawQa77XBKRxF8x1A0uEI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a13SnGLbSkTnOHsyGECGNvQZ/G+mOGRjTXK6moIXVTQt8MgJZ+SdHKOn8XpVjIsuN
	 ytWILzgsYKN08Z2LPfNs/Ar0fLuNxLSCJTD721GFU++Hl6XbaSqnolfr3Ftylf/jE0
	 eNSJkavpxhuK2j6XbzAnmzBoOnhickL0LyYHLIy+Y+4/AndmaNnDIA7iN+tNvQMgtY
	 stt3Br/L6GLXc0M5I5DcLqoh9msUifJ2tTuFN6pI5QiP7NhazWqm8kVI1oOJStcd2W
	 fhc9MIWoIYa3afmE+nt3OvzB3BOdXF6WkkX0IKxMPiLzVAZSjbH4LQZFn5GNcT6a7t
	 yoPJwMMpjHF5A==
Date: Mon, 17 Oct 2022 10:44:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Cosmin Tanislav <cosmin.tanislav@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Nandhini Srikandan <nandhini.srikandan@intel.com>,
	Rashmi A <rashmi.a@intel.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Sumit Gupta <sumitg@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>,
	Joakim Zhang <qiangqing.zhang@nxp.com>, devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-iio@vger.kernel.org,
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: Remove "status" from schema examples, again
Message-ID: <Y0zkmww1B974VhdO@matsya>
References: <20221014205104.2822159-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221014205104.2822159-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_221414_656204_91644B74 
X-CRM114-Status: GOOD (  10.32  )
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

On 14-10-22, 15:51, Rob Herring wrote:
> There's no reason to have "status" properties in examples. "okay" is the
> default, and "disabled" turns off some schema checks ('required'
> specifically).
> 
> A meta-schema check for this is pending, so hopefully the last time to
> fix these.
> 
> Fix the indentation in intel,phy-thunderbay-emmc while we're here.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
