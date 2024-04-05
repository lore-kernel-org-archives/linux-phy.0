Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7D8DCD1284
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 17:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZoQ/pFZXq6eX79LpEeDIrWE+FAp2Gv7Rz1fBJJ8iicQ=; b=i32XHu8W7VF2tP
	HR3VpTS0KQHw+o434VCCo8Xao6RGJDduXm8BmHYhx8xC8yMYWHOLQzVClP4ASVZjroojXfJNpt0p5
	oKI8MYEfcxXUpsceg4DnFfJ7CW5LsaRrMpzuT6Ms0Lwit3PXnfatqZ/DTsPWJW9gYdBIxbACXYX0w
	qAX6PBElnWLrebMDqt8S9TZiwVcOFOkR2VjDvh6wqd6TDF7gfwoNMRKlhOmrMRL/rgEbqGxGNMpMK
	1JEphFCtXPlwSBkqW4HDlTyOBC/nCxONf4ROePuONJNhaT4vvPA+dHuOFIaRbQPJslimcZ7g3e0Zf
	LKYL7TjCX5FEm5JrhSGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsn3u-000000089gh-1YSe;
	Fri, 05 Apr 2024 17:09:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsn3r-000000089fk-0x6J
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 17:09:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AAF21618BF;
	Fri,  5 Apr 2024 17:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF43AC433F1;
	Fri,  5 Apr 2024 17:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712336946;
	bh=H9vEkwAxYj5wWq9yqiD29L3VLUbFY7RZslsH1Qj/VMU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=R3rozz+a0B1YpNvB4vfXKtdF7QEdy3dG1YafDVgmfBpbuzYPfTa91bgsIRwc8EgVI
	 v4s7/oL7+AgdOqVl2KmgB1zqG6Qr+cBq2/dqbA/V6hHI+726GOASKO3CkQ5+GXXfZ6
	 IA99s/DigM7iZXoftJjwNCrh7cvtblteI6hfk3MEEp4WH8D6dPReWf+iVd1SLGfVj+
	 IAU2aywjYNc4Pn0xVhLpYu3upppPYYn/p97e2WlazkOtg6FOx7MckzIUXoUFCDZD1k
	 GAXAnqvauMbResQ63Fk51YV7SswZJVLVoWxxRsa12bsn4478igh8zIb+ba9DSNV3gy
	 3Rw/zKiu4l43A==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240226-topic-sm8650-upstream-combo-phy-swing-update-v1-1-08707ebca92a@linaro.org>
References: <20240226-topic-sm8650-upstream-combo-phy-swing-update-v1-1-08707ebca92a@linaro.org>
Subject: Re: [PATCH] phy: qcom: qmp-combo: fix sm8650 voltage swing table
Message-Id: <171233694335.304553.13639721114299894293.b4-ty@kernel.org>
Date: Fri, 05 Apr 2024 22:39:03 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_100907_344210_E856CE16 
X-CRM114-Status: UNSURE (   5.60  )
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


On Mon, 26 Feb 2024 16:22:36 +0100, Neil Armstrong wrote:
> The QMP USB3/DP PHY found in the SM8650 SoC requires a slighly
> different Voltage Swing table for HBR/RBR link speeds.
> 
> Add a new hbr/rbr voltage switch table named "v6" used in a new
> sm8650 qmp_phy_cfg struct replacing the sm8550 fallback used for
> the sm8650 compatible.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: qmp-combo: fix sm8650 voltage swing table
      commit: f320268fcebcbab02631d2070fa19ad4856a5a5e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
