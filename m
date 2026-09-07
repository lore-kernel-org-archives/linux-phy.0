Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2CA7C79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 08:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aio6dV/SkcUUTb/nugNT+gjFvQrqMSGTcfcbD5XJB/w=; b=3rh2ZeSmf0suct
	g7ePanxo002rn2VbyFJsFnb3nTB6eMDoA7H2cCHwVxqwjWgWh/vKTMyIImydBZY3fn3FzsHbsWrXa
	ZQ2qPSH6GNd4/3mOyXHRjpIOl+DaBd9lFHMVyvJCtucq8KVf693kD4XYX5xKlX/VsI/J0ZECefEHj
	x0ykMtLZX6HT4eM7CUxyj+pc1raXrdak0Zyw//MrldGtC7sEtytTuAS2kUWKcjqIcCazCmHI+aNLC
	3+OFtqfiExTWPMOYp0rwrx9n8gsDCAqK6viQA3wRbQcZWqcNw+LSlpN5W4+qDs4IzZPiOyKN9OycK
	TpJ7NzI+PL425spU3/QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3UbQ-00000006FmS-0wza;
	Mon, 07 Sep 2026 08:21:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3UbO-00000006FmJ-3Gys
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 08:21:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3F7DD40232;
	Mon,  7 Sep 2026 08:21:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5323B1F00A3A;
	Mon,  7 Sep 2026 08:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788769278;
	bh=XhQ8q1GW1JD9svGl3jm3Smsd4n0YqkISROWUF60PrpE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WGo9lLmyEdKB+YoCMh3HeOOzS8e4hcAJ32ahG3kvfFpYg2G+tEsJDQEz2d/a7ygwx
	 rnyO7L0aLKEyEEL4pUWOa5ZSy7Igo1smC9oeLTOL/jWt0qc0Nj8pK974PcpilzTn1q
	 DYMt77UKMB69SdgBKrCXNPSiDAljPpXbONW325GXIjhJxTYI/bX6rx8sDgM/HEUlAo
	 hstULHAzuWRJ0yn4bwuYONBDq4wrRHLQDMb2dTyS96KIMUMW5XFn+HosfV7WKYzloo
	 QfLkEfsRmm9Toh5IrHI4uRbCpz5Qtk3KE/Bm7Kv8NgiLKHq97w3rZd81VotLpZUW1s
	 lF8xVFggR7KTg==
Date: Mon, 7 Sep 2026 10:21:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Maili PCIe PHY compatibles
Message-ID: <20260907-uppish-aggressive-moose-a096d5@quoll>
References: <20260903-vdev_next-20260902_new_post-v3-1-108223cbcc10@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260903-vdev_next-20260902_new_post-v3-1-108223cbcc10@oss.qualcomm.com>
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

On Thu, Sep 03, 2026 at 10:56:00AM +0530, Vivek Pernamitta wrote:
> Add qcom,maili-qmp-gen3x2-pcie-phy and qcom,maili-qmp-gen4x1-pcie-phy
> compatible strings for the Maili SoC PCIe QMP PHY.
> 
> Maili reuses the Hawi QMP PCIe PHY hardware, so the compatibles use
> the two-item fallback format with Hawi as the fallback:
> 
>   qcom,maili-qmp-gen3x2-pcie-phy -> qcom,hawi-qmp-gen3x2-pcie-phy
>   qcom,maili-qmp-gen4x1-pcie-phy -> qcom,hawi-qmp-gen4x1-pcie-phy
> 
> Since the allOf conditions use 'contains:' to match against the
> compatible array, and Maili nodes always carry the Hawi fallback
> string as the second compatible.
> 
> Signed-off-by: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
