Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E562EC4829A
	for <linux-phy@archiver.kernel.org>; Sun, 11 Feb 2024 18:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YoHiucN01Dhq7bOdGnb1V3sCcEZnbkyFp7S3cI5dXxw=; b=dRUd/BMwCjBLyI
	Dbv+96Jk+mkMx/7psjJdEOmnCgzdHftb5w57emwzQeed4ygLYj/n9pJyfdFrQhMrXB4ulBJU1Jnsv
	3VgXhNJT3oLqyQ0CPDhtLpcLnhoqvQjG71HfapeARYtWo+T7jMsawVE28kgtItdkIDAQkYLkOaLbX
	IC41zLaNO2ers2jThv2oePsjtuwDl3bqOHj5QJTLN1axRQhwQsd7/JScOxROY1PPUAbLCL6DNeVwH
	RWCfeDisj1b2qQpDlc+2Rpq3cRl3TLeHgGmwZhUM1kZ5kwbmpSWgeSsX+OkPEvSbVQx2RMrq9lrgy
	rQMDb0TeIE4I4i3VCrdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZEzL-00000003Atn-2Gdy;
	Sun, 11 Feb 2024 18:55:39 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZEz9-00000003Amw-38tq;
	Sun, 11 Feb 2024 18:55:29 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 17C5B87BCB;
	Sun, 11 Feb 2024 19:55:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1707677726;
	bh=/N5fydO1BhWvU1R63Z0dW7DrKw+GkQnAGnQpZ7FBXPY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=pZUGhqZp0gb8osEz4ZaulUzfhER0c8v+XU1pTloHA2jAMcTHAtZ8hPtcvlFL3otF1
	 sP9gRuhcKhhz3aBVrgY6KSpgoARSLcKzOXwgOCMsGKlW9rdR1QqEIUbXK+h3vHJWd1
	 5YfN7L5CAl8E0tunZ8cvW9NLwIBD7jsKHWftq4Av/O61nD879WHVNNBJVUFywG5AZQ
	 WYlzFenpEcMt5mdnjzRZZnjHDc8s3My1Cn8PUKGDZvy6gSFFXBW7rqkOQqM7YjQEvZ
	 jZe94Ac6JUtpFe23ZfgSdrmBmEkrvvzvuAGCO1o8BXYZNDYIWd/3HmntI2jLznjGlu
	 77gAABU1rlVaQ==
Message-ID: <0128bac7-eac3-4b80-a888-90e6596320cc@denx.de>
Date: Sun, 11 Feb 2024 19:52:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 4/6] arm64: dts: imx8mp: add HDMI irqsteer
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
 <20240210204606.11944-5-aford173@gmail.com>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20240210204606.11944-5-aford173@gmail.com>
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240211_105528_008620_3627E15F 
X-CRM114-Status: UNSURE (   7.13  )
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
> The HDMI irqsteer is a secondary interrupt controller within the HDMI
> subsystem that maps all HDMI peripheral IRQs into a single upstream
> IRQ line.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>

Tested-by: Marek Vasut <marex@denx.de>

Thanks !

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
