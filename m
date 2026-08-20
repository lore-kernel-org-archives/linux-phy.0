Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6929C5DF81
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 06:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AOAnFvRxfOu3DY622d71tYCqNNN90BtVpakb21sjUJg=; b=Q9YQBuwOLllgmh
	A0muOnaWIBIfLwKf7gJM1LIWL3nxOT8d7hGo74pjgA122tbJSa/SKNnLe7QZnsm3UVnUpA2EObZF0
	RyAtxQueEOKdQ1TVNTesg5ra2+MEZPU1114946NJN6/TkEYevWzmPQkyoebPYTCoeaWWiKO9fAnU9
	WzdkOX6TIvGwwuwIRHSh3kxe3rL59y6HXq1YE3pFp7/JgllIiC03yQcSLfaWxaQgIqjoGlQYfXVUj
	fVmE7u/hynL2AoJqgjT0tAe/gFJnGSIIe1+x0f2ap9t/SmWSCaOG4OL9hl9OYzzm4AgOvtOCj+5RK
	NuFaWC7XmKbz5QIRjkGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwwCY-0000000AwiH-0mh1;
	Thu, 20 Aug 2026 06:24:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwwCX-0000000Awhx-05um
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 06:24:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 25F526187F;
	Thu, 20 Aug 2026 06:24:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9E841F000E9;
	Thu, 20 Aug 2026 06:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787207071;
	bh=4Tr2TvcHct2iaowxE/CIb0nWUjbsxs6pAqdqYk4x4Ag=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hZRpMfJ7DC5PtzFxOh2c9L393T64/qALJf9bks2O/MwvjG0Z1NsP6A21dD3OaTGx9
	 IEX1/jgaYrcfQFEfIWKjxQAV4lBiuNcGjOE0Xgs/WSkWgb+X/15Fpxx6UcLRKdyjLS
	 AAgE/TZwVOwPWnSlD5hToIJ9e8Y0gnGe1wj2YrDPqnEvvmwkpo4IVJReerFhymLgGI
	 3409c/nYB7KOtXY3sibj4efgSiLyb4EBxdwqhNJnYv5vpxvPh92psCml+Kx79+Rb+y
	 lDa5XYk/nHlz/M1PeBYXE9fbFKDr2brVnAreMTWi8EyhJ2ZriyDtOfMhmJuhcAf2YF
	 5h2vd7/GM4Tuw==
Date: Thu, 20 Aug 2026 08:24:28 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Christian Marangi <ansuelsmth@gmail.com>, Andy Gross <agross@codeaurora.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 01/10] dt-bindings: usb: qcom,snps-dwc3: document the
 MSM8974 controller
Message-ID: <20260820-curly-loon-of-whirlwind-ad53fb@quoll>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-1-1a47e1185524@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb3-v1-1-1a47e1185524@oss.qualcomm.com>
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

On Mon, Aug 10, 2026 at 02:42:31PM +0300, Dmitry Baryshkov wrote:
> Add the qcom,msm8974-dwc3 compatible. The controller uses the same four
> clocks as IPQ8074. Unlike other controllers, it has only 3 IRQs routed:
> core, power event and HS PHY.
> 
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/usb/qcom,snps-dwc3.yaml       | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
