Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7149C3ABD9
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 12:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GCWiLEf5botRmR5H9mFsQj2EdKdGEx2S4blevgpydEk=; b=bP4+9XpyfuUfHv
	4SZxQizFaPOrgSEgMB2JJBaQEO+nP2DMi0tML1aGrzzN9HIJ5sQNcxtKrbZaIWCh+cGBGmWPCcuVU
	HkllBjps3QNdufEWIhv7Er4/t8WakwZCOcjdVkPl8UaQdDK4nX2NFZzkVyyM/U1iPNb4GV1d590gz
	uXsva47Vm57rWjmE3iImWw1j4IjrX53xbUB5dM2RtmL+n0xFGP6c340yjbStWgMRpBLN9xdvrOTFU
	ukIi50Bh2sG2I4UvDBfzBrIA98B7VQSS6OjfLEw401+op3fzMnSbhzPJbTpv1sBub4YwHtb7uaWGs
	XXzgD5eO/iVhHyRc+5Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFB7s-0000000F5VV-2Z3j;
	Wed, 14 May 2025 12:22:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAQg-0000000EuWy-01Di
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 11:37:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 13AC75C303E;
	Wed, 14 May 2025 11:35:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60529C4CEF4;
	Wed, 14 May 2025 11:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222660;
	bh=nHQOZYmbI/4ct4CBLqfNfvzIFv0fI2toaT4deYFmMOo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=r82oBJfpP9WiBmJ3vF6vqtpXCdXxLBgwvnil/LbS08zqtFLMePpT7SelCKQwIpQwn
	 Fqj75fpMrgtXmtDM82/QxW/IgdFXNHRtvuFfmmQD8bQp0fMKOiD4S0OHfemel3N20b
	 AwGgOh3s9f3D87Ls0Ts2XKhplZdk8JOum9Vr+14GxdXhkUMyjLSw3G0xkk6v/YzK+L
	 Q3Dt50kSqN5oxU5DVjecq42bbaFpfxDALfyxf1DnoTnKVF4fJTyXtGGjcNSzbeuEbP
	 M1fztMjtfiWNt5mH2ADbB4y0Atixja/lLfnVKOsaC4nng3xE5XKqfq6IGQEDctJp//
	 eRLaEaSSt2GAw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250415-revert_hs_phy_settings-v3-0-3a8f86211b59@oss.qualcomm.com>
References: <20250415-revert_hs_phy_settings-v3-0-3a8f86211b59@oss.qualcomm.com>
Subject: Re: [PATCH v3 0/2] Reuse the IPQ6018 QUSB2 PHY settings for
 IPQ5424
Message-Id: <174722265904.85510.2115353055770936721.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:37:39 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043742_101549_DA69A454 
X-CRM114-Status: UNSURE (   6.44  )
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


On Tue, 15 Apr 2025 09:52:49 +0530, Kathiravan Thirumoorthy wrote:
> With the current settings, compliance tests are failing, especially eye
> diagram (Host High-speed Signal Quality) tests. Reuse the IPQ6018
> settings, as mentioned in the Hardware Design Document.
> 
> Merge Strategy:
> --------------
> Both the patch in the series should be merged together to avoid breaking
> the USB feature.
> 
> [...]

Applied, thanks!

[1/2] Revert "phy: qcom-qusb2: add QUSB2 support for IPQ5424"
      commit: 8a040e13afd94a1f91acaf8e0505769d4f7f5af4
[2/2] phy: qcom-qusb2: reuse the IPQ6018 settings for IPQ5424
      commit: 25c36b54eafc98b3ef004e2037cea1328d9b8bc5

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
