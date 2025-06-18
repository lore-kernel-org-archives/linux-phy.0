Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE8E7C7115B
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 06:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILeeqOq2wcbIIFnilyz8z4xUyI3KpiwkDBhmpw4hnJE=; b=BP0Bpn1pwFh5z1
	LygjjVfu4yBqKzV837TEipxwO0G7CW3beN9enuqhRT4dVwaoEjW6wqT8XKbDiD8c53MV0cFMI1frn
	g5NyXiQ6IffmEraB1IQFBjHlQNh+BNsEa2+Q5m4Z5PnPpEyoNZQlEwruh4MT2MOUolU2nKUoOLFFu
	4nr5BC2P7L20/WXaJZlRjK1g+ctZ6CL7Y6IeWzEO5wWBzdiwaNWQ3ahNJ+7wKqBVHsrEue+A0CcXL
	g7W6syghHDgyrIbSr/s8ZSSpO6LkTCHbijcaK8wxOB0JBpoFY6PIi3+Yv8vGb/2donWopP0FtRdKK
	a2jzA6LQjmdGN4Won6oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRm2w-000000099IP-2XNH;
	Wed, 18 Jun 2025 06:13:18 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRm1w-000000099Dt-2HiI
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 06:12:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A9908A51B5F;
	Wed, 18 Jun 2025 06:12:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7640CC4CEE7;
	Wed, 18 Jun 2025 06:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750227135;
	bh=dCHN8lj1Y5uAAi5KWGc7ILPGlVHAnVA7oxcd4riH7x0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eV1hCvk7nH8Xeh6rlxuQw/IC0yCVGF9SfPrnkiWQkisK5WWkAMva+qlyZx0y5ReV2
	 QV+sLCjX+dHJzEgFgtX9ch2L0lQBFHpOCyxuE/C1+OB+YV/rmp0QKIXcvp60fWKYiL
	 +wUulNyPMa0mcha8lHZfgW0Acgs+kw2DQKIYaLf+/dhqTeeGP9JdErLijlnLN/vBGq
	 qeXYjmg2xQCXPk1DpwGcR273hz64VPVD5i/FNMnK1Rg9jVjTgzz+8aDcGwZH6rFCNK
	 RUv4vJ/pOJsnbu24xBULLLpNR2Lr8ZQa0B/RIE+AlCTBXgVNc8s6mSMOmQCaD4+FXl
	 mcD9i2tKyn+1A==
Date: Wed, 18 Jun 2025 11:42:11 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org,
	manivannan.sadhasivam@linaro.org, robh@kernel.org,
	bhelgaas@google.com, krzk+dt@kernel.org, neil.armstrong@linaro.org,
	abel.vesa@linaro.org, kw@linux.com, conor+dt@kernel.org,
	kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com,
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v6 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for qcs8300
Message-ID: <aFJYu_RV86GyrkiI@vaman>
References: <20250529035635.4162149-1-quic_ziyuzhan@quicinc.com>
 <20250529035635.4162149-2-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250529035635.4162149-2-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_231216_652762_F8948184 
X-CRM114-Status: UNSURE (   7.11  )
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

On 29-05-25, 11:56, Ziyue Zhang wrote:
> The gcc_aux_clk is not required by the PCIe PHY on qcs8300 and is not
> specified in the device tree node. Hence, move the qcs8300 phy
> compatibility entry into the list of PHYs that require six clocks.
> 
> As no compatible need the entry which require seven clocks, delete it.

This fails to apply for me on phy/next, please rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
