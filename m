Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30D09FEFB5D
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eU/vJy1oS9Ix/TOYIrLQ/EYKAe4eofanev33r6PUw5o=; b=O/7NALN1Lk1b81
	2V2As3Y1FSkiraaQPkgsj18x7SXsoviOWAS3o5EAYMzNNqvOGWxOx1vm7EpH/t9fuMj6SqHg8365R
	3Wt1E/3lccIQmfmo3pp0MEzxsMFw+QEEVm60yjBqWNLb8lNObnamrTTkosk/+r5tAgXijS64s5N8V
	UGicbgKp8sakt+Q40dfkN2sil1EHzjowguh8u53qk8DHim15zWQOOv4ASImrMny9QsHguPOnBAKoK
	nqpeAY5MpyIGCv7fU/iHu6tLCFombMOtUKctQmW9SdWP8T8Y55KR00sikp+MAeKczRK2Ina2KdLn5
	tAX3qfv8flMXGQ59EW7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzmd-00000008d7O-3qfX;
	Fri, 27 Feb 2026 15:29:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzmb-00000008d6I-2yzH
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:29:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 703CE4364F;
	Fri, 27 Feb 2026 15:29:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A983C19423;
	Fri, 27 Feb 2026 15:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772206177;
	bh=TThf0zGuIQiVPe0oLyxVWAsH1T/uyE+KzNCGzyGhQNg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=uOoPHD0iIJKlxNFsZjC58CGLyazFXWV8TYr5z6ni2Io6oUGNW5/pBrZ3fVY3k2CHw
	 QACPdto5xZwptLsHWcLsDnSXfPaCJIeSCo8XYIZ0fCzB+qPacV25ECqXhee1onQuDA
	 vp6REW107neTbFfpwXrM+lrOWH7WDjb07NxuOds/rmy3336x+PMy0jVr01OyKrgu08
	 v8lSSgPyditSiyEIg9dZOvYo+MBjxjaARXDHWrBlAyMJAEeesaE2hoqsa5gFNgJgfx
	 Ns7/jZsjrT0mgTDIPtZKBIT3I30mabcVCBfQQmcnz+ERT4IWMHxCuw3pBWpm23CX2U
	 427gFXpIlmgHw==
From: Vinod Koul <vkoul@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Elson Serrao <elson.serrao@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
In-Reply-To: <20260217201130.2804550-1-elson.serrao@oss.qualcomm.com>
References: <20260217201130.2804550-1-elson.serrao@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qcom: m31-eusb2: clear PLL_EN during init
Message-Id: <177220617425.330302.16212600767917338005.b4-ty@kernel.org>
Date: Fri, 27 Feb 2026 20:59:34 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_072937_772170_633D5FF0 
X-CRM114-Status: UNSURE (   4.45  )
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


On Tue, 17 Feb 2026 12:11:30 -0800, Elson Serrao wrote:
> The driver currently sets bit 0 of USB_PHY_CFG1 (PLL_EN) during PHY
> initialization. According to the M31 EUSB2 PHY hardware documentation,
> this bit is intended only for test/debug scenarios and does not control
> mission mode operation. Keeping PLL_EN asserted causes the PHY to draw
> additional current during USB bus suspend. Clearing this bit results in
> lower suspend power consumption without affecting normal operation.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: m31-eusb2: clear PLL_EN during init
      commit: 520a98bdf7ae0130e22d8adced3d69a2e211b41f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
