Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9A2EC3ABB6
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 05:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGT9uLKjBWfOv51+Z3mJGSdOD9UjOviDIEIYH/9umuU=; b=wEBaXU4RW+Hi4j
	Vl9Fbacrgmi7f+LNYJgCmzj+qB285/o2N/EL8YfTNQxvMGZo2uHnYFPhyU7Oy4WRFlhTmYAoGtaQ2
	VyOZX7fnPN5k6wXmkWm/ETW/v9FLTQfEgJN9FKMO3o+VK6aWIvNA6TnTSzTqlCvZUaef1M8h2zxjR
	G6eSDAO6KCFGyxQ7nNYMZhgRvR1cuP8gl3s+EUeY+hY8l8AtbTKFWDbrBH4IRPGjUXd1zWh6NaKYv
	ibMaXiYYDKgd0bkyZ5mDyP6o8IfGyX/t7E2dr5L+zqpmZYCQhXyZ+ADSVK8HKbZL3RUQ092D9WjOD
	fZcfuqvBOnjminpEXJLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCX9i-0000000EFUU-2bPP;
	Wed, 07 May 2025 05:17:18 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCX5G-0000000EEnn-1Trt
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 05:12:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6E4006116E;
	Wed,  7 May 2025 05:12:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E4E3C4CEE7;
	Wed,  7 May 2025 05:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746594761;
	bh=aAaL34SOFIosC32e/qxwi38aNbXLIxkuGdhBhlDTlRc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fn/ikzLXMzG5ZQXxuUdAAeftmQfP8PsTmnaT/1ehfAs+sB4MM4VnSfJ6bLlX6KF1S
	 yE2aYRk6HrGplr2kkd6ZPJ7kxR+zDnoh4QsNnaZek0SLV/YFwYR3Kp1CKjHa30gCRx
	 saVbxWHmBE74zI31ocMSgwUc0vuf+YSLjsP+E/wvpZt8M/wjHPDUrYLU37PLXktUng
	 LpvrQ0rP4HMYhBuxW79E9pcuJ1R27SgV9D489e/YmYuDo4jyYcBdOxwYUnmc9CqR1A
	 z5CCVVz1U1963BybHz+g908W0jOTDXfsMshNM7PrJCrnaWwfVZOWTBbfMTD+4R2OBB
	 JwAcNoGhrBZ/w==
Date: Wed, 7 May 2025 07:12:38 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@linaro.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, manivannan.sadhasivam@linaro.org, 
	lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com, andersson@kernel.org, 
	konradybcio@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	quic_qianyu@quicinc.com, quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v4 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for QCS615
Message-ID: <20250507-invisible-nice-ostrich-fb9c7b@kuoka>
References: <20250507031559.4085159-1-quic_ziyuzhan@quicinc.com>
 <20250507031559.4085159-2-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250507031559.4085159-2-quic_ziyuzhan@quicinc.com>
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

On Wed, May 07, 2025 at 11:15:55AM GMT, Ziyue Zhang wrote:
> QCS615 pcie phy only use 5 clocks, which are aux, cfg_ahb, ref,
> ref_gen, pipe. So move "qcom,qcs615-qmp-gen3x1-pcie-phy" compatible
> from 6 clocks' list to 5 clocks' list.

Same for QCS8300 patchset: what changed in the hardware that now it uses
different amount of clocks than before?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
