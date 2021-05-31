Return-Path: <SRS0=BSok=K2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD598C47082
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 11:58:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0F46060241
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 11:58:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0F46060241
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BeQ1kTS3fOTJCbqQLvkwcLF+HKWcjI0agW78LhcQRIE=; b=y7zfua6zndQy6h
	bcUlfgz4fktVvm7Sf6m1wGj04mqNNAgd4q1q3jwj9ys39IvxdShT1qHZtvlmK9tDQGjOj886GccUE
	AYBN6AqnCviwVUntOgfwHjdiWYcFzNX4EcpxADx/mDpnz9gAH+kx65XIU1vr/OBiUgZ/sE0s/f8S3
	iqMHSiuOrORjfQOwfCnnp+FpnxOZswqHuCsqS/IDdc3+zxwS2A1IxXijabU/1HDA5QJeY1PvTK1rY
	Q6hEZHvcbyVmSxQDJhZsazC1Agy/BlQZqb3Kea5l3rbAV2tq/VSHUzSWQt9ZkjlczlK5x0U2lx0w/
	p96ldXd/9n27yNZsmSiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lngYT-00C314-Gw; Mon, 31 May 2021 11:58:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lngYR-00C30G-6K; Mon, 31 May 2021 11:58:00 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lngYH-0003WZ-Ce; Mon, 31 May 2021 13:57:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, huangtao@rock-chips.com, kishon@ti.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 david.wu@rock-chips.com, jay.xu@rock-chips.com, zhangqing@rock-chips.com,
 shawn.lin@rock-chips.com, cl@rock-chips.com, linus.walleij@linaro.org,
 robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 vkoul@kernel.org
Subject: Re: (subset) [PATCH v5 0/4] convert grf.txt to YAML
Date: Mon, 31 May 2021 13:57:46 +0200
Message-Id: <162246221869.3034596.11877935008610274451.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210512122346.9463-1-jbx6244@gmail.com>
References: <20210512122346.9463-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_045759_257317_54BD929E 
X-CRM114-Status: UNSURE (   9.13  )
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

On Wed, 12 May 2021 14:23:42 +0200, Johan Jonker wrote:
> Changed V5:
>   changed compatibles for rk3066/rk3188
>   add rockchip-usb-phy.yaml
>   move and restyle grf nodes rk3066/rk3188
>   remove applied patches
> 
> Changed V4:
>   revert separate schemas for each 'if' subset
>   add additionalProperties
>   move properties to top level
> 
> [...]

Applied, thanks!

[2/4] dt-bindings: soc: rockchip: convert grf.txt to YAML
      commit: 2ed2732ef28aefdc3b495409fbd05cc388a73c62

Reapplied this, as the phy-related patch also got applies to
the phy tree now.

dtbs-check was happy with me in my test right now as well.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
