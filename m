Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99EACC71136
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 07:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbmDJv1dl5NxEao87HWO22+cLGj5kAozrZiHpBVSL6A=; b=o46HkXcCpJzdil
	N1tvtc7M2Kv8X6SKo7tk+Ykq29A7NnN/Pj1Bar4vJ0CYB0Sg1olffdvs928TLHs0DLiaXfzGvzMMn
	jXamFHmSnwq2Ld/2yh0V3sTnKsut8R/rXP0ddjKA2I5S9ZN+59kWeC4e7nZlpdjIWu2RQ1L/0p6tz
	HF79D8auJNhSm+re0vma6F1A3dAyxbV6lQQaa6KpibJ31UEyNPbpR2DOEcAoNSXal6MtpEY/Pq2Sk
	M6lf/px/0XMnB9oh49bmShW0uDQDXbLAJxRt9OnAd75t0qmA1sAvlxzvIYPpiRSHQ6DlPaiTNn8bu
	p9wY+e5F3ld0RxE9O1Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRQvw-00000006UNf-1aAf;
	Tue, 17 Jun 2025 07:40:40 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRQvu-00000006UN8-1nwI
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 07:40:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6B023A40567;
	Tue, 17 Jun 2025 07:40:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A396C4CEED;
	Tue, 17 Jun 2025 07:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750146037;
	bh=7ijB6/zreiVtuud8tr/xkH8DzzIWKxXzlILsSoCox2c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TAzayVOL7BCp1NeXspi7GwFtYcb+IjWw+/nM6r27WgBjNKUazmDoxYJd8xMhOGwrD
	 gy0yLyi12ow63Mdeqyms3Kk0f5rVncNj/yxUCp6PH0mKP3q/73MeAG9659gm5EmSbb
	 yUi+V/6/m9JgK7es5C/WAhnpyVOLzq9oDFK2aquKKbV3WqEcSZCZif5HKr4QFKb1TS
	 3qlOyLvjyiusAstbtAh/6HW5kBX16di1Ot54HR6H/t8V9jDsCwwum/UJloxQ6E7nci
	 K2+taRkv/PReXOyr8+KXNrGEfgdidXlrbOWPv92YI/XISxpFff6yDIw1iWDX3WGOWk
	 W/uGmiT/gULTQ==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1uRQvq-000000000mw-1WqM;
	Tue, 17 Jun 2025 09:40:34 +0200
Date: Tue, 17 Jun 2025 09:40:34 +0200
From: Johan Hovold <johan@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
	kw@linux.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com
Subject: Re: [PATCH v2 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document
 link_down reset
Message-ID: <aFEb8m0snKARK90R@hovoldconsulting.com>
References: <20250617021617.2793902-1-quic_ziyuzhan@quicinc.com>
 <20250617021617.2793902-3-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250617021617.2793902-3-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_004038_539893_AD5B6213 
X-CRM114-Status: GOOD (  13.41  )
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

On Tue, Jun 17, 2025 at 10:16:15AM +0800, Ziyue Zhang wrote:
> Each PCIe controller on sa8775p includes 'link_down'reset on hardware,
> document it.

Please say something in the commit message about what this reset is used
for as well.

> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie-sa8775p.yaml  | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> index e3fa232da2ca..b7cae2e556e3 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> @@ -61,11 +61,14 @@ properties:
>        - const: global
>  
>    resets:
> -    maxItems: 1
> +    items:
> +      - description: PCIe controller reset
> +      - description: link_down reset

That's not really a description, you're just repeating the "link_down"
name here. You can probably use the description you add in the comment
below.

>    reset-names:
>      items:
> -      - const: pci
> +      - const: pci # PCIe core reset
> +      - const: link_down # PCIe link down reset

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
