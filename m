Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DF62CD1284
	for <linux-phy@archiver.kernel.org>; Tue,  2 Apr 2024 16:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSCaUuuKMw9diNu8v1bL1Y5SKN44bWntvhKVHNu8YAk=; b=W7pTvwC2uzvp/z
	jVYgE0SdYrgYDy7uIBKyS8PBYxQdpLkQux2Yp1iWSHgFfhPJJL5fCDrtXCvon2r/Dp6F5v/plFRt7
	5Zzu6KEicmrUwZejaWM4jPFjOzgLCvOckuD8DAArqgcow2syeLarXVRdOcUoV0g0evUNAWk4ei6lN
	b5xBwz/dVrsfUQzlpKZYUfNYafbHgYPx/cMJhmJmAVnXrmig+qVx8+AYd7/Ll7LkwXp4Nf43SR0zU
	DrnGcZfSFUGzQHHQhU2iQVK4hxyJOdTW4k69usMMBO3WTZgHISnnNhEGJLA1PsgUg0927Ltd8it4A
	vS/py3AlNE1sYf5+kuRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrgnl-0000000C02P-1Olb;
	Tue, 02 Apr 2024 16:15:57 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrgni-0000000C01f-3Wzl
	for linux-phy@lists.infradead.org;
	Tue, 02 Apr 2024 16:15:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C05C6CE1B76;
	Tue,  2 Apr 2024 16:15:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B58D2C433F1;
	Tue,  2 Apr 2024 16:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712074552;
	bh=4NxXywfhlZNac9KSvHpb7hWlGWljpny7k88YW/fGUtc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GYigrtOV+u4k7E1CeM0cd+q9lkmsaFscaPs1nNLOAqFwYz8G17Ph2vC+xr8IdutUL
	 cFM4JMecXBBoB1YV7yahrKuuGu9A/6+zF03a1bDuF1HwYEjwwUfVzKsMNTijLC4gmO
	 zESBiNaA7778fOaKb1l5Mkv7YA8ytOSZ3dk8MNz5VKzheg7nh6/ugVelxwpD1mkurB
	 Gk2GZlhaodniLa3fanI7P/eaAuHnjjYFMnM/FjCSix5fHcLFaAh2qhfNS5iniYKc2i
	 AA1LjoO0ZnbBmT7b7Itx6P4OSeSol10+lJ8WY4nP7rUeEpD/CnxRpXj0k4Mb1VpETV
	 fWb+aCVYfKDRA==
Date: Tue, 2 Apr 2024 11:15:49 -0500
From: Rob Herring <robh@kernel.org>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: davidwronek@gmail.com, manivannan.sadhasivam@linaro.org,
	krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
	konrad.dybcio@linaro.org, linux-phy@lists.infradead.org,
	conor+dt@kernel.org, kishon@kernel.org, devicetree@vger.kernel.org,
	andersson@kernel.org, vkoul@kernel.org,
	linux-kernel@vger.kernel.org, cros-qcom-dts-watchers@chromium.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qmp-ufs: Fix PHY clocks for SC7180
Message-ID: <171207454539.241562.7875961224491277526.robh@kernel.org>
References: <20240401182240.55282-1-danila@jiaxyga.com>
 <20240401182240.55282-2-danila@jiaxyga.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240401182240.55282-2-danila@jiaxyga.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_091555_264391_D14FC841 
X-CRM114-Status: UNSURE (   9.91  )
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


On Mon, 01 Apr 2024 21:22:39 +0300, Danila Tikhonov wrote:
> QMP UFS PHY used in SC7180 requires 3 clocks:
> 
> * ref - 19.2MHz reference clock from RPMh
> * ref_aux - Auxiliary reference clock from GCC
> * qref - QREF clock from GCC
> 
> This change obviously breaks the ABI, but it is inevitable since the
> clock topology needs to be accurately described in the binding.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
