Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04FE2CA0ED1
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 01:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hsp6/2vy2vG7MX8f4T0GuAU+QF/gqSlL/bXWbE4SlS0=; b=LXh7tZ97oSzTbF
	WKP3wW2Ru1WA3FfrG3jpOy7AshI6V0526I4EKWquklvKrOADbwbOtNdAgH+aqyzs634a73UM/ym4A
	tiwuUzYz/mXsea7RjHjLwXWmrHBCNroCuxUHhtpOOpr6+WXBOVOpY2Mtr/v/q657VLDeBf8kYU2E1
	Oz3m54MG6eN85VQ0c3anv2p9vkdcGYU0AyOahp0zfjNfYOOZyeDMhpDNnKYHst+yT06GwpYxbfBLP
	3ay4MfeHBQZOb0Y5IC0O5XtySKDShVASih9yB08Yxnw1RdGliCj24yyhGmobdutb6vrm7KNiCJ5xx
	EjGILnI1aKONUeq1V5Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uldqo-00000009WG3-3GsS;
	Tue, 12 Aug 2025 01:30:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulXSj-00000008oOZ-0UpM
	for linux-phy@bombadil.infradead.org;
	Mon, 11 Aug 2025 18:41:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=+3zFYEmV1opyGa7wPJdFOiTk625mEiIschvp+gyhzWU=; b=bsviwysWxo7mByt5cAEkpIkC/K
	TDDsfHepf5CgdSWYpUUZ7T2E4Vph6iRjwsD5PYOh5HzXM9e5PV5RKgFBetHvVJV9/R9mIdeflx7RQ
	zystvm5frfwD8z3+j8VckQY/LCdKRtqMKXagr/uQ0aZ4YeDGUBd0ZupC8jag6DpUakIjiSSHrcrOT
	z3dG1DPZdfPTnqQUiQ6fvagk+rwvvLj8sfiT8emM3yYGrTrwBQkEDkVwmZU2GAa/oC/40o4S9p8PN
	LlqegnREUr4mH9+bF5uqv2av5IfvVbJErZB4c/upcECgxNAj+tYNWmBFDuTX3W/UMpOB21TRkfyG7
	tDNB4pxQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulXSf-0000000FTbC-47dN
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 18:41:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 646745C5F1A;
	Mon, 11 Aug 2025 18:41:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F902C4CEFB;
	Mon, 11 Aug 2025 18:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754937692;
	bh=COI84o40coP9gqyrgy3EfpXZhcX5MQJ1jz4hmJxZrLU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=do8kYorp+yE9fXkBH0f34e4Fd1D6nMcKXJYLJFKuv86ZgHGExVC4XQBW5zgIVEg+2
	 H+/U2K3zGXKs7ga3Da1teaf6rrQ2kdY5gCRy4A0RhF20EMsXsyDceGvaJ0K6jn78eb
	 9RuuC4sIADlq6psBZHg+Fh4ca89muvxNBUM44huLNa4SfCgRIV2xKW/RCeV5Ybj4Ry
	 94mR9oT/SQjd2YzRhJDrL+xL8O8wIZjlwH4u/xSMzBPteGJZ4zEYuCAsutpiUT30YZ
	 tcrL2HVZcGNh0Tn5SCPL2FUHP8My9jy76MZCGVrWXSpOFN1uwIp0mzDsw6Oo1XaazH
	 L0b5Q6vPN+HAg==
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
	abel.vesa@linaro.org,
	Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com,
	quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com
Subject: Re: [PATCH v9 0/2] pci: qcom: Add QCS615 PCIe support
Date: Mon, 11 Aug 2025 13:41:10 -0500
Message-ID: <175493766101.138281.16774900398360513894.b4-ty@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250725112346.614316-1-ziyue.zhang@oss.qualcomm.com>
References: <20250725112346.614316-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_194134_285934_589BF614 
X-CRM114-Status: UNSURE (   7.18  )
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


On Fri, 25 Jul 2025 19:23:44 +0800, Ziyue Zhang wrote:
> This series adds document, phy, configs support for PCIe in QCS615.
> 
> This series depend on the dt-bindings change
> https://lore.kernel.org/all/20250521-topic-8150_pcie_drop_clocks-v1-0-3d42e84f6453@oss.qualcomm.com/
> 
> 

Applied, thanks!

[1/2] arm64: dts: qcom: qcs615: enable pcie
      commit: 718cc7542a000e2911c8d18878ba2eac5f29e744
[2/2] arm64: dts: qcom: qcs615-ride: Enable PCIe interface
      commit: 414be2b5a79de8694db1e26a3ea63a2aee5957ad

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
