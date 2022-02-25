Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59D32C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 08:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yB6x41UMVUt8phrhC3rD0UlXMAHF+fi9wCuncesCy0M=; b=ueGobUrgrg2TgI
	iExg8LBb+Q8OoY+lbjm0VkrsWAOijnqDULoea+rQTxBmSiz2CyV3SCTQc5qXna0HAAV7Jq+S0tjFf
	7Vi33JExoa5UOjlCrMr0x5E8u2zBgZRt+UzQyhNzACTf9+EGv7fI8d92Vl5ITMmGItUicDSLsITAB
	ma+/vbub/kwFq7NehH6H5RP3zYZTBckyD74VXbKoJtl2TPFEs7CyL1DCxjq/6hoIyZY4jgfYdDPzu
	iBCung5ICG/5lgPJA1eYGOU7mwswG9sRstY4v38y62wMSp05e6QscWAYy5ITYthMFHUSUFglHqCKf
	Xr6GJug7hktsvaAF+wxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNVug-003wUC-Nn; Fri, 25 Feb 2022 08:25:18 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNVu8-003wIb-Sk; Fri, 25 Feb 2022 08:24:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1AAB161C2F;
 Fri, 25 Feb 2022 08:24:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE074C340E7;
 Fri, 25 Feb 2022 08:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645777483;
 bh=d9Uy2ioP2Sl9I8LOHRagRhdSaAoY2P57qNiGvE7DJF0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PGlDJkWZHxFJLs4Q/Vb75zUX0yT0U0veE1ybn+rPHa8UmPzRAZzqYj5ZECv9vR/ee
 1/OEEl5gm0gAR/pMiLUeDG3ydgVVgfXLKVdyt/YauhEZ5L9DACw9Vpvkfqx2rwAjv6
 /2xEhpG1NlaaFBzEolkPApV4WmRIkfrE62kgblLR15oxGjmfyt03fQZgLdj0YKHI5p
 2+2eyrlxVIW58RyKh6fM/H7gkhlL0yIZGYOG4aPHubb6TVvnc9eMb52ybVRqARECwQ
 cpV1U6Ge07Ft8UteU/6GizOwhFqqNT1g4CiN7jOJo5JT2o9q/8elNUAYhiyN4013Gj
 G9htmeIDt3TVg==
Date: Fri, 25 Feb 2022 13:54:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: Add compatible for D1 USB PHY
Message-ID: <YhiSRzO8MqIjRNuR@matsya>
References: <20220203013558.11490-1-samuel@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220203013558.11490-1-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_002445_008427_4EC4E3F9 
X-CRM114-Status: UNSURE (   8.54  )
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

On 02-02-22, 19:35, Samuel Holland wrote:
> D1 features one OTG port and one host port, like the A64 SoC, so its
> USB PHY supports the same set of properties. Add the new compatible to
> the existing binding.

Applied all, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
