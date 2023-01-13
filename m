Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15066C3DA78
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 18:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pI5+BjZPj3siifiHgP6gkaQiioiVZ+a8Xw7pb8UgweY=; b=cz4byfz182yVzf
	3S2e6zjRBKNfSuXyztuZN1GvSfNPA7uv77Z7rmVVzJSFWV4ZqxyJ5/bR2A8B/Sj41N13NSwjCbdp3
	VlKM/utfHQdCP6DJWPbWDcLGLDlFDgV2nY9v/wQlPPd7UMvft8jDZannwZJntfS02UDx1XmK/RYlT
	9Sp7+bLW04jRa3HXR3e6HXNcts2dcLO63v5mTooFKyGE1ckEW+EzuYnT7MMFWhGx4jaofNK+obOQx
	FU2vDj2AV1We/N/JFCHib8UDPR9nfJaoHgqVCfq2X1wh4+U5JjPiLD0uTnWmgNdkvaN+PjstNdKk7
	C+cKKCwGZ5IZDGCFxXug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOcQ-0041Mr-DW; Fri, 13 Jan 2023 18:17:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOcN-0041Lp-RW
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 18:17:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5A847622E3;
	Fri, 13 Jan 2023 18:17:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31446C43392;
	Fri, 13 Jan 2023 18:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673633851;
	bh=MC3Wb0A+JrFPrTulLTxnk1+4ay4eXZrhHeOdStTKrfY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ts/O8pF741PO1l3JN4gkhTIapMPZ3pImdar2X6efG6/+c+a+PCVOyFot/na2cwwMo
	 Ck1qMstsND4k83I09UbbacKvr+0lkeb2f1shWydjbNpdfKYyoStX0BLOA2ip/kpagI
	 dagDI0TxUTmmUgIu8LZ5WJ+h/yE8azCttZ2A3hDpgqEqQ/RxlGymhbhOlc2Wa3I+lc
	 FLib8YA9o2gc6ZUpU2eojnFimtZ8i4u5QwFsbXivg56EcIqqwpQONFfS5mKISPaUQw
	 yjQ6k/Gf+ewI5LJN5cpHX2Ie0xBS4VY5h0gh4ijLmnx1JQJ0bpMzzJzzODAYUW54XI
	 20Px3YBhDdCCw==
Date: Fri, 13 Jan 2023 23:47:26 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,qusb2: do not define properties
 in "if" block
Message-ID: <Y8GgNidy+Hhnnikp@matsya>
References: <20221224154226.43417-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221224154226.43417-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_101731_956403_27D17E59 
X-CRM114-Status: UNSURE (   8.07  )
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

On 24-12-22, 16:42, Krzysztof Kozlowski wrote:
> It is more readable to define properties in top-level "properties:" and
> restrict them (if needed) per compatible in the "if" block.  Defining
> properties in "if" block  does not work correctly with
> additionalProperties:false:

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
