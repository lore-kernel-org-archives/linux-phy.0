Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1339DCF07AA
	for <linux-phy@archiver.kernel.org>; Thu, 10 Oct 2024 06:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+jsqo3V4BhYCkJSl5OOF+TuFJXY/6ReiHWK/ONt+KM=; b=aXJcOlw+L0l7Cd
	mCOpRvtMEw0Pug+IE65MVodkdSnJWDjrXDaHwjnyo8B4hMIv/ZFQw0k3Xfz0wMKjtRKExcL5lbsMQ
	S/lcs3VnrCZNyXijupD3XfGlFcBFqXNRuKgMTfEfjav1yOMEpTUnjrsyIt6xP0OyF2uZhgffnuULE
	i5RrD+L9ufJJYzgDLoeQWgtH0H/vEy7zPs7Lt8boxq06sQ6xeEonx6NjkZRgqCe2l6/gJq0gnN6Kb
	3m/pLWgIkBLtXEGjnjx6sew3JoJsLtd65xgBrxFUAY90cipqNO6W5oNClgGpT75aQrn9a3IG8cWH0
	tUDiepFCj8HhmIjgyhWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1symRL-0000000BddS-3z80;
	Thu, 10 Oct 2024 06:14:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1symRJ-0000000Bdd3-3cPU
	for linux-phy@lists.infradead.org;
	Thu, 10 Oct 2024 06:14:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 780015C5E77;
	Thu, 10 Oct 2024 06:14:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6721C4CEC5;
	Thu, 10 Oct 2024 06:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728540858;
	bh=FxTECZqnW9pNr7u+VgkzICcIxD80UOH9F+iwyPfHBWI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OsNvJ4bhqoaFr+qMoeKTOn/6ULa7o44aQovUhOImROdI6Dc4ImNyFTxO3UsladSdu
	 X6Z6nCbkBuEYKVgY/255faFJFC/Eqz1DN6An9/2Jz/QuD6w8fTMWFEpKiMvzNLwdYa
	 /a8NgJ1vhetoWpIHJqAyhMYWG/0/ISZ5EVMEdL25mYCV9GclIe23nDft5xa0oVXDxe
	 xrHYf+Nf1HAerGCIC5sD7FR2aCTOutaqxxU1QNWH5JoQmumX2WVAd4FoQGOI+1XzEF
	 MWxIHGAoDyFqhq8MPqKxkDpjb/krTiFGL7XvqvdzzSUFu8HlCw7Uw5rfNlWCHRrvU2
	 UtQpmzaoO39kQ==
Date: Thu, 10 Oct 2024 08:14:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yijie Yang <quic_yijiyang@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com
Subject: Re: [PATCH 2/3] dt-bindings: phy: describe the Qualcomm SGMII PHY
Message-ID: <y4zt6si7j4qrbwmipzjehdq2ggcjr5dlfrraozxtt42n2643yw@6c7h7fkzsjm4>
References: <20241010-schema-v1-0-98b2d0a2f7a2@quicinc.com>
 <20241010-schema-v1-2-98b2d0a2f7a2@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241010-schema-v1-2-98b2d0a2f7a2@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_231421_968771_94B05812 
X-CRM114-Status: UNSURE (   8.92  )
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

On Thu, Oct 10, 2024 at 10:03:44AM +0800, Yijie Yang wrote:
> Describe the SGMII/SerDes PHY present on the qcs8300 platforms. Since
> qcs8300 shares the same SerDes as sa8775p, so it fallback to the
> compatible.
> 
> Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml      | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
