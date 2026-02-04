Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C322E9D3FB
	for <linux-phy@archiver.kernel.org>; Wed,  4 Feb 2026 15:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0BCCrjELpZZjFSps8TQ94d1IdkYTmdbbO0LJX6U7NLQ=; b=QS/fH128fAUs2G
	2lMoIwVnUOAsA7CjXOVKgcf1cMuqlVOp67QL+4PXjWFQmyV7ZzM5J5bHVkArOUGfn2HnCrFsNN9+B
	7q7DWotOjKxCr84CweW4d5CSF7M5Lk2H9nd3iBImkkjEeYn2fZumzFZsq8zXsUOmvtNRMMv+RIeJD
	K8hraHpzkU3oyqG3igRrfoBJ2P1my2md1oHxqexkHNZ3FzL44b48AVyTrJF/toMpRy26rLUUrb2FO
	Pur1wThmmGtseobayC7dctGnuYITFM4iuSy36zYOTKY2qEnKvyx4RV2vUmWgvVmxYhYAAOBqXAE9P
	g3yALge4p4xbgDfUN7cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnf37-00000008gvQ-10fd;
	Wed, 04 Feb 2026 15:44:13 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnf34-00000008gur-3uMx
	for linux-phy@lists.infradead.org;
	Wed, 04 Feb 2026 15:44:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A2B4C44352;
	Wed,  4 Feb 2026 15:44:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD8C9C19423;
	Wed,  4 Feb 2026 15:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770219850;
	bh=vD/KVhgUZyeE1EW1D5TuWGmEd6C8t5WzVAk5EhRyxo4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=dMQEP+XS9GG/VZBM+zTWiD94+LxgthXbv9HdMSA4X4GF/dCUSEzdj76g0SfnTHjgv
	 AE5HuZKeknKX9KHsxIVv/J1iGbA3uRzcbagsWCljhjGh0feHdNK4+ccJEReYaHhPNK
	 phgpDa7ujLzS0k3/KX55fBET4gIcKJHBb5OFN97ZrhmagJTBEIszhMB48cL/nSfLYm
	 sOeTY8ch0IlWjJjAH7ZujdkoC+XZeiSAc1rBbJOeo1doDTUdz+BWFcsOZvPE3hyZs1
	 rdb1pVmVRbC9Sixpx9qHe/cH0dR2HU4ic4MJZFFRYfnlQ3PYpO/S7j0uQyjWyoc7nL
	 De4En43zIQ/9g==
From: Vinod Koul <vkoul@kernel.org>
To: Joy Chakraborty <joychakr@google.com>, 
 Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>, 
 Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Alex Elder <elder@riscstar.com>, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Inochi Amaoto <inochiama@gmail.com>, Sven Peter <sven@kernel.org>, 
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260202095655.1289973-1-arnd@kernel.org>
References: <20260202095655.1289973-1-arnd@kernel.org>
Subject: Re: [PATCH] phy: GOOGLE_USB: add TYPEC dependency
Message-Id: <177021984653.133434.2885846015320868035.b4-ty@kernel.org>
Date: Wed, 04 Feb 2026 21:14:06 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_074410_996006_D0023C49 
X-CRM114-Status: UNSURE (   7.04  )
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


On Mon, 02 Feb 2026 10:56:52 +0100, Arnd Bergmann wrote:
> With CONFIG_TYPEC=m, this driver cannot be built-in:
> 
> arm-linux-gnueabi/bin/arm-linux-gnueabi-ld: drivers/phy/phy-google-usb.o: in function `google_usb_phy_remove':
> phy-google-usb.c:(.text+0x24): undefined reference to `typec_switch_unregister'
> 
> Add CONFIG_TYPEC as a hard dependency here to force a clean build.
> In theory, compile-testing with CONFIG_TYPEC=n would also work, but
> that seems pointless.
> 
> [...]

Applied, thanks!

[1/1] phy: GOOGLE_USB: add TYPEC dependency
      commit: 8a13968460004d21dd0ca457b06fccfdfdfafd6c

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
