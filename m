Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14784C54EBE
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 17:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYY3PYHmenQHqcs2P0Az2Z9clA+DB2gtbVLBNbX7eUo=; b=K3vAbawUc/FvD3
	4I4CXgT1UDQ3KuqiXUL3ia/nL7hydFB4rnH7f2SYmJpVidYqivItEvh5o1Y8Wd6xUTgt0UxEirZjN
	17YCR2cj2sbH6phLvwdWph7fwWaQQtFYGueuI3N6ph3gZXp+qwAkHzySAz6Ikwe/FgEyeQ+u34Df+
	PMyYyJaMNCLiRCIWgzUWj3PA9H69c6JhPODOpu45SN4uVQs7mAzgjGbBLVWCyecJbXDOXwMdVUVNY
	nU2M9sIn0J7n1Uf1dsflbkP1tweK43mo9wT9K6p8pLtSQxjD0cJFIJMSdSLSlkyjWsZ3ddCa8RyVz
	bLiEKgIxw5CXFpyM7c8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG15k-00FyUS-7b; Thu, 12 Jan 2023 17:10:16 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG15h-00FyT8-BT
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 17:10:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C4482B81EEF;
	Thu, 12 Jan 2023 17:10:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3D15C433F0;
	Thu, 12 Jan 2023 17:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673543409;
	bh=1+WjOSDdXrMcNMcQy+7IiCob8iRltz4E0DW08K4gihM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GMS95Q66LnC8a7WsDjfSyYqdyrXCQ3RrEi8R1YCt3IJ//JufSgDZHjtuj2ws0Ln1F
	 Meo8GPbBy4HnyXbf1q6kmef6qHKrJF856c3A1qPTSl/ARPf+zkeOz6OYT0cVkAPz1K
	 t5gq426zbo5qz09v1CGcFdMg15A7bXe6fenhB4HcFo/DotKvbkbfhqEbMTTsl3Zhaw
	 oeT74RPVHtzRq6UF7smKYe03Od+zv8spOgEEncrQEssRAfakq7uV0ROP0eis67EXaB
	 3OALPDIk4/1C2R9tgC51ojH40guMf25vJYZrrF+99QSDbb4tlB9AmnsRxYguHa2eSz
	 B4S4N744El33w==
Date: Thu, 12 Jan 2023 22:40:05 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/8] PCI/phy: Add support for PCI on sm8350 platform
Message-ID: <Y8A+7fYn7LEAxZjq@matsya>
References: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_091013_572416_30C5CB3C 
X-CRM114-Status: UNSURE (   9.93  )
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

On 19-11-22, 01:32, Dmitry Baryshkov wrote:
> SM8350 is one of the recent Qualcomm platforms which lacks PCIe support.
> Use sm8450 PHY tables to add support for the PCIe hosts on Qualcomm SM8350 platform.
> 
> Note: the PCIe0 table is based on the lahaina-v2.1.dtsi file, so it
> might work incorrectly on earlier SoC revisions.

Applied 2, 4-6 to phy/next

Thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
