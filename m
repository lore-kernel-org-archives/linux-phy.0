Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1278FD3C555
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 07:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOU0vUFnZGSDEoj4hVWA9AxmTcxOdM7/P61gMQEdi4A=; b=Twr6wV24nsSvKn
	tY/5wCMTGkwXPy3cMSF/unb2iR/5byamBywBpeKiUSEt6ii5G+TFisaA7cl/PoRrmxOqNny0osPEw
	QxixSRpI6W8syuMQUVAUjArt+SVB1ujvc+W0kfPWCv7OaP37rgSgK804Zvy4/R1NlDXBQlBd+q3nR
	nuFQCPhzQ0yt7RElrLr3T6KW8BAxTZ2h9iBVQutxeB2Tj3VmAXO5OMKiqpqzH7D0Sx5kg6/S6ogje
	/IwFTkWmmbiVXonzdRU/Lm2szxIyhm7d/YVCzfdPI47JinPkGjgbxObsiHipnWNDdL8emssfkkkPc
	Skw3z0UjIDOeuGYlG0+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1hFG-0000000HJHD-3JLa;
	Fri, 18 Oct 2024 07:17:58 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1hBe-0000000HIZ0-3BLm
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 07:14:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id DC502A40DE3;
	Fri, 18 Oct 2024 07:14:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAB3BC4CEC3;
	Fri, 18 Oct 2024 07:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729235653;
	bh=iqRqAYpTDNo9GyjaFpQYdE2Yp2QG7sSqBZVCBns8Kgg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=huurD9kIebZynigf+6EB1hUvlmJRcBCTdBn8GG9iTm1e82727hi0nDFevZss/dSU6
	 Pw9R3FQP/ea/ptH0EfpcBaMThQDcYSb+oBrIIDF/hzyZzoTLlNfrs4acw/5CRZ7r3w
	 Wqjd4AZ73mpVpN5FZwBCzBuKU71pFdU43lRStrYnmUF/3rOTIXeH9Ckqi+qy3Zj659
	 vDlIhVqH1PehsGd0ooAG6JGasB3rZKhzWuDLJGfNAQOpWJDBd0GViv6+ouTZ4eU8vL
	 xKN7jo8bz350TNFwTbc5TCKpkpCeB4BRr0TmqA6QXkbJMVu+cJ3DLTrPCITphcmwnf
	 9Ms5XKp08cc/A==
Date: Fri, 18 Oct 2024 09:14:10 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom: snps-eusb2: Add SAR2130P
 compatible
Message-ID: <spoxmgw3jaynrdawyldzvtzj3w4qn2a7xpsl4q6h7q27nhqj2x@r6rcjafyhiyi>
References: <20241017-sar2130p-eusb2-v1-1-1cedd674ec64@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017-sar2130p-eusb2-v1-1-1cedd674ec64@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_001414_883187_ADD94D54 
X-CRM114-Status: UNSURE (   9.09  )
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

On Thu, Oct 17, 2024 at 08:42:56PM +0300, Dmitry Baryshkov wrote:
> Document the Synopsys eUSB2 PHY on the SAR2130P platform by using
> the SM8550 as fallback.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
