Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C800FC5AC67
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 03:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwsVKRAZ0+U5pH+Dawt0jJkgMYYgcSCs45IxkOOv+Yc=; b=LwAHwoGIm4pNDY
	C72BIUNlQhLMfAWaPug2c3T6qW/7vugPwgtlhwgbseapDIsOGOToykcyQroz5+SN3zVcEMi1pzFYO
	LF0lizpIzLumhCrV87K9Q4S6dh0ZbByhqvSRmJDVMT/pM62Sck9B7+VYQoIYvtFiENwiC6ini8Xg2
	ZUbJ95T1UWErWyMVxWyKqOEKchhnS4zmvKIl0TuHhjEhSuEnvyxOLp37EC3WDm+MZyftBSvCDsOz1
	ROYPo+E/Ijvt+KaTeLdlecYmhcJuL0sooBDACsUjFDHEnyQLpjhdK3Ik1DGUaq3WvWoHg23JyCIY9
	QUkYx9Q/QGVya2ewjo9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsBFa-0000000723T-3Bzp;
	Fri, 07 Aug 2026 03:28:02 +0000
Received: from mail-43101.protonmail.ch ([185.70.43.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsBFX-00000007236-1GzK
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 03:28:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1786073268; x=1786332468;
	bh=TPJtm4SJOctddJ8jFpftgRdBDxhtifxnOZSBD+9CcyI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=LeJ6BGzTkCayTRhy9IWoe43gl4oezsgpVwiH/rXvd7queZ26Agx3BLkad/EH/HNiq
	 crnhtjcS+Qly+VA01EyGJuqlF6Oq3EXnZnU5yQSyTUbZFRKEIHHHvMVzSxQovNHU7A
	 Ym/IovqrTmaKqAMX/kpJAbC1mDVRxOqVZq9zzB8x0Dh4Ffqgs7oxkXsw0hFrknGSnh
	 aJs4YZQU2JGYua6IIq86B/cahTT6MTcHDYuEH3wRE93+zb6vI9c0EdFdeb6q+kkB1d
	 OmE97kdfQN8659SKSxgxrMp0JuVqxG56DYCyCmLqaMH7+nkvHYUSGacWm1E4IoYl8Q
	 am39RxytMfkwA==
Date: Fri, 07 Aug 2026 03:27:42 +0000
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
From: Esteban Urrutia <esteuwu@proton.me>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] Initial PCIe0 PHY support for SM8475
Message-ID: <f0c1eba8-c6d9-4831-a460-980bead03c4d@proton.me>
In-Reply-To: <20260715-sm8475-bup-pcie-v2-0-48bd91a19abf@proton.me>
References: <20260715-sm8475-bup-pcie-v2-0-48bd91a19abf@proton.me>
Feedback-ID: 147889766:user:proton
X-Pm-Message-ID: 67781fc1a0af1802f91f0ba9b76081dad5b9c44b
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_202759_990548_55F8185F 
X-CRM114-Status: UNSURE (   6.94  )
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

On 7/15/26 2:37 AM, Esteban Urrutia via B4 Relay wrote:
> This series adds support for the PCIe0 PHY found in the SM8475 SoC.
> The initialization sequence varies noticeably when compared to the one used
> in the SM8450 SoC, hence the need to add support for this PHY.
Any chance on this series being picked up?
Kind of related (since both series belong to the same subsystem): I
resent USB SS support for SM8475 some days ago and this has been picked
up already.

Regards,
Esteban


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
