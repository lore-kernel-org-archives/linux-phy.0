Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8141CC25B7A
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 03:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oTKngEPASt5opP1vFeeuAQLogCg3uswDQx4sR9sNpCY=; b=45QB1p4w/7m9P7
	xux/S/Q7aIzdqzhe5mmyMUthj1vYMAj7hC25FC3tlROrgmWglNObi6JbdN8Zk/ObnedVBDRUdfsZN
	Rl/D4ENMfPL2fRpq3v24qWJ1ClMjMYW+FjbPT8ClhTDJISzlg9lyYMjBn8VXNLZOW41DkpYmgflKn
	J+IMTGIsaMv5nHuQKYjY1wlMpHgzJnP86PN0u1t6XQNKbipo7eXSMzNtuzv6SbXTG3d2FBXrSiyQb
	RFDJJeM6K17ss6/WAFwPpx2ESPy13slC7gq4AFmo6w6RtABjT3N6uj/J3aJrzXWH9mYIW2O2n9Fmb
	BUm6xkPBUrGtlfFPErCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBQbu-0000000DdRt-0WaJ;
	Mon, 27 May 2024 03:01:18 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBQbq-0000000DdQo-3Fvl
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 03:01:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 73800CE0D89;
	Mon, 27 May 2024 03:01:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E19DC32782;
	Mon, 27 May 2024 03:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716778872;
	bh=0tz6/uvwUUhjXvGEC7sYYq4bUxljcmR+Y2q5XSsXGYU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ugbx5FMnbGJo/mdKN4HKv/9wtTYblvnhiWnKbyrq3ktVnbs8BPboPLP7xFkgACd/U
	 +GLsXv3D0qfu2ntVG7CFXHZceMwFIL9hRRgtHpht16GhovQ/XNvffjmdOYo9no8eUY
	 HC96vw0zz4sx9s8F2skkQ+akmuFZ+HX2eMJ2+FPUCeAh0JlUDC/L7fTeAnQaO3nGDO
	 +Q8jzsJ/4pcI19cQAjkzl6mvtQck0vmIqmTXy/FMjrHSdUUOJ8lO0L5z2MW9hxS8Pe
	 Vw3uG2xDbNB/YYwvWEn9Q7g6RNN51D/bvCLd5L9f60NnCs8Bli9dCmDzc/dsj0N2vL
	 pG3aXtK8/nfVg==
From: Bjorn Andersson <andersson@kernel.org>
To: krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	konrad.dybcio@linaro.org,
	manivannan.sadhasivam@linaro.org,
	Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com,
	quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com,
	quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com,
	quic_schintav@quicinc.com,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Qiang Yu <quic_qianyu@quicinc.com>,
	Abel Vesa <abel.vesa@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/2] arm64: qcom: sa8775p: add support for x4 EP PCIe controller
Date: Sun, 26 May 2024 22:00:37 -0500
Message-ID: <171677884212.490947.2007243918185473785.b4-ty@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <1714494089-7917-1-git-send-email-quic_msarkar@quicinc.com>
References: <1714494089-7917-1-git-send-email-quic_msarkar@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240526_200115_207080_ECA2AEBC 
X-CRM114-Status: UNSURE (   7.05  )
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


On Tue, 30 Apr 2024 21:51:25 +0530, Mrinmay Sarkar wrote:
> This series updates PHY and add EP PCIe node in dtsi file for
> ep pcie1 controller that supports gen4 and x4 lane width.
> 
> Dependency for Patch 2
> ----------------------
> 
> Depends on:
> https://lore.kernel.org/all/1714492540-15419-1-git-send-email-quic_msarkar@quicinc.com/
> 
> [...]

Applied, thanks!

[2/2] arm64: dts: qcom: sa8775p: Add ep pcie1 controller node
      commit: c5f5de8434ec35d8ccd5b3a746df3afb37bfefeb

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
