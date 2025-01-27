Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01C12C0218C
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jan 2025 08:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=al6enTVZLhV2TsnSYiJf2iPk7mzI9OXdjTEpOeBf+Ac=; b=Bv52OneZQhFv7D
	fsT2VkPsimxs5OcQsApC94r9c8TipfMOgN79gb7860GDVpUueGYTs42R7hCEVC8vXVCH0IS3Ko8db
	cUbNsfJs74UWH1N/VbnRUSwDpIAgjHUNq/YwjfwGFmvrUauU3W/p6kq1AOhyIQajHLwIckDItJF8f
	v1MfIMmmj8JQ0nf9PCFIOK9DY5DQKB66NtdMxnFcUnjs6gVJi6GMq1kg3yolV3yBNkfk0BtLbAMGA
	AJ4ghX3XPymVkLMrWTdpkTsR/wKPJcLALRzJutwjesFCEpvt0JdC3KpGXjJbY5T7Ho6EwIOa6Df0h
	k+j/vBCrnHtsvjt7wYCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcKPy-00000001t3G-0wxJ;
	Mon, 27 Jan 2025 08:24:26 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcKPv-00000001t2v-2nc2
	for linux-phy@lists.infradead.org;
	Mon, 27 Jan 2025 08:24:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D94A9A40EEB;
	Mon, 27 Jan 2025 08:22:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A409EC4CED2;
	Mon, 27 Jan 2025 08:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737966262;
	bh=b6p+7k1Z7/ukyg4zBi8mCQpTGKiCTqXzey9l/uJRgRA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=goANkQvgCTHcs8JD/oY8EWsNUo5tghe2xzpL14ou7fdl5/gLMweBp9A0+wfLcY1cS
	 BhFdvL2tTnEV9d5z0phpHLsOv44XdPcSt+rNjUvFCMTPJop8bMxsAQHlhqB2odD0Un
	 qbEPNvBITwxRe5nCKv0GHSbp50q6Gq0WNoYuVrIZHCQxWnFvwEBRx7s1XdFnSydJ/F
	 KTq5isEI1w5PuA5pI+BvZYBQAKJ1fUZQFfGjCtK4zVL9xb9us/xHh/bsEV00Qjko9a
	 ty2pD+2HTUOPxmTl7UIS6WsR3UcmYTU034LmUon6jDGBQ9xN4HLjF9yqt8Dg7uzyDk
	 BHemW5GPLMSNA==
Date: Mon, 27 Jan 2025 09:24:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 1/6] dt-bindings: phy: qcom,qmp-pcie: Add X1P42100 PCIe
 Gen4x4 PHY
Message-ID: <20250127-glittering-quetzal-of-tenacity-d448dd@krzk-bin>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-1-02659a08b044@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250125-topic-x1p4_dts-v1-1-02659a08b044@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_002423_771415_7C8ECAC9 
X-CRM114-Status: GOOD (  11.06  )
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

On Sat, Jan 25, 2025 at 04:31:17AM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> X1P42100 has two Gen4x4 PHYs instead of one Gen4x4 and one Gen4x8.
> 
> They are mostly identical to X1E80100's Gen4x4 PHY, but there are some
> minor details in the programming sequences.
> 
> Introduce a new compatible for this flavor of the PHY.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
