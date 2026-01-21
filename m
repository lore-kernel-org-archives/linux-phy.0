Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9576FD262B2
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 07:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8QuiJ1diSF3ad3IPf2DcfT+Tb4M042H93t1pwXHsPc=; b=ZNoGZajL7ZQC1F
	qJJNn20VihwjR8i9R+tEbeFwEvPAwNX4Si0S7rEsOd4qk6q0vHUFAO8JFGxFeg749HfQUbmYL+dq2
	D5QqQkZ604dolthjyp7LBE/iFXvp7dO5luws/7KY/IqYvGdWQDfaOyBcDlJb1p8cUfiTpaXxFA1m5
	E7cPIYF8dDbr9iF5jYTlFwzjcXYZWBzYiCi8InE65AM2cJGdIU61z6ufyss921/zaMQsphWR9SMnN
	6gdnZ7S97vSij2dOCTblreM0SgGTJp1kjL3Gk611zEvBz1cJlnTVodaEGOcs3lCH9oBfXpEmiLPpW
	FXKmF9biKdP6bFYuk7Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viSMD-00000004zUt-3rY1;
	Wed, 21 Jan 2026 07:10:25 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viSMA-00000004zTn-2fku;
	Wed, 21 Jan 2026 07:10:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B247B600C3;
	Wed, 21 Jan 2026 07:10:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85DB9C19422;
	Wed, 21 Jan 2026 07:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768979421;
	bh=LPTWJYAQ6qudvoyanTM4lo1W439gR1ri8d0jQlc19fc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GRs3i8EygVgM8EkxAJQiTKjnDFt5hnbi/DDet82yNMnfR93FH5G/2Tjnu36d73oTI
	 KH+Viwbz8J1udbmQ419Ww0tATIR5J9/vw5a9egx1xVPs/lRAlMiUms8kmdzBqyeFaC
	 4mJjaNqrZVKhpF6WY9zOnbpRcujFKGhejn0DPQn+wJ1PJy5gePXqcshjGg3GQlk2lD
	 uAEY7e6o18D1GStCVQj8xRb27NV1i7mys75Ixp7Z1GUAyp1XVCgLRqnMaq384/agn8
	 JrM3q/HnGgyuCJRPPrervu7qP+Vbin/r47Sda2hAQHTUxxquniUAMf35fLvGE6U6ST
	 635Ab+QCJ3Wlg==
Date: Wed, 21 Jan 2026 12:40:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net-next 03/14] phy: qcom-sgmii-eth: add .set_mode() and
 .validate() methods
Message-ID: <aXB71tN-mf6xBVFc@vaman>
References: <aW4kakF3Ly7VaxN6@shell.armlinux.org.uk>
 <E1vhoS7-00000005H1T-1dXt@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vhoS7-00000005H1T-1dXt@rmk-PC.armlinux.org.uk>
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

On 19-01-26, 12:33, Russell King (Oracle) wrote:
> qcom-sgmii-eth is an Ethernet SerDes supporting only Ethernet mode
> using SGMII, 1000BASE-X and 2500BASE-X.
> 
> Add an implementation of the .set_mode() method, which can be used
> instead of or as well as the .set_speed() method. The Ethernet
> interface modes mentioned above all have a fixed data rate, so
> setting the mode is sufficient to fully specify the operating
> parameters.
> 
> Add an implementation of the .validate() method, which will be
> necessary to allow discovery of the SerDes capabilities for platform
> independent SerDes support in the stmmac network driver.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
