Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EEECC4829A
	for <linux-phy@archiver.kernel.org>; Sun, 11 Feb 2024 18:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9XJyY94DVgRCkEFxcwwU0XbWM+NzxQxioMrvkrwWhOc=; b=cAkpvjJ+O/PGuW
	4cYWVl2LtuUR8NdvmWj6Mn19gmd7yzx91CTpu2yIRklD8irWTb7u1BHkyK3yv06K1IlKKI6QDO46m
	kcvCCddBXTMlOfmjNsx9HzbGnMWcSu0hIncBxG+0miwAUjOpTKvfTCmW7m5Eo/E7ER6/+/a0ph+WG
	86I/Ndm9e4jtdH/CbP3U/autfTI4tp7po/HrTiEn7e6Pdvs0XMzv3s3R9X4Xv9MWA2+eXXHw9c1r3
	IsvA/enPPxrSnjYIgUuocVo6/qHibA27ld1NKWIc97ackY54o/8ADxTDWzcl0ySd28a/GiThNKjLk
	Q1knqUUiDHUenn2xcWzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZEzN-00000003AvN-2UsR;
	Sun, 11 Feb 2024 18:55:41 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZEzD-00000003AoS-0XmM;
	Sun, 11 Feb 2024 18:55:32 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 8406587C4D;
	Sun, 11 Feb 2024 19:55:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1707677728;
	bh=58z4CTvLg4x4eiEhzPFwwwmKQDV91lyZxL55+eo8WVA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Cxxgr7NE5mYdOvBdyFh75MncEiEqoLzzhlINwgbL5LhtJEubLqkHTGQPB8D5gG5Zc
	 9HmptjBpTccJ06HFRwy9UXpebGperRrK34s5yb4qdFeA8CvUS+ivrQpOOVn/ZZs6Hr
	 IGMS9Yop9MOuFR7WDDDVfOv55XWSwytTUellHnWi+6M+qN9kv5XCYxEQZb4qFDYSHL
	 UK26pmkhyzEy2zhM3Cw2GEpXrDWj7CzU+87jA1isx5Y1rpH/bRmcTEXY3ULKjdCi53
	 2Z2BEfc09wjIeNNcP07B16oiV2jiq6PwGTiXckmznatOoF1y4/pVf0Gno0iOsQikkA
	 7/NE6rl2M5jhg==
Message-ID: <6ecffc5a-d464-412a-9bd7-c98a5536092d@denx.de>
Date: Sun, 11 Feb 2024 19:52:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 5/6] arm64: dts: imx8mp: add HDMI display pipeline
Content-Language: en-US
To: Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Cc: aford@beaconembedded.com, Lucas Stach <l.stach@pengutronix.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240210204606.11944-1-aford173@gmail.com>
 <20240210204606.11944-6-aford173@gmail.com>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20240210204606.11944-6-aford173@gmail.com>
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240211_105531_465991_98C8580E 
X-CRM114-Status: UNSURE (   6.84  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 2/10/24 21:46, Adam Ford wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> This adds the DT nodes for all the peripherals that make up the
> HDMI display pipeline.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>

Tested-by: Marek Vasut <marex@denx.de>

Thanks !

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
