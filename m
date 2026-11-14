Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F642606A882
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 18:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=j3SIfMyL;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=DMCLhQiE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=oPjmeeiqMdCQTZGcNNNDVWL7k2D1VlekeanzAjSpsRk=; b=j3SIfMyLiYmCTCMfIbpJTVIZMm
	KTocrrvmh+Fz84m7Go/r/GDtMoAGVeZnwJ3TAubusnrnmbYXYh2zy1ShMk/KEwb2j0pA8Rpb4y4HA
	WZ/W6giVD7c18Lb8kjUdOHkqMe6em1YVgNNf1OkbO2GngbydVv3/YRozYyQWTuFbybhDofHhKbyRo
	ab2/S9Wx906o25yQx9W7ONcx8eczRSBcvF28bzExO9pwRZ4fEU0/hNObSmP1zkHRM0Q6OkUm4eFix
	QXnNT3bPRMw3YfnLNRW4AmxwvH1Py+kojtTMuimqCAe55/HrZZr9Ij3wk1l8DXvZTX+jqeZmYeqYG
	J0+vW2yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSIHO-0000000GaKC-3Hpu;
	Sat, 14 Nov 2026 18:15:10 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSIHN-0000000GaK4-0L8M
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 18:15:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5A9B74041C;
	Sat, 14 Nov 2026 18:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5ED221F000C4;
	Sat, 14 Nov 2026 18:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794680108;
	bh=B5ji7cuO7EsHioP5va69m2jRcMzdD5Rhczoh46ifi18=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DMCLhQiE89pXY2hCG3UHC1YAhqDuEitJqHFMi0ak0xAmtBbacYymck14A4v7WJNdF
	 nGjG+bwH8LJS4tsqbaqBeF8tuSGBsWN4+JnbGfT925piJIKfFNIMHUaT8VcAd0RLXq
	 fMIwPGBbivDAE1LyhCy+3DIeIScV4BawM1dx/iSoXCtBo/WAy9+zucZvEk4nTnjaU7
	 BggpUPkRIBl6ZPL6sZf66ftFMiPq6XI8rCH1JhmAU0e8WIXop5vj0Ukz7mTiQ5Ezjq
	 8Rs0RG5lTcx+UzJDKjbLm/lkjZ28HMnumeBupnqQcMqZvF2nN9FA5JtrJXZvzIsGAu
	 4JkbBavuhuSkw==
Date: Sat, 14 Nov 2026 19:15:05 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>, linux-phy@lists.infradead.org, 
	linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
Subject: Re: [PATCH v7 05/23] dt-bindings: i2c: qcom-cci: Document Eliza
 compatible
Message-ID: <20261114-versatile-woodlouse-of-attraction-6adeee@quoll>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-5-8ff2a11835f6@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-5-8ff2a11835f6@oss.qualcomm.com>
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

On Sat, Nov 14, 2026 at 07:29:22PM +0800, Wenmeng Liu wrote:
> Add Eliza compatible consistent with CAMSS CCI interfaces, falling back
> to "qcom,msm8996-cci".
> 
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
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
