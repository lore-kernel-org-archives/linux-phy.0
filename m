Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AC14C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 10:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=km+pSsDxMWLEeacbYRD50pmDUm1of5XNIxAOuppqje0=; b=KlscE4F5blMrqZ
	sXZHHjecIQdwWomC3BOzCxBrxtGDZSEPw3r3lEX5qxu2bywSA+b1EAS6rd1WHyvZRTg2T0Qc0gNYc
	clEA2DnDY2o8nR5T2gjLgutR6mruNZKEIbtUSRbxIIT91SuIT/0I/KPDb4pgJL9LG/XU2uDtTj7Za
	CaGfYfwyXnxaAyxpvPYW7NdPI4oyQC56a4tYJ0+8kY/QTRZo3a7mTlzztxkcZgcn7jk7EtfLMgjev
	Wg5T9MIa7UtL9u2yg2tvuusOzM0ogMOfMdLTI2935oCVLaRBTU1ZWOBqvOptJobFH0666Jh17gXYN
	MoKH7QDFP4E5YW5b9GAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqmS-002QFx-Cw; Thu, 29 Sep 2022 10:28:36 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqm6-002Q6R-B0; Thu, 29 Sep 2022 10:28:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A1B5CB8242C;
	Thu, 29 Sep 2022 10:28:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A615AC433D6;
	Thu, 29 Sep 2022 10:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664447291;
	bh=rfQDmY92oDygtIVNdnw+T9euL5h/h39QjZglQEKk1aA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=s3iOTt3nKWkLfNccQOcTnd4cwRxxHkxONJxjhiKTbJAxYHiQdQysaolZnlsmOOoDK
	 tUrMdSq9gLaGnPNQPB2vSFmF2jAXq896t63zvpratx5GEMlsViadx9lK3YmoYXhF1j
	 dHrwz+zF+al2DL2VXORXP9e0XxmcobXfAx2sP7fl5eJSLrBJ9FACmd5E04hywPQDHE
	 /VMT/FGCsMQAp30l9HcSC3v8NDfN6YaE5P9YE+8ahhnNFkDIfVRQtEKwCgHDpAIPjv
	 Buq+WwXlKHtJ9Tka7GK7NYOfRAeAwHUOELwulfVctd3deowfV/91TPB5e8MsU8kt2o
	 GWcMfx4maolWw==
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: kishon@ti.com,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	a.fatoum@pengutronix.de,
	marcel.ziswiler@toradex.com,
	vkoul@kernel.org,
	l.stach@pengutronix.de,
	Richard Zhu <hongxing.zhu@nxp.com>,
	bhelgaas@google.com
Cc: linux-pci@vger.kernel.org,
	kernel@pengutronix.de,
	linux-imx@nxp.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3] phy: freescale: imx8m-pcie: Fix the wrong order of phy_init() and phy_power_on()
Date: Thu, 29 Sep 2022 12:28:04 +0200
Message-Id: <166444726328.174548.10848189569004377274.b4-ty@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <1662344583-18874-1-git-send-email-hongxing.zhu@nxp.com>
References: <1662344583-18874-1-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_032814_539368_8014B07F 
X-CRM114-Status: UNSURE (   8.11  )
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

On Mon, 5 Sep 2022 10:23:03 +0800, Richard Zhu wrote:
> Refer to phy_core driver, phy_init() must be called before phy_power_on().
> Fix the wrong order of phy_init() and phy_power_on() here.
> 
> 

Applied to pci/dwc, thanks!

[1/1] phy: freescale: imx8m-pcie: Fix the wrong order of phy_init() and phy_power_on()
      https://git.kernel.org/lpieralisi/pci/c/2810b99c95b1

Thanks,
Lorenzo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
