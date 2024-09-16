Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E7C2C3ABB2
	for <linux-phy@archiver.kernel.org>; Mon, 16 Sep 2024 15:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ktBOjHZazXUg/5JMaaWclmxwwSQBT3ZOnFuEIpmK0E=; b=K8fzlUkGvJrU/3
	R25R2iuAzwrMgdOVnmSLD1OSK2avQ9ItLAVwluCUUQq566ZNMU4A7UqoeFgHv4Q+6OhVZ8Tq7JF7P
	T4/XaAQdVqekMmORNufBhzXNcU4U4ovpwYLvi6WsOt8acl/L+FYdTn1navb1GTjBLRWndggCxkkAL
	TggH58IF63dK7Dx9T6AqxWUNNRssZvWdROUzrY2N3FXbQFnojK3p8kG7e+Pd2ciNBX5yFzOSRcsEx
	11XsBx/LzpjWLk3nq1kckgccWKGaH6dtOET+RN+7YCpRwj9BYsgNR5YaEYk04zLpsBYMyM9jyxAg1
	hB5+GRQzmzxRzXjq6QJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqDWP-00000004KMC-3sSK;
	Mon, 16 Sep 2024 15:20:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqDWN-00000004KKz-1q2x
	for linux-phy@lists.infradead.org;
	Mon, 16 Sep 2024 15:20:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A8F505C10AB;
	Mon, 16 Sep 2024 15:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14A2AC4CEC4;
	Mon, 16 Sep 2024 15:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726500010;
	bh=0t2kb4TLGVXAyQQAtnvs4rUiuNe98aV6Ih2GIVaFmg4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QS3B54RZP3H8Rkbc5Gu6JFcFyWmdibIsQVhd3czujKV8VvKVODvNVjxcDC/50dfdY
	 UNXF2IUwsz1vDscjFcT5cPnbCTEAgQln9iXKTU8H1HkaKJ3Xrfnf20J3mDyqBTME8D
	 SjYoRccRIh6aTAQylTsa7al/vJBLbNy0SJq5FazfnsO9U3mIR/9/c/Dup2H6qe04rZ
	 P+fUIURtOdJm9VkGqADTXDwv9k7GdrkpMSgGCTB2EYoB8PdH66OkBlJL25jXtPC7Rw
	 +T+y7tV6+4VusB70BPO/e/EgQkuKpXmdCiNPYRdLiZ+eS6AV01U6UlvsiryBZfDpMU
	 oex6zJfo5sF6A==
Date: Mon, 16 Sep 2024 17:20:06 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org, 
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 2/5] dt-bindings: PCI: qcom: Add OPP table for X1E80100
Message-ID: <hyhcycqedztrstcl2aixs6e2xwiowlrijkj3g6a2kheqap34qq@hhqxp5i3mbyq>
References: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
 <20240913083724.1217691-3-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240913083724.1217691-3-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_082011_547072_55A86A63 
X-CRM114-Status: UNSURE (   8.32  )
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

On Fri, Sep 13, 2024 at 01:37:21AM -0700, Qiang Yu wrote:
> Add OPP table so that PCIe is able to adjust power domain performance
> state and ICC peak bw according to PCIe gen speed and link width.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
