Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF8C0EE4993
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 14:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTOSLrC2m8t+QDVpnJhQc+91Bfohk1rs1bNjQivpOW4=; b=os+v5sO7SH0EGY
	ezWhN69+C4zcBk+aLevfvnyWj64FoGUBa1jlb8+WhnjnYF0XFxcuRIe+ofka5khh1xYt6jj6fIMp2
	QAho5blYEQOvYtd9ppKAfj7cBa+sGP4yM/TSc1K1S28y2pGQNeexoiChNQizqtFNk07SlJbTdTw5f
	ubggeiRWObCCdbJ8hGk34L1byXCj+SGlbdL3BLGj9wXqVLm3dSciLXxiVtDQd/WuREvW7Pet64QOi
	AmQJ30X22Qt+ghYVBBNydf4qmWDl8pQ4HtGI7UVeSFpqp1J0VNIHE5JEa2q/EpYE5WCk8aouh0RSW
	Uw5CAY4rvaaYlnB1Bj1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYS59-00GBKK-1o;
	Tue, 22 Aug 2023 14:10:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYS56-00GBIk-0v;
	Tue, 22 Aug 2023 14:10:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BC52365824;
	Tue, 22 Aug 2023 14:10:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65EA2C433C8;
	Tue, 22 Aug 2023 14:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692713403;
	bh=Yrio1+MIXekBbT7kfTvlmqJb0m4Lpl2n4vkxBi00PvY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MT3SeEBDslGb+2TtMUzNhq2BN0eRSFYe5l1uI435qxp/llbpjCnmj6Q+kHIQwlfHe
	 fkZ2lceokb5vflfrN50dev4Pw6Z1ytJ0ixdIRjAACYB1zqXgOT1sa/dwtys80rMCM/
	 tta5sU29d2lXvCuUxu5xgEv/jL17SGaElEEzIMrfkR31Jx+fzjT4qAdHJ4Pjs4KQej
	 vow7pKJe23lyoPULxs5pu2WgYREbQIz4QobnCbCt/LP0TvlHtWL6wu56Di5GRaS/MM
	 0vj3fx9l+CX741gV1PTbhyhQgtqtAua+6Pa3s6qFVuHPtZsVP/8METZQh80whaatEk
	 9LdzOsyDvIY5Q==
Date: Tue, 22 Aug 2023 19:39:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Sam Protsenko <semen.protsenko@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	JaeHun Jung <jh0801.jung@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 2/8] dt-bindings: phy: samsung,usb3-drd-phy: Add
 Exynos850 support
Message-ID: <ZOTBtz/DBTXSsulS@matsya>
References: <20230819031731.22618-1-semen.protsenko@linaro.org>
 <20230819031731.22618-3-semen.protsenko@linaro.org>
 <517510a4-ab77-c34e-0fcb-33761786936f@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <517510a4-ab77-c34e-0fcb-33761786936f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_071004_364349_4CE0360F 
X-CRM114-Status: GOOD (  13.63  )
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

On 19-08-23, 09:11, Krzysztof Kozlowski wrote:
> On 19/08/2023 05:17, Sam Protsenko wrote:
> > Document Exynos850 compatible. USB 2.0 DRD PHY on Exynos850 has two
> > clocks (ref and phy), which is already described in bindings.
> > 
> > Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> 
> You should probably split the patchset between separate subsystems, so
> Greg and Vinod can easily pick up their parts.

Yes I agree :-) if there is NO dependency pls split them!

> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
