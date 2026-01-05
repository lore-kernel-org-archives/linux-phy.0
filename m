Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8804AC79FBB
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 19:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yr+zvCZARNOcdUBSteG+vuoeeS5TAzDfD0eXy7AY5h8=; b=WShRdbUfNDuKca
	Jum/69TT1gzGfH3kndA10QY9rqz1R07mblBKzFH1QRuvYguHoIp2an+4UZfKUCcKooGIZVxBbNDLy
	ExqYmVbH7dzFQv8vIUcTlXa18qvzO5V/QbwzQ+S3amoLa/ULGYp82nT/BQpIzN8NAVG67JNWMQCKm
	RR6CgcLm6NjgB7rlElEsiiP05zJW7aRPvHcOHKqH1KNG7rHBCvnTCpm9WCFoLKmtyylx4GqQmQSY4
	KT5Gat5bTOhDW7FkzdsVcIPDxuwfy2HorXql+5JaHxFmWMdtPYPTOJ9Yh545hSn9IEo702Ra7pcn9
	/aW4ZHUPRA3Hx1rDERZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq4F-0000000Bxss-00Vi;
	Mon, 05 Jan 2026 19:16:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq4B-0000000BxsM-25cI
	for linux-phy@lists.infradead.org;
	Mon, 05 Jan 2026 19:16:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9AD514186B;
	Mon,  5 Jan 2026 19:16:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EB85C116D0;
	Mon,  5 Jan 2026 19:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767640594;
	bh=povE5y5MY7Uwze3qy6H5gHZ1SQ221k5BK3sT4JoYWGs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZLilpzwuyqmHP8n/r5pXfEADIgh+en0I5Bz/Oqta/W9EVsmck2dKAAnlGrWTJ5Olq
	 Fo7saD73xUX6XAK5tMtR0fgkYgamXHid3fkt+YSw8kQnWqtqQ0l3Y4w6We6TqbQWkE
	 rXYEUpt2hdNs/7141RHssAmVmxGpeP48gTA9gHRNKvTz8nX5oFBi4FIGGd0LKe5zeA
	 u3iDPdRCfPkH3fq+FpaeuLR92EGa8cYD4ZcmLdjoiLUibaylMFFaYBaPgOsHh8s6eW
	 ZgR0IhX7iNCDEH8IApQa9xI1fIgwQglQvrAyJF3I2zs59vOGoeblzEdeh0NhEaPeef
	 hJf27d+Y2vpDw==
From: Bjorn Andersson <andersson@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	stable@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH RESEND v5 0/3] phy: qcom: edp: Add missing ref clock to x1e80100
Date: Mon,  5 Jan 2026 13:16:15 -0600
Message-ID: <176764058412.2961867.5718279320057221936.b4-ty@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com>
References: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_111635_558457_07BB6634 
X-CRM114-Status: GOOD (  11.76  )
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


On Wed, 24 Dec 2025 12:53:26 +0200, Abel Vesa wrote:
> According to documentation, the DP PHY on x1e80100 has another clock
> called ref.
> 
> The current X Elite devices supported upstream work fine without this
> clock, because the boot firmware leaves this clock enabled. But we should
> not rely on that. Also, when it comes to power management, this clock
> needs to be also disabled on suspend. So even though this change breaks
> the ABI, it is needed in order to make we disable this clock on runtime
> PM, when that is going to be enabled in the driver.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: qcom-edp: Add missing clock for X Elite
      (no commit info)
[2/3] phy: qcom: edp: Make the number of clocks flexible
      (no commit info)
[3/3] arm64: dts: qcom: x1e80100: Add missing TCSR ref clock to the DP PHYs
      commit: 0907cab01ff9746ecf08592edd9bd85d2636be58

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
