Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05B13C54E58
	for <linux-phy@archiver.kernel.org>; Mon, 11 Mar 2024 17:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7JOzL2X83k6uiA3ABmELextijMgkiQguoVG+dal08g=; b=hG7+7eyS7+wHhy
	X3R3mUhupQfttAmQxYxrHsnD5FeXfeI6aVecklykCUuGpnF0kkqEA8/zyP4Fqcx6VyBm5aUHu7MCq
	A/9JDvXNU8WtO8zYwDy74MFhHlRaR53cUiCTy10RcJr4yuP8kMEr8uT5VZbUnvu+hKWMKVcCnQX1k
	ep9GIBurdOVJIGkHZSV9SUMnxU1SmKgC2gd6uEm+D7ZQJHWrAQ1F3FPOSKUx7JXGJaNahZZKsTaRj
	D0KeGMBJHgIX9+aeSa46DixErGq9gE6sCSotpAoJZxPeq1TZdYjpF7YIDA24IMaKR6cUMhYQROG3V
	RFjqV97ejvFiqw/JnfDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjjg7-00000002YfN-2MBQ;
	Mon, 11 Mar 2024 17:43:11 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjjg5-00000002Yeh-1uKB
	for linux-phy@lists.infradead.org;
	Mon, 11 Mar 2024 17:43:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9E5D4CE1252;
	Mon, 11 Mar 2024 17:43:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37958C433C7;
	Mon, 11 Mar 2024 17:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710178986;
	bh=AC7VQDeZIiTw1P1gYlvfffANLbxhOLrq5IOI95ib1zs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LMGmEjrda82O5DhvnTi42aUZp9ZbYiPnUZhHHhvHKnJlmAwWWd1doKEMX5ukChgM0
	 6ymzVfsIu34PImHdcGhsZyUBagJxoq/3G6inXS+LgHlcXfJ3zkEq+6aw62NO3k1TH/
	 fKo68ZmmBEelJreQB30DeJS8gE0l64QjvP1nluzvCOZOhzdCAino3AOPxF3Tm5s66L
	 N38ckNJaE2b4Xg+REUge34XSU2O1GPv7Jn/OTm/e4acdAid/daOWBBJ41AHF+CMEq9
	 4cyMKZkg28+c5DaJn3v8Q5jtvWqykJHeR/j9ibLrSSTRpx1koMdmH/xko23rgIZ5dP
	 P5jGCXFKGZrRg==
Date: Mon, 11 Mar 2024 11:43:03 -0600
From: Rob Herring <robh@kernel.org>
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	Wesley Cheng <quic_wcheng@quicinc.com>, linux-usb@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 bindings for QDU1000
Message-ID: <171017898265.1475540.17259448338325982005.robh@kernel.org>
References: <20240311120215.16845-1-quic_kbajaj@quicinc.com>
 <20240311120215.16845-2-quic_kbajaj@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240311120215.16845-2-quic_kbajaj@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_104309_699326_DF346FBA 
X-CRM114-Status: UNSURE (   8.19  )
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


On Mon, 11 Mar 2024 17:32:12 +0530, Komal Bajaj wrote:
> Document the compatible string for USB phy found in Qualcomm
> QDU/QRU1000 SoC.
> 
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
