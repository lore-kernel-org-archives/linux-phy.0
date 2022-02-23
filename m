Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6E25C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 23 Feb 2022 10:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLHDWLx7e+WyZLZzvNM8E/dSA790VNUVMVxOz4evCLM=; b=1wT83vedf1+LLZ
	Qm3Soreb3F3y/+zjFhfb0g0SeutKi7+66cmt+Hny5597YMi196wRx5AVOLAT4BwQ7zLH7A26Xduz+
	A8PwGs8xDpe6zRTOfmp9ewuk0ur8soy2yIxMqo4FgtICbEkSAV5oqY0AykjUYtFLNQWlNBSDT7EfR
	N9iH9OWOc131H74G/wHrCM0VbYSlJ+/SoI2PPliAU7dR0Pb8zJZFScpSnG6rcSOf3z9eUsFVfjuT5
	s7J20Y8I21wLMXYAiVPTrj7O32X0ee6r/pCA5diK+mW4RcQGxudWA94reQwLVn4IKFpMZOHQ6v0hu
	DNTyAHeXlItZV2UJZuag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMp1f-00DgyJ-Un; Wed, 23 Feb 2022 10:37:39 +0000
Received: from ns.mm-sol.com ([37.157.136.199] helo=extserv.mm-sol.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMp1K-00Dgov-BF
 for linux-phy@lists.infradead.org; Wed, 23 Feb 2022 10:37:20 +0000
Received: from [192.168.1.9] (hst-221-29.medicom.bg [84.238.221.29])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: svarbanov@mm-sol.com)
 by extserv.mm-sol.com (Postfix) with ESMTPSA id C3281D26A;
 Wed, 23 Feb 2022 12:37:08 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mm-sol.com; s=201706;
 t=1645612628; bh=x08AyuRYWxWMNg/FpT28WvGgfRYHSwD39XyZUcmVzNI=;
 h=Date:Subject:To:Cc:From:From;
 b=HZgaRv7x+IXqGVQnzFQfQtzyXvR+Y2qL+FUqpuqcwJpAWIfI7+XviYhJDpckIEON5
 NG8wkC5V4EfTgq96PWGqt3IPntrV5lOveKKUlAMadfwRUuDGCfOCprCgl/ycy/zJNe
 ZACUUrlk7gTor9GgrHmw6fc+zhEYDt4GzJzHwrrD19UYuY0nuLjeP4SWO6syWvU4/L
 Q5KxT8TnkjXIX9SYLSZntDC56Tz7q7BCmAwRnQBruznWoB+ThtthDZ84wOSW9d3yjt
 rqsWJjP3fqCjK/pDhUNm4cQVNEEWdFHnYMmuOVCXuPMnblbLQrzYTtKPqNJLCcCTzi
 ksa5CIywrtTHw==
Message-ID: <599bc93c-aafa-615d-2d0b-5a3a3964884f@mm-sol.com>
Date: Wed, 23 Feb 2022 12:37:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 0/4] qcom: add support for PCIe on SM8450 platform
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
 <kw@linux.com>, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220223101435.447839-1-dmitry.baryshkov@linaro.org>
From: Stanimir Varbanov <svarbanov@mm-sol.com>
In-Reply-To: <20220223101435.447839-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_023718_794210_15536B04 
X-CRM114-Status: GOOD (  15.21  )
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



On 2/23/22 12:14, Dmitry Baryshkov wrote:
> There are two different PCIe controllers and PHYs on SM8450, one having
> one lane and another with two lanes. Add support for both PCIe
> controllers
> 
> Changes since v5:
>  - Rebase on 5.17-rc1
>  - Drop external dependencies. The pipe_clk rework takes too much time
>    to be reviewed. SM8450 works with the current pipe_clk multiplexing
>    code. Fixing pipe_clk will be handled separately.
>  - Drop interconnect support. It will be handled separately for all
>    generations requiring interconnect usage.
> 
> Changes since v4:
>  - Add PCIe1 support
>  - Change binding accordingly, to use qcom,pcie-sm8450-pcie0 and
>    qcom,pcie-sm8450-pcie1 compatibility strings
>  - Rebase on top of (pending) pipe_clock cleanup/rework patchset
> 
> Changes since v3:
>  - Fix pcie gpios to follow defined schema as noted by Rob
>  - Fix commit message according to Bjorn's suggestions
> 
> Changes since v2:
>  - Remove unnecessary comment in struct qcom_pcie_cfg
> 
> Changes since v1:
>  - Fix capitalization/wording of PCI patch subjects
>  - Add missing gen3x1 specification to PHY table names
> 
> 
> Dmitry Baryshkov (4):
>   dt-bindings: pci: qcom: Document PCIe bindings for SM8450
>   PCI: qcom: Remove redundancy between qcom_pcie and qcom_pcie_cfg
>   PCI: qcom: Add ddrss_sf_tbu flag
>   PCI: qcom: Add SM8450 PCIe support
> 
>  .../devicetree/bindings/pci/qcom,pcie.txt     | 22 ++++-
>  drivers/pci/controller/dwc/pcie-qcom.c        | 93 ++++++++++++-------
>  2 files changed, 83 insertions(+), 32 deletions(-)
> 

For the whole series:

Acked-by: Stanimir Varbanov <svarbanov@mm-sol.com>

-- 
regards,
Stan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
