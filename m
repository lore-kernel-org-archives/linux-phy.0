Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33BB2C27C76
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jan 2023 14:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IiV/L5Mtu+2QF0Yf98I/2Itn397MZXR9UnZHBp1dK2Q=; b=Iz1cFbgYUlbi6r
	Hzmen4zaJ9fXJmvSKhiaKwiSNWEj86RfyW0CcGiVusqK6mlfuJb5x5Yfhd0tzGVDjTz5NqpiDz0TB
	6jezb+VBEDqPAnvK7sbLdSOBkwan1SRPMOCHWf8H0QU8YSrWVjjE0wOvV5agO0Lo5CDIy3GOlDfJ+
	niY6feOJUid/uUUism998UCAjPFWRTXWeFuNqeJSTp4OZg+DzeJIO4zRdggphDgXKrRpFbkZk2OY7
	ifYRKKMEoPMaigC4nZI3TtTBasWkrR2BoZMTxR5m8JXEk848gnqabtBTokofRIDPBeBl/2AibfNWF
	jyXc+nQ1vJ2CoDXLWfAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKgyP-007ctE-FW; Wed, 25 Jan 2023 14:42:01 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKguy-007b9u-53; Wed, 25 Jan 2023 14:38:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 707F5B819A2;
	Wed, 25 Jan 2023 14:38:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACCBEC433D2;
	Wed, 25 Jan 2023 14:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1674657505;
	bh=0pN6iUk0frIEY9jd5haQTHTxexp54lAmG4VMISAveTs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bszh+lRbTRrhEPHElC/vn3g0DHY+0OEb5+8Y4cW1RAwFlJ+xv55Y2sf/joav/FerR
	 GW+LYrzb/W6VwieJHov+E95G+R77WxMTqVVP2HU2ehwBsBP58XsSNlmEamrp025KSf
	 mdsQVM+RfHqiuuyyUVYXFGngBgWHxz+FR/B7SgW0=
Date: Wed, 25 Jan 2023 15:38:22 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Vinod Koul <vkoul@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
	Madalin Bucur <madalin.bucur@nxp.com>,
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
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Russell King <linux@armlinux.org.uk>, linux-phy@lists.infradead.org,
	linux-doc@vger.kernel.org, netdev@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v2 9/9] usb: host: ohci-exynos: Convert to
 devm_of_phy_optional_get()
Message-ID: <Y9E+3pSA6/aANQpu@kroah.com>
References: <cover.1674584626.git.geert+renesas@glider.be>
 <3adc5dd1149a17ea7daf4463549feab886c6b145.1674584626.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3adc5dd1149a17ea7daf4463549feab886c6b145.1674584626.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_063828_370114_7395E12D 
X-CRM114-Status: GOOD (  14.12  )
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

On Tue, Jan 24, 2023 at 07:37:28PM +0100, Geert Uytterhoeven wrote:
> Use the new devm_of_phy_optional_get() helper instead of open-coding the
> same operation.
> 
> As devm_of_phy_optional_get() returns NULL if either the PHY cannot be
> found, or if support for the PHY framework is not enabled, it is no
> longer needed to check for -ENODEV or -ENOSYS.
> 
> This lets us drop several checks for IS_ERR(), as phy_power_{on,off}()
> handle NULL parameters fine.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Acked-by: Alan Stern <stern@rowland.harvard.edu>

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
