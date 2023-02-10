Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75C08C64EC4
	for <linux-phy@archiver.kernel.org>; Fri, 10 Feb 2023 17:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEwEzRo1LCSoCLRqH4JMNA8Z81Nn2jduTP8esHGqC50=; b=JQHf7MC4HUdjk+
	Wh51f06FNNb1+3nctoINzs4KFI5edhvvRaqSnvIr3KCm7/ZfRDB24wFLhBhad76rqff6e+5PwOfCS
	fqrb0Xuk07MPiMIJP6a/Y/oMNa2QPGGATDZy8M3pJ4nGKrrF/xcatz3a5W8N4uf50SovNJGg+08FJ
	UAmMUReP56OmYBxgrzP/oEf+AA7aHxoLqlOsQ0tIFbsg0Rmkf99dhHSrf01AqbGlfpWxFCKjgcfWc
	D4PGnUnXAALic7iFBPaOEmwRIdurIMXvHw48NnofT/ZpLuk0JwavYQfYoGtb9qpDduOIkbfw5zN1T
	OxBcVbcdtD9kNcvkah0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWoy-006f9o-RT; Fri, 10 Feb 2023 17:04:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWow-006f8u-EY
	for linux-phy@lists.infradead.org; Fri, 10 Feb 2023 17:04:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6DEA061E5C;
	Fri, 10 Feb 2023 17:04:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8BFDC433EF;
	Fri, 10 Feb 2023 17:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676048660;
	bh=y+EPIGFUVVARFvU3KUSU5GU0uDCLVbF2YQCe4wFPOEg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PpsvrHrAuEAmKn8XkOkTeJW3XKo07eQPSatZjL/ZVTTNIaCvIl9+c8WJB1OoYjkl3
	 gxc2DnCTVbtG3+nud67KRkxhsrYE5zSt7x7cGGBYvIGQuCwZG9c68G5HQaFp6Y/Lp4
	 /8Y7Bb+14HrDxGEivZ6hRK6tmScfpTK14MlvMymNH6YvLL+kYbaZjwyL121Qg4lzR0
	 +VoFxyxBiIF72avuFafhcopNO9ifNe8ktLj7+M9S2Mrz7DOV2A0a5YuwEAD2iKPW6A
	 v6EISxj6hbH2TVNALeWDYeew9Br/+mSQ7PFc4Tba4jkDqrH1UL+7U5yeJ9OI+8XL/8
	 +NGfk4AL8drmw==
Date: Fri, 10 Feb 2023 22:34:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v6 0/6] sm8550: Add USB HC and PHYs support
Message-ID: <Y+Z5EKjMtOBWjPdU@matsya>
References: <20230208183421.2874423-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230208183421.2874423-1-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_090422_545941_90307B34 
X-CRM114-Status: GOOD (  10.04  )
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

On 08-02-23, 20:34, Abel Vesa wrote:
> This patchset adds support for USB for Qualcomm SM8550 platform.
> 
> This patchset is based on top of the following patchset:
> [1] https://lore.kernel.org/all/20230208180020.2761766-1-abel.vesa@linaro.org/

Applied, thanks

I got a minor conflicts on two patches please check the merged code

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
