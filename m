Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084B560A3803
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 09:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kNZH7RFQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=EozQfOTj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WC+AzCs1p/HV+HlBhlPGptPvF3bX9eR5Q9NVCWhPk4c=; b=kNZH7RFQFjLtCPo/HfES/5mAUV
	tasoRjtqJRuGARIar3gl+xeMYnOdPLp7l+yx13akJMXuhqlbbVrpynm4XGrD7NC1HEXkvdIGGLahr
	7s+nnuXwZvYU96pNXGGunK24vB27k7nXG+pMwyZFXOHYYi4ecx9TCSa4M+rHgBKFXczpJz71YGgwM
	QE9eiygTPDIcPGMhtxIYR5rYr8+V2YQZr+6DTmqr+bmTBZ5C8mCxNdmTayGCaQC2NVygNcCqbBwTV
	2hsKWPX5KIuJnu+YRQr/XE207Zv+TayLwg7n0CTfBz4bjucF6G4wrd3oqvfLpC2C9DQx3dOAxn72P
	1LhZX7Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQj6-00000009HPz-3ARx;
	Thu, 12 Nov 2026 09:04:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQj5-00000009HPY-0aj3
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 09:04:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E1C3E44DA4;
	Thu, 12 Nov 2026 09:04:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 314101F00A06;
	Thu, 12 Nov 2026 09:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794474250;
	bh=ljiqR7CXOmCffMfAyj2PLXWgzNEpnp3l1Lu8bty1Q/E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=EozQfOTjVmzweoSiPK+IK0UJ1RM4s5peQjOU/H5FgoZQXA9gGXd85GYX0x0EGprma
	 snIKdrlhldI58Qkekg4f4g/9Amk/nqtZBGZI5Omm6cj7uum2Bf2D3fLXeWaU1Gh97/
	 g+1LwLC53n19ndYRRCkVEPfyJ4JGKnRv7+9Z+R9ChX9SCKL6N/lzNvhKxRPyCWvG0K
	 2Kcf+HJY7tI4A4sPr9SnhPNIlYa+aeeyMGeAW/KUqRp3LP3pRqxzshZIkhgskWSOch
	 2YNnOFrkl6myPxtX0qYo1gyye2ci+e3UdgGpOJ0jDZj4ia5nEODp0z410ab3Ys0xVe
	 fLIotZijk4rMg==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Iskren Chernev <me@iskren.info>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
In-Reply-To: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
References: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v2 0/5] Fix up QUSB2 PHY description for
 MSM8996/SM61[12]5
Message-Id: <179447424584.428303.562761985654321627.b4-ty@kernel.org>
Date: Thu, 12 Nov 2026 14:34:05 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Thu, 03 Sep 2026 16:25:27 +0200, Konrad Dybcio wrote:
> The MSM8996 QUSB2PHY was not being guaranteed a power source.
> The SM6125's QUSB2PHY was believed to be idential as the 96 one. It
> wasn't. This series tackles that, freeing us of some dt checker
> errors about vdd-supply not found on MSM8996 boards.
> 
> Compile-tested only, but docs confirm my findings..
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: qcom,qusb2: Straighten out SM6125 and MSM8996
      commit: 881cf66d7d011477cd119774e0903d2e36a506ef
[2/5] phy: qcom-qusb2: Fix SM6115 init sequence
      commit: 2f8316ab844adb8f172984216c72506ccba92ea7
[3/5] phy: qcom-qusb2: Remove _SHIFT defines
      commit: 54d32f138fc44efb0a41fa388f238ea1f2fe5760

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
