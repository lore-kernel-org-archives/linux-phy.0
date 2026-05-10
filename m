Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DBA4CD37B2
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oqh6cb5Z4UMpqTg2FDLfyOZXw4BKYSfQYKBu33+kuyg=; b=RI/37FDDq+A5kq
	/DdrE4M/kmhPjZpa/cCYV/ZW8X155rdSMX+Ba6YwobJUtAycRJfazT8P685e1rl1m/81Fz7wFw5mA
	OXIx8YLsyWeGeZ5UVGKTvD+e6xcwxFshT5NYHRYz4JBojsbX6J6OXOthc0TyNTLYmUkyOL3bmJ0+6
	r8aV7MPxlJFVmejpWrvQ5HWzEvTCl4SV1H8VzzPz8u0itVw4e26BHk8+VE5hVTG6ZuAedOMX1ADyo
	VDuvGejExCj+Xl/DMwkelwD/3Pxrzm0+zjwqcqNfnfgar2bEnNUNqdcY6XLNpC1+h3UmQm8SYXBlD
	JSQNLTrCtYGmioKSCPYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3K7-0000000AiTv-0PfU;
	Sun, 10 May 2026 12:31:55 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3K4-0000000AiTJ-3ISn
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 12:31:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8324A43AE5;
	Sun, 10 May 2026 12:31:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01429C2BCB8;
	Sun, 10 May 2026 12:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778416312;
	bh=GpPVrg/PfFzPxLSfdWD2EavHi4G1RCtQ6isvE3x/6aY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=AsTYwwDAvD2+fevFM4EW+ggzoLazMD9YFsGj8KekN1e2BmGmfPzEOsNrNc3fEukT1
	 N3gTVCto04JK10DV66IxSYRCUz9PybRRYPA46HGkJfG3Up4CzTENl8YQLpcvLYtCg8
	 N8A/B1aeb0rp+ruK6Luth2EcvqKH9DYLsT57pBSSWKQyAPFH6OVVCDH4Df2P+rHxey
	 Kka2SfENZ331XhzhCntFo4egw+cvTgUR23EyRg6SEzdJaYXVl1O706tYizdT5E30Ob
	 0FmdpiUyUGsY14TFrStZDh1aPYPUiPohkRuAimaB2oxuj6RhcnpJFrewgNzbnXaB9j
	 S5eaJmlqJV2ZA==
From: Vinod Koul <vkoul@kernel.org>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abelvesa@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
References: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
Subject: Re: [PATCH 0/6] phy: qcom-qmp: Clean up QSERDES COM and TXRX
 register headers
Message-Id: <177841630857.434434.12057829864554711219.b4-ty@kernel.org>
Date: Sun, 10 May 2026 18:01:48 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_053152_983510_05327DB6 
X-CRM114-Status: UNSURE (   6.12  )
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


On Sat, 14 Mar 2026 13:13:19 +0800, Shawn Guo wrote:
> There are some duplications around QSERDES COM and TXRX v2/v3 register
> definitions.  The series tries to clean them up, and also rename
> v2 registers/headers to make the version explicit, just like all other
> versions of the QSERDES registers.
> 
> No functional changes is expected.
> 
> [...]

Applied, thanks!

[1/6] phy: qcom-qmp: Add missing QSERDES COM v2 registers
      commit: 52595824b0027d075470f7f08afe805844c1b079
[2/6] phy: qcom-qmp: Use explicit QSERDES COM v2 register definitions
      commit: 764f409b840ab400253215e765a72b903feb6afd
[3/6] phy: qcom-qmp-usbc: Use register definitions in qserdes-txrx-v3
      commit: 9dfdd6e7bebd63eeef0ba57493adee91c34ae338
[4/6] phy: qcom-qmp-usbc: Rename QCS615 DP PHY variables and functions
      commit: c834f0a69051e5db52172262dadf8f7b5ff58bd0
[5/6] phy: qcom-qmp: Drop unused register headers
      commit: 9b1270d2b85bb7ce6bbc71232375b21d8be0b799
[6/6] phy: qcom-qmp: Make QSERDES TXRX v2 registers explicit
      commit: c7cd4798fafa84581502094d0be282072851c9b7

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
