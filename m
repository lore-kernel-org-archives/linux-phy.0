Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27FB6CD128A
	for <linux-phy@archiver.kernel.org>; Sun,  7 Apr 2024 07:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10gLj9fJDAFGyiCTXse/A0MkPqEwDkEjhubieNtpJEY=; b=mLpAMwZfHW8bYZ
	f2xgUsF8rh/nehSnAfpcDt28PZNp/5eIqDpWCzlm2521CxKthDjIJN5m3D5jcUezb05BsBdvU7zxH
	viI2ndWuIs9DzfYjBs9WMt7N8fOzIIxtaKAKIT8gJ0mUHY9g2JncheLxhJX68DmTT9oyx2CX/N5Y5
	Jn7jkMxd2K3LWdfudRldLoEzA8h8OfwafEeq8wpUtTsGJPOmEL/6nRTReNVZXWYjCj7i6CrHhOiuu
	V+e2bx9yAtS5LsqsNhXHMZlhkJVyxjAq41i0MgvrasBZjESm50JyoqSA1N+iP/BiT42uDorpdZAQ2
	at6XKnXlf8rSkI7wedWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtMqJ-0000000Bzpg-34wI;
	Sun, 07 Apr 2024 07:21:31 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtMqG-0000000BzoH-3xHj
	for linux-phy@lists.infradead.org;
	Sun, 07 Apr 2024 07:21:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 431EECE0025;
	Sun,  7 Apr 2024 07:21:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D9F4C433F1;
	Sun,  7 Apr 2024 07:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712474484;
	bh=tph3+lKvTIUbkttbE7aDjD1u5DS+286zExnPJ//j268=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=FjvdKdRp9o11+I1IP+QEuRz/CEJ/x85LYg3c6XcRkkOo3ajs2FqLtpe3+lf8ife2L
	 Vuau5xPvgQGAwxikfPKfYXam4KoZMdPxGrO7cljirliaEuzu4IDkeShcTvpc8A/+MQ
	 q2YOdClUBeEu02fCSP479qwrJc/IVK3yyvdGgQ09tTyYMBDJMF+KUs3L622TFz3p0w
	 FOS2nHG79FrRiAnPX/Sg5ff8ICjOumEfHCZVaiBTxfik9JeYuBCertspTRWRARvaj7
	 2tLHYHu+3HYKgoyL6vBHE3sqb/7jvtfw2BQ+W2C1sjDDvUeqaxdTWgn9elzxQ0lJeF
	 1I5UZ0333rnSg==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Sricharan Ramabadhran <quic_srichara@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Gabor Juhos <j4g8y7@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240220-phy-qcom-m31-regulator-fix-v1-1-7675b4a916b3@gmail.com>
References: <20240220-phy-qcom-m31-regulator-fix-v1-1-7675b4a916b3@gmail.com>
Subject: Re: [PATCH] phy: qcom: m31: match requested regulator name with dt
 schema
Message-Id: <171247448113.375090.4211885215588548227.b4-ty@kernel.org>
Date: Sun, 07 Apr 2024 12:51:21 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_002129_193338_9E8ADFE0 
X-CRM114-Status: UNSURE (   6.93  )
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


On Tue, 20 Feb 2024 20:13:47 +0100, Gabor Juhos wrote:
> According to the 'qcom,ipq5332-usb-hsphy.yaml' schema, the 5V
> supply regulator must be defined via the 'vdd-supply' property.
> The driver however requests for the 'vdda-phy' regulator which
> results in the following message when the driver is probed on
> a IPQ5018 based board with a device tree matching to the schema:
> 
>   qcom-m31usb-phy 5b000.phy: supply vdda-phy not found, using dummy regulator
>   qcom-m31usb-phy 5b000.phy: Registered M31 USB phy
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: m31: match requested regulator name with dt schema
      commit: 47b3e2f3914ae5e8d9025d65ae5cffcbb54bc9c3

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
