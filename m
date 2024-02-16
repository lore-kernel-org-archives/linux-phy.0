Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C373C48260
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 11:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g1amem9nC2klpeolYzLgCOoEzrS/SwS1vNTvXdYSquw=; b=UbJltHlubOXjV/
	qrLiWVDRBOgOZRcm7jfeAIhmQIjA2w1dyrOd9I4QYgJglZSYX1uCnnr2gTkeNXZ4xVOsDhld/DeBO
	lvCAiO7BkwU+bVBTQ58zMAt+2FtWcO3rrk0irAb6zW9V9y/8vSPwHhwyWgsZZVWrlBEE2rmcfPgG0
	Wn1/K7Yzt9klMj6gih0cQEC7ipwbW6a8t2VMnpbBEJkAxeTBLASwoX+sr8QD4HPl9BgPW9P8uxYd6
	boig2JcA165SBj71KEptaQYbLxoLcPty//qH0ktn2dDh1noMmREYqEYXDzb9LfYAFFd7JFPdvWg5n
	gESJ92a62Ef2XNQEnGhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawqs-00000002DqJ-0LIo;
	Fri, 16 Feb 2024 11:57:58 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawqp-00000002Dpj-3JCI
	for linux-phy@lists.infradead.org;
	Fri, 16 Feb 2024 11:57:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A29E1CE2AF7;
	Fri, 16 Feb 2024 11:57:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 216A0C433C7;
	Fri, 16 Feb 2024 11:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708084672;
	bh=q54b+r3HTYV9zIDF4ItH8BvDFz8WwM/tv+Owy9PZbIg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=DKJUShQbW7EA2ta76eXSj7hhZ/wy/T+FV+Td7iIzct1+HTFwsQWJ1vFuG28Pv/U2e
	 M+xbLqzREuC9tOaX1V4b8h033ATTlx5FZM2u8Uxb8xb8fjDnantINpOS3tbbAWNZYM
	 uaOHAAO6WAj+C1UAUcilUyxF4AHah5EoQaoZVwMUYPKDu2L222ex7KwfhBUNDS+RVN
	 etBMT6OvXM41ALaYGMYjgJu/tivmd0sPiX2Y8rpbhTkUe54g1w7L9SjnsRPZ0b7cGz
	 0KJ35BN5fY2GrHs22gm0Ve2oHNX+mhPYc7XVsoqEoOgDqNfGlHFPLSKcTsOQv1kzNT
	 WtW32GiLK80kQ==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org
In-Reply-To: <20240213133824.2218916-1-dmitry.baryshkov@linaro.org>
References: <20240213133824.2218916-1-dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH] phy: qcom-qmp-usb: fix v3 offsets data
Message-Id: <170808466973.352622.4246974712400834462.b4-ty@kernel.org>
Date: Fri, 16 Feb 2024 17:27:49 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_035756_034543_9BE1893C 
X-CRM114-Status: UNSURE (   6.27  )
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


On Tue, 13 Feb 2024 15:38:24 +0200, Dmitry Baryshkov wrote:
> The MSM8996 platform has registers setup different to the rest of QMP v3
> USB platforms. It has PCS region at 0x600 and no PCS_MISC region, while
> other platforms have PCS region at 0x800 and PCS_MISC at 0x600.  This
> results in the malfunctioning USB host on some of the platforms.  The
> commit f74c35b630d4 ("phy: qcom-qmp-usb: fix register offsets for
> ipq8074/ipq6018") fixed the issue for IPQ platforms, but missed the
> SDM845 which has the same register layout.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom-qmp-usb: fix v3 offsets data
      commit: d4c08d8b23b22807c712208cd05cb047e92e7672

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
