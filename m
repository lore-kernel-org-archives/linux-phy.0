Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94B39CFC270
	for <linux-phy@archiver.kernel.org>; Tue, 15 Oct 2024 06:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XD2MHRfp8Xfcxpe99UxG3tSTmT+wvfKZcFFbdnwmW4I=; b=ZiBx4N9NcrPEQh
	WqDCO55rDtTssHTmP1kX/BgMEmdovPPGYxeWhKjvYQRfg5iSVR7VuE5LyUidvv+Q7icQ7VO4r1etv
	L/fVlfRZcKx4sFYalwksSEaOHQ/me4eXBlUSuYYFCbEd9D8b9O9PpHMbfSXmEQoG+nIt2zECpQkUo
	78vyMyR3xIrTBnyZSGRQZn1U8GQrn0prkpkqdcFwsPFBwTA/cMbLh9SkVz0/cRbtmCJTEb7Poypyb
	WygJOAiLx+E2/ni8vmE31ypzO7+9gvzVbPGNcvFkEjW6bR/ZjKd3jbqXYcFx/JcOHXlLtz8cVC/nJ
	9kiUPDVCH45hkA9L8XQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0axQ-00000007CRi-1M8D;
	Tue, 15 Oct 2024 06:23:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0axN-00000007CQX-0Stf
	for linux-phy@lists.infradead.org;
	Tue, 15 Oct 2024 06:22:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EFF495C5C84;
	Tue, 15 Oct 2024 06:22:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECEDDC4CECD;
	Tue, 15 Oct 2024 06:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728973376;
	bh=V9KJcARXDedlgSnmljYjhAlMHx38oslz1LVgv0iCuZk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NdYWXV2RaZCVrgCnKfaKvl5kTEvgrchehunbdh0S0wmJgMCRIqoPqbIl4upbWyy6D
	 JP1M3EBOD/UY1CEe2GojGrBhJL440d+1IU1P/RDCfvH3ojTcuPh4U5MWqcfm49ZKq4
	 p7n2U0vKIG+N8YVA7EKStTcOp7mCXP4I5M0N1kTLzw/BErWxUYMBmJ32EzD8GktC6r
	 bglN8sE1bxWkFJIb6lfkt4Qqo2cPqOPekAFQuwuKWkaJvW95JlJ2WIw504NlI7lMYM
	 CDnS/k4vUgaHG5hgQ3Sqz2H2NOspWywlYPw6rGATt6WzFVHI5/36+8c9ITrGw5nNOl
	 ojKZqCsTmfe2w==
Date: Tue, 15 Oct 2024 08:22:51 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <quic_bjorande@quicinc.com>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, quic_ppratap@quicinc.com, 
	quic_jackp@quicinc.com
Subject: Re: [PATCH 3/5] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add
 support for QCS615
Message-ID: <6mma3sulerihegjsmkje574f6gkg5qdduq5b52nttpeevdcj5v@ri2q2hstfyr5>
References: <20241014084432.3310114-1-quic_kriskura@quicinc.com>
 <20241014084432.3310114-4-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241014084432.3310114-4-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_232257_210051_6E2EFABD 
X-CRM114-Status: UNSURE (   7.99  )
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

On Mon, Oct 14, 2024 at 02:14:30PM +0530, Krishna Kurapati wrote:
> Update dt-bindings to add QCS615 to QMP Phy list.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml      | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
