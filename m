Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2540AC07E9D
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 03:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olyDe0dIbnY0dLvgk+0WrHLIveod4RS5WdPxsL4+Zys=; b=hdTIy4qHwgI0mu
	Z9Hz/6MP/tfArBG3zyxgalygZYesbUUlzwktzWFgUMVzhinIdjx9+O3sR+1/arJPA+LzFzO2zTqTd
	4DpE/6ukKcS4XCAWLKf0HVb8khLKQsqemL/7ipggPvBH8FGc++oZkob2EvnCnLWN2gPY9Rb/nuja4
	Rd46QzP3ttm06TTD1VqR0EAJauuB52wX4Z4ODwPXYJsPJ/HddFYv5CftPGeaaMuv1bMty85DNHWzV
	yvWE5Ydyi8ummuZePBFCC9OEb4ThcaOW4ylNxZ9bMXU4TOFaNV35rTbP5SjgUOGGR/20QRVB8WHbn
	u3PG8YmQ/ZhSXzm/LJXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od1Bm-0084ZP-AZ; Tue, 27 Sep 2022 03:23:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od1Bj-0084Ym-G4
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 03:23:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1F32E6154B;
	Tue, 27 Sep 2022 03:23:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA21BC4347C;
	Tue, 27 Sep 2022 03:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664248993;
	bh=WPTi/MLtEp6ejiLdeHDqeJBbCy8zfALjPLNAZfwnaTU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cVbpZHibYUbFbbCo3awQ65Obu32RYX70+lwY7amHfgd5tCoizCCYWCKhPz/uyN3fX
	 1kkaQ4egx2PuDxGlFplUrjYE5x9HTNO46UzzpNDmDqbS2WKez/tYWOvoYkypp9jKMT
	 /tpEOm16jAMmatm0coenAEb6y2Q6xwexwOYy8FwWZRoh+Wzb70/t7WQcKsDovHGLZ/
	 y+AUTedsTONS8qoEVOexxvWYZrdoCl884zpNmyNU3VS9GpiSR4e56wm5gyjqr4WeU+
	 NFY8YOLj+Q6hOUjt2RlJlPjcSU5F0k92KQaS/oqD0UWu5OqY1Y7fqocrgIlYuhPQju
	 jz52H4FPe5NIw==
From: Bjorn Andersson <andersson@kernel.org>
To: quic_krichai@quicinc.com,
	helgaas@kernel.org
Cc: quic_vbadigan@quicinc.com,
	vkoul@kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-kernel@vger.kernel.org,
	quic_ramkri@quicinc.com,
	konrad.dybcio@somainline.org,
	bhelgaas@google.com,
	dmitry.baryshkov@linaro.org,
	linux-arm-msm@vger.kernel.org,
	swboyd@chromium.org,
	quic_nitegupt@quicinc.com,
	svarbanov@mm-sol.com,
	lpieralisi@kernel.org,
	kishon@ti.com,
	quic_skananth@quicinc.com,
	mturquette@baylibre.com,
	robh@kernel.org,
	mka@chromium.org,
	linux-phy@lists.infradead.org,
	agross@kernel.org,
	quic_hemantk@quicinc.com,
	kw@linux.com,
	linux-pci@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: (subset) [PATCH v7 0/5] PCI: qcom: Add system suspend & resume support
Date: Mon, 26 Sep 2022 22:23:03 -0500
Message-Id: <166424897975.1766486.8316270705903909845.b4-ty@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <1663669347-29308-1-git-send-email-quic_krichai@quicinc.com>
References: <1663669347-29308-1-git-send-email-quic_krichai@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_202315_602192_840BFF7C 
X-CRM114-Status: GOOD (  10.59  )
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

On Tue, 20 Sep 2022 15:52:22 +0530, Krishna chaitanya chundru wrote:
> Few PCIe endpoints like NVMe and WLANs are always expecting the device
> to be in D0 state and the link to be active (or in l1ss) all the
> time (including in S3 state).
> 
> This patch series adds this support for allowing the system to enter
> S3 state (and further low power states) with PCIe Device being in D0
> state and with link being in l1ss on qcom platforms.
> 
> [...]

Applied, thanks!

[5/5] clk: qcom: gcc-sc7280: Update the .pwrsts for PCIe GDSC
      commit: 1a58ee1330b2cb6d71feb0aaf827cc10030f78b4

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
