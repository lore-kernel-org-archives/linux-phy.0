Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8608DC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 09:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jBKcv1sdjWlf+CIcm0nQr0kKg5O/gUR87XEaQlJL4oE=; b=vO9c5BYWEGmGw4
	OWH6cHkrl8RPr8nVvL9cc9wQExQ+Y1Sl3iQUSafs+8ObQ6IhgSn8n/RXRbPAgTfFePLT9+1QtH0Xq
	KWZw69wPrZDA+B84zSKm230Y6sA1gGnuhJykVkqu72VkxhRrnccd+UkCDQgNOTyoDgthV2JGBLJy2
	4dWsLjJ23QfLFCMYlJawonca9Xic4hPlGwoRa/hFbmOrlH44UEUVYqimkFDSOjYkRAfHbKs8zFw2v
	OVe6+LII01twN6NC/5yEFNIDFi6VE58I3fJE4yBqdS/X7OC64qrAbSN68nHvx1p59bB4Libe7FXlF
	Fak5ih9M9RSPThNt6Gqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odq8s-002CtK-TA; Thu, 29 Sep 2022 09:47:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odq8p-002Crl-NT
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 09:47:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2482160ACC;
	Thu, 29 Sep 2022 09:47:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 890AEC433D6;
	Thu, 29 Sep 2022 09:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664444858;
	bh=P7XwxAbuvX3oO+CxJnr9NJMBu0qgVOHSB1KFjXqva+E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pklEAkikzIO+JhMkCuI5KpDJOk+bNZTYWk543Cl7H89ppZ/tPg+34I7jsNY71D/5W
	 rSeSo2gaxeFr2gi4NfAXXDnfgjumGqmjutqmoczTHQX4piTZqqFTpR4GzepUtTlcv7
	 qumGk3WCv15hJpmM0g1iZ+0DD+dbmmphMXiFXBNpAlT+iEXCbD2ogmFc4zls5IWY+C
	 6xTaYLpABSxd7Owg4QncUqzc94Xl7SipqcGYpIXOje2FgUPynYVUgLHJyEQzK0Ebrw
	 lMTsGV/t4MD5+ld3e9jSGaQl6Oqa70uHGfbS2vpEBXwJbHsmX0pgvG2v8BIO/N8k6n
	 tgZhUWoGSc9Eg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1odq8v-0006Hd-1J; Thu, 29 Sep 2022 11:47:45 +0200
Date: Thu, 29 Sep 2022 11:47:45 +0200
From: Johan Hovold <johan@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 00/11] phy: qcom-qmp: more fixes and cleanups
Message-ID: <YzVpwR3jhtKOy8Ap@hovoldconsulting.com>
References: <20220929092916.23068-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220929092916.23068-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_024739_827205_CE1FD91E 
X-CRM114-Status: GOOD (  11.39  )
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

On Thu, Sep 29, 2022 at 11:29:05AM +0200, Johan Hovold wrote:
> Here's the next batch of QMP driver fixes and cleanups.

> Johan Hovold (11):
>   phy: qcom-qmp: fix obsolete lane comments
>   phy: qcom-qmp-combo: drop unused UFS reset
>   phy: qcom-qmp-pcie: drop unused common-block registers
>   phy: qcom-qmp-pcie: clean up power-down handling
>   phy: qcom-qmp-pcie: move power-down update

>   phy: qcom-qmp-pcie-msm8996: clean up power-down handling
>   phy: qcom-qmp-combo: clean up power-down handling
>   phy: qcom-qmp-ufs: clean up power-down handling
>   phy: qcom-qmp-usb: clean up power-down handling
>   phy: qcom-qmp-pcie: clean up clock lists

I forgot to add Dmitry's reviewed-by tag to patches 6 through 10 when
resending. Sorry about that.

>   phy: qcom-qmp-pcie: drop bogus register update
> 
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 30 +++---------
>  .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 12 ++---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 49 +++++--------------
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 24 ++++-----
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 22 +++------
>  5 files changed, 38 insertions(+), 99 deletions(-)

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
