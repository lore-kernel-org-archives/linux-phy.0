Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFF8606A326
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 12:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DLRVBfDr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=QNaGY98f
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ThZnfm8JiDWfwJaRQvykjAbIXKMufEfXWUPfL6slH/I=; b=DLRVBfDrrLMWZ2+3NFoepui8ag
	27+sMkaqGuyWj/OkJzGaGBnNHxZofT7yICeSwP0oETQ1kTai4rsj2bwciw4P0X+nNWpq50jwJm2Ox
	/SDzVoYNkJQb14P4z2eDFrirMGkIqdnaNtSJM1bOd8WINwOzSNKIjKwHyxvr0PzAwD4dqC5W1FUdD
	g0TcPvEBTg0gb1KD7o/7+XS0KV/ud9uFfGDsQeeIF9vfty2jWjEeqtsbPbZKtwDA4UeYiiAWK0EBS
	UFAvbPr7geKqAWsDivVKJ064hgHz6ikPPAU6L5zGizUAn4JwReBlX+gh37CaPBq/Bkkfr8LMxV+j/
	en48I0uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVpY1-00000006VUH-2jqR;
	Tue, 24 Nov 2026 12:22:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVpY0-00000006VTk-1b5q
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 12:22:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 271BA43EC6;
	Tue, 24 Nov 2026 12:22:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCCED1F000C4;
	Tue, 24 Nov 2026 12:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795522975;
	bh=JB7XXVrcqNhiMQO53OXYzOYPpCwhyCEvNY7bBBKJcTA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=QNaGY98fRgb98Uz8ux0r5n7xu+AwoU73EeSruV/rkMHGFuQgHW3CRbFTzbHsVYpel
	 fCxQWJmQYDh/5rwVTYaRCaH/3HMNHPV1Y8husdoSyvfA4x4lbkbf4qe5zDU7dLBXdF
	 3KkwbbuqznP/Q8h74hO2NYwXjpo5coCnAxsQL8QII6sqPXK28A90ceYiy7q3LKuTH8
	 nsuZ7BiqPu/VuQDK958Wz5ZKcSZiUbSaz7pHG5xrUZQtIK1l9PlQjDtp2YiAdCf5/z
	 cBL8vo3FP/uI0pzMk7+5AKsr+lOTU7bgzp7yKf33qJFNxDdL894CNLbjrteD0d/pub
	 9nl7RGSh/WDUw==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org, 
 Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org, 
 Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20261118163134.2149894-1-ioana.ciornei@nxp.com>
References: <20261118163134.2149894-1-ioana.ciornei@nxp.com>
Subject: Re: [PATCH 0/3] phy: lynx: add support for downstream retimer PHYs
Message-Id: <179552297252.405998.9355453865503403005.b4-ty@kernel.org>
Date: Tue, 24 Nov 2026 17:52:52 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Wed, 18 Nov 2026 18:31:31 +0200, Ioana Ciornei wrote:
> This patch set adds support in the Lynx SerDes PHY drivers for
> retimer PHYs which can be found on the board downstream of the SerDes
> lane towards any connector such as an SFP cage.
> 
> The first patch extends the Lynx 10G and Lynx 28G dt bindings so that we
> allow the phys and phy-names properties at the SerDes lane level.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: lynx: allow downstream phys on the lane nodes
      commit: 5f7f673778dde3fca552cb7ad30b5f145774da3c
[2/3] phy: lynx: get the PHYs listed in the lane nodes
      commit: 9b98db3e56ded4e2990c5f1fb508cf45a78fb547
[3/3] phy: lynx: forward the phy_ops to the downstream PHYs of a lane
      commit: 3e10636038ee8a9430f791777f50f73c48afc5ad

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
