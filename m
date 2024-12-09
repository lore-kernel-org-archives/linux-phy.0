Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B46DE77173
	for <linux-phy@archiver.kernel.org>; Mon,  9 Dec 2024 09:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vRwlW2WVrE9OhWKBvNnw0VN4xsiMGkLcKRnQXMYDSTA=; b=vo1LIV5Fd4UZfh
	Bj1om0Pkqnt3HtGYGR6oUWmJi4w1O+BTZ/6ACVKUlkczdhNDU9Rv7MbkYvf8urlvg3JAaoFbWJclS
	GjxEZGZXeMFSrntdKHec9LESVDG3h66+7fdioAH8PNSmNq8jVfV0yBk0I14UkUvsdkS6anNw7rLyA
	XqVn0fFFTPsGwfKOD+mQUt4Z99CBStz7jy1r3K5739QUMy+PcigI7pc34KXQbvO+uqhp8sBx4NE3G
	uNtDpH04d4Wxi8giBRBcIOwCTAYBi1+/M7iIDfHqREHxC48UVbc6kdm2aj4M086an6Btf2yyMtsLz
	iCfKgyvcFnrWejh7WoOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKaEf-000000076pq-29cf;
	Mon, 09 Dec 2024 09:39:25 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKaEc-000000076oj-3C0u
	for linux-phy@lists.infradead.org;
	Mon, 09 Dec 2024 09:39:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 57332A4117C;
	Mon,  9 Dec 2024 09:37:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11BA4C4CED1;
	Mon,  9 Dec 2024 09:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733737161;
	bh=LjzR60E+UhSRTYFgb3A+TDPCEApt2g0xKpBJsiveJOY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A/O2Qu+YDCcgCiti8/09pgb6z3TUusuNnDzE9h1AmEpn1xRKXnNoBDNlFOx1wqXF5
	 R/3+oJJ6HZVI1OG9yuWel2isoFbmV+lU+AF6z68XdmAQ9prEG+oIxbpIgVYfinWO+v
	 rD8Gga/L/L279OM6wqpZtPn7dv+vWnO2yJVyCfTtZ2cdSACqfIvZ9O26SHDg71TF/U
	 U2WCI1406i5VXyWm6V9fvuakT6bgxhrgJZo12QZYwxm/L8DYxnsHoiJvfKNQyrf6j5
	 z+RdrFFAj/CzT3aSLxiSzO6Bz51/cXVoJKEXQcdhQ8d4A8EyypPhRDOH1Dy+Jvu66m
	 5uheTclriw2Kw==
Date: Mon, 9 Dec 2024 10:39:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,qmp-pcie: document the SM8350 two
 lanes PCIe PHY
Message-ID: <uvgu5fpcoxmqnlqlu2evtufy7qtwl7bfztzpmxtvqsr7lvcdy7@645q74bovcyo>
References: <20241204-topic-misc-sm8350-pcie-bindings-fix-v1-1-e8eaff1699d7@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241204-topic-misc-sm8350-pcie-bindings-fix-v1-1-e8eaff1699d7@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_013922_861319_13C94B0B 
X-CRM114-Status: UNSURE (   6.69  )
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

On Wed, Dec 04, 2024 at 11:34:50AM +0100, Neil Armstrong wrote:
> Document the two lanes PCIe PHY found on SM8350 SoCs along the
> already documented single lane PCIe PHY.
> 
> This fixes:
> /soc@0/phy@1c0e000: failed to match any schema with compatible: ['qcom,sm8350-qmp-gen3x2-pcie-phy']

Maybe we will succeed this year...
https://lore.kernel.org/all/20240124-pcie-aux-clk-fix-v1-5-d8a4852b6ba6@linaro.org/

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
