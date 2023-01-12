Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23CC4C54EBE
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 17:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XenMw1+f9p/83zRSey6jqKQ70tKSEBcNCHxEn49wblg=; b=jmW1c2nKKS4mVF
	ZfWH2ZPccc/2vCBM5PKUbKTemobo/bnCWxjg2hdNjxhoyJls6UlUFccBL9BiHqU7momQAAlX3dDyW
	IghqMvimT5SaJvgrQVjMm6KzkWWfAOkDumjCtaopicOnsoqwOno1M5ldEmF2Vq4xjWzsbWX4JNoCL
	/Tga4JoLfVBESx6PgphL57aiuHAtWPYUSPoI7Yh0BnlCL+hBUxOQ8GbNvDDLN0uXZGFQvjK6vmbJu
	yAC0wBEVHf4R1Pxrfo/izv3fP2sfEjlO7YmlemmqaiGUMji3XJ54IDglpmrz8VUpAqeeQKK4osggz
	gzjWEdX2CeXqrXb/uSAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1FZ-00G0Oh-CN; Thu, 12 Jan 2023 17:20:25 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1FW-00G0NG-W2
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 17:20:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 99339CE1EF2;
	Thu, 12 Jan 2023 17:20:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B593C433F0;
	Thu, 12 Jan 2023 17:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673544018;
	bh=ioz1RqoqcnSRvilJYQimZjnLUOcmOmHK0LDKxDQhJPo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Obra7E1jtoGFumhx7UDbukxYwKj1XTmsLXLK4YtVD0cv4+YAFAaHIYMN2Tt0+Yrgc
	 oGiitobkTO4gjrw/HBuSJS3zvsRJgMhNedrYdqd0+zkPD6A/Bp826iuawowPG/xpOh
	 l+A3OSOfmsC0zWZgc+TwCSu1dsTig+pl3SGcCuFp0g3Y+OEXiCKZ09z/m9reGvKqs9
	 pk4Wh5KCWzX1xfg9P504ZA8KGeGRU2bmwtzqXjNQ1Q4nakVkmvnecS62C7uPfk+wKu
	 w3nmgxm+Q6l2I0prpoWZnY5mLlc/9xbLHs+nudoAvyxatCGvxkBgeDZMiuLflKYXfX
	 uP39b1GDS0vhQ==
Date: Thu, 12 Jan 2023 22:50:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 00/13] phy: qcom-qmp: rework register layout tables
Message-ID: <Y8BBTx4tgvOChl66@matsya>
References: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_092023_236996_8CBAA7A0 
X-CRM114-Status: UNSURE (   7.32  )
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

On 10-11-22, 22:22, Dmitry Baryshkov wrote:
> Rework register layout tables in QMP PHY drivers to use defined symbolic
> names rather than bare numbers. Also rename each register layout array
> to name the exact QMP version. While doing this, drop few unused
> registers and apply other misc cleanups.

Applied, thanks

This gave me a bit of conflict (patch4, 13), which I was able to
resolve, but please check things are okay

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
