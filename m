Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F89ACD11DF
	for <linux-phy@archiver.kernel.org>; Thu, 28 Mar 2024 19:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3Y/TgXdSPUant8vjNIE+oCetoec3Wsm7PvYlBzFmhY=; b=OoH1J9swNnoXsG
	6UUhAgkeDd7K7mfUuOqElmbpBt17TPlHwHLIlT+rQyZt7fAh9GHBeitwRQvGz/S7GYUoIRp9RGJGc
	eQ26hWR0Nju1rfVkKOD57Ez3RpGpY5Go6Eg6RNDml10EbG2pnJWEtW+N5+zqnV9bESBOV9bVU0BK6
	mm262F0Z4MVFntagtUh+KfGMHkDsMXguKo9nUL++B1szE/Q6q4vYeFDH5ZMfriYB0v0nnGVG3pvuo
	jOHDE49PzoEQLJqpWdE7y32TwX2ROBNm0t1FsprNmdIq3la0VJa0RVza9IcbdIT1nYUH5GDoD4xd8
	T9kB+aSwcwGr/YHTz/8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpvHW-0000000FLi4-3JJc;
	Thu, 28 Mar 2024 19:19:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpvHU-0000000FLgJ-1KnG
	for linux-phy@lists.infradead.org;
	Thu, 28 Mar 2024 19:19:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0A52A61862;
	Thu, 28 Mar 2024 19:19:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C905C433F1;
	Thu, 28 Mar 2024 19:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711653558;
	bh=DMJGH/uzvLHpdyQp8bAx813mggvP9W/91i5vYKleDCU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Ho1w3mPsyO2jwlK8SvUXLnbn/aa5FWGFIkf9w2Ecygsn/DM+rM5OcNcR/+25W14z4
	 D6+/dlshJ4jo1z8xhRUc4Vu+DRPHtjUOIPqpGTCxrEv31Z1Fkn1eBVLMOChTOGD5vP
	 +P9hq0VPTPAZvedawyqyJHzp/Y1GdpBc4u7+7ZHjQYF+upna/IhAkg2w4p9wzYP/Xr
	 7Bmz7qJMDTiMJQ5P0ag6ZhTvjBKlRd0+6xcKv89A2xTP+x/BCJwmmsCoQKKHCq1RGf
	 Nr6FDQk6gELz0lQmv5er4eLoK277tyO3gptTtYMz+sEjs0PTBOjBlNwd89Ksf8tUtK
	 bBMF2ByiaHrsw==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20240220-phy-qualcomm-eusb2-repeater-smb2360-v2-0-213338ca1d5f@linaro.org>
References: <20240220-phy-qualcomm-eusb2-repeater-smb2360-v2-0-213338ca1d5f@linaro.org>
Subject: Re: [PATCH v2 0/2] phy: qcom: eusb2-repeater: Add support for
 SMB2360
Message-Id: <171165355397.152390.11176206543554297500.b4-ty@kernel.org>
Date: Fri, 29 Mar 2024 00:49:13 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_121920_766378_BE5E25B7 
X-CRM114-Status: UNSURE (   5.64  )
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


On Tue, 20 Feb 2024 21:41:58 +0200, Abel Vesa wrote:
> This patchset adds support for the eUSB2 repeater provided
> by the SMB2360 PMICs.
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: qcom,snps-eusb2-repeater: Add compatible for SMB2360
      commit: f8d27a7e0ae36c204bffe4992043b2bb42ca8580
[2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Add support for SMB2360
      commit: 67076749e093ffb3c82ba6225d41c88f8c816472

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
