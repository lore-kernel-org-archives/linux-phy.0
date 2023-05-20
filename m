Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F147DC77B7A
	for <linux-phy@archiver.kernel.org>; Sat, 20 May 2023 01:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4P0PU13EJ/r624E3RMAWdQ0YWr5jMwwUzazHqcs0Iaw=; b=2g0tAuesic2ib4
	LLvg4K3RNe9gL03Uk8UdN8hEoqEsaGSNZOFlIeAfOwVm6SA+KeLXW3S33yX+SQVt1uoXSsMc0BNpn
	y9EJuru5AgK4x1XsyuZyoCxyJ/snQ3qrkDrEW81a4L4X4o58U5gVpUytQCovhDcakBvjNeh/rEeYi
	LgbqsE0LlD9PJBh3gYrbcLy5iz80Af6iGVxIbbZKjjhjzgbreuvTb2ACkWS1FWuo7mi79wciwixgm
	gTSJ7OPmrAJ43bYRkBibF9r/Z6biasYYrImHtbtTgf/oYbuJC3o7o7HaLSMdXL9A7X53fMTbr83OM
	hoK2oBGQZHtZLERim++w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0Bqp-000Q91-0v;
	Sat, 20 May 2023 01:57:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0Bqn-000Q8Z-0c
	for linux-phy@lists.infradead.org;
	Sat, 20 May 2023 01:57:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4545D60FF8;
	Sat, 20 May 2023 01:57:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78BDBC433D2;
	Sat, 20 May 2023 01:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684547859;
	bh=XE2XquSRrobqoUiBQ27a0nRJ6lUpUGlxp62Xz5cyNZ0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UwRFjBBJN6Fe31W2ivuqaF7UuCfJ6PHsmPw19Y9wstHxNkV7g1FB7h384lHu21gQm
	 9pqUdUvaHR8ZLckLVLZBi/nhMCJMjlNHbuj1fyDtSncCaiddxwm1+tp5cfHOVwuoTs
	 IHNhXRDK+PYWBf1t7+ZEwnjPUgwISJZ6O862l25/repv2gut7XgU4kgYY/496Y7bKN
	 sQB3Lr6H2VcTc5F2mU3YRoxegRG2JlZg/XayteQgEF7BdP4HQCUmX8/3R4qt87cmK/
	 iUpXzFiFG2enqnVpsjzcOu780rdB5Bna22tsR0SNDUq5ZHZkMqbp7VzOeUKTl+ATcU
	 6tLg7pa8fv8GA==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bart Van Assche <bvanassche@acm.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Avri Altman <avri.altman@wdc.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: mark the UFS controller as dma-coherent
Date: Fri, 19 May 2023 19:01:22 -0700
Message-Id: <168454808160.2842337.5917662434231772548.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230515121908.303432-1-brgl@bgdev.pl>
References: <20230515121908.303432-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_185741_293522_96BB9B5D 
X-CRM114-Status: UNSURE (   9.10  )
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

On Mon, 15 May 2023 14:19:08 +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> The UFS is cache coherent, so mark it as such in the dtsi.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sa8775p: mark the UFS controller as dma-coherent
      commit: 2b967894f80aac2c7421eb545c32ed995f8d9877

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
