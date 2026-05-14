Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E640CD4851
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 16:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQsSqkFDuLlrIXmTm3XNGVoi4l6Js+Kwp5vXO1fmXZk=; b=1As0/Sa0dN6DBV
	CRdZ5kG2XwBe9UZXV7FDYkrv51S3beLp4OMBmK+Ij9s7Xb1QrW1E41q86NGtpp0B9iEsDDE+avD46
	GTNE8UkfAMqzIRBJlmEmMdH9unxr78UE95GsjKyhqzXLvIVkwDYYy/fMoffJSkm7wDZ4IcyZxBud5
	KB/QVnxZaRfyTGbHvqL+g9qZ3KFWzz+QxfJkNwZx/mDl9zvJrXg1XESWFEpHlU/z97OBh8ogz10Wg
	5zdLwbJoJE1fd6rVJPmcgBi5oAqihY5SZcUt3mSt7z8N1MyVsjJ4hvQPXT9TuoLzj9uG9qnOzMntA
	UjzA0ep6zKgBg2oq9iXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNYlK-000000061gL-1Q1n;
	Thu, 14 May 2026 16:18:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNYlI-000000061eB-1eq2;
	Thu, 14 May 2026 16:18:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D56566013B;
	Thu, 14 May 2026 16:18:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AEF4C2BCC9;
	Thu, 14 May 2026 16:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778775491;
	bh=a/iNaIKbVrm7Lqc4Lt8ICQ/ivXXWN6UgmrAPOdkJyC4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=q6EqVblN3S5MrSn/05eDZ4ZNEj2+AOlv14F7JpPZWZDP9J5QPiTiIjT45VZBmwTS3
	 yMYMTVO+famxCqRJ4F1vbVSyxE1EdqyvfUbi5aSFsAci6x1t/77eES4+dleYFfRi6v
	 DnpbaKlZlWXCNd8mOzxdoI6jXO1riFZLZGSVTGq89/FFXbs3+Fre5iq4EKqmqrbAR+
	 4snhUXUj1VJeqg+mwweOBVZxRKKrf0RMeWjG1HGj9svvSMU11VZFtFtTaE6qFX3OH+
	 YcQoinzKvmKaOV0GeT3ywC0Xn9gDcJhq7E9ZGrN17akPKAOxrRmG5Bd0ji1CCOGnF3
	 cbYS6KfdPd4MQ==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Rosen Penev <rosenp@gmail.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
In-Reply-To: <20260304043420.14151-1-rosenp@gmail.com>
References: <20260304043420.14151-1-rosenp@gmail.com>
Subject: Re: [PATCH] phy: mediatek: xsphy: reduce main allocation
Message-Id: <177877548793.1092446.559033310365842656.b4-ty@kernel.org>
Date: Thu, 14 May 2026 21:48:07 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Tue, 03 Mar 2026 20:34:20 -0800, Rosen Penev wrote:
> Instead of kzalloc and kcalloc, we can use a flex array to reduce to a
> single allocation.
> 
> Also added __counted_by() for extra possible analysis.
> 
> 

Applied, thanks!

[1/1] phy: mediatek: xsphy: reduce main allocation
      commit: fd6cd05ceabdf67635a4cef5145f79d1217bf11b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
