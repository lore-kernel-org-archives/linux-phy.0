Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DD3FC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jun 2022 08:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HkXU0eUkiUOWeN89kVU4v/4dCzh2z0PVa3NQgsTkGnU=; b=gE45BaO9vX5KAI
	ukQBEyI5JvlUqMYNlR07sa1MTkVUzZU2qUwNRhJN9c+CGXHYPBOuRHVQKfs2/2WS8Cqy8fiwniHPu
	BgIwy5TU9IXGXqP2vDzBT2nSMUZgNXLTY11j+HoumoN/WrG7VdcTP9SCnPm/sPB7bPPmfoZ0swlE+
	Z83d1tOEdohkvZzEisI88N/8jRu/Akhcs2lsrmuATU6XIotk3MNqO+oa3OCTdLbptlsyWR6ojsEGX
	ZGcpu/l40tdKUkLp+PaT/SoTmfhfsJiJOQtRuodrNJbFscss6N0rALCHcXCfeEuFIWv8DtgYGfPL6
	Zr0tsH8W+lV9P4jpxIQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Csf-00Gv2o-KK; Mon, 20 Jun 2022 08:35:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Csc-00Gv2C-VO
	for linux-phy@lists.infradead.org; Mon, 20 Jun 2022 08:35:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AC24B6130A;
	Mon, 20 Jun 2022 08:35:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63960C341C4;
	Mon, 20 Jun 2022 08:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655714129;
	bh=13hg9vAkkqd9KUoEdzPHfQiVrLh+Dwj/Z4m2brBRv/E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Wt+Hw/L1fCzUcxbpNqWYqN7YvWq3lC2gopJ/YTr0pvKv5ePS0hf6ox+9pLrR9aITY
	 C1vqDTMKGnMOtLPSjMrCQrjgcghuqnfKSTuO0QqRky7mwXK+5WC+1ddnQB8TveAXQD
	 P6MR/B5fVAYSr0e4bmc9p0kLYd1BE6ulJAeMed/fj5stiNuQhqNCO5IO4FdFH61+4v
	 izmuPnWbF1E0mhqvCA5ziag9h2ALMkYp+RmQuZvCTBdS4VvPz1wt6sgQYiLLr8a92p
	 ZPybJjNFOUxq1s6JLDLCnAkQzH+ORNu9izrifoBC70Do0114sBeMuhrs6Ad5thN1Tb
	 NKot9bhO4uzRQ==
Message-ID: <e3411d6c-ec64-f20e-4c58-13245fe255b5@kernel.org>
Date: Mon, 20 Jun 2022 10:35:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 3/5] PCI: axis: Add ARTPEC-8 PCIe controller driver
Content-Language: en-US
To: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>
Cc: Moon-Ki Jun <moonki.jun@samsung.com>,
 Sang Min Kim <hypmean.kim@samsung.com>, Dongjin Yang
 <dj76.yang@samsung.com>, Yeeun Kim <yeeun119.kim@samsung.com>
References: <20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
 <CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p3>
 <20220614013042epcms2p36f88b7eb7f879fefb2f3fbd4548ad705@epcms2p3>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220614013042epcms2p36f88b7eb7f879fefb2f3fbd4548ad705@epcms2p3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_013531_090784_E5F7207D 
X-CRM114-Status: UNSURE (   7.63  )
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

On 14/06/2022 03:30, Wangseok Lee wrote:
> Add support Axis, ARTPEC-8 SoC.
> ARTPEC-8 is the SoC platform of Axis Communications.
> 

(...)

> +
> +enum artpec8_pcie_isolation {
> +	PCIE_CLEAR_ISOLATION = 0,
> +	PCIE_SET_ISOLATION = 1
> +};
> +
> +enum artpec8_pcie_reg_bit {
> +	PCIE_REG_BIT_LOW = 0,
> +	PCIE_REG_BIT_HIGH = 1
> +};

Remove this enum. This is redefinition of true/false or 1/0.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
