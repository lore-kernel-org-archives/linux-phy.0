Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CCE4C2BA12
	for <linux-phy@archiver.kernel.org>; Sat, 15 Jun 2024 18:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZuYvVkonvOOc8JZqaXdGlxoq8IjAgc/zOiKfHbwbItQ=; b=3b/bM8vicnOwl5
	3FalC0Gb9CqSLYBHUWficc+TGY+ATq+uQHoDb5Batn92Hmi5bxA1RoaNY357y4FpL0hhj3nEopBwg
	FjpzfzpOIXbbVO7ZtFAqVJg0CJ9Rq4y/Olj/VwAZR4777WVc71LowIhLWynQom0JbJR7m/1Ewb6ap
	F4AcdFhZ59/zypsBja6c36E5duZVnFW1A5NYeB7LqRrTTFEpuVRDgBXmZl+VBwxUMSKFLZOTMfWW8
	k7yd3S1x6l3ddjY0NfLUmlDbTC3PgEOMV3wOiun6vW5UIXG9FE+hqEn1vnBXk5v1UwKtLvyq7p9bv
	r49kWYFSXrctto6as5zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIYW1-00000005xC2-0SIo;
	Sat, 15 Jun 2024 18:52:41 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIYVx-00000005x7o-1Zfo
	for linux-phy@lists.infradead.org;
	Sat, 15 Jun 2024 18:52:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 47F8ACE0B27;
	Sat, 15 Jun 2024 18:52:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 509FDC4AF53;
	Sat, 15 Jun 2024 18:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718477544;
	bh=weQHfrNTmeruW4q8jhq/6GiMueMj2ra6mLv8mX/1y5o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ADmwGISoKLJA18cSf9tPggPSGigFP6WsG2NNBa0hbxyPpe2badLizziBY/2OmE58u
	 8o/2bmj2Kmj65zwX/ZbB0kRhzq6iwC6jvMT8iEyUCso7CjNPfPjZtg1oE2ulhOfQEz
	 OrN4Lzbn+lpQ73hKbXNUu9Ey0vHlJgbpCT9QxsLLP96IyWVoQxQv25TurUgsbH+awo
	 1LMSui1yRTGbmnlmpn9sDpZaz7DWghoMy35Ub1Nc79hbjd3k5dqpsEUzd9dWgLXwlz
	 i1/bDsPveFY9uzf3otY9UQ3TERdvYokYmIkbg3C55WFeXRZ7AEOBA8+rjie0h32+TI
	 lranfn0mygauA==
From: Vinod Koul <vkoul@kernel.org>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: benwolsieffer@gmail.com, chris.chapuis@gmail.com, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240417065454.3599824-1-github.com@herrie.org>
References: <20240417065020.3599755-1-github.com@herrie.org>
 <20240417065454.3599824-1-github.com@herrie.org>
Subject: Re: [PATCH v3] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
Message-Id: <171847753945.716119.6840883875722992838.b4-ty@kernel.org>
Date: Sun, 16 Jun 2024 00:22:19 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_115237_671096_DB737A4D 
X-CRM114-Status: UNSURE (   3.24  )
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


On Wed, 17 Apr 2024 08:54:54 +0200, Herman van Hazendonk wrote:
> Adds qcom,usb-hs-phy-msm8660 compatible
> 
> Used by HP Touchpad (tenderloin) for example.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
      commit: cd13368db059de22d27e86665a378aa2a388db85

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
