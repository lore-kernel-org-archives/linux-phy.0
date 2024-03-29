Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50011C6FD1F
	for <linux-phy@archiver.kernel.org>; Fri, 29 Mar 2024 03:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wsovsWNJbdYEc6okd8phjpAsGRffj0qqhfToAYDqLcA=; b=rHdpZJd2zayMtM
	GWk4/3IV/XF51caYi3Lhjz70EaZ56qv3iA5sxXKZhd7URF+ipphqT1gjzDjHpsZMpHZpKwEsPwzDv
	GH9TWdG9q2VfhY479CC7kb/LRrccz5VkXrvy3isfkTTpglvCXnVBd1ttWeyCuMERwDhaWUBfKCUeL
	TjyQOtzOA7lGBAYXWqmD5gaq8xi/Zshb2FnrjPj7ZpcTdPUgcrolnnji6RrWU4GU59DwR0vJC6gwV
	5ZjKFgdqDYBQn7W/UVRVQq35z1WHjcpzp9Qgp/89JzD1XZS1NeWU5AU72hkwvrbS9+PFLc+QKoeYn
	N7uKyooq0SNzTyFzWupg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq2mR-0000000Gdgk-3rE7;
	Fri, 29 Mar 2024 03:19:47 +0000
Received: from mail-177131.yeah.net ([123.58.177.131])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq2mN-0000000Gdft-3Az8;
	Fri, 29 Mar 2024 03:19:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=h8cOZy/XmPaW8U15xIsY8Qi7DKjXQPidiqYs2w/rIm8=;
	b=Kxoaro4CBxsiMM6cSL7pQIQDb5AumCfW9J3fXMxkI3yX69GQt46stjvHdr7egl
	L4q6mwLTvWR6DUPs4hxhr99/RxA1vd5iYbtUuKeE0g8E8wli0n0Xc/JqPYiwzCms
	CBjCZ5DZg77H88HU7RikpCvJVrJ4j07QvM+ZjQIb5OItg=
Received: from dragon (unknown [183.213.196.225])
	by smtp1 (Coremail) with SMTP id ClUQrAAXnw4yMwZmLmJdAQ--.20927S3;
	Fri, 29 Mar 2024 11:19:15 +0800 (CST)
Date: Fri, 29 Mar 2024 11:19:14 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	aford@beaconembedded.com, Lucas Stach <l.stach@pengutronix.de>,
	Marek Vasut <marex@denx.de>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V7 3/6] arm64: dts: imx8mp: add HDMI power-domains
Message-ID: <ZgYzMirCta6FbD0I@dragon>
References: <20240227220444.77566-1-aford173@gmail.com>
 <20240227220444.77566-4-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240227220444.77566-4-aford173@gmail.com>
X-CM-TRANSID: ClUQrAAXnw4yMwZmLmJdAQ--.20927S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUVaZXUUUUU
X-Originating-IP: [183.213.196.225]
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiDROwZVszXXHD-QAAsx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_201944_374066_69783D8E 
X-CRM114-Status: UNSURE (   6.63  )
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

On Tue, Feb 27, 2024 at 04:04:37PM -0600, Adam Ford wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> This adds the PGC and HDMI blk-ctrl nodes providing power control for
> HDMI subsystem peripherals.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Marek Vasut <marex@denx.de>
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

Applied 3 ~ 6, thanks!


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
