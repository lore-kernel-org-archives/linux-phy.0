Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 265FBCA0EE6
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 22:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFj5a1VDq58MPtJy+aDRJ4mgn7aW7GxJAB6ncL1gX/8=; b=L+KnsynN6bohAa
	8+JEXJhL/48HwkaqcloZvJgaEJS0f0xJxyysRY3vyTjgWQ5oLcC5EXTUzntr+lnKPs6Iw7y+bCfYK
	A5FccWaqHQ5kDTejQuTGVLgL1kLYi9bIpjzZ103kctpXbQpaCTXQz/C0kUH4Y/hOhFMde3u7Vr0xa
	8NdkEw6KE5GgAYO4pEbpp1G0yuinpfnY2LY33IY5WB+945hiYqHqtyAEH1NLVg4CU353E+y9ZBZBb
	aR45vdm1p6DNOAOECV+OTPWOIhDuV0xKpLtSpCQRpYnZciGF3Wtv8Uoh97Ihn+Ovh3JR3h0RqZJHA
	2dRMNY+MLZkJvZPP6Y+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoV1m-0000000Bkaw-304t;
	Tue, 19 Aug 2025 22:42:02 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoSDn-0000000BRvR-1PPz
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 19:42:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 783A5613EF;
	Tue, 19 Aug 2025 19:42:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D0DBC4CEF1;
	Tue, 19 Aug 2025 19:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755632534;
	bh=G9mv2RQpR3w2FU/L5T3lV1QBkI1hXSk14gFndmYnh+U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=podfsgBjTTBfDfPBRlNExhLOv83frAjtsb5SIIcmqb2DThGhsjzTs8iWGpP9yyC6X
	 BD8UVJH5G8Cwvbn9p1F06Hy1SJDZR6uD/igitH+agMzzz9JpUABILL90U8ivh45XLD
	 OtojOKXh539zAKfgnq//uW6xF7Pv8y3OQI7m2MM4ZeTr2LcQeOI6lUqJNoaVIPG4tX
	 mpp7YO6XHZfmX5thJCSuITeLDoqN6BJtfGgTvzADRyus1PxZ488+zOcpZzDaHLHrnp
	 y04QoQZueS7HAMWMSVsclNPBSF3UCSJTu6w5dXep5PdU3lHsXFzCMykl+uyEelQqqe
	 E2cBrH0YVN5Uw==
Date: Tue, 19 Aug 2025 14:42:13 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Bjorn Andersson <andersson@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
	linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the Glymur QMP PCIe PHY
Message-ID: <175563253013.1213233.1800125828083070871.robh@kernel.org>
References: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
 <20250819-glymur_pcie5-v1-1-2ea09f83cbb0@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250819-glymur_pcie5-v1-1-2ea09f83cbb0@oss.qualcomm.com>
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


On Tue, 19 Aug 2025 02:52:05 -0700, Wenbin Yao wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> The fifth PCIe instance on Glymur has a Gen5 4-lane PHY. Document it as a
> separate compatible.
> 
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
