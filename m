Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9FEDC54E41
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 14:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7EbuyFvwiT+UHjnGMqaiAo3onoMb0WXoKc8OV0p1lc=; b=p1x4aIrK1mL66X
	QahMd90k06cRikCv/g4m64ec9gvtD5fHa5l+oaOcsjyAJqV8z8ShG5eDNM3qxmW3fO0ep/1gKmko+
	s8sSV+0jL1nEPaSrlb1mFa2L73uwfqFCW0q6Ds7riYEQ9bB1XxXK+LrwNTxuFV6VgSWhMKy1mWMQd
	bpQTFADsBzrnP2uRDVQtLs0KHShwOzpwRzkITGjapudmuThqA5nMvKpX6caNv6ROJAfy9PrRD92yX
	7X4gQcSsyqHsR5jVrT6oYgGtwRd4JHK2EKiAm0hGE3D7Qqsf3HK4wBODAsa5cLhgG3xWtrEZ+fZ/W
	KGY2+ovk5VUowXejnpCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWFt-0000000EAjE-2G6M;
	Tue, 05 Mar 2024 14:58:57 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWFq-0000000EAiK-3OYl
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 14:58:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EA50DCE1C51;
	Tue,  5 Mar 2024 14:58:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51FBBC43394;
	Tue,  5 Mar 2024 14:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709650732;
	bh=J04pRpfBn/6vgApXzTjxcOt28fu5ycMkjiryDRSouFQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qnl2KG4HWtYmUl6RC1v+6GncfSZCWD3x6+yA9haciL4fuO9OQqLIV5knq3SuWQ1e4
	 ughBIbako6VNi3nzSu/qgFc+Ei8VsJJcyauRNcTBDHmUU+rnvasNNyv0xww8vUYCrz
	 7GtjbZfr9rm1MRfbo3JiW0A9Vm+CJaHoKswvBlB2QuqN0E48aHJoUK2fQNj1Hd+N9h
	 N6eiZlnUo/4ZhFX1WCTt/q325jfWv2fTbq6V3EfpuPRQiysMMs2FkM65IIYAMjkCQh
	 FILW3VSWrLHIcfatr/NvaPVdllKKkjyT2xlDqfm0PjS1lO2LpaN/g/RgN6SkqBDu7I
	 JcEBwnklyQMAg==
Date: Tue, 5 Mar 2024 08:58:50 -0600
From: Rob Herring <robh@kernel.org>
To: Yang Xiwen <forbidden405@outlook.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	David Yang <mmyangfl@gmail.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jiancheng Xue <xuejiancheng@hisilicon.com>,
	Shawn Guo <shawn.guo@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v4 4/5] dt-bindings: phy: hisi-inno-usb2: add compatible
 of hisilicon,hi3798mv200-usb2-phy
Message-ID: <170965072885.3344208.7195492638472513221.robh@kernel.org>
References: <20240305-inno-phy-v4-0-a03204c9cf1c@outlook.com>
 <20240305-inno-phy-v4-4-a03204c9cf1c@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240305-inno-phy-v4-4-a03204c9cf1c@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_065855_049627_CF27412B 
X-CRM114-Status: UNSURE (   8.39  )
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


On Tue, 05 Mar 2024 10:19:49 +0800, Yang Xiwen wrote:
> Hi3798MV200 INNO USB2 PHY is attached directly to system bus. Add
> compatible "hisilicon,hi3798mv200-usb2-phy" for it. The ports of
> Hi3798MV200 INNO PHY has its own address space, so
> 
> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> ---
>  .../bindings/phy/hisilicon,inno-usb2-phy.yaml      | 31 ++++++++++++++++++++--
>  1 file changed, 29 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
