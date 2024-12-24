Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A8A7E77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 15:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZ+vWLfYpdYufxIgV8zYaX+RGbXxAaZtYQTk+F482Ok=; b=VVS7cvNegofjg+
	PgS5/0nYDMqTG0Q+FEHcv/GyQhra88rPK7/rgo+79ey3KFmyYuqKgmb4itt4PZlfjo56muZLWp4qE
	Rof7cqbYXic88LIRRyyec6FzwcNlSww9hY+L4qZy4LvOD520o+Gl+5CtEdKawa9yUp15V01pbSry9
	ymn6xnFCZb/hP+eST0CxZ3TBv5QeLEo6mEKUEY33QU/h1z/qw1Ms/v4oiObX5toMYsAS7KHu3D1wk
	809CJoc6poZsDprw+si9CaqAx6sNWPRAQQ5gZNgpOQl9jEtYOLs60Rn2JuXF9huorzyLjx2e+Xwz5
	FoJy/OY6YabySALpBL0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6mg-0000000CD0M-0o6H;
	Tue, 24 Dec 2024 15:25:22 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6md-0000000CCzu-2dgJ
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 15:25:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 943BBA4158B;
	Tue, 24 Dec 2024 15:23:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8EF6C4CED0;
	Tue, 24 Dec 2024 15:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735053918;
	bh=V/7XXPcXHWaRNDVEGaRoIRGDjHQ/RXIhkdCB+v2zD5w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JP6oNNrD0tYZixKdkO3Oujay9RO6fkwcTqq3siXrcXwNyfqXn8nFaJQMMbGxcl3Bm
	 gwFcO8Twgu9bttkVR3Qg4HC4mbq2RPAgHJ9t3/NBg3RX2NCEagpFqa1h2qdHMTuJsg
	 rvc1dE6XsS2U68yQemmWZ58lzq/RBQWWBiePC6bjpb2//dyvZTNLXfk2NHDmJmKRAz
	 unDBCi6dAC2YYfdRGmO81XqHCLcTfP1ZJLGgIFBeDm/32Cwh3krZLccawW6+v55rZ5
	 HLp/zwDeTzzIgpmKiTGbgLkwQVuu5qyen6wtUvOAwzUr0RDgfXCvtZdGv/i04IIJyu
	 zHw4Ot9OVuZiQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Lee Jones <lee@kernel.org>, Zijun Hu <zijun_hu@icloud.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Johan Hovold <johan@kernel.org>, stable@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Zijun Hu <quic_zijuhu@quicinc.com>, Johan Hovold <johan+linaro@kernel.org>, 
 Simon Horman <horms@kernel.org>
In-Reply-To: <20241213-phy_core_fix-v6-0-40ae28f5015a@quicinc.com>
References: <20241213-phy_core_fix-v6-0-40ae28f5015a@quicinc.com>
Subject: Re: (subset) [PATCH v6 0/6] phy: core: Fix bugs for several APIs
 and simplify an API
Message-Id: <173505391227.950293.14243235099163713416.b4-ty@kernel.org>
Date: Tue, 24 Dec 2024 20:55:12 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_072519_742701_C13AE07A 
X-CRM114-Status: UNSURE (   5.80  )
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


On Fri, 13 Dec 2024 20:36:40 +0800, Zijun Hu wrote:
> This patch series is to fix bugs for below APIs:
> 
> devm_phy_put()
> devm_of_phy_provider_unregister()
> devm_phy_destroy()
> phy_get()
> of_phy_get()
> devm_phy_get()
> devm_of_phy_get()
> devm_of_phy_get_by_index()
> 
> [...]

Applied, thanks!

[6/6] phy: core: Simplify API of_phy_simple_xlate() implementation
      commit: e6625db662120572c32ac34c371f9deefb321411

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
