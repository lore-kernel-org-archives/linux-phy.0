Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73BFCC4345F
	for <linux-phy@archiver.kernel.org>; Sat,  4 May 2024 12:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ywFBQOZjcLLrufaYVmpGyxrir0YIywi96cjM6Oq6yc=; b=SbiqPdSZE1nrFe
	a9+nddiyC97zdvkjS7a3BN3t4sLOU9FIwu/uMIxqwGXflXzNla5DxHbEeDGs36KzeFQljEuJ6GkGb
	4ICx1xHZgzITfHm1TP+B5JTjreoQzfXg8GRtnyliqzrqarbhX9i/0dnFe3mDe9unQTOTqmy4DIPuX
	CLi8SPBfGz2jQfXymwuhE5hIohK07YLUS/raupT8PfrArk5DgYfalxxhGznGGmB1aJviZVwMkwEm6
	gU9F1kd2lK1ANTHKeTMsPSWwI+P4Ic+ilhZoDq7CpkXMqSle5KMT1yesYzJYQnv+e+A3s/L7TgQIW
	gZCROjjKOUkcZa/w5dBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3EHd-00000001y5K-0fa9;
	Sat, 04 May 2024 12:14:29 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3EHa-00000001y4x-1f4K
	for linux-phy@lists.infradead.org;
	Sat, 04 May 2024 12:14:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 26ABACE1838;
	Sat,  4 May 2024 12:14:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C749CC072AA;
	Sat,  4 May 2024 12:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714824862;
	bh=w7n0QpKIzd+FJnDpgW9IsvunqZ0NkMZk0lKoOyuacJQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BeEqBrsfEyYXnU9+qu5k0Ys02vl5Lvtc140amWUKVyHwKUFzTx2/D/oOiDBJyK5V7
	 pCi69Dm+nPZsiHOhYdy3sE5mRWnZEgznnsNc/gUw4nnVxInUTk1AMZeqQvn/sQubuI
	 6rMg0OHKmHWhwvRwLuwA7ImIgL3ulSVMhsCo0pPWUcIewBD5WvVutXsMTv6e4drNOY
	 DSPQbgWgaoDroUh1otRxntksJ7HxnUDkxyPVh3Ry+CQ0O9EjW6DcocFaFpnWnPVd7t
	 nGICAScEpRUGTuhLOBUaJkTX154wp7/mxeQf46/KnX/RG/uO9H1Efv2imCkWNke9x+
	 xm+G8oygnn6Og==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, krzysztof.kozlowski@linaro.org, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
 willmcvicker@google.com, kernel-team@android.com
In-Reply-To: <20240426104129.2211949-1-peter.griffin@linaro.org>
References: <20240426104129.2211949-1-peter.griffin@linaro.org>
Subject: Re: [PATCH RESEND 0/2] phy-samsung-ufs fixes
Message-Id: <171482485731.28322.17976284474709721365.b4-ty@kernel.org>
Date: Sat, 04 May 2024 17:44:17 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240504_051426_653080_703FA2EF 
X-CRM114-Status: UNSURE (   6.95  )
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


On Fri, 26 Apr 2024 11:41:27 +0100, Peter Griffin wrote:
> Two minor fixes for the phy-samsung-ufs driver. These were sent previously
> as part of the v2 of the UFS series [1], but I'm re-sending after
> splitting the patches out into separate series (clocks, phy, UFS, dts), to
> hopefully make things clearer and easier for the relevant maintainers.
> 
> These patches were based on feedback received from Andre and Dan on the ML
> after the gs101 phy patches were queued [2].
> 
> [...]

Applied, thanks!

[1/2] phy: samsung-ufs: ufs: remove superfluous mfd/syscon.h header
      commit: 8b19c45ae4c0480ea07ab9f33c43d0fa6ea43aa1
[2/2] phy: samsung-ufs: ufs: exit on first reported error
      commit: 2ff6365e2271282bea155541e5e3deb9d9ff1572

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
