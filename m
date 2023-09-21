Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B909EE71081
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WsizPzPCYSxVbqTzywH7KyLggFLhwMzy17K9zl4lHoo=; b=0hrnZ+Bx7vGMvs
	7FVf8lg3k9faesn6Eh9Kjq8OQWSqqqc8IREJmkSFLvzAQxkPUkUqNWrYPudU7C5HRCK78Ygek26PY
	nW/uMq0RP5sOO0d/c1eXD8T0lNfzHLQ4iFYfD+Nns3C92GIk3A9i77HVyOBfaujiN8YTuACBkGUPB
	MOuMU3T52MJbqWQMhC+vZUq6/j3Ss5/60R08V3dMAU/NfvseJEitytmM1TlF06/HSyksw/eRrcxjg
	0yotsTb1mb5IoVqSEQbQ+q4eoetgUnLaznOnS7NMrS4YCNEhd7D2nPg9LfuXR/UR1WT/7q1dwMtde
	RUpJ3GsvteLwnIuyzUNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKgT-006H70-1Z;
	Thu, 21 Sep 2023 14:29:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKgP-006H3k-16;
	Thu, 21 Sep 2023 14:29:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BCF74609E9;
	Thu, 21 Sep 2023 14:29:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AF82C4E76A;
	Thu, 21 Sep 2023 14:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306572;
	bh=+i068JrUC9snrrF/aptxkD1gDc/gyHcWbhpnMhJEpI8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KowGEjiCcgXvUWCBv0lqUoM9lhoukicU5tova2ahPaP7PLVe9Ad0a2ovAQFWB03/W
	 Qfdg0KP/xrlWZu7OyKWgpb4zb0BwlR27vpfJxMd3eAoTHcslw7asAfx66vU7ceWNTP
	 7TGS7pOLJbeqXxJjDeXOjVF6yWxUmkir5a2BOprqMnXwkdSdhaMTfmR2VY298pF0wy
	 DpjVD/GpJtWZepTope+ERXAAhaLhLD5VimnE0dvxjzpjF0F9J3YnOAkJdNZ4Gla+Vs
	 +9XhUhduxagNJ7xqTqIPeiQZ9YVU2amorBBoH+Luhs9K94JhPfT7eTxcXgqet13ixO
	 d5WX8llkEEoyQ==
From: Vinod Koul <vkoul@kernel.org>
To: andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
 jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, festevam@gmail.com, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 Sandor Yu <Sandor.yu@nxp.com>
Cc: kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
 alexander.stein@ew.tq-group.com, sam@ravnborg.org
In-Reply-To: <cover.1694047629.git.Sandor.yu@nxp.com>
References: <cover.1694047629.git.Sandor.yu@nxp.com>
Subject: Re: (subset) [PATCH v9 0/7] Initial support Cadence
 MHDP8501(HDMI/DP) for i.MX8MQ
Message-Id: <169530656692.106263.15400414640520611543.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:29:26 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_072933_422614_AA2DA593 
X-CRM114-Status: UNSURE (   8.69  )
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


On Thu, 07 Sep 2023 09:05:27 +0800, Sandor Yu wrote:
> The patch set initial support Cadence MHDP8501(HDMI/DP) DRM bridge
> drivers and Cadence HDP-TX PHY(HDMI/DP) drivers for Freescale i.MX8MQ.
> 
> The patch set compose of DRM bridge drivers and PHY drivers.
> 
> Both of them need the followed two patches to pass build.
>   drm: bridge: Cadence: convert mailbox functions to macro functions
>   phy: Add HDMI configuration options
> 
> [...]

Applied, thanks!

[2/7] phy: Add HDMI configuration options
      commit: 7f90516edb5cbfa4108b92bb83cbc8ef35a4cccd
[6/7] phy: freescale: Add DisplayPort PHY driver for i.MX8MQ
      commit: a2717f1d7c64660679441c407b96103abb7c4a8c
[7/7] phy: freescale: Add HDMI PHY driver for i.MX8MQ
      commit: 8e36091a94d2d28e8dccb9bfda081b2e42e951ae

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
