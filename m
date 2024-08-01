Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94039C52D70
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 06:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6NNjBTEq1sdp8PskMEBGNlzV/CAcdugeD8QEdYe5uo=; b=Vv0N7bcHRjjRO/
	8Tu3jE562Zy2/QbcOD5qTkzYZIQllAGrR+YnjPCnhOeFT/SFV7y7ClIq4Yx1N8MjTGLSh7WAob4d3
	84IHJjc+4uXJDFznhuNtDgpdB/2b80Xk7j8F5QLHEH24ag9kS/D13ewRRM3kVwqDwh4/mSfRur0ol
	jHnb3afsac2y09srx0n4whsioNlEb5YsZFJOEC4dpelYCpWb8SW8ekstmaM+R6W7Uv2PXxZTmrzKz
	8HuC55g8QaIp8+LPK6L0GM8A9pshiYCgBmwKgy2B2X9wAwLASxtxM7iXh9qL5FcIh4w0T8WE+qu+i
	eApIEdI7R4HWQA/+wYBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPix-000000045IH-17sg;
	Thu, 01 Aug 2024 06:55:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPib-000000045Bo-02Nr
	for linux-phy@lists.infradead.org;
	Thu, 01 Aug 2024 06:55:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 49CB5627AB;
	Thu,  1 Aug 2024 06:55:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B7CAC4AF09;
	Thu,  1 Aug 2024 06:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722495320;
	bh=4C6VDEfz65u+c8AGnTvZyieOGwvSu376DqNaJtC/1aE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=tM/+asj5ZpWv7EUwOHLSEZ/N2STm4RMTBD+MeUAwcCp7IdUQA+KCuwYg5OBRziNjK
	 cUIxWYiW00TwcoivhBDkgTRrz5fTG49Gj+RpI5s2G8FJD7wOGqAEx15BKQhXUBNLA7
	 NpRV5QjX1wGVJVWBGYTcK844hELu2cahIqXWSLxqC7OsVBf7byFay6C5iWgGvsjOxQ
	 LYNqXlVI6FBWW0VOvOXgnYebWj8OlY2TORgv2Mvboka3YYUAG1/ivPcNRmDu2xb27w
	 yK5h3yT6pLtKUorvfMcBoSqk/DEHE8hJqLM88IPSeoIZzJYiHkghn2utYiMo87XqDS
	 TSB40XzNML5gA==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel-janitors@vger.kernel.org
In-Reply-To: <cover.1720723132.git.christophe.jaillet@wanadoo.fr>
References: <cover.1720723132.git.christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH 0/3] phy: cadence: Sierra: Constify some structs
Message-Id: <172249531801.256913.2609944254797993813.b4-ty@kernel.org>
Date: Thu, 01 Aug 2024 12:25:18 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_235521_148062_49640174 
X-CRM114-Status: UNSURE (   4.84  )
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


On Thu, 11 Jul 2024 21:34:51 +0200, Christophe JAILLET wrote:
> This series is just about constification of some structs.
> 
> Before:
> ======
>    text	   data	    bss	    dec	    hex	filename
>   60489	   4342	     16	  64847	   fd4f	drivers/phy/cadence/phy-cadence-sierra.o
> 
> [...]

Applied, thanks!

[1/3] phy: cadence: Sierra: Constify struct cdns_reg_pairs
      commit: 29f33f0b442c092d7180b511d8bef871f3be9fed
[2/3] phy: cadence: Sierra: Constify struct cdns_sierra_vals
      commit: da41bac5c89720f9fb8289a03e30ec0b3cb1cc9c
[3/3] phy: cadence: Sierra: Constify a u32[]
      commit: f75999c525a1d7d6c4425a6a225cabae40ab1721

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
