Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CFD6E6F09F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 15:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RlT9TFkeCz+he2EcIVxxWQuIq+TNc9PuJPHqKSryHhk=; b=2mf/RR1nqTKb8r
	Av1moaLGmIFxbSngSqIKpfef5IUYozrJ8/y8BceIzOJXqTgTontXrZ6CZ7UnO+ziKMrOQuU9ifIzo
	WBcn/pUYJ6ksoRch7vwszMnPGEOVu7JgoUr6AUgoC0Zdv6n2ndbDr38VwUUb+oGdcwH36Aj3wVJs2
	V8aF6vlLHZR7otsFlKMmsso6HgFwiNd0u607652BbH3gkDQOgsCTqsKv6uW9jScRSwacxVhEg/Sbt
	WXDN5TAhAS2G5piZfXdNOTJyNn/mFvgpIapSzoTvjKVfO1pAhq6EZOm/YJKy+DXpEkn1Ak7kPPIIG
	nKVWqkuI1XPeojObjl0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY4cu-0000000FiqO-0VL5;
	Tue, 23 Dec 2025 15:48:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY4cs-0000000Fiq2-249o
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 15:48:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 95A506013B;
	Tue, 23 Dec 2025 15:48:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93DFBC113D0;
	Tue, 23 Dec 2025 15:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766504921;
	bh=PfrdJjYesmSwYkHNAziVHb+UM+TYIC/Of5TWQUotgXk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GiSG+bv1Yauo0XY/SVwC94sWXGAB0e13EahM6WsVRmvarK4JsQJTA9WyyYUjdKzDa
	 CbReXXUsz1ZJbIz2erQZzaDlRO6vUes+66iIwRhtt4pUG2OfYm5+dArQB8eA5g4npH
	 kYp6HYZpgDLGWulLPLpOay4DmKqCpDbOWO09TkQJoFnz9uKCqqmwRHHn6A9/Sc6Ixf
	 8Usu6038NjQirmGSO++oXNb7M0iq8IXXcHETEUhuQ5WoUSRqnp6RlAoN4T9v03eHbU
	 FpDXeINOYJrxIAubQqf4aXDPjlEDFwTZn0rIwJe8aVm44GSgprNv1fB0nvWRNZnd0J
	 cTqcxFlYJd9ZQ==
Date: Tue, 23 Dec 2025 21:18:37 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
	Johan Hovold <johan+linaro@kernel.org>,
	Luca Weiss <luca.weiss@fairphone.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 squelch param update
Message-ID: <aUq51TxXwiJE2DWb@vaman>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
 <20251219173108.2119296-2-krishna.kurapati@oss.qualcomm.com>
 <aUqjG4pVXWN3H88N@vaman>
 <bb775051-8635-4e2d-a1f9-46d6f0e6bc15@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bb775051-8635-4e2d-a1f9-46d6f0e6bc15@kernel.org>
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

On 23-12-25, 15:16, Krzysztof Kozlowski wrote:
> On 23/12/2025 15:11, Vinod Koul wrote:
> > On 19-12-25, 23:01, Krishna Kurapati wrote:
> >> Add squelch detect parameter update for synopsys eusb2 repeater. The
> >> values (indicated in basis-points) depict a percentage change with
> >> respect to the nominal value.
> >>
> >> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> >> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> >> ---
> >>  .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 8 ++++++++
> >>  1 file changed, 8 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> >> index 5bf0d6c9c025..f2afcf0e986a 100644
> >> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> >> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> >> @@ -59,6 +59,14 @@ properties:
> >>      minimum: 0
> >>      maximum: 7
> >>  
> >> +  qcom,squelch-detector-bp:
> >> +    description:
> >> +      This adjusts the voltage level for the threshold used to detect valid
> >> +      high-speed data.
> >> +    minimum: -6000
> > 
> > 6000Volts, mV, can you please document the units?
> 
> 
> Code is correct, the '-bp' is the unit here. Unless the suffix was
> chosen incorrectly?

I was hoping it will be commented in the description here.
For my reference, what is bp and where is it documented ?

> 
> 
> Best regards,
> Krzysztof

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
