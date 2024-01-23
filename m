Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4777BC47258
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jan 2024 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K9M6HjUflAmQ/ahrHx2AmAmRWcTlNRYQS7zLCAcqBHs=; b=qQ3rdYkJtjPgjL
	Wkij2uFYuCKRmTJGMpB6pA7su9wbHses4GiVLNivxS8D9LcUDzAUpzEsroRAw7eLkdhbEyT7tII0Q
	vbP91O0Ct9yep3jdjuvkXImYf5yQ3CU1FfkgwFkHpGqCkP2jfLyFYoEc/YuG8UugmgWs/ctCTdGkQ
	fyjJ3t2ExtNebKZjQeVwlfgcWPH2uNTjZQbpYM640vTEz5iiY1vMe2WPkr6k8iR34fG7fuyHbfG9r
	ihdarm1BNucemMqaxlBd+WVCbAfKlxaMko+jKNztY110BLalUnl/eFdrjMbvmBZ04c3V67W4Hzt2K
	7XrYYvUznXanDOKWepTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSIjO-00H2dG-21;
	Tue, 23 Jan 2024 15:30:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSHei-00Gn7C-2D
	for linux-phy@bombadil.infradead.org;
	Tue, 23 Jan 2024 14:21:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=K5pyWeXSIWQvCBV+OYcWR1HdO8fC/5SDZnmhstIgVYU=; b=WwbZmsrbtJNhSug7D+SAiTAwJA
	a2Sie6aQdwacgoygsUkUJQDZlKckNfpg5hZPyrVjxZXpBER0JS2CYv/4RW9XxlQahYClg2xS/BK5D
	lQF4eOtbR+e5fNbhXqUST/6vC21LYldrEkkxjJNDbec2wrPInJlBREA/8MNSfpy+98HccztSQoKiX
	Ze2iJT8EAXrV+axIZTk1j5tP3ffBpExzpq/dHJYUUKiuddC34XUsQXVZjFVixMn2PujIdZrXrPmJV
	wUBX4SWQpdc22oqN9jeraMRcOJIxz3I95fg+V3o5EFPBNgk+n5iEdrnWW1+Qr5tafUOZLkchV41Lm
	ACRn9XXg==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rSHef-00000003uHi-1QfH
	for linux-phy@lists.infradead.org;
	Tue, 23 Jan 2024 14:21:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3A2F061E0D;
	Tue, 23 Jan 2024 14:20:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA712C433A6;
	Tue, 23 Jan 2024 14:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706019657;
	bh=Fnn6kbblgPOYTHgAoSYebD9MlsrB3lhFQpPsRPT6Uyw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=mbhUlsXwMBG5JUe5GbAA98Iq95Cnu8TyvBGPHMi2m7n7xd/qfl/cu7IwlfyvUcb1p
	 tQg6LFrmnl1mIers/nehSPv0+8/LCqpvHp+xZibvvKELZ+OwVBQ9Wxi2nW9D9CIcap
	 rJb3S7X2GYQPY5xYnX910gcrEujTyW3wffvhQ/j5MVrm2v9KBARP/1kWcdhGOfiAJj
	 jkO7fzjoUoKbpKUDLKFoIn6cx4t0eD3qK3zt28Iuhr7h6IxBAo9+jD/vEz+tlSQ7kP
	 TUkxX6c1mClUpk8NmGXUg5g+o4CRu/+nTyTUdrjCpXweZ/mWnMCpgZ4Q2COV7Jo+Ud
	 ah0qky1ifkNMQ==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
Subject: Re: (subset) [PATCH v2 00/15] usb: typec: qcom-pmic-typec: enable
 support for PMI632 PMIC
Message-Id: <170601965232.371263.15600839132487159612.b4-ty@kernel.org>
Date: Tue, 23 Jan 2024 19:50:52 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_142133_727891_64EEAAE6 
X-CRM114-Status: UNSURE (   7.96  )
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


On Sat, 13 Jan 2024 22:55:43 +0200, Dmitry Baryshkov wrote:
> The Qualcomm PMI632 PMIC (found on Qualcomm Robotics RB2 platform)
> doesn't support USB Power Delivery. However this PMIC still supports
> handling of the Type-C port (orientation detection, etc). Reuse exiting
> qcom-pmic-typec driver to support Type-C related functionality of this
> PMIC. Use this to enable USB-C connector support on the RB2 platform.
> 
> 
> [...]

Applied, thanks!

[03/15] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: split from sc8280xp PHY schema
        commit: 159919a184c5ef82fac3605b2390b17a549c06ac
[04/15] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: support USB-C data
        commit: c1214b579733df7017c0e5f97f26eeb4b66df0c6
[10/15] phy: qcom: qmp-usb: split USB-C PHY driver
        commit: 19281571a4d5b6049dad9318db081af48818b1d2
[11/15] phy: qcom: qmp-usb: drop dual-lane handling
        commit: 52cfdc9c6c3306f0bda4f217396f508d3f5459fb
[12/15] phy: qcom: qmp-usbc: add support for the Type-C handling
        commit: dfdaba27b4660ec26de955cf4459499ddb005e2d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
