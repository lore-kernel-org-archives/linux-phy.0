Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D72CC61DB3
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 17:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ekaUm2NKxAf1NKZUIp9Seu4Ys880dNfqW3u6A//9pJk=; b=XqpDhcozD7XruY
	gzLaT5UIQeOWpMz/3L7W6bBbHin85o0f14wXAoZD4WHsTYxDtErCcHPwktSfF/5RzYIXS8HlppaX+
	9HjSyp9T88rrtHc4AM3xh+blgThKZDSxleIqL9cRomAg26evASfrspWFUxPVjr27+NFQD8Vw0uVR+
	FmpquWY9dUtjWeqOGaizChtCjhH/vI1vUPORYQ+3UFVejtQmrmW3Yq3MlyEnRYFS7EIxbj5NvKaE9
	Fb8b5KPqvIu4hONWZUIw2kiP1JDoPigpk6GWHdMwA9VbXKLWIpk7Mx3exfxaE4pLFAyVl/EnoGi6C
	mfa1gKRVTOlJuq8G6d5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG170-00FyhL-Ez; Thu, 12 Jan 2023 17:11:34 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG16y-00Fygu-7M
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 17:11:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D0F3FB81EE3;
	Thu, 12 Jan 2023 17:11:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2A86C433EF;
	Thu, 12 Jan 2023 17:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673543489;
	bh=wGqSSUxokKljpXDAZgu+rOwnQLNJ0q0o/BKGpJxolX8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h24o3Or9w6yeWnIZfAja/eIea6a5MIYmk1rIWXHaPEkUIKCSyIwyV4l4a0wabv4Jm
	 4YEgIeQT2KFqd/irpxZfk+p9nEaoy238e1ctA9xEsRTVBWB9TivXHCIkHqI1n0ojZT
	 8hfPPoobR/Gg3md9qhqk3PwxLChNPGhOr1xN58Al+P3CPUP4jTBr8j9EFs4stfgMQc
	 53Q+UTIObjcDRmp6npEjjBlnmNACRthADQb8GUNQI9TXTsL/hq/F2+KJ6CmAejpQ80
	 YxiHDtPRfJpmnaEnqH/TdfNO01jSVWD4LERW6RX2UK3vpYQF/crSNuOBMXtS9dYd/W
	 7PXJcsPiLhbjw==
Date: Thu, 12 Jan 2023 22:41:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/2] phy: qualcomm: pcie2: register as clock provider
Message-ID: <Y8A/PdhFMAvbQfVl@matsya>
References: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_091132_459120_AEAF95CA 
X-CRM114-Status: UNSURE (   7.35  )
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

On 29-12-22, 13:59, Dmitry Baryshkov wrote:
> On Qualcomm QCS404 platform the PCIe2 PHY provides PIPE clock to the gcc
> (Global Clock Controller). Register the PHY as clock provider.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
