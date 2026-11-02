Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E390B606A334
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kb35hulV;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=mFJBS1+u
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=i4bpRLCuW8qQX0+PtJLF1lqS3bpyScC9QsfQ6j6gWeE=; b=kb35hulVAusS8waU/VvKnybtd2
	8MUJxkMEP8Op9VB03VF21gfaW6FUd2BSbpRBLch/rZAhRRclKFLOB2XKRMGOPFMtC/zDO2V023++u
	n4yYhUxFWXbgY5yutMN6sd9BGK7l4mNx/CbWApvcSJvWgSHYYg3WLl5Ueq11I1BCzhYxtCmV1NlcT
	BpYIigZomrbn0QyQx/AaG++tv7APKpUnU17FhNdIVa4BHvfNe9FL7v8QkJWcwu6vxAnEXAcGgWRsw
	Ps88RZNqAfbS2fqgQbE3RFlijQw6RLpYqB0C0UVYT5UDXiFbcJzaTcIawGwyaKtYl4UO6wUmwoqVx
	ctIslpnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNov1-0000000G7re-2kCT;
	Mon, 02 Nov 2026 10:05:35 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNov0-0000000G7rY-1Izt
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:05:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5A08C60DC0;
	Mon,  2 Nov 2026 10:05:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 285091F000C1;
	Mon,  2 Nov 2026 10:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793613933;
	bh=hraIj5eFlOlhzKylQQ8/efz7x5fIFgzaCgbnxap7ESQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mFJBS1+u1VM91TZWQ5lKgMiqtNJFvAKkHKz0EUpEUbIF5zNnl4OE9WgauZBV2fCCf
	 Ih0/F6Fh1mQW+ieJ5r+rkXSxxW7BQPm1xSi/gc0C6YJ5/8Nguu1EVxoe3LhJQLumxt
	 nEnC4PabPxa3vnaQAVnUEMT6u40t9aD0dA81GIEENYiE8P4lo9M8Ek04ecfo2QX++L
	 QGwgXX1d90QBPfrdJvN8F9B0ZYFwFSYtPjO00Yn6V08xAgP8Yc3F2HsysHFR4AL62W
	 Bg4tTmNc2Nlxdd5kFX5pAsg91vfpofRlH1nKXa9mf2kOGsIqfk7zPqZm9uN6NUHyR9
	 hya0S08K57Zjw==
Date: Mon, 2 Nov 2026 11:05:29 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Suresh Vankadara <svankada@qti.qualcomm.com>, Vikram Sharma <vikram.sharma@oss.qualcomm.com>, 
	linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: i2c: qcom,i2c-cci: Add Hawi
 compatible
Message-ID: <20261102-macaw-of-exotic-justice-8c11fe@quoll>
References: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
 <20261030-hawi-maili-camss-v3-1-9742bca8cef2@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261030-hawi-maili-camss-v3-1-9742bca8cef2@oss.qualcomm.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, Oct 30, 2026 at 06:13:01PM +0530, Nihal Kumar Gupta wrote:
> From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> 
> Document the Camera Control Interface (CCI) compatible for the Qualcomm
> Hawi platform. Like other recent platforms it requires two clocks, so
> add it to the corresponding clocks constraint as well.
> 
> Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
