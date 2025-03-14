Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABCB3C35FF1
	for <linux-phy@archiver.kernel.org>; Fri, 14 Mar 2025 08:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ps6g+7rAlFYeQf+CogDxBqRu6nrbt1/zHuTiUkfe2mU=; b=QgQZnYPchTZqOk
	8P5b+51XH9ttOPcqwbicVQmAAq0wOFdXvu9Xt74OD+sOMSlY1XFZmU2p5sj85UK4EHrN2ten/6nZx
	lmRRmCqZZhu362wG4cGbHqXZz9P6acxpCm/T2mdki8BUhjdT94w4zhcJQyhSaqcj4Hl7uNpy/ZlF2
	QXlnUzpAw1Zf2YvV04H0thxPp+TzainIh9DPn3FROpEGmVAvATfB27VXIx/8j5hE4RbVDVX9ZGQve
	5Y/AwP7w2kiH8PvdBh4UX4QTofxhSIvjUqPsXVoD6u6HVy2dF9L6duPC5TqLzVxBNZO6al+TATs6n
	cUjVOyL6Srv7tKBexndw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt0JE-0000000DRU3-0cRf;
	Fri, 14 Mar 2025 08:22:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt0CM-0000000DQ8i-0OWJ
	for linux-phy@lists.infradead.org;
	Fri, 14 Mar 2025 08:15:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C1A465C48CB;
	Fri, 14 Mar 2025 08:13:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D543C4CEE3;
	Fri, 14 Mar 2025 08:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741940117;
	bh=c7ABCEaXzhXf2ga+O2xCrbFV5cHGA14uEMNM19s30iE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iGVfFVhK+WLUZG7BUB+ebQBe+trOCgECkGqgrujM2C+YvwxVLrLF4iKC64cNVEkjw
	 +zzYnJPAs8XrBuAlpNZpk2uQAs0Tlfnlj+vGSbhqM/Z7qhN1aSX9O4jHhyiQFqHHbl
	 3fAOL9wV2m/Kojtgb0nFkodCOCtkwGiuXfTBHjCpVlf/yWn2b46IHF8BVUiQGHxad4
	 EcIq7BnVz9ZjrmiWEgG4AB/Lx+7+qcn9v7VD8KKaqbZPuEMIt5g8dh4rVMzl2cHae+
	 hYmD9/pjVlCDuIJqc4X6FjAT+qtKG5AqyGsnBIvK6y2QUFHZgoLJFiI8Fbgv4lAM/6
	 NiNH0xzDFzcvw==
Date: Fri, 14 Mar 2025 09:15:13 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, andersson@kernel.org, 
	bhelgaas@google.com, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	lumag@kernel.org, kishon@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	kw@linux.com, lpieralisi@kernel.org, manivannan.sadhasivam@linaro.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, robh@kernel.org, robimarko@gmail.com, 
	vkoul@kernel.org, quic_srichara@quicinc.com
Subject: Re: [PATCH v4 1/6] dt-bindings: phy: qcom: uniphy-pcie: Add ipq5018
 compatible
Message-ID: <20250314-hypersonic-starfish-of-sunshine-75f8fb@krzk-bin>
References: <DS7PR19MB8883F2538AA7D047E13C102B9DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
 <DS7PR19MB88835F541CBC60C97A818B3A9DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DS7PR19MB88835F541CBC60C97A818B3A9DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_011518_176754_F387318A 
X-CRM114-Status: UNSURE (   8.50  )
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

On Fri, Mar 14, 2025 at 09:56:39AM +0400, George Moussalem wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> The IPQ5018 SoC contains a Gen2 1 and 2-lane PCIe UNIPHY which is the
> same as the one found in IPQ5332. As such, add IPQ5018 compatible.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  .../devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml  | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
