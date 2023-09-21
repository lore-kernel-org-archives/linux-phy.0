Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 228F5E71080
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7cfVfTEAOfVw4A7Hu2SImmsBdH3Vd19WRYbMMkPzBk=; b=JfLn66sLM9cHmr
	bkKy1ka94boZ4g8Yx4vl75d8EFJbK+cIEBxHuT9m3hwP2ZteI9GbgpHEcKO0VaqqZI0gTBtRFbwCv
	aClhDGnYyMBl7JwYQUPJFu2Z5ECyh7OawKdeEN1wtM0XwKwSQUCSv9MYrW3rMOfgJ2PI4HyO+6oXZ
	qLcma+qGW2mDmEBSclQiC7ZmOEsJZiotGYtLx+6y4xH3KzgNV62wAGP9gbW15oA6ylRMfcHpx/3zV
	F+CD+VM6C5hahLIHAyQ6Bkr4JuEKk7ypMvfMUlaTOmLx0i8r/u81ji1IKGYUj7z1czIvfwwPeLns7
	D5buv5eqyavgK4YlEo1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKdD-006GJA-2g;
	Thu, 21 Sep 2023 14:26:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKdA-006GIF-39
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 14:26:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1311460AE4;
	Thu, 21 Sep 2023 14:26:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A0A5C4E756;
	Thu, 21 Sep 2023 14:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306371;
	bh=7WnMhNa/jb+Q8Bl79eEf/spefDNIbqOzo6zv6UE81fs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Fh/h65Xx2awq/PoJrb0rSjZDsSVXxgzr6I+eO7it73tD4O+qaLAD8BRxOjsIPLNtv
	 MALcyAkThXL0Y9KS/xYjtuILSj4QfaQRl941+AmBrkOck78+lA0V2uVFcdY9pX/4Fi
	 esABf0jLQzC111Bb7XbPbUWGWtpwQIJczr+eBdV2/SNGHhLJGnoIsDkjIiPKhbXklf
	 Tg9PomV3/u/EZxklRQpmonbYw8cOXCECuy7/rOKwT0+qNaTJae3RVg5sSnMhQcQr7y
	 kF4Cu/qJl6l9ltJ2xpC+UU2rgAN2CcDu5xFH9mB1AJ+psW+uQmOVH/IHrPE1V4cQm2
	 cogigBh5vMFHg==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 Yang Yingliang <yangyingliang@huawei.com>
Cc: quic_varada@quicinc.com, andersson@kernel.org
In-Reply-To: <20230824091345.1072650-1-yangyingliang@huawei.com>
References: <20230824091345.1072650-1-yangyingliang@huawei.com>
Subject: Re: [PATCH -next] phy: qcom: phy-qcom-m31: fix wrong pointer pass
 to PTR_ERR()
Message-Id: <169530637015.106093.4444444051557145401.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:26:10 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_072613_069277_80F41239 
X-CRM114-Status: UNSURE (   5.38  )
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


On Thu, 24 Aug 2023 17:13:45 +0800, Yang Yingliang wrote:
> It should be 'qphy->vreg' passed to PTR_ERR() when devm_regulator_get() fails.
> 
> 

Applied, thanks!

[1/1] phy: qcom: phy-qcom-m31: fix wrong pointer pass to PTR_ERR()
      commit: 5f7cd740a6b657fba775bde744496e5ed21851ca

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
