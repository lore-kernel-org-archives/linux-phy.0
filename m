Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F282C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 06:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yaM5KjAS+9rqCBZIah8exFnOkIVYVqvylixQ0dFES9A=; b=0UD2+OpuKxf/qt
	3pMadJoSrVjhXC7LJbYOiUtwwlhbM42oRaxvKbBaI0K/V8Nc8Iq6nyFsiiwFvYquJWzuifaRBOg4d
	IISHUsw5x9aWtnaGhLobpSu1VUt8F/bIMKg+SHzM/79I9ioDHxeYhmleY3SAXBK9nopZxUm8FoRPv
	8ih3X49p4m5sWvjlj9VUSL/6CJgykrtxLVTIHOhCh/jQDj79G/Bhqie7d0BNVecbMQrBQDczsyS2X
	Ta52Eh6j4J8OaWkpHHPCLkWMH6Ynq1dmG3F4CV3xGSmeh9zfLPVDoQjIXPiELL1VpckGe0K5TQLU1
	E8PdQ8rHhiC3FZPZEsBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWIo-000pbZ-53; Tue, 20 Sep 2022 06:00:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWHb-000p3t-Df
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 05:59:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DCA3661C33;
	Tue, 20 Sep 2022 05:58:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B9F7C433C1;
	Tue, 20 Sep 2022 05:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663653536;
	bh=l68gYqIECVHbcJW8Ghg4eOhz0XMjBPdI8w2LylAoy+g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XSmmjCBorN8pQSjiyCHVPLIggWZGW8w3F+d8IETIEvmuIrOViAkDTGMG/brTpCYGV
	 g8Y7TbYs1rS34nP8SprVIsw+lecXlvdpuq38HblpPzAfu7kL7AcZb5roQ/FI72hmfO
	 m/sl+vXrq8DIErYU5v1tLK61vf7M7zUSYh5Tilx8VkF7PSnSieiPHqlI2AovefcJok
	 FoZOL66EAV4odwFF5u2hDf5TrncJM+XYsQOwDa+JT2vLElSAe+pzE5L3j4TGwLJgy6
	 bJV73zHaOqM13TwNisYxGjiHzV7wCDX4V4nw/S7EVJawt3Cz1IE9uSAl6aPW8sejgV
	 os95SqVb0ykNA==
Date: Tue, 20 Sep 2022 11:28:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/16] phy: qcom-qmp: further clean ups
Message-ID: <YylWnIc6RWfzaxM/@matsya>
References: <20220907110728.19092-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220907110728.19092-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_225859_589653_FE2512DA 
X-CRM114-Status: UNSURE (   8.70  )
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

On 07-09-22, 13:07, Johan Hovold wrote:
> This series clean up the QMP PHY drivers somewhat after the recent
> driver split.
> 
> Included are also some fixes for runtime PM not being disabled on driver
> unbind.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
