Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10E94E77180
	for <linux-phy@archiver.kernel.org>; Sun,  8 Dec 2024 17:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BizRIw02h08k3LM7IBTvvSYS09s/aOwhB+1Bt3de3Y=; b=Ocv67YBEy3YWxt
	BNLn9iXewQCY9xdPPs1Q5inE8nqrq+wyZCoto8Yjucm3ARd0eKhLkOol/MHZGBGTKqBA28JxBqLV8
	yCDFR+zuT1XJQ215sozDWMA7G3G/PDfZ0WpLkvvd0dr9rakLjhRhH/MYJuFV7he4u338z2P+yrpAH
	OeAvn+us1+I/l6Cqz9BeHvnOv7xwjWsC9jmEEfAmoQwqRg2YTJbOFBvAX8FfD2fEvCjk2IS+6VLvg
	CsOZQnrTTuNI1UByG9HqS3bKJn3HNPnDSSbA9JtHu/xm4QeRNwn+9xI85zdzJvCd0Z+0SvvgxQ4RR
	uChHfhVvUZN0m0N/LD4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKkD-00000005ceA-3P4u;
	Sun, 08 Dec 2024 17:06:57 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKgq-00000005bvI-2CfQ
	for linux-phy@lists.infradead.org;
	Sun, 08 Dec 2024 17:03:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2AF1CA40C60;
	Sun,  8 Dec 2024 17:01:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04AF0C4CED2;
	Sun,  8 Dec 2024 17:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733677407;
	bh=sHIkSbw7nWpfbHmQZRYAI3MdpoJo1KSdJZW3Q2Bqyn4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=s0J8yNG+BW4sEna4PRqEhwlX3CEgpwtOyHhscxFFM7HmiOa8fiVdGoIqa4F8gzT5E
	 FVonSsHl3QLcf6H4MrZHdqjyRp/fm5myCXPRtEwF5G4AJ/qt2HqHNtIHg0029/djOt
	 bhZCZGz4Hei8RzA8kNcUBblER+5aJ4CxWjA+dlGO/GVFoMptP4DqKOuXiXjQE5c9te
	 KuLcPeksQ0CBPmkt4sGoiIbeMr/e/yi+fx3fqNlCbeGY0Eo/HkYIX0HF0MDto5LFRC
	 FiicCgewRP4wET0FtogWvl/H5eZAk4iFAdajRO2xqyi1nGnUYYDoNfmCbId2aIuHdI
	 459vz2LvmsTbA==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Adam Ford <aford173@gmail.com>
Cc: aford@beaconembedded.com, sandor.yu@nxp.com, 
 Frieder Schrempf <frieder.schrempf@kontron.de>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dominique Martinet <dominique.martinet@atmark-techno.com>, 
 Marco Felsch <m.felsch@pengutronix.de>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
 Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org
In-Reply-To: <20241026132014.73050-1-aford173@gmail.com>
References: <20241026132014.73050-1-aford173@gmail.com>
Subject: Re: [PATCH V2 1/3] phy: freescale: fsl-samsung-hdmi: Expand
 Integer divider range
Message-Id: <173367740360.1042266.11639537170918514814.b4-ty@kernel.org>
Date: Sun, 08 Dec 2024 22:33:23 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_090328_630366_6BA52D16 
X-CRM114-Status: UNSURE (   4.86  )
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


On Sat, 26 Oct 2024 08:19:57 -0500, Adam Ford wrote:
> The Integer divder uses values of P,M, and S to determine the PLL
> rate.  Currently, the range of M was set based on a series of
> table entries where the range was limited.  Since the ref manual
> shows it is 8-bit wide, expand the range to be up to 255.
> 
> 

Applied, thanks!

[1/3] phy: freescale: fsl-samsung-hdmi: Expand Integer divider range
      commit: 2a9868d69be26e623dd0bf4231d5175f0ccf5d6f
[2/3] phy: freescale: fsl-samsung-hdmi: Stop searching when exact match is found
      commit: 1b9b8b159601d174526ce1c3a62ebe3a7286003b
[3/3] phy: freescale: fsl-samsung-hdmi: Clean up fld_tg_code calculation
      commit: d567679f2b6a8bcea20589bbea6488c0236886cd

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
