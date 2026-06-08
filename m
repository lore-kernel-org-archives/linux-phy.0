Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66040CD8CA4
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 20:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zIX2ze1KzP5G7mlf3TtrBft50Y8QQ4XUWxAEva4wQw8=; b=fZUyp6McuuoMsh
	9AGyoWJd+Cng3pBvPjI4rwp2/LsuycRgXEzrLyHI1WTThBwlUO090++h7fJAkFYKoF75PCrzUWxk3
	GT9p2JW6CKd0AolvBSyevRabYtFtK6ZK6eXAYkXaFm23ySdS/k8g4dRZK1vUqXzljMrrRdD04nNbn
	Bfm6dgPARU9r/3eVuM4GgQwEvoDCUpqkNaz7CrgOnmhAk1aAgfLf78tbDaePVqJaSQlz6eDAgr+WC
	Xcn30DLgyPhBlv0XhNCOb26U8UVTRSeam5OBwxMxddqZdYzxXHSwBJv+Z5T7b4lTGacOlI8C1JAKu
	1cJgkbkkcuedXR5N5d+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWgDQ-00000004KsU-2pNT;
	Mon, 08 Jun 2026 20:04:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWgDP-00000004KsM-2sb0
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 20:04:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C30E1601D8;
	Mon,  8 Jun 2026 20:04:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E16A1F00898;
	Mon,  8 Jun 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780949094;
	bh=D5NzKS0xhmGk+JRUCJkpcxI6S6sOuzdQ8mS1ZEWHGcg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cbTtcTbChXSDQ1nlyUoglIUAL+t4T9t2iwwWZM+F49hrrjJfdddqIv416cP/4TjH6
	 0V5EGx4IXOYhCFLimJvUBsZSJwzPSrvKSQb6VZAwgpAIil9jWHPTSkwXz0QQ1mOb5m
	 RaARMPMd9BfgFzTWH5NRnwRq57thsGqCFPyczLrVs6hL1VoZ1kHbp81CpIvOvWzqQB
	 3534xRhk1VFTtXy1Lnxy8e/lXTFuC3fjxKEBmW+VNK/s/IbtO4GRkKfrDiwAG5fDet
	 pRIvSKTutaOmAFw/hFfITNKdbYMiRBPP5z1fH3+SkM+knEkrrTA5hEhZOU/YKFkLQM
	 omy/ecPtueHsg==
Date: Mon, 8 Jun 2026 22:04:50 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom,qusb2: Document IPQ5210
 compatible
Message-ID: <20260608-hallowed-labrador-of-acceptance-bcf2cc@quoll>
References: <20260608103344.2740174-1-varadarajan.narayanan@oss.qualcomm.com>
 <20260608103344.2740174-2-varadarajan.narayanan@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260608103344.2740174-2-varadarajan.narayanan@oss.qualcomm.com>
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

On Mon, Jun 08, 2026 at 04:03:43PM +0530, Varadarajan Narayanan wrote:
> Document the QUSB2 PHY compatible for the IPQ5210 SoC. The IPQ5210 PHY is
> compatible with the IPQ6018 QUSB2 PHY, so allow it to use
> qcom,ipq6018-qusb2-phy as the fallback compatible.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
