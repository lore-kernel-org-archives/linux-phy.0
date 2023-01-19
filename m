Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D361C6379F
	for <linux-phy@archiver.kernel.org>; Thu, 19 Jan 2023 12:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bj5/h2aNApX5UDOvw8X+5y9NtGC/m32FZwzAvdNHxwE=; b=b1chG9oJ5VXsjO
	/G8fBhkWkGcTDNscQW8GO87fhyTDNHzsdYzg5nPaR7gq54OhEXZwkaShliMnrPYxwpk1Qluqd4Cye
	vNwkpMVJrfn0TlGZZhRiBP3y+Jyry/gKrpQ0YECr+p7DY7S+sPzRHUa1BzOhhXMNU19HbSqOu91RF
	R2NfgnTpgDL9OoZGAEzmF6xOTSpbuxSh1TsE8BR+T4IzCE84e3zRj1DB8SWomsAkz7RO6V2l0ZjLI
	N7IJTJ8byHdWf1i2if7Y7nXdMzDsdHvivHThbFl3Lud4etOiXHQoTirwTldWmX5Qrfd4XflxmogC7
	u558awqyZVYn625v4xSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pITrG-004nAQ-T5; Thu, 19 Jan 2023 12:17:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pITr6-004n7l-2a; Thu, 19 Jan 2023 12:17:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9D41460BB5;
	Thu, 19 Jan 2023 12:17:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84736C433F0;
	Thu, 19 Jan 2023 12:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1674130639;
	bh=eXnAnfAUFHlEjL8uPdD40P2OapTCQ/xIdBuBqDGaxJ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N3y+xYmdxWPyzTRr5EgvegVVKvaEEiFz9xtQ2SjdHaitSRqwc9lkB2dYdTLvFgRxP
	 WS2IsQhPHkr20MFa8a4vhtHE9FEbFO8gs7eQHB3azzZz4ygqjtf+heOwuN20H/rhSA
	 QANZpJZuD2OHH+j3xTGX6G8Z/6gTpI0JzPATTKvs=
Date: Thu, 19 Jan 2023 13:17:16 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Madalin Bucur <madalin.bucur@nxp.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	UNGLinuxDriver@microchip.com,
	Thierry Reding <thierry.reding@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 6/7] usb: host: ehci-exynos: Convert to
 devm_of_phy_optional_get()
Message-ID: <Y8k0zOQan6SihtUU@kroah.com>
References: <cover.1674036164.git.geert+renesas@glider.be>
 <96fce347ffa2d6efaa3fd24bf2d91e2a0a91c371.1674036164.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96fce347ffa2d6efaa3fd24bf2d91e2a0a91c371.1674036164.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_041720_172063_BD282450 
X-CRM114-Status: GOOD (  12.71  )
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

On Wed, Jan 18, 2023 at 11:15:19AM +0100, Geert Uytterhoeven wrote:
> Use the new devm_of_phy_optional_get() helper instead of open-coding the
> same operation.
> 
> This lets us drop several checks for IS_ERR(), as phy_power_{on,off}()
> handle NULL parameters fine.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  drivers/usb/host/ehci-exynos.c | 24 +++++++-----------------
>  1 file changed, 7 insertions(+), 17 deletions(-)
> 

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
