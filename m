Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06375C0015E
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jul 2023 10:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QRDASqWCLM2MxwQXzpRpC6/xlM91OEsaXcOxnkUy2Zw=; b=B0US2fBhXrurqg
	opkWxkOOgct5A9tKKDj6gWizWrdU45VuANlSI/BWBAXrpiatnCoaZktF7ae2Fx/O5VHp8si1cV4be
	g6QqbheKKx2drO9KpOGYfWph4p3zirK4zbkf6Atk5k/pKECTUIT40rduvHihW5KsM3hIbGZutONfp
	5zsj4KxAYJnhr2rKsrYEoDMKjJ6Cq1eUvzcRz08+EnfAHhyHBrT2Uu9Ee6qQew3EB6xB8e4jaJvpR
	9j5A10+4KtVpJfet//Tq5y2L7WPgFyOorzWppvKeeYccgqtmoXtQZ+V6i43XXva/vCRBjHWsir9Fh
	MHhhDRYLG+bS1RyPOdBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNtEP-003uly-2J;
	Mon, 24 Jul 2023 10:56:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNtEN-003ukn-2K
	for linux-phy@lists.infradead.org;
	Mon, 24 Jul 2023 10:56:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1AA946108C;
	Mon, 24 Jul 2023 10:55:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3540C433C7;
	Mon, 24 Jul 2023 10:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690196158;
	bh=V93FsATGQZq3mYichbx3eTNdkqE25WFY/z76Vc1YDZ8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=DdIUSIyANh6xVb8UzU91hyDr1IjUOoh4kNO+pWXoEh1RVvH2xzH5P2J3inXWl3NH1
	 srORuthKzd/VjYfTRCw2m7VHeQv7dOHZFdHEwfWcD77EhMzZgkQMoizKMcMoeAIFS6
	 JdSPbEewf0aKQ7QaEJk75p0tbcpghew6B9+W1zG0qJn86NmoECpgJtYneUtNTog9b/
	 GmVsNCq0JMiYd+Cf+rn59SiPq2ozzKcc/pIe+GlRpBI7/GGoSgkNLi4PWrCDhisNz6
	 +SWZfhGTg7KDnOTFHw/NkipxjH3sk8mW07X1Dk4cFF16pygdfitrMYuN+7zFsfMI0h
	 adPFo2MuSzNTw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Jack Zhu <jack.zhu@starfivetech.com>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20230630093056.46904-1-changhuang.liang@starfivetech.com>
References: <20230630093056.46904-1-changhuang.liang@starfivetech.com>
Subject: Re: [PATCH v6 0/2] Add JH7110 MIPI DPHY RX support
Message-Id: <169019615549.466601.16136359064453878299.b4-ty@kernel.org>
Date: Mon, 24 Jul 2023 16:25:55 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_035559_805528_DFB1EDE6 
X-CRM114-Status: UNSURE (   8.43  )
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


On Fri, 30 Jun 2023 02:30:54 -0700, Changhuang Liang wrote:
> This patchset adds mipi dphy rx driver for the StarFive JH7110 SoC.
> It is used to transfer CSI camera data. The series has been tested on
> the VisionFive 2 board.
> 
> changes since v5:
> - Rebased on tag v6.4.
> - Dropped patch 3. Because it depends on the submission of others, it will be
>   upstream separately later.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: Add starfive,jh7110-dphy-rx
      commit: ae07a9a865a4eb30223c21eae70ddb189da6ee9a
[2/2] phy: starfive: Add mipi dphy rx support
      commit: f8aa660841bca12aed51c967ed9bdaf1d97996ed

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
