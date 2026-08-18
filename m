Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83CCDC5DF81
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 20:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5tCURWpcvYTpTVZQxMoW/S0rlRXeM64a0Q4W0BfQ9M=; b=PRVki3GS3LqfDF
	adV4O6x0invrzwGFxu5zgen9iR1M+Fm2Xb+d9O2/noE+yF/H+XV+38lfCJqMrHMwZX6vT7KROUrod
	AHANv/+I5EEsedIxGF7f6KGT2eqhkdVbWYrtlDsvv47Fll4nxqZQZqF4viHUoEA23KShhVbLjBDM6
	fFnadXzTAxN/nqOmNshuhXRjgZJWAMjfjh+en2MCZbHRr7G0YWkHRTc4aYroJWjyvFkHPSlyNXdFD
	AXIhUKDW8tjdFzJ8jS3UIGIzxAOqVtN9oRTbCh748kdkT9RyjFmaALo8SC8MBxehr4eSFAYCIEcVM
	UlNphEYVR6Bbx9PP0hCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwQ1m-00000008cKW-3bVW;
	Tue, 18 Aug 2026 20:03:18 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwQ1l-00000008cKP-1Rlj
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 20:03:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 95D9643358;
	Tue, 18 Aug 2026 20:03:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3EB41F000E9;
	Tue, 18 Aug 2026 20:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787083396;
	bh=GsX9hemoRjSB2DVfO8nTfSW0kYKsPEsBErkrqEuSehg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OKY9G3wSBXFEhNGbVI7Oun7C/Vzo6Ja5lJw9khZlPQ9Rx/nW28CcI1Mx1VdhDpflM
	 3HkM2ApQEhUZrfeMVvKkcPebmNC2PmexmZb5jFYJsDjRLk7kK9nBgBwrMgZg8Esz94
	 UQmBXATvNobIGK4So9Svj4aW0zgRlqoSXV5OBgjjTjrjkXuqUms/xvEQYUJ+BJdXI/
	 x4DKmi3WMFGpjrmB50t1ZIV+vhJSAYwfXROEpWeHjp4mOnuSrhKbSELsJT9pU3e841
	 Z5Ew4s2N6Pw/7Jg7xw3tUV9guK40atSNOi9eLkelP1vduE5CCI1x0av3jHMlVhfFaj
	 8AOYM30Pl5RJg==
Date: Tue, 18 Aug 2026 22:03:12 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com, 
	yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom,m31-eusb2-phy: Document
 M31 eUSB2 PHY for Maili
Message-ID: <20260818-elfish-girlish-panther-4a28af@quoll>
References: <20260817-maili-usb-v2-0-97d7317f64b3@oss.qualcomm.com>
 <20260817-maili-usb-v2-1-97d7317f64b3@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260817-maili-usb-v2-1-97d7317f64b3@oss.qualcomm.com>
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

On Mon, Aug 17, 2026 at 11:16:05PM -0700, Jingyi Wang wrote:
> From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> 
> Document the M31 eUSB2 PHY for Maili which handles the USB2 path. Use
> fallback to indicate the compatibility of the M31 eUSB2 PHY on Maili
> with that on the SM8750.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
