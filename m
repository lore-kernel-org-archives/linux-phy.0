Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DDCFC02185
	for <linux-phy@archiver.kernel.org>; Sat, 18 Jan 2025 15:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bwqe4O6EKMbwB7tphrnoDhrGJyrl7ioMGQ47b8CNvog=; b=us2C1N2J2cjm06
	IY9gIh/b8nGSS52oaWzaQ7qWlGD402hTcD+XxP6zZiB/aCgCOEBONXp3jQQmffBLz3WV7cvCkyVkY
	UmcZoLivFX8XCfpzdOTfJVeiGWDlDuVX+kN2fQeAVsfFk3qAIRSPWiYbhpFtfVYGzDC7QqWtDWbka
	hsOTo+HWvhxUQn9wRR/bCJzNaBo4kqPHYqnAlm0Td1QdInxWYyBDue8i3khT6VBYkU3gQsuck2Mn4
	Urrr39ko8oo3Kb1cw8qGrvvDP8m4w7C8FtXluv/SJuDZaKuOKIcKipYLzdEY9JRVXxyhzfhXmM5t9
	5R8PrHqJY4jytSuvG7kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZAir-00000002bec-47jr;
	Sat, 18 Jan 2025 15:26:53 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZAip-00000002be6-1wLa
	for linux-phy@lists.infradead.org;
	Sat, 18 Jan 2025 15:26:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 8652DA41032;
	Sat, 18 Jan 2025 15:25:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8149AC4CED1;
	Sat, 18 Jan 2025 15:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737214010;
	bh=fvkRJ2//5gmnj833MEERU+I5q/xhzqw+MJtSM4Wo2CM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Iv/7Z5NxNNA18T8qvqM0qeuOsWv+kSJkNO6shcM12LpYSRrtZwDxZAu+RbH06Vv6W
	 jHq93aTZ293amR2oV9wWisDWQgqDYBJr1aL2ETgTN9Pyj3cqOWA5d99pn8tuHSyKEi
	 Sj998WxYyhRq5oVtgBFc/bGLf2HbMiSXF355vQ0GDteCOsdJKWzmbDb7LQXe5sGAGP
	 xLgde2gtxFcWTKzF0V224DJvQ5ZsOl51tqK8xU2UGtqZrBINJrRynjYU4gE5W+MS3i
	 L5wOetE7PzIE9dzYhZ4W/gfTrSWj6HRO3rzvAGmOGfpagFutN1AuLjwliRpv3BuG0b
	 T7SO3g1p8ZNfQ==
Date: Sat, 18 Jan 2025 16:26:46 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	Nitin Rawat <quic_nitirawa@quicinc.com>, Manish Pandey <quic_mapa@quicinc.com>
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 QRD and MTP boards
Message-ID: <20250118-neon-adventurous-chachalaca-cccfa3@krzk-bin>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-5-b3774120eb8c@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250113-sm8750_ufs_master-v1-5-b3774120eb8c@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250118_072651_569971_F2A06A69 
X-CRM114-Status: UNSURE (   7.19  )
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

On Mon, Jan 13, 2025 at 01:46:28PM -0800, Melody Olvera wrote:
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> Add UFS host controller and PHY nodes for SM8750 QRD and MTP boards.
> 
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 18 ++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 18 ++++++++++++++++++
>  2 files changed, 36 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
