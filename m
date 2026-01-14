Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87CF7D38FED
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 16:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNcwXFPXiZa6Z0xA5XPIEIiXvKzoLloQjNzT0SPgSy4=; b=3JMsMur5zJZHO0
	sy6lfOzy9624emUgobKXdvkrpxb0/IudkCAPBMHrgNWgeFD/Ss3KaPyhedjhGViXUxa6gSvUfFEyM
	1uvL1lb4w7NLL6f22PYXlfJjZDth0y9bCwVcxdTc8Ur3AcE8dyqO4thWPLe2gomYp1/kg0gvAVW/g
	cWne6q/QtNTqo6rBFnw960X2IXEaM2V5Rwzd3FmWasrvt488YomY4Pshlf4IzeA0iUpXlKTUqeVD5
	51crNr3dx3ujh3eLfvpdrD9Z5jHOFJFotYx698ynfbuSED14MEXw+L7aqQtes5Ikqw6KuQbVYBEfc
	Cb1FH5Zbdq4l8seNiwoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg46e-00000009zvD-1B0i;
	Wed, 14 Jan 2026 16:52:28 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg46J-00000009zi6-3vJB;
	Wed, 14 Jan 2026 16:52:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 93B4C419FE;
	Wed, 14 Jan 2026 16:52:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67B5EC4CEF7;
	Wed, 14 Jan 2026 16:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768409527;
	bh=UNYfWTgs2Wu0kYNxydtgUIcaXgFHmwIxZQCk0gOPwM0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=LCDZ5kcyZcLkuJBrwbw9oNMtXV5ea2Rxx/LOEwxzgyDHPNn8fXQGdLGge4grZWutn
	 1FgeDa8FsHPk5bIrMvfqyNAl/8ZgWgdb/SDWRKRo0i7CU720s5//HUeVlT2dzeystu
	 phuWpamonrsqKCqmamppizZ4i7jN0658W0KP2xLNIAYEwhEv5OWG1H78L4Gspb/pUo
	 ddB8mp8J+ZkUrLEHcqcz7mXIInkYHmUcJjG0jQAxQHG4nbhF10ZPD9Q0wIQqMEFS5X
	 u+aKzkO5hqm0yT1E192TnszKiM9iuNAVzyk8gPx0SP58x8EPWkR5IZT53BCQ1HzX2D
	 k5IsO8ASysBEg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Roy Luo <royluo@google.com>
Cc: Badhri Jagan Sridharan <badhri@google.com>, 
 Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20251227-phyb4-v10-0-e8caf6b93fe7@google.com>
References: <20251227-phyb4-v10-0-e8caf6b93fe7@google.com>
Subject: Re: [PATCH v10 0/2] Add Google Tensor SoC USB PHY support
Message-Id: <176840952204.979558.17473922474901235501.b4-ty@kernel.org>
Date: Wed, 14 Jan 2026 22:22:02 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_085208_040629_CC92166B 
X-CRM114-Status: UNSURE (   8.00  )
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


On Sat, 27 Dec 2025 00:53:27 +0000, Roy Luo wrote:
> This series introduces USB PHY support for the Google Tensor G5
> SoC (codename: Laguna), a new generation of Google silicon first
> launched with Pixel 10 devices.
> 
> The Tensor G5 represents a significant architectural overhaul compared
> to previous Tensor generations (e.g., gs101), which were based on Samsung
> Exynos IP. Although the G5 still utilizes Synopsys IP for the USB
> components, the custom top-level integration introduces a completely new
> design for clock, reset scheme, register interfaces and programming
> sequence, necessitating new drivers and device tree bindings.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
      commit: 876dc58c3fa532e38cd1b287a7b8143a1a4c5dc7
[2/2] phy: Add Google Tensor SoC USB PHY driver
      commit: cbce66669c82ee9ae0e26523c0fcd3c721fcfe85

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
