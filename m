Return-Path: <SRS0=mSol=KJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4D52C433B4
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 11:44:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 98B656145B
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 11:44:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 98B656145B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TxHXayKa9Ke1BzyJPbleHTwDHgdc+LofAA5S+D4yJEY=; b=FGn+W+VBHm01ZYug1eu77Jenk
	uKkR13+ZVX5Oyjvk9WrZbojerEDWhbQL7JsB23voogp9DGpPrj8k7Ib8EtiBJG362ZX8V+hVOP6c1
	ctHP+V4ggu9RMGcmZyUlWSTcrACEpuBjFG5kw8l9Vv/9KqwfqnU3Fftz0JTl8EkzSZuXDwcQCn62D
	Q5+lr0GHYUQa+gFXb9gwlR1cGhFLU8wWSnCcArUS79hzPq9mNCDTLJllizy8SS3u6khFMnIVbhcXC
	xGYOLlti6YY7SGa0yHcVtftJysS3vVE2cQzO3h8sTUcz1qtLZpZfPOVEUCns5gZKfwX9RXICMBRdk
	EsZh0ByDg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhWF9-007x6i-4Q; Fri, 14 May 2021 11:44:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWEe-007x0L-IN; Fri, 14 May 2021 11:44:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=2JsM+efkeBz+eB3w7sQZv9LXyZukGA4NzuWtZI9vhJ4=; b=jxV2sybxByH6tbJde4jXrTT6/v
 YxGVCpouCnarWUfkAPpiGmhu1nzBI+Q8KFZpNxK6rYY8XspolVzbtf0W+QRWkGTx+wGhEPshDccO0
 gjRDWM24aW7Ogry6FlO9WNGUJzBu4hlkeSTwPtlN1TyxaiyT8Y6TGzOOkn3Nj4x5Z6ZcVtwSV3wdt
 34tAVVpnBV6OzqJcMpIY5Z3vshSOLnYLQQQZkzzskWW0qnRl/H4DXv0uvJFlikrOwPFOpq9k9q3Fe
 nK4QqCDRrD/82sTnpxPSB/OigD8Ofg9C+XJXtLFC3tkIXIK3uu8unMijMLdZzD614m1AYM9shaMsb
 OgLmwlkg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWEc-00BwiQ-7s; Fri, 14 May 2021 11:44:03 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id CC1FC6145A;
 Fri, 14 May 2021 11:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620992641;
 bh=bqDabLQz7zSI4wyPaor5mwgm9M0kgOlikayGU/L67Y8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XPVBS1D/Ye5CbTqCebil9ND2oS4IIbTkJVk0xKJF6pHdzk0w2HLbcQIdiUwaHaAmd
 SiP+Qif7iQmgsf1XJijkmhwncnI9b7rfNWfrVcYOslWTWyahEkynbgSnlMIopBtN4E
 ayU61F79nMMDM2KVYZyiNbGeqaxSrz0tB690paWoqkGLge1Q63SXAADSfC4ENvUIxq
 MDpbNMZLgP7n2JXaooGuWvEWOR1N6sLo3a4UtxSx+X2tkoBJ0c7iEteghsLG7DeOgK
 3cd1CBWmX/mu9vvSTEkMsBVE/KRYoZI5h+pvZ01IwDAytJGba2H+Qs+4h9+T216jqb
 jtbxjd+gzDFIg==
Date: Fri, 14 May 2021 17:13:57 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Baruch Siach <baruch@tkos.co.il>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh@kernel.org>,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Robert Marko <robert.marko@sartura.hr>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org
Subject: Re: [PATCH v2 6/6] dt-bindings: pci: qcom: Document PCIe bindings
 for IPQ6018 SoC
Message-ID: <YJ5ifaRnHO4k2dgw@vkoul-mobl.Dlink>
References: <cover.1620203062.git.baruch@tkos.co.il>
 <fd732635f4ad64263e361ce98af2944bfbd513ef.1620203062.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fd732635f4ad64263e361ce98af2944bfbd513ef.1620203062.git.baruch@tkos.co.il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_044402_330431_1D1C4A47 
X-CRM114-Status: UNSURE (   5.29  )
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

On 05-05-21, 12:18, Baruch Siach wrote:
> Document qcom,pcie-ipq6018. This is similar to the ipq8074 with a few
> different clock sources, and one additional reset.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
