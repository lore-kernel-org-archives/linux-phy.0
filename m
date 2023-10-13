Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5A1ACDB47E
	for <linux-phy@archiver.kernel.org>; Fri, 13 Oct 2023 10:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gHhEEznBHHzYeqHmtH2GjuiAp/8ZNn7KShO+TWKgB4=; b=Xafs2lS/wIMYF/
	wAKvzUlG5wdr1kliJr5KivJ4GkzQUIQdS+3DnTIfe/FGSDtEk+A+lIwj5aQIwdAcKgOWhU4Re07gj
	wV+LYhjY7xqYYd9Ki1IZQ2wGXaM7d33W0MHNeBNQjSwvJv895LERuZXxMhbjh9FIpJPMOFlfGQpLP
	Cw/fAkLGAuqBVnxGlJllbg9i9mf1La8xscnV285yTmw9aqZq5bGkcfhpkc1pv1Fe4wHLEz0PUSYIP
	Z0yJjV1UDy6KXv3jmCUWRXnu2nETeh0fI5NNOyxLUELljwEPfSfdMoA0U6TJHrdT2NGhxnLJRCF87
	KyR8516G8Qz8m+UHojFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFe8-003ED0-1E;
	Fri, 13 Oct 2023 10:43:56 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFe4-003EAw-2W;
	Fri, 13 Oct 2023 10:43:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 6B516B82A92;
	Fri, 13 Oct 2023 10:43:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11518C433CA;
	Fri, 13 Oct 2023 10:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697193830;
	bh=45SmktxflpqPYwlKo6pzUpVsREOXFrpnKqeP0QuQW4s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=VRlj8SmlTRJAmHtNaXkBhlduM8TwsgX9Qmbvb3B7+VF+1Tr0RUN6r68YCsLgE356t
	 1xpXkanwmHTBrFEDedeMhs4awOhMc/lqvrg6dFU1SUCu3D+0CrV1AgfZk5NFnoogP4
	 PpKCWN4FY0WgFwOkoFdx8VZQbo18g/X+wAuZn8C7ACVTmIeZQZjZtbh25YXsI+fsNP
	 lvfvg4I3zJr5eX58jmYR31JnxormeL5+hx2jZHXYJMOUtkA8DtQHJMvM1FtuTdqB/E
	 dYsRHAju/7HYxycvdCpRs6wk7ZqQNNgmz2CesWWJ6nHohOGh28/YeFPxiSydS8KBPj
	 FFWF4x5mIm1hg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20231009172923.2457844-15-robh@kernel.org>
References: <20231009172923.2457844-15-robh@kernel.org>
Subject: Re: [PATCH] phy: Use device_get_match_data()
Message-Id: <169719382764.165658.18062385265662490289.b4-ty@kernel.org>
Date: Fri, 13 Oct 2023 16:13:47 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_034352_965878_197ACAC2 
X-CRM114-Status: UNSURE (   5.39  )
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


On Mon, 09 Oct 2023 12:29:10 -0500, Rob Herring wrote:
> Use preferred device_get_match_data() instead of of_match_device() to
> get the driver match data. With this, adjust the includes to explicitly
> include the correct headers.
> 
> 

Applied, thanks!

[1/1] phy: Use device_get_match_data()
      commit: 21bf6fc47a1e45031ba8a7084343b7cfd09ed1d3

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
