Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AEF31061B12
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 16:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NnAtT91fSAgkbmKomTJIBP/5ERgvQHxsBR6zB60LXIA=; b=n0gwv0xF/sHzZ5
	8r4T7/FKKd8fqW2OP+4y/iZ0QnGWfyeNhwYS5eG+meGSnt6ZLTWlEZzxJ+H3m7ymk485HySi7cVXX
	dFu5GU552ameof/mM5Vy9PeOu5Xe8yty4N30yy5TUayef7Q0uRYCXhZrnbjrV1LFWloMsgM62rLLf
	9QLmiCkzXbOm4oQ2NzrnAYCcqeoG/dCvavi5pVHUxVNm/xfk3grnlRQV+NwiZyhqkCemLovjnsOnH
	LGm68YVbP29npTROkzR4WVBC6+uWo1Z8u3nkAsc2BsosusMm8mT3d478TDssy0UBiRchyfV572Rzh
	tXJ4W1bRHpd1AXtIzcdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7F4L-0000000Bbqo-006k;
	Mon, 30 Mar 2026 16:02:25 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7F4I-0000000Bbq7-2lyM
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 16:02:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D4BC740BA7;
	Mon, 30 Mar 2026 16:02:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A04CC2BCB3;
	Mon, 30 Mar 2026 16:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774886541;
	bh=FCHnG0LQp25k68PKS3ZW4mVElham+3FqSHgF2cAqLlc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hg4gQq7/1FIfhs7FhOHKCnJUjw3WYAUqCTvSTho6VBDHanGpYUtTt/Et/sdk1Yrra
	 WGEdzggvCsFe/FOAgKDnXwi6TkXjVHUd951bk3ILzvRtJx3oTO4Ugn9mNH37Q3MAul
	 2sZxRN1k4HA2jXM9POGpM2Ouy7i2J47jfb3npi2WFdkfuWV89V9Xc6DlIem6kp7KwN
	 Ukrdio5xQv1/DXcbEl98jD3FGaUPXbfra5RCjHjRDWdYHNk41Pod9nTQaSlCqsOV8G
	 zZBF3DvaqH4yxX4tKdmjEAe7Z+daamSH/P+96N6WAMU/uCxFFbKfSxv3Zx/n5xvP/y
	 ASafoU6UOZg0w==
From: Bjorn Andersson <andersson@kernel.org>
To: konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jingoohan1@gmail.com,
	mani@kernel.org,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	bhelgaas@google.com,
	johan+linaro@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	neil.armstrong@linaro.org,
	Abel Vesa <abelvesa@kernel.org>,
	Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com,
	quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com
Subject: Re: (subset) [PATCH v2 1/1] arm64: dts: qcom: hamoa: Fix incomplete Root Port property migration
Date: Mon, 30 Mar 2026 11:01:39 -0500
Message-ID: <177488647748.633011.4846757332023994409.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260330020934.3501247-1-ziyue.zhang@oss.qualcomm.com>
References: <20260330020934.3501247-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_090222_740420_BCA4D138 
X-CRM114-Status: UNSURE (   8.49  )
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


On Mon, 30 Mar 2026 10:09:34 +0800, Ziyue Zhang wrote:
> Historically, the Qualcomm PCIe controller node (Host bridge) described
> all Root Port properties, such as PHY, PERST#, and WAKE#. But to provide
> a more accurate hardware description and to support future multi-Root Port
> controllers, these properties were moved to the Root Port node in the
> devicetree bindings.
> 
> Commit 960609b22be5 ("arm64: dts: qcom: hamoa: Move PHY, PERST, and Wake
> GPIOs to PCIe port nodes and add port Nodes for all PCIe ports")
> initiated this transition for the Hamoa platform by moving the PHY
> property to the Root Port node in hamoa.dtsi. However, it only updated
> some platform specific DTS files for PERST# and WAKE#, leaving others in
> a "mixed" binding state.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: hamoa: Fix incomplete Root Port property migration
      commit: 11b72b1ca9891c77bc876ef9fc39d6825847ffee

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
