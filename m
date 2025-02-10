Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4123C02198
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 09:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egwdPvYghahNkH2kfHpSNt2Kj52P+8qZY71PI5JQYCE=; b=CRvVOr+GHa1Bzf
	qVt4i7XzQqMRIPgzC51MkshnZE0RmuM+rMHOAb/sXP2ZEUMOKmdw9jDsKo70zYtcx8/+FmPwEq9lE
	4mHgcGIYQ1Z2i2Gx2CqkPNTtjC/W4siVslLyLgyaIOPyO/cHAl/CZgDcZ6AjyhUGNZiNgfZAnbAO7
	RrqvoJzZmtdPrcPxbTuhCEOEPicoUmY9b3D9d+82hWHTCdAH9AHl3/gowWFsteL4gNRmX/lNMBjzz
	rxivhUuWFHfpG1n0QG9TCG/sVWqCPPpb6nbpPhf2R8ZmQ0lK9JTed44N2LBUak8ZBGrFPvKju72IY
	tPrNXabYmXgi6rQ9TwDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thPyj-0000000Gnhs-1eqB;
	Mon, 10 Feb 2025 09:21:21 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thPm8-0000000GlfK-09XI
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 09:08:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 93736A40DE4;
	Mon, 10 Feb 2025 09:06:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D81ADC4CED1;
	Mon, 10 Feb 2025 09:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739178498;
	bh=xzHZVMaf1W1TKFNs3KpAf71ZQa9DAIJ9yzgaWnrymkk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LLGpwxYlTc0aHoqbF89ONJXLINmLx9IbGAmNXhE/oe8mJzlfoCJxuYSSFHEB/cWdd
	 lHKCJv1r+SOeRERqKO8spHwsjy8HBHv+Qi9QoQ9LX7OqIbrWV3KWDkU8DpvluMIr/Z
	 WT3xbZTRGYXSGCKHFukLkA4p6FETgwsFpMHyEs+udFoUSBprCFIlRgaQCV+1i6aXT4
	 UEXKyFEoQC64ATpNwEFKDXFPQnMEO2mDbjPCheo70Jvsx9mQ4HK4P/8WL4Fs8QAvTE
	 rj4sE7emwRMtbPu9T48nFhfuyU+41WlnX3LY0Aiz537Y38Er7aFE0HMq33xA7lDQ/A
	 nhMQaWwibdIaA==
Date: Mon, 10 Feb 2025 10:08:15 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org, 
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v10 5/7] dt-bindings: PCI: qcom: Document the IPQ5332
 PCIe controller
Message-ID: <20250210-festive-silver-ringtail-a3abda@krzk-bin>
References: <20250206121803.1128216-1-quic_varada@quicinc.com>
 <20250206121803.1128216-6-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250206121803.1128216-6-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_010820_136234_71BF504B 
X-CRM114-Status: UNSURE (   6.03  )
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

On Thu, Feb 06, 2025 at 05:48:01PM +0530, Varadarajan Narayanan wrote:
> Document the PCIe controller on IPQ5332 platform. IPQ5332 will use IPQ9574
> as the fall back compatible.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v10: Remove unnecessary ipq5332 constraint in 'power domains' not required
>      constraint
>      Fix maxItems for interrupts contstraint of sdm845

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
