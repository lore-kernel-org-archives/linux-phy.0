Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F76BC4829B
	for <linux-phy@archiver.kernel.org>; Wed,  7 Feb 2024 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/I87kwOU8PzxFh/vP8T66bUsXZprJAjCUofZyxJdytU=; b=gDzJfDcSrJsFNr
	BpzmSnYjKvySoPVsQMHbEIpr2cA8FRZtcIcVI1fvB8rWV3IO/CGaPEUhAN+tsc6sMEPQOqJZEBd7X
	g5KZUxeOml752kGG9N/p2x+aPvVR1Mti+vwfgB4+pKDEEQCoW7bMHhavmNaF8/+UGqTfeEMiw/Kt6
	TkGQmji5hurFE38GY2hM0l2tkkSEw3HejMK1qP47T7QKieENdwSwiPX0BTsvSm0dLWpb/zvinOmSq
	T5VxPywAK/7Coes5IHNIF4jJ1fNt6L6lreCCuhJVcrv3wHv5jhkOy4MHnGt1VNRzD6k0TGg5YL1dd
	7QYSaOd7iB4tkrNdlZig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXiUR-0000000Aqmr-1Jrx;
	Wed, 07 Feb 2024 14:01:27 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXiUO-0000000Aqkl-06Sk
	for linux-phy@lists.infradead.org;
	Wed, 07 Feb 2024 14:01:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1AB1BCE18FE;
	Wed,  7 Feb 2024 14:01:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB04AC433C7;
	Wed,  7 Feb 2024 14:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707314481;
	bh=/sde8nj0AruifCnxUEsSucAxWC/DrKQeRHqzY4J5e2Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=s4cnwQE7RpfM/ykNtfdDbC3HeXScAhKK97KbID6lq2EaKm0Z0btdX94stFXU0sXG0
	 nNAJpRS28muuedEn1y6R2ACtJ1PPJAAVx9KzdhqM13PH/yhklMQAmqoKx7+qKHTtZA
	 aQ8ArH5h1+nTlgkCntUT7kfK1iv/bfuKBcm0mDtI02Ni5GLDVjzUAJCBp8J+EnkYGX
	 3ZFUA12cWayRfE6wAyXbkl1WfWY0xUoFtJgUM4kM2TXX7/JuexOwvc6F3LWMDkWFII
	 QCzH2g1ddzAwyZfU+Xy+mcppi32gM+g9dVdTNJYY9HJgHrnUY/aKnkGWCRCyOolx9V
	 ICLn93YdGCz2w==
From: Vinod Koul <vkoul@kernel.org>
To: andersson@kernel.org, konrad.dybcio@linaro.org, sboyd@kernel.org, 
 mturquette@baylibre.com, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, quic_cang@quicinc.com
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
Subject: Re: (subset) [PATCH v2 00/16] Fix Qcom UFS PHY clocks
Message-Id: <170731447862.147119.7425320983212079444.b4-ty@kernel.org>
Date: Wed, 07 Feb 2024 15:01:18 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_060124_315240_D63803AC 
X-CRM114-Status: UNSURE (   5.44  )
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


On Mon, 18 Dec 2023 17:36:56 +0530, Manivannan Sadhasivam wrote:
> This series fixes the clocks supplied to QMP PHY IPs in the Qcom SoCs. All
> of the Qcom SoCs except MSM8996 require 3 clocks for QMP UFS:
> 
> * ref - 19.2MHz reference clock from RPM/RPMh
> * ref_aux - Auxiliary reference clock from GCC
> * qref - QREF clock from GCC or TCSR (TCSR since SM8550)
> 
> [...]

Applied, thanks!

[01/16] dt-bindings: phy: qmp-ufs: Fix PHY clocks
        commit: b0bcec86f47b44c98a23c31d54dd3963e27761a2
[02/16] phy: qcom-qmp-ufs: Switch to devm_clk_bulk_get_all() API
        commit: 2668cae8b64bf25c4c7a39eb2cb0012c92153c11

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
