Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CB2ED1CDA1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Oct 2024 05:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJRDixiHCj1YJIUTlRC9nKnORgaoCz6kGiW9yC5PniQ=; b=UFkRF3eCIlNC2o
	CWKv9AYnKiRE3wrFsmbRTuxSQalSafx+IvCFKg1oD7+HwNutPxth9ZJ1oiqDsyBWZ1hLcjP5EFgAP
	yOk76t6J9jrCyNQQ7JxDGGKGVumd06zKDhwvj4ZhLy0610JPNlv5/ItJZ0V3ve3YUxhmbx95Jp1po
	UqbrrzjOyc5/nLxnSoSeU4JxLmvNMg83N13osVOMnNopFDmCgz9Kh5qgVbH6Fo7xPaaIW35hdYF5d
	ViAVr8/kAKVEX1gbOCI8z4IsTiun3dlfA5eYwf2FnVmrCgQ+NfRcTD1R8+wN0cQVn3K0FKeynONO5
	jetrPoUpROMd36rqUbwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t37Wx-00000009fSg-0D69;
	Tue, 22 Oct 2024 05:34:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t37Up-00000009ets-3FUu;
	Tue, 22 Oct 2024 05:31:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B5DDB5C5A34;
	Tue, 22 Oct 2024 05:31:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CC3CC4CEC3;
	Tue, 22 Oct 2024 05:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729575115;
	bh=WpzUCD5oMsbsOUreT838w9WGsW4pfnJSXOpKPCHuzLo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=S2IyjgqM5W0v7zmpWqqYUZn0H6eP7jFPoFQUgwNuo5OYXfxGUrg0FgfL0pXQyyfYX
	 m8mXRW3oYdAHAHLWsTjQo8qR6r4zj2hwGp8Xx98VG3XB2/GcpS4cKiMcaYd2ntG/vo
	 AvB5d66unhA7iMHLXdXEyLoT4pVCnRZSYZ6Gy4knKkxgJ3MVckGv5+LsPiVhE+EdXZ
	 GRXcTr/S4kVWq0VdUGZAuVpRN9N7t3MdTzDl1TobRCPyp+dxvwfTprtF8yLv+Cp94O
	 K1oqFa9bwuN5cSaWGmq+4UNp/dGpDI3ptQNKOpgnCa8OL9TYigIW3ShnwoGyf0SXxi
	 znWN5LEy0nLOA==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
 festevam@gmail.com, Frank.Li@nxp.com, marcel.ziswiler@toradex.com, 
 Richard Zhu <hongxing.zhu@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev, 
 kernel@pengutronix.de, stable@vger.kernel.org
In-Reply-To: <1728444303-32416-1-git-send-email-hongxing.zhu@nxp.com>
References: <1728444303-32416-1-git-send-email-hongxing.zhu@nxp.com>
Subject: Re: [PATCH] phy: freescale: imx8m-pcie: Do CMN_RST just before PHY
 PLL lock check
Message-Id: <172957511146.488725.17746215467139693428.b4-ty@kernel.org>
Date: Tue, 22 Oct 2024 11:01:51 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_223155_891697_C8BE6624 
X-CRM114-Status: UNSURE (   5.52  )
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


On Wed, 09 Oct 2024 11:25:03 +0800, Richard Zhu wrote:
> When enable initcall_debug together with higher debug level below.
> CONFIG_CONSOLE_LOGLEVEL_DEFAULT=9
> CONFIG_CONSOLE_LOGLEVEL_QUIET=9
> CONFIG_MESSAGE_LOGLEVEL_DEFAULT=7
> 
> The initialization of i.MX8MP PCIe PHY might be timeout failed randomly.
> To fix this issue, adjust the sequence of the resets refer to the power
> up sequence listed below.
> 
> [...]

Applied, thanks!

[1/1] phy: freescale: imx8m-pcie: Do CMN_RST just before PHY PLL lock check
      commit: f89263b69731e0144d275fff777ee0dd92069200

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
