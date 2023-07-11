Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F8C7C0015E
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 11:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5e5xoLW/jwt0qmh6Lo2szdlpDKQfOfmHT1TlIoCq5Q=; b=yfdlvqvTEaynJB
	bKOvfy2IcUoouRLrvuOx54iV+xmKGX1UbfUKwenzCtG20tgkGhNHtRLWpejwJysCwKhtx3HEJg5FU
	EsN3amKfDC60uCXkjZwtEbS0GtAo03obQ1fZ6plie9QzF3eEiYF7B9gIxTkgkc0xm2hVQWq/SYT/x
	S94UVLOdR1N0Tkwv3GNtxnshfwsqcT2rZxRftKuCU5TYzA6AOb4xjgo8Tf7YdwFEc2zns9lf7ZSxV
	mmcKxhTXx7XE2BgKUVWjj9JZB7l4DWGhUlaMnJJF4MlvndnVEwNO9CbcGqL+q3N9oXTDUA6fpMgvb
	KM6WbqF7L4jTg8ujBesQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJBUd-00El8t-2K;
	Tue, 11 Jul 2023 11:25:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJBUb-00El7y-0W
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 11:25:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A515C61461;
	Tue, 11 Jul 2023 11:25:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B12FC433C8;
	Tue, 11 Jul 2023 11:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689074716;
	bh=B6phPNqzIaq0BhTQWkIhptX4KmZ9kRiP1aL2cvc5Gkg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=qz1dRCymngPoqUZwy0zDX1KfSzJMWsF4lkNhDWsGyH27I3v62fAk3UxAbdhLiTY60
	 Ol6LU3QndjyVSez+dN9munpgfM5PN8jpIRwBqNsG7H85Y8pPXvcNTeYfjTQsWaBUzG
	 cjj1bnsNzhjNnWzULdQafJy7nXL7+Z4x9XdJqKvoT34iWuB+neYm0IPkOlxgmFiYvu
	 nkIL0RVTZD+pVdJFCTXR4GwG9Marn4NNIwnerdvR/4ChVyFnEJwJ8DKUl28B+Gx+ta
	 Lfw+0vyRtckE/ReFY1XmvCRVd4fZdxq8nnyB20Z9ai0RUdjH0a9yKARUl3m40GkjI8
	 9mWwTeynfCoRQ==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Manu Gautam <mgautam@codeaurora.org>, Philipp Zabel <pza@pengutronix.de>, 
 Stephen Boyd <sboyd@kernel.org>, Wesley Cheng <wcheng@codeaurora.org>, 
 Adrien Thierry <athierry@redhat.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20230629144542.14906-1-athierry@redhat.com>
References: <20230629144542.14906-1-athierry@redhat.com>
Subject: Re: [PATCH v4 0/3] Fixes for qcom-snps-femto-v2 PHY driver
Message-Id: <168907471205.198334.16545339744877573162.b4-ty@kernel.org>
Date: Tue, 11 Jul 2023 16:55:12 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_042517_246043_85DD187A 
X-CRM114-Status: UNSURE (   7.82  )
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


On Thu, 29 Jun 2023 10:45:37 -0400, Adrien Thierry wrote:
> This series contains a few fixes for the qcom-snps-femto-v2 driver, mostly
> clock-related.
> 
> v3 -> v4
> - remove commit that added system sleep PM ops
> - add commit "phy: qcom-snps-femto-v2: keep cfg_ahb_clk enabled during
>   runtime suspend"
> - "phy: qcom-snps-femto-v2: properly enable ref clock"
>   - dropped "HACK:" comment (Bjorn Andersson)
>   - check for IS_ERR() for the optional cfg_ahb clock (Bjorn Andersson)
>   - don't print an error message in case clk_bulk_prepare() fails (Bjorn
>     Andersson)
> 
> [...]

Applied, thanks!

[1/3] phy: qcom-snps-femto-v2: keep cfg_ahb_clk enabled during runtime suspend
      commit: 825c6d29f129e3e74dc2b4a7435bc64ff34ab5f6
[2/3] phy: qcom-snps-femto-v2: properly enable ref clock
      commit: d621660a1d5bba54494367a2fa8c5bb294ad002b
[3/3] phy: qcom-snps-femto-v2: use qcom_snps_hsphy_suspend/resume error code
      commit: 0383f66b80733c90fd841836ca541ad4c1fc203f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
