Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCBE6C35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 13:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uAM5k9QI7KbK1T4K6wL0U8aOQDYxyROT4ch1D7DgvM4=; b=r114FqSFqbnMFj
	rsimYNGzwsWudwm5xC1gQrYiZ5ycRQ1ZA7SkW/rT5BRMBqnk+Fb4Zwun08W0y3WfH0vJHWLHsWKYB
	SmZtAt9VDTFK1KnUySKDeEjpmiZfuWhnSyr7wjPULrnYXcFXFsdHIZCfSWt6fMi/Lc36CdgXV6yHL
	gK8ZU+PNct+71hoUhar6DRdA06WwrCKrA87bXL1jy0LW4f4a1ZZK3+pGBSrcjBqAgAtdEarXCoKUC
	dUoj2BOF2aKfJrJ7ddL4Y6jOSWuI3lrYj8mK1l0YxjLOvV+5LNCTA9z1eLzIAt5ygnzhP24V51p07
	pM4+sj3aJLx5REgXk8xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFDVG-00AppM-1Z;
	Mon, 18 Dec 2023 13:17:50 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFDVD-00Apoa-2t
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 13:17:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 43F59CE10FF;
	Mon, 18 Dec 2023 13:17:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74A39C433C7;
	Mon, 18 Dec 2023 13:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702905465;
	bh=2D73cq9xpsgZNF8poo2tWxiFzoJi0MVWvA/bi4m11G0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DeSm0ZC+8/uSNx9wqeeaYCkUnK5l2I340GhJP5tg4Bj3mCbL/VRIO7Z0wVdEMa4VS
	 W//CdXR67J/Fe7+HxMfnK57yjZDoWS5GhwcYUMIx/+nf3vDGDfAkiXBm1sODsERI6e
	 1VsRBDkxNCDz3sPvI+7gWRqDkxScv0XSpzCg7vJnpq96X+7/pXkl0BcQYw+q5jVHlr
	 XU7ZpuCeMzCfm9Fp8NSAU4YUzQX6X0oHUEb7GHvpbUG6ON92hcY6RNkSZH4BEGaxmo
	 gEpzz31vYwmTm1ssooSf43tYxacVw9YJZ6tciKO+oP7mNreuDQdItw1wzRb+V2Yunh
	 zcv4ILTaR6fDg==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan@kernel.org>)
	id 1rFDVA-0005GA-1O;
	Mon, 18 Dec 2023 14:17:45 +0100
Date: Mon, 18 Dec 2023 14:17:44 +0100
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: fix
 path to header
Message-ID: <ZYBGeBEDZaBqrh1j@hovoldconsulting.com>
References: <20231218130553.45893-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231218130553.45893-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_051748_124568_82A4958C 
X-CRM114-Status: UNSURE (   8.03  )
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

On Mon, Dec 18, 2023 at 02:05:53PM +0100, Krzysztof Kozlowski wrote:
> Fix the path to bindings header in description.
> 
> Fixes: e1c4c5436b4a ("dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp binding")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Not sure a stable tag is necessary as these descriptions are not parsed
by a machine, but looks good otherwise:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
