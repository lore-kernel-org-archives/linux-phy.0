Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79CA5C7115B
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 18:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qL49a7BX/z1kFD6S1OeMNN1XMDHzWOLtpBTRv7LxmkQ=; b=kxtNRILe82Yvvl
	Adne0URaz/+BwZkPv0bHa5/5YQbh8d4eWXRyiNLJUBZIOYgt2DuKXqd0yhntffA4t74vf1taOSqMe
	4hitRMDmJoVZKVR+uprLSobAchyrB5jGZYdjtcuINK9+Ised3dC3T0iUu6Kp1/I2cWTavEFHA1W1X
	XwmACknHaah8uhtHJtlxBr19Xxh58n80gVEmsMKQfiDvPgnBxhNlAsc5qVvLzTnhjNSZAX/oRP9Fe
	e/PTPB68cRvIExkheILK/Mf+DQDnFtQa+DGAHMCCsiit4dBGCZsaJdHM7iRf1RkAslJyyIuOL+1Qk
	0mGiO3QvAYapOPLo/w8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uREad-00000005Eks-0Ezf;
	Mon, 16 Jun 2025 18:29:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRDCc-000000054D8-3Whg
	for linux-phy@lists.infradead.org;
	Mon, 16 Jun 2025 17:00:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2106B4A01D;
	Mon, 16 Jun 2025 17:00:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81C23C4CEED;
	Mon, 16 Jun 2025 17:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750093258;
	bh=LIHLqXxyRllxlm8oEjNBIkiTqf6Esvz9pt+PybPh+8U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sqps2wqkYACDdWCldgDyoINfGS/q9F47Al4KIwSAMuvb6MUI785rHmI4DfBCiGUGb
	 GWP+hm3eHJe6/TjGVsAK/r73eAA2/eDetRCVeKrKzHtRzZSH2SmTk5gx1c2WIobJ6r
	 f2+NjZdE/hIaVR4zipV0NBucIJbaoN11C+Rk/uxryeVrl8nczuHXf1vi8/Lz1yk4ho
	 B9OtOHBSRFJSVIyJsHoD1gQVbCaenD8FXEuo5kygidn8yWpKFgB8S0vTj0pNuCIebU
	 PBnx8zNs4sQvg70enXwvDljxViSGhB+3iD9VFXu5/Qrx5K0RSTEvUY58vQdquHa6oO
	 M7F7oWuEaBGiA==
Date: Mon, 16 Jun 2025 22:30:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Melody Olvera <melody.olvera@oss.qualcomm.com>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: qmp-combo: Add missing PLL (VCO)
 configuration on SM8750
Message-ID: <aFBNxvggJXYKQ4d1@vaman>
References: <20250616062541.7167-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250616062541.7167-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_100058_896553_120D6950 
X-CRM114-Status: UNSURE (   6.11  )
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

On 16-06-25, 08:25, Krzysztof Kozlowski wrote:
> Add missing DP PHY status and VCO clock configuration registers to fix
> configuring the VCO rate on SM8750.  Without proper VCO rate setting, it
> works on after-reset half of rate which is not enough for DP over USB to
> work as seen on logs:
> 
>   [drm:msm_dp_ctrl_link_train_1_2] *ERROR* max v_level reached
>   [drm:msm_dp_ctrl_link_train_1_2] *ERROR* link training #1 on phy 0 failed. ret=-11

Hey,

This does not apply for on phy/fixes

Can you please rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
