Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F0C5C3DA64
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 17:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWn4DOPleja7OGadbafMQhFWpBumsv5/iVYLG5akj0Y=; b=h8dDBGYQvRufbL
	obkYhxytyNtueQkD+nLEK55NXoe+PhFSqp5PHNW6Vbd94fiXCv0CpIUa2b7GW3oH9Rv6eLayQUIIp
	vl3Q7mtUR2ckcOQuRpi0ZspUJHUrmy7kSqThywp6nNmqU8SHQWBRFFFliMyQykF5hAWg9cEm3S+K1
	6YAPLBc8/+b1XSJpKqZ+bEisvgQuJw8MIB0DrofltDROzO5r2QssCImT3AgvmaIsvC4WpZ57mqy2K
	xt4DnskTw+PNLtKsfY4QqGLPx/ER0erQ9E1VzdTQHlJiMgQPvnb1mKZ7CNuPb/8g5gRUYjjhZ/cbZ
	Pz9m2Z/N5bEWRnlMWlPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1safOW-0000000Dift-3QC9;
	Sun, 04 Aug 2024 17:51:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1safOT-0000000DifW-2eXo
	for linux-phy@lists.infradead.org;
	Sun, 04 Aug 2024 17:51:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D735A601D7;
	Sun,  4 Aug 2024 17:51:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E773DC32786;
	Sun,  4 Aug 2024 17:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722793904;
	bh=r/1ogIL9uCeZfCWGinl7eqMXqHeEKasFVr9Re0kbDSk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=c+aGA5qYtEspaJ65GUf1zaUeFBA8rpTxC4psdmkvpN8jnmTMIdBoAGVnZunzeUEib
	 e3TZhHnQecrN+RB3QHL5awdhlZAeRSCO1iTHw2U2Imlq5mb1QcoMRF5QCPndKQJ2+F
	 ztExuWUDpCvBY2iEo6pwP3YfusymIw6PkVyQFWjF/CqOuoRY5MgUC5d9VxSoUJqrle
	 nPPTZZL0Xxxpwt7uD8vaHd8/AoYDITKnJRU++PPg3Tnfq9aUnjxbusFHzVOT1oHRrt
	 ADz9SpiUqUdYn3jLAokem3VhiiRc0tlFfnOp2D9d92gKgfEeEA32WCRcxK9hvFvpxm
	 nSfepjPEljy/Q==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, sergio.paracuellos@gmail.com, 
 florian.fainelli@broadcom.com, krzysztof.kozlowski@linaro.org, 
 robh@kernel.org, frank.li@vivo.com, Stefan Eichenberger <eichest@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240711131612.98952-1-eichest@gmail.com>
References: <20240711131612.98952-1-eichest@gmail.com>
Subject: Re: [PATCH v1] phy: marvell: phy-mvebu-cp110-comphy: improve
 eth_port1 on comphy4
Message-Id: <172279390156.406109.13116235675996046154.b4-ty@kernel.org>
Date: Sun, 04 Aug 2024 23:21:41 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_105145_775035_F1022608 
X-CRM114-Status: UNSURE (   5.83  )
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


On Thu, 11 Jul 2024 15:12:47 +0200, Stefan Eichenberger wrote:
> According to the CN9100_MPP_information document, CP_SRD4 (comphy 4)
> supports 2500 BASE-X and 5000 BASE-R for ETH_PORT1. I was able to test
> that 2500 BASE-X is indeed supported. Unfortunately, our HW does not
> support 5000 BASE-R, but I assume from the document that it does, so I
> set the muxing there too to 0x1.
> 
> 
> [...]

Applied, thanks!

[1/1] phy: marvell: phy-mvebu-cp110-comphy: improve eth_port1 on comphy4
      commit: 8c9f085ae3384c5dfc0bc5f2f785b7adbf7d756b

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
