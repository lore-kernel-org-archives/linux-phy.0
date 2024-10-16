Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D053D2F7D6
	for <linux-phy@archiver.kernel.org>; Wed, 16 Oct 2024 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tZNw91nmAZWa2noNTzYco7ECW6MY9gKpSHgpNqP3nI=; b=ZyIqzNTGKecY7j
	SMN0rKbz/YOZpURBNbFmVwRhLd67bHRHajs8sJxryaIrqBdWFhtImAFGv857hrxv4bG4k3okEQr9m
	lrOMnZMCdbcvvPP4tWerfD3Af5hAChUNsJqO9BU7xQxiT9kb82FLZ3Jhh+4MqQt1VHFau3OT/kviw
	zC8B2F3GHQdjKpGal04wHQM57ANfsyMLu3khF7lPqsn1mEYkjSSXkIz1o5TYplE08UhJBxZ3j2L1b
	jaUTz05/Dw+FwRg2JZ44BhOKN4uR4Tsi9JGbLoMtNIYzKqJRpGfFm3klAYhIO6A8IPLrbU497usSP
	LzjWjH924lHfv6gHuVPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1D0f-0000000DByX-301i;
	Wed, 16 Oct 2024 23:00:53 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Ar2-0000000CyYR-3kgu
	for linux-phy@lists.infradead.org;
	Wed, 16 Oct 2024 20:42:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A4B8EA42648;
	Wed, 16 Oct 2024 20:42:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AFFAC4CEC5;
	Wed, 16 Oct 2024 20:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729111367;
	bh=PiQSeIyuBWjHxBu2Y+/WbYLVlqoMxUlByRGM/OSls+s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=r10X59MrCZwERelEOupxXB3E8ynZkfAZMPi2BzpYECt/P40j+ZWtlK9L99SPceDBU
	 2c7NVQywdvwZ41AtgsfLu5U70N7rtxSQPSO/XCUGkLcFhISHOJ1okw7KUb2BawC5v2
	 kUIeEK9n9xqDHjpAsXUUrtxv7N69VnP2w4vzie3l6P6nYxcDhio3+YzgF+k4cK2IEk
	 4Q1RckIc+g2CKaqLASQS2t+6W9eIElmqs09D87pN0J+Slj0ZfEkk1kyEzDVK//dZ8X
	 dGUBKpjOQmIPF5xJSPx3If4U+/MCCxDNnZ0iCme7HoVRdFKYnvk2uV14UYwL01oFKC
	 srDgJjCHugiJA==
From: Bjorn Andersson <andersson@kernel.org>
To: manivannan.sadhasivam@linaro.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	abel.vesa@linaro.org,
	quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com,
	Qiang Yu <quic_qianyu@quicinc.com>
Cc: dmitry.baryshkov@linaro.org,
	kw@linux.com,
	lpieralisi@kernel.org,
	neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: (subset) [PATCH v6 0/8] Add support for PCIe3 on x1e80100
Date: Wed, 16 Oct 2024 15:42:31 -0500
Message-ID: <172911112246.3304.6611767988729887215.b4-ty@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_134249_019106_31422C10 
X-CRM114-Status: UNSURE (   8.04  )
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


On Fri, 11 Oct 2024 03:41:34 -0700, Qiang Yu wrote:
> This series add support for PCIe3 on x1e80100.
> 
> PCIe3 needs additional set of clocks, regulators and new set of PCIe QMP
> PHY configuration compare other PCIe instances on x1e80100. Hence add
> required resource configuration and usage for PCIe3.
> 
> v5->v6:
> 1. Add Fixes tag
> 2. Split [PATCH v5 6/7] into two patches
> 3. Reword commit msg
> 4. Link to v5: https://lore.kernel.org/linux-pci/20241009091540.1446-1-quic_qianyu@quicinc.com/
> 
> [...]

Applied, thanks!

[5/8] clk: qcom: gcc-x1e80100: Fix halt_check for pipediv2 clocks
      commit: bf0a800415a7397617765fe5f5278a645195c75a

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
