Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6AB7E77170
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 09:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sHkIM5bU1mgLMp/LdYfKbxNqjb78nOboi/iGlEhWSqs=; b=NfV5U4nTXJTya7
	9zYQvNKFmABcVzmJCL0HR0qBXRZJ9GnZ6q1H0yescJt9Thmq6LZviGHILBvuQAvaytf+O+3McQ6MC
	uzPskdb4uSaT7uGeJFuMjHg7StcUtLAuVGV3vRMXfjhj+HNRNUdBeyNrK/WvZkLN54MKHHBxCO8ev
	4LkRBDiud1AkauWNC5zy8s/31nK66+scMBhxOZJubFo2aRVl+M7p32z5h37kPNaIa8gMJMeja99Hk
	tHAQpURNutN0qlljP0ijTIeBUkyP5uTezCBlogTcIpDgB7h6ckjnwwrOCUdX0ZXvfOYS/e0MejwUl
	YnBmdPG8i3ABIxjwANAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ8Kk-0000000FOP1-1mxo;
	Thu, 05 Dec 2024 09:39:42 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ8Ki-0000000FONy-0gC1
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 09:39:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5CFD6A4186D;
	Thu,  5 Dec 2024 09:37:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 887C9C4CED1;
	Thu,  5 Dec 2024 09:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733391579;
	bh=gJ77VvLJHaFsY3mn/n397kmuNme7qH9uocwG3rnFPmI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OtNdUOIdJL0Oi9KyWIfbR3RM3C7OsLnLciwlMmGMCc383wop7/gcfXEOr/p4oenK3
	 BqPzcd9GNVJPBJM4xIh+3mBcGUJJIu3xTXw34JCBpJ9JMd7/VThPXMBY0m586FOZ0M
	 z/uh7u1/t3ZN+1bbGyRBkW1ti7jjVTNLzqf1iMRp0CI0+1+PqqtEHCLpJXhX8gTxhf
	 7nzA9Z6CakN9C4BNSplYbCMJ7Q0EAzetyl/Fb7NGK19rkn+kWApo8LmFuE+GBmJeBM
	 f556b0/78MAnWAIArkxaHUH1Hk/tBu4RpHIcSslT9BC7L+/mX1iGvKMO5+B88DrytO
	 zVZgRCqHj8d0Q==
Date: Thu, 5 Dec 2024 10:39:36 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org, 
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 2/6] phy: qcom: Introduce PCIe UNIPHY 28LP driver
Message-ID: <gawyxbgql7pru43e6rz4luhefaayrwiw3fplzj3k5cahzkppzr@uhuemcq5djw7>
References: <20241204113329.3195627-1-quic_varada@quicinc.com>
 <20241204113329.3195627-3-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241204113329.3195627-3-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_013940_256884_29239C2A 
X-CRM114-Status: UNSURE (   8.89  )
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

On Wed, Dec 04, 2024 at 05:03:25PM +0530, Varadarajan Narayanan wrote:
> +	return 0;
> +}
> +
> +static struct platform_driver qcom_uniphy_pcie_driver = {
> +	.probe		= qcom_uniphy_pcie_probe,
> +	.driver		= {
> +		.name	= "qcom-uniphy-pcie",
> +		.owner	= THIS_MODULE,

Srsly, upstreaming 10 year old code? No one figured out to fix 10 year
old code before sending it upstream or entirely drop it and use new code
as template?

NAK

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
