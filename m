Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DD1BD2F7FE
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4oqMwFNWwZJh0hu+vnZkbOdBDW43c8bpGaPOOyfomN4=; b=U13yp/FUrM4Ab8
	qEZdPO6mudKHXR0wiEzTfgZUA17Iso45S8i+AFtZQlS6bDtEnTbIEEuse+QJWdUdn4EKIpow/X4H9
	3gjDQ8PhgpYYsqo6sixYz4sKzoqsqwt/IuNZYKGnY8Kxq5nUYRdtWh7jzCKsMFs7fdXcZNp6Y+BPH
	nSt+S7YVrasJIpLBic5vsulDnUymb/eFgyM/6R29eHikuquJ9rmCXYfi2C7EM0N2Q3JhFcDpi01O/
	YD3XbsaNajH0YYAonRE22vNt5CWvfnwbrfTqLkfQVHTHznM3mFedUmjNyDovLli7ZRNA0/e1TbX/W
	7+0eEBlAWugI/MYoG1mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1LRC-0000000E49i-370c;
	Thu, 17 Oct 2024 08:00:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1LOW-0000000E3TX-12Vv
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 07:58:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CF2525C41A4;
	Thu, 17 Oct 2024 07:57:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 457F3C4CEC3;
	Thu, 17 Oct 2024 07:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729151883;
	bh=TT5FczrKxysAiZJvvPtBBY0kZo8jywbmX45UXo/wZWc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hiDeOPU0DvCq5r0uudv036FZfkakGno/3tHGLt0F7GaaDT6a0qa/6l3xUEpzn5PyN
	 1coUKmQEbq3ay/ofxkhom+gmQ+PqzqEWgTF8vqwOkfcOnACXTV5jDzcxAKQCncHw1A
	 gL2VR03J6fVDcM0MO6sfEDlbfic66fefS4w0blPkRCb+bqaDIQ/s3AD/G9gZyyv4WW
	 fsQOgohaqzV6qkmjE8Uo/Bcrj/js4jQFQVIIKX7vlEDtPRHHvqfcvRrsOU6kll/iQe
	 UssdRmeQmKDtacTqXYvemzQww2AXuuO23OxK2OTnuE0s6C/rMC4xLTiWaBIBi+xUCs
	 cQY4SAicN7XLQ==
Date: Thu, 17 Oct 2024 09:58:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org, 
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	johan+linaro@kernel.org
Subject: Re: [PATCH v7 3/7] dt-bindings: PCI: qcom,pcie-x1e80100: Add
 'global' interrupt
Message-ID: <a6yxt4o5alnu5oa5t4guvjq4x37xa6t664ae3palhmumztawlv@n3r3mnrnui2f>
References: <20241017030412.265000-1-quic_qianyu@quicinc.com>
 <20241017030412.265000-4-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017030412.265000-4-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_005804_374806_3C352C28 
X-CRM114-Status: GOOD (  13.28  )
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

On Wed, Oct 16, 2024 at 08:04:08PM -0700, Qiang Yu wrote:
> Qcom PCIe RC controllers are capable of generating 'global' SPI interrupt
> to the host CPU. This interrupt can be used by the device driver to handle
> PCIe link specific events such as Link up and Link down, which give the
> driver a chance to start bus enumeration on its own when link is up and
> initiate link training if link goes to a bad state. The PCIe driver can
> still work without this interrupt but it will provide a nice user
> experience when device gets plugged and removed.
> 
> Hence, document it in the binding along with the existing MSI interrupts.
> Global interrupt is parsed as optional in driver, so adding it in bindings
> will not break the ABI.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie-x1e80100.yaml      | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
