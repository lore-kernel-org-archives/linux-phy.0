Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ECB3CD1283
	for <linux-phy@archiver.kernel.org>; Thu, 28 Mar 2024 19:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huQ7Lt/5xOzYxKBYglDniOvghdrRTIUkL74V+1KwvyI=; b=WyMpIdl44UeBxf
	smvOQPnisWrPW76Iirg/hsc7Y3zXdZ8eX2vzmCSnpCLpWqqsTVg/TyJaXkYlPAOgq3A4SMpd0EDXu
	L1YC5N9ajQZAdB2CEbSl35ynYIEXG2HB551PTnJmJNSE+xxFUY9kyPIgAyboOXyhtnvaeeaS4MSVD
	AQYhYTCBGeTs+TiXZDFing56pU33WQeS3dbBCk1DXQCFGyqxhxgg3wuG+8cCC4NB83okpzSY+Dmki
	v5OpNSw3JCVmq4SKznNfOYQ5x9XlSP3lmD/ascDmzfuvL+m+wc9Y4h5usZSjW3+XhUF+ivm0hV9Sy
	YTP/DX4f92MJSS8yTYFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpvHg-0000000FLmI-440d;
	Thu, 28 Mar 2024 19:19:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpvHd-0000000FLkY-1Raj
	for linux-phy@lists.infradead.org;
	Thu, 28 Mar 2024 19:19:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CB68661866;
	Thu, 28 Mar 2024 19:19:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CE70C433F1;
	Thu, 28 Mar 2024 19:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711653568;
	bh=CoCRyOvSmW7h8Khb06oFL1D4TfmylBpJvACGIQnAYHg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=skhEKXa/1wRhRJgV2ysmfOciLaWN9GlB8kjVdG5yp1OtQK4wqVv0xP+iVtNLkSh2c
	 OL8Iehkayce/heiD4K0qjsshfxvAME/xO7qw3pvhG/8nzLrrpPwc0fYAJLHPeK7bvY
	 PcIxWE5Z4T/Kc4iXhh67l9ijrCgPFZ/QIfvJKU0waj1sLkt2BucTCc4aYDk1MJHGlz
	 8e9u0+whNzKFYqaoBD4M60z7ADKdmo2eK48SRSaMUmjdyPXC9I3WHUxiCdQOrwPxJX
	 9X+t0vg9C8DylwtIzLHE6zCr2gIgwoecCeAvcDa4862KSGUxJ/mqwlZNu9BjJHLGI+
	 DnccuKvvgl1NQ==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240228-topic-sm8x50-upstream-phy-combo-fix-duplicate-return-v1-1-60027a37cab1@linaro.org>
References: <20240228-topic-sm8x50-upstream-phy-combo-fix-duplicate-return-v1-1-60027a37cab1@linaro.org>
Subject: Re: [PATCH] phy: qcom: qmp-combo: fix duplicate return in
 qmp_v4_configure_dp_phy
Message-Id: <171165356468.152390.9437072444869737899.b4-ty@kernel.org>
Date: Fri, 29 Mar 2024 00:49:24 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_121929_499984_C5E87C49 
X-CRM114-Status: UNSURE (   3.19  )
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


On Wed, 28 Feb 2024 18:05:13 +0100, Neil Armstrong wrote:
> Remove duplicate "return 0" in qmp_v4_configure_dp_phy()
> 
> 

Applied, thanks!

[1/1] phy: qcom: qmp-combo: fix duplicate return in qmp_v4_configure_dp_phy
      commit: e298ae7caafcc429e0fc4b3779f1738c0acc5dac

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
