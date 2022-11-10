Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66466C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 07:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYS3BVGORQ2pO/UIfWoSVM8o4AwlrY07SnvBQj2A0Rw=; b=XlrJndSnJGYgEP
	nQDf25Ex8Cs7nXg12iyETc7YtsMTdTbt62TLEbVcj+tqZ7dPkLEBAufyLd3Jwdc4cdtn7aGxYS7mD
	sn9NP4GT5zKloKLYgNkzomNm/nf+fXgWpHTgnxNC9d3TOJFjQ9AiPx+xpzYcucDazj0qxQGV+Q9zS
	6dr40DL0XH+jKh+DqCKeacyCJtZUSVklby/jJJOg32ODdv3+J8myR/ZtOE4PxGaAjN1aUjMltUHZg
	WWY0Drab2+33oSig5nM7L6S6fjK5lMyV4XzVGtiMxLDAKu6FNL8lZzi33/Ci8cbaC4mrd5zU7x/QW
	Tllnt/K54gM61Gj9RYTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot1xP-003mTC-Li; Thu, 10 Nov 2022 07:26:39 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot1xN-003mSc-SJ
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 07:26:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 23D66CE216A;
	Thu, 10 Nov 2022 07:26:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C435C433D6;
	Thu, 10 Nov 2022 07:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668065190;
	bh=Us/sWFYywW6ZW57ATsUs5H4SZp3VJ/alueMxkWoq1vw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rYVfmz2LfuyfMRqGLwo4EJKPhWCOncvUDoKkb6lx/e+BomsaAm1HrWjsk7BCJVOz0
	 nEplmpOJHW8NBOo5ULVkHcnWy7TR4cGhFkRPTcBkK8nGgKCXC9NkB1+XOSvhvKEQ/F
	 SPcWoYkzbgMaG/KfiyBqXscAbVCeI3veY9yNt/Bh4MibA0+rkyJoIAaHsliDHIesGM
	 q/ahpeoZs6o9kGfuHyWfuvGQMfDb7E9EAiA70nM44qt/TgL8Nu5dVzAcuRMG1Lbeba
	 ki4SY8JUKUgHWiDeaofa9PzExi9siW+MpSfJWy4ydEakYe08UQ9w9O02jkad0Bv03B
	 rt6IAdpZP9B7w==
Date: Thu, 10 Nov 2022 12:56:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v4 0/2] phy: renesas: Add Renesas Ethernet SERDES driver
 for R-Car S4-8
Message-ID: <Y2ynoeZUu/9vWM8t@matsya>
References: <20221108005500.3011449-1-yoshihiro.shimoda.uh@renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221108005500.3011449-1-yoshihiro.shimoda.uh@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221109_232638_096307_E720E749 
X-CRM114-Status: UNSURE (   7.35  )
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

On 08-11-22, 09:54, Yoshihiro Shimoda wrote:
> This patch series is based on next-20221104.
> Add support for R-Car S4-8 Etherent SERDES as a Generic PHY.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
