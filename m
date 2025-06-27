Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F2C6C7EE3A
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 00:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rNVpUHdwuWNqBeBDjJZLc9l9YnBgxFX0ltWFyo1KLGM=; b=rAFigqnjykdBj/
	5PBFqTFkx2TRYm1G1GQ3d4VqdXxIiVS+CUYpGdTKeqt4pFmLkzHglBbsJ530ByOYMK9rwPiYNNjIA
	nC6e9Ark2SBCb1hDekx2wYrYELfXEPVKQgjkKl57HXQ/4EjdHESYT8sLNe71WeLrbuWOX3jv2dPzf
	jz/8vTShYDF9aUgu1AaJY0BpBN+BjYevw7yMhlk0DxGWDdzEDZyBsihF6t3pkeha+sJ2vp7uu+xjn
	itnMtIBWOiMdeTO8Fs9V4KFV3iOYp+5/T/lILpA1wgU0QQkpV53pJij9AK1z8ttOTyMWkSTCP75AW
	3zQ+CKlOFcXLXddh293Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUxNj-0000000DGBs-3eHM;
	Fri, 27 Jun 2025 00:55:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUxFE-0000000DEXZ-2xcu
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 00:47:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 641A55C6A2A;
	Fri, 27 Jun 2025 00:47:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A253DC4CEF0;
	Fri, 27 Jun 2025 00:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750985227;
	bh=f9xFZ64ZazYnbLcMEuHUS/mLu2nEZaRiRv2AuGm800M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=nvWJwdqy7TwhmBM9D+f5VSB0SvOc1HrP+YkKvTPGB7MLFGqyNlAC7qi1wwrDHoyTW
	 wJy9dkBUwCIm/1VHf1fEXy7XYZOBZ2jxT5pM18Bnp1dmqf94L+d3Vsh8CD+NNA+/Sj
	 KxlhUfIGeXSfrqCkSGd6Ye/AWk0Sk7NBz/sfzFVQPpYc8+4pmlIuXtPOiDsFs4HNnF
	 EcIaDXxcFRpegrWL1QbqAy6joYt+IYEuDf0ye2KqsX4fWW9KYlpn2qgRKs2uCIEUVd
	 QxNBXjk6doje1WEurdmNt+YZx63isDnKzE/2pX9FHKPRMaI2XoYmV5soe5CQBDXygq
	 yGJ260AOYwoRA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
In-Reply-To: <20250617-eusb2-repeater-tuning-v2-0-ed6c484f18ee@fairphone.com>
References: <20250617-eusb2-repeater-tuning-v2-0-ed6c484f18ee@fairphone.com>
Subject: Re: (subset) [PATCH v2 0/2] Fix tuning on eUSB2 repeater
Message-Id: <175098522656.106297.12274853092906224270.b4-ty@kernel.org>
Date: Thu, 26 Jun 2025 17:47:06 -0700
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_174708_789316_A6197B43 
X-CRM114-Status: UNSURE (   9.19  )
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


On Tue, 17 Jun 2025 10:26:34 +0200, Luca Weiss wrote:
> Update the dt-bindings to remove the 'default' tuning values, since they
> depend on the PMIC and are not guaranteed to be the same.
> 
> And add a fix into the driver to not zero-out all tuning registers if
> they are not specified in the "init sequence", since zero is not the
> reset value for most parameter and will lead to very unexpected tuning.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: qcom,snps-eusb2-repeater: Remove default tuning values
      commit: db9f3e3ff9347a233a17eadefae9c1b29ec8f3ed

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
