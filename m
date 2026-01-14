Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCC00D37E3A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 14:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLsSjHah145uXY48SRC+VJOqP8Os1a4fBHiE27C+8UQ=; b=vxw25ek79kxtR1
	Z+OKIA1FnSX/cLrOLofmkFs8TqRywXvoC7BqehSMPt+H0ih/HuQv849H2SzyqBxs2vbueZG9mx96r
	R7YGoHOdnxEEDavwm2QTnjlMl1DhdzpMH7NjrP6MGD7Lifjah0kggTedRlXegD5IjWxbtrruHD2SJ
	sdrE50cA+7o/c/llZw05yUIEoE9XlnKlRpljQ4WAbhjv6js9lpflKlsMNrbnWGROxt7TBMp+GnL8R
	3hsTmoaV9AqWKGws9sg3TKLqQ+70nHHFzqBWywQhAAQ805aKVLSP6BukG/6fQh1hLau2HjA0Syn6u
	NY9LSZZArLAnDU+vhyrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1RM-00000009RJb-25iY;
	Wed, 14 Jan 2026 14:01:40 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1RJ-00000009RHu-0g9B
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 14:01:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 62EAE4360F;
	Wed, 14 Jan 2026 14:01:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 228A6C4CEF7;
	Wed, 14 Jan 2026 14:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768399296;
	bh=qsyHjUwkY0nxEJlAVVtGXwHiPYNJv+cAJVY64U8He2g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=izGnrmi1Xi5mqc1+k/VAn5XqxpLTOyJDwEaLYBGIIOB2C+bkJMzWnVPCbJI4981V4
	 aI1HM40PDlHhvNF4gcZ6hkjxHD3eYDXhneyQM3S7Lx5jQgzO2Ix2Gftt7gZr4eL8cw
	 8m2Li0IOFBCU4sRGDPLoDtI6+EDAfVUNzwbjuclOuoo0BRRDhc8/eGJJBrPvG3ZWS9
	 LtAEAxrsQeOxWSqtAMCm7RCj9PpGXm68uFTmko53L+BhBRghuBxby4TFfd+Wfch5EA
	 PlQ5FOHzYNtrtLDwDh7FJpVPloM67GjYnJGrG5hYv7OGojEVpxr2xLLVO+TEzDTkjS
	 V7AprclsA5buA==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abelvesa@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Val Packett <val@packett.cool>
Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260111083317.604754-1-val@packett.cool>
References: <20260111083317.604754-1-val@packett.cool>
Subject: Re: [PATCH v2] phy: qcom: edp: Fix NULL pointer dereference for
 phy v6 (x1e80100)
Message-Id: <176839929376.937923.9426049740721011950.b4-ty@kernel.org>
Date: Wed, 14 Jan 2026 19:31:33 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_060138_279431_0BE71859 
X-CRM114-Status: UNSURE (   4.57  )
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


On Sun, 11 Jan 2026 05:25:59 -0300, Val Packett wrote:
> For Glymur SoC support, the com_clk_fwd_cfg callback was added, and a
> stub implementation was added for the v4 of the hardware. However it
> was omitted for the v6, causing a NULL pointer dereference oops on
> Hamoa/Purwa (X1E/X1P) SoC devices. Fix by adding the appropriate stub.
> 
> 

Applied, thanks!

[1/1] phy: qcom: edp: Fix NULL pointer dereference for phy v6 (x1e80100)
      commit: 70812056fbfb9348788e35b7641ff959b711840e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
