Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15721C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 10:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qALOz6H+Nim3xrf+u3x01aMFN4eZ4hG11uMwJe78BHg=; b=p4vWVqgm0chIRI
	9qrFBMSvi0vE7ndeJ3bggg9Aci+WAulpx5Cw8se2Dy6cdgnOqlE/BM7eGueD14QPf6HKHwPHmY9JG
	0HG1YnX22qZrmFBgl9YkSwiMxRclIzdr6zQD+YRpTKnQbnLchafUpGdZ7GB7D2bsMJ5xI51UeXUUO
	v0vdYHtb2Jz2HO1nFOKbRZVjjBQ0iheiRe0/hu4e0XPu4FsJcRW6xf9GjpgM/L71cI8L/HOR138w3
	8bbMFQ2CL3c3Z+qDh2KopR6xtymVZfq6odsPksG7GYiMkM8O3NbABfLYZJ4iPyWzd1SY/OlGhODdy
	VD0Fs8SzenQRHh3O9R5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvke-00DCS7-DV; Thu, 14 Jul 2022 10:07:20 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvkb-00DCQQ-1E
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 10:07:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 97A28B823F3;
	Thu, 14 Jul 2022 10:07:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32832C34114;
	Thu, 14 Jul 2022 10:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657793234;
	bh=bSKkH2jvKSAI3EiQUqhslwIC6F4g+v4LiBs8ZL7Da80=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=POcam2qFW9ucCQKozq6eRb7dLksw5QSsF4HPhST5L9cJchZbGVS8pZhrB+OFfFgg6
	 va14SjilQwkXkHBRd0ETpPGywkoc1wW1bhF3SoFMUvAhv/hOyDfnOl5b3+hE/EZSA6
	 vOTOZ4TCW5mSGa01x0fc6FZWZtDWq3B25oI2njoolmQMgGu6hu3EQWPawXK+beKJDF
	 XExxqSBY0jyixrLSyEW1rNP488WG/wOjifSRX6/CVfmyNZkapZcFYXTxJ7ONkBps7v
	 yAx7LBSlwdHWDLnRkKW/Z7mgSmvef8DxJEEeDMyJnKzjXX2IWLgj6udaTPoCmhkReU
	 xNLfgaBbO5HGw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oBvkb-0008Qr-Uv; Thu, 14 Jul 2022 12:07:18 +0200
Date: Thu, 14 Jul 2022 12:07:17 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 16/30] dt-bindings: phy: qcom,qmp-ufs: add missing
 SM8450 clock
Message-ID: <Ys/q1crMhS3Ou+qu@hovoldconsulting.com>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-17-johan+linaro@kernel.org>
 <e8046961-9555-07b7-721c-eeb278cb2ec7@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e8046961-9555-07b7-721c-eeb278cb2ec7@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_030717_244914_636B7870 
X-CRM114-Status: GOOD (  12.19  )
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

On Thu, Jul 14, 2022 at 11:21:52AM +0200, Krzysztof Kozlowski wrote:
> On 07/07/2022 15:47, Johan Hovold wrote:
> > Add the missing "qref" clock used by the SM8450 UFS QMP PHY to the
> > binding.
> > 
> > Fixes: e04121ba1b08 ("dt-bindings: phy: qcom,qmp: Add SM8450 UFS phy compatible")
> > Fixes: 07fa917a335e ("arm64: dts: qcom: sm8450: add ufs nodes")
> 
> The second fixes seems not appropriate here, because you are not fixing
> a DTS. A fix for DTS would be a fix for that one.

I wanted to highlight the fact the binding wasn't amended when the DTS
started using the new clock, which it should have. But sure, that would
have gone in a separate patch. I can replace the second Fixes with a
Link to the dts submission as a reference instead.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
