Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20EBEC282DE
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 08:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqr7jOg7+T9/ylxYBCk7kmQzAxhFvFuegIQ021F3USw=; b=dAatgNLm8QdSSK
	kI+lKbbYdrm8I5JJLIK5RBKNiIZvY13J6oKS8CP5tVkIcmZMVBJMCBZIPq9N3u+x6NCtqAOtILZoc
	LQGPeEglZH6s+TjCaa6V+N/G8gutT3yau2rW0HbfD9oBDD1WrFvBP5RIwnfkgfibJjFjpBgl8UpXC
	3hM74Txyayms+rnsOX4G+o8qNFjjzFyTLS5bFAsM2CBmLNyoWAevfRQWMq+Pnxu5zofNCF6ax4sbp
	0D8L8gxH9tTfv3eByTNLUQMnEjiZhmGAdxkd6PHufpaBTXiUDDKmIfIBQ9vI4Nc19XERdYdtqz/8c
	MbfZNVKaaHdQtZ6cGTCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trYd5-00000001wIz-33uw;
	Mon, 10 Mar 2025 08:36:55 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trYbN-00000001w4H-3dwX
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 08:35:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E3CE5A44CA8;
	Mon, 10 Mar 2025 08:29:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3CBBC4CEE5;
	Mon, 10 Mar 2025 08:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741595708;
	bh=FDc8n1PfVplUqR6TlrIzRSO+eMe/vmEGQ617VBj5ULM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KwPF2jWAZQad3jgjs9AggH945mKE24H04MeiEP9rxZ3fttzLqvBqQYIstb7g0EqiE
	 fKZyYRMi+Yga/mq7FcNClkG0RtlYd6z0NzLdpCspseE37UzxsirOVtPcMoYZ+B4SM8
	 rYA89edVwCKeKTLhmeSeavVQFBC4w/6Ft0YhjuG4pjLX2JcAK0AkyL1o16qsCffWJz
	 XhDWDV95MbWRSrc9zfEUJCGDsaY6wqa4PZfPC8dkoL/b/VEPqkrsqrIJGeh7NhBtQE
	 d2wvJ7VNHxHpWkVaON2ugCgIkLZmnAJ9Hub/Si1rB+D4iXOBE4dvSS9ue+3GgHpODZ
	 bQG938Iv2QTgQ==
Date: Mon, 10 Mar 2025 09:35:04 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, bhelgaas@google.com, 
	lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	andersson@kernel.org, konradybcio@kernel.org, dmitry.baryshkov@linaro.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org
Cc: quic_qianyu@quicinc.com, quic_krichai@quicinc.com, 
	johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 1/4] dt-bindings: PCI: qcom: Document the QCS615 PCIe
 Controller
Message-ID: <20250310-bronze-chameleon-of-karma-57cd1b@krzk-bin>
References: <20250310065613.151598-1-quic_ziyuzhan@quicinc.com>
 <20250310065613.151598-2-quic_ziyuzhan@quicinc.com>
 <f679c5a0-5044-4cff-8c3b-5051b1b873f9@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f679c5a0-5044-4cff-8c3b-5051b1b873f9@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_013510_001215_D4285A57 
X-CRM114-Status: UNSURE (   9.19  )
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

On Mon, Mar 10, 2025 at 08:18:35AM +0100, Krzysztof Kozlowski wrote:
> On 10/03/2025 07:56, Ziyue Zhang wrote:
> > From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> > 
> > Add dedicated schema for the PCIe controllers found on QCS615.
> > Due to qcs615's clock-names do not match any of the existing
> > dt-bindings, a new compatible for qcs615 is needed.
> > 
> > Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> > Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> > ---
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Sigh, this wasn't ever tested.

NAK

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
