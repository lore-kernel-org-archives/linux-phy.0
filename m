Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CA0EC04A6A
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jul 2023 15:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DorGa6UbJJH5PH+CkZeDVBOTIV9QZnvxs8RxJ4A7eRE=; b=ucsqIffJXCGZUK
	X8HYvGgQT9kVeV+AkkzepNiRApOhMfA82lclGqjfvNl0mFivIDhUELf3C25VoR/asFXvERjNXtzbO
	8XqWN+ZAC0SUlkwVOXEKwTVrT4Dotc8JRBKjPHxidjgoHmxsNLuI0Lbv/+i9Ra0uKpGNazjlAEC3p
	RLr6ktNkp23+3R+VlSsl6bZ352zjKq01OYcutIfUQTqHH2ID3Q6FeHlo+B8EZCoLcYCODF6yn4LP2
	VlBVqsnKJ1DPeHYZteFlTeWdUfHEQXiCzL1KR2arUm6hPV265bjDSiJ9R8tZz3klWgCigv59g8OTi
	cutmt4D+ZL6rdi3M75VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHn6r-004zOO-2w;
	Fri, 07 Jul 2023 15:11:01 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHn6o-004zMs-2R;
	Fri, 07 Jul 2023 15:10:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 42A02616EB;
	Fri,  7 Jul 2023 15:10:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27AF9C433C8;
	Fri,  7 Jul 2023 15:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1688742657;
	bh=c/6GsVA45vCVygJLHm9uSIuA4a9N3IEvCjiocGfjIdA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nsGQI8CW3xiUFF77osUHi1yahuZMl82hnPwImUllGETvW6ErXH1jsqgDeagGPootK
	 AZo7gQRG9yzKAEeBVyYov+MR0Xx2rH1Iakck7CKhRRLIiiFeqeQltV/pPgZkdroFLq
	 7ySLxAaahGG1UTwZEPHMqHuul77gWGMcYFzKkYQQ=
Date: Fri, 7 Jul 2023 17:10:44 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
Cc: Oleksii_Moisieiev@epam.com, herbert@gondor.apana.org.au,
	davem@davemloft.net, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	alexandre.torgue@foss.st.com, vkoul@kernel.org, jic23@kernel.org,
	olivier.moysan@foss.st.com, arnaud.pouliquen@foss.st.com,
	mchehab@kernel.org, fabrice.gasnier@foss.st.com,
	andi.shyti@kernel.org, ulf.hansson@linaro.org, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, hugues.fruchet@foss.st.com,
	lee@kernel.org, will@kernel.org, catalin.marinas@arm.com,
	arnd@kernel.org, richardcochran@gmail.com,
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
	linux-iio@vger.kernel.org, alsa-devel@alsa-project.org,
	linux-media@vger.kernel.org, linux-mmc@vger.kernel.org,
	netdev@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-serial@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH 05/10] firewall: introduce stm32_firewall framework
Message-ID: <2023070744-superjet-slum-1772@gregkh>
References: <20230705172759.1610753-1-gatien.chevallier@foss.st.com>
 <20230705172759.1610753-6-gatien.chevallier@foss.st.com>
 <2023070748-false-enroll-e5dc@gregkh>
 <febd65e1-68c7-f9d8-c8a4-3c3e88f15f3e@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <febd65e1-68c7-f9d8-c8a4-3c3e88f15f3e@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230707_081058_839873_460817E0 
X-CRM114-Status: UNSURE (   7.40  )
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

On Fri, Jul 07, 2023 at 04:00:23PM +0200, Gatien CHEVALLIER wrote:
> I'll change to (GPL-2.0-only OR BSD-3-Clause) :)

If you do that, I'll require a lawyer to sign off on it to verify that
you all know EXACTLY the work involved in dealing with dual-licensed
kernel code.  Sorry, licenses aren't jokes.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
