Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02AACC4345F
	for <linux-phy@archiver.kernel.org>; Thu, 18 Apr 2024 13:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9YkTDdG9y1P87Q8HU5807PaEKlQ7XGJvTPnqJZUiis=; b=CumjSiFqOrpP+X
	d1z4OhOLnd6QNPIYrKuNL6Rz+/XOK50WBUGvzHpcDlP35tu496d92RR6pkmwWLNfEXiA8CAULG+jY
	TFv0tow/R/N9v55VD56xgJ8VMvtVMArIXAyyUiBo5WxEuglDvirR+1dhR8fqYF0RNPfuZwAyuOFaK
	K6pH0Do0DCI3ORxMlp/y1+OzwtKEhsiffZbInh5G/LJohx4eRE0fPhz8Z51eGaBzlAbA2STEjcwps
	9s+EdzZY7gNLlEVKgESnX/1dKSF1rsqQ3Y7RcFY//j+aZLnqGyKQYxIXtnBtE+3QDD5eOiw773ON/
	HtqXTMjn2dIlZ702zC6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxRMt-00000002HR9-2tim;
	Thu, 18 Apr 2024 12:59:59 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxRMr-00000002HQB-0cOC
	for linux-phy@lists.infradead.org;
	Thu, 18 Apr 2024 12:59:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 297FDCE12DC;
	Thu, 18 Apr 2024 12:59:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B124C113CC;
	Thu, 18 Apr 2024 12:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713445194;
	bh=h5+sr5kDGEE//NFdWMcxO/f4g8tK/UG2WGyXhAMaHJc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S5hQYihibVQPcA2K0cB1A74OHiTQJt3Z3TDnFkzkxRBtyrnrX1F0L9gBsZyDp64c0
	 z2jgOyN/QLrnnXZyaRxoH6P2oNuMbbhoUXCL8Z8fu3t1qbjBmDOrrEGY4baUEvB/So
	 EfwrQMhHLYCCNld5NTd3ySwVRfQd+IDoiI1M4r/EU5w+1cgNKvTtW6Kec58BwgNsER
	 0EPnFEEAolz99Ck2gAhaoTZqXDCDgkKKzy8aDFk8L3+9ABnh20SeGW80YZpYRyaqpC
	 83lXVPXErEU/Zjnfm5neW57C2CVBdbxNfGjTETE2l7NZyTGl9QGTr50OzqR2YnWw0X
	 qcEDmYinGbl0A==
Date: Thu, 18 Apr 2024 07:59:51 -0500
From: Rob Herring <robh@kernel.org>
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-clk@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
	linux-phy@lists.infradead.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH v3 3/7] dt-bindings: PCI: qcom: Add IPQ9574 PCIe
 controller
Message-ID: <171344513750.1014595.13170008831740751556.robh@kernel.org>
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
 <20240415182052.374494-4-mr.nuke.me@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240415182052.374494-4-mr.nuke.me@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_055957_401882_8C39B447 
X-CRM114-Status: UNSURE (   8.86  )
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


On Mon, 15 Apr 2024 13:20:48 -0500, Alexandru Gagniuc wrote:
> IPQ9574 has PCIe controllers which are almost identical to IPQ6018.
> The difference is that the "iface" clock is not required, and the
> "sleep" reset is replaced by an "aux" reset. Document these
> differences along with the compatible string.
> 
> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie.yaml    | 35 +++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
