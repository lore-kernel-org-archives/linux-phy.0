Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E50AC83010
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 00:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVGbIAA8efQi9FLbPG4oRJHd4hLnx1kcOga6cUIlU+c=; b=bP2iHf5BpCSHGJ
	GH/mKjCDdCo4xOW8OlFKtjapXwJeE59GrAqdCQHID3/5lduVGdNlonTIhVhWtJmz8fCSNUj4JVPvZ
	KCMhc6zaxTD3upsNxrA3pm6o5HWO6uz1ppD0YVzGuVCxmYi9clm1ZOxUKbwVYHsiAeVY29Qm2AkvW
	RDwaXdh4k9Bts8i9g2Yt2cRpl+e5WkDNQelBc85U5G7DJ/da+ZVKOZbAxtF5vSy0codwtCI3nJ9ak
	pmQ+jOqb9701747j1bUQ/m5RX8fnTjyUVDanRU+AMIWJyFJVfOo7OstUa2KJEYX4GDykWi2Lgye1T
	ur69QevEwogO3D64hHUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUxNk-0000000DGCw-2zrv;
	Fri, 27 Jun 2025 00:55:56 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUxFF-0000000DEYx-3KM5
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 00:47:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 29C924601C;
	Fri, 27 Jun 2025 00:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5888C4CEF3;
	Fri, 27 Jun 2025 00:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750985229;
	bh=Sy0MNRkr7OgPAHkYaJle+oDt6of3ltgYZS+pBtmnxsg=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=VoCzdsbkoo5sJQ5ESRkQH6mdo6fdZbKn223ORwnlRljqQfJxlMZXm4fARn4KKSWG7
	 SQDiY0v8hoj/YxqCxbiDHrW4e0aXYOwPamWrDx5wePdwKeToVxyvHLe7TknxzveLSO
	 pMy46atriyTYv9jc9RMvWIfJhX0WWaZGNu3eugoLxwa83Y0T93+qNYTwyvn2NtNa1x
	 C7NvyS0X/HSvqQaV6cj2eCdthkpDw7Bv7tFhHcqHUoJBt3EvRUabqzlq6Bm2Q2JbIr
	 Va9ewMSgzlu0z8c5uk2Hr9YRwqwUVb0arnAMLRYCAiLO868GrjHM0rlNsoDEKqdE4D
	 sosbrhir9Dv9w==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Melody Olvera <melody.olvera@oss.qualcomm.com>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250616062541.7167-2-krzysztof.kozlowski@linaro.org>
References: <20250616062541.7167-2-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] phy: qcom: qmp-combo: Add missing PLL (VCO)
 configuration on SM8750
Message-Id: <175098522871.106297.918831691026558846.b4-ty@kernel.org>
Date: Thu, 26 Jun 2025 17:47:08 -0700
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_174709_853451_93DF3138 
X-CRM114-Status: UNSURE (   5.19  )
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


On Mon, 16 Jun 2025 08:25:42 +0200, Krzysztof Kozlowski wrote:
> Add missing DP PHY status and VCO clock configuration registers to fix
> configuring the VCO rate on SM8750.  Without proper VCO rate setting, it
> works on after-reset half of rate which is not enough for DP over USB to
> work as seen on logs:
> 
>   [drm:msm_dp_ctrl_link_train_1_2] *ERROR* max v_level reached
>   [drm:msm_dp_ctrl_link_train_1_2] *ERROR* link training #1 on phy 0 failed. ret=-11
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: qmp-combo: Add missing PLL (VCO) configuration on SM8750
      commit: 304c102cff7382353a28039907a7017bde795db9

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
