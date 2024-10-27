Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9641D1356A
	for <linux-phy@archiver.kernel.org>; Sun, 27 Oct 2024 21:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MtpW8PPzw/9LrEtSp20+WdB2w4/z6Y4Ud2dx4nAao8I=; b=vrDWXyAKdY3PhX
	3/BYzyCVQffzscaDshffMLHkWR9AFQnHljHwS6gs6tO/HMsysea6VQdgpuOk3FJ9Mz8IO5iKe4qQM
	ztk86Zw8rsHEnGmxgC7zfxNcAjIYpksRczcufzSUqxbux/NvslfNuZ6t+01Zp9Cy9Ew+DvaeWzAwL
	HPmo26Bf6xCErxsxJ68i0w0LbN9gkSDzG39R0z6YCfreagKneF7ptO1wLbQJXP+2ymzKVc8KHHsug
	2TzMSh5Bkbdovcim8Fiz62DBSZqAYRAedKdoiWRXmVDj7t6aQPdzBbu8JiBwFH4oE0J6/KPmtB7FP
	L4Jm+rQxRmSrgvxgpvqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5AkW-00000008wCF-0VQl;
	Sun, 27 Oct 2024 21:24:36 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Aiu-00000008w2z-1HEL;
	Sun, 27 Oct 2024 21:22:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D99A2A413DF;
	Sun, 27 Oct 2024 21:20:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B199C4CEC3;
	Sun, 27 Oct 2024 21:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730064174;
	bh=uGeF6fhJYsqOGnMmd6g0ql7+lc90LCLzjPxmpQyJ48Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hhZb8jOArLdcBAtkKDB0KQ7NICYF0jo3qvjleBFXtQ739hnWxUoLMc1jWvLU4rnGM
	 zxtoNtukh3Kdzp6+gfkAmNHVi1QB9xBblRH3AdI3IxYsJ0t5D0Mgz7Ctjn7og225JH
	 XLIxjOtOt8yTX1r04qHOziBulN7PIBkxSxjNkG0/6fZZK6brTlUfoG3aTMPaMwdLTG
	 suF1nexrEhEAMf0t9AzsNRJ3e0miozS7w4+yD7mpfl/9GAWyMZveE3GMj5rYKp4YHC
	 RpuVQht9dtvEg2byV8o5VFISquOuvBd0c+AzEPQFP8Lzk6wKjWWBR/GeZ1Bme347o4
	 mMUC9KYCUXA1w==
Date: Sun, 27 Oct 2024 16:22:53 -0500
From: Rob Herring <robh@kernel.org>
To: Cody Eksal <masterr3c0rd@epochal.quest>
Cc: Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
	Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-sunxi@lists.linux.dev, Yangtao Li <tiny.windzz@gmail.com>,
	Viresh Kumar <vireshk@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-pm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
	Yangtao Li <frank@allwinnertech.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Linus Walleij <linus.walleij@linaro.org>,
	Parthiban <parthiban@linumiz.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maxime Ripard <mripard@kernel.org>, linux-usb@vger.kernel.org,
	Samuel Holland <samuel@sholland.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thierry Reding <treding@nvidia.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 04/13] dt-bindings: usb: Add A100 compatible string
Message-ID: <20241027212253.GA98977-robh@kernel.org>
References: <20241024170540.2721307-1-masterr3c0rd@epochal.quest>
 <20241024170540.2721307-5-masterr3c0rd@epochal.quest>
 <173006354857.88418.13246529686874362124.robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <173006354857.88418.13246529686874362124.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241027_142256_437043_93A4AC27 
X-CRM114-Status: GOOD (  11.13  )
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

On Sun, Oct 27, 2024 at 04:12:29PM -0500, Rob Herring (Arm) wrote:
> 
> On Thu, 24 Oct 2024 14:05:22 -0300, Cody Eksal wrote:
> > The Allwinner A100 contains two fully OHCI/EHCI compatible USB host
> > controllers. Add their compatible strings to the list of
> > generic OHCI/EHCI controllers.
> > 
> > Signed-off-by: Cody Eksal <masterr3c0rd@epochal.quest>
> > ---
> >  Documentation/devicetree/bindings/usb/generic-ehci.yaml | 1 +
> >  Documentation/devicetree/bindings/usb/generic-ohci.yaml | 1 +
> >  2 files changed, 2 insertions(+)
> > 
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Well, except that the compatibles should be alphabetical order.

Rob


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
