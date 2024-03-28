Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EAE2C54E67
	for <linux-phy@archiver.kernel.org>; Thu, 28 Mar 2024 07:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0/8rh4d9RLcp/GLtSViQhOZCIZt2f4oGUaCsOeLSyc=; b=Nyx39dn+9M113o
	qH/ltuoKLJjoECQ3PlbqdstAGaYuaIjiWYuCWtZuJnXpLivPw2FWxxBAArH4ObzExMhrAxJzhJ/Lt
	+O2bw31PTtfQhC2qe9QkEc4kfk78V6TYt0vDdNUL3VS9P5kR8eqKljUvWfoAfokVB30RWwtkOQ7gk
	fnvdissYjETSa4ZhQIIJbeR/jCZE/m6P+ann8l6QyL1eVwH+fIsNwr41beBhlNa+RPXeyDk0bPZb1
	rrBNCXLPh4Onjh3TGOCsI4sApE6haObOHLSH2GY1AmHU5gIyFAuR8xumkaOI6PW/7XW5AbJ+BYXgw
	gNvBzvIbAEEn9s607dNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpkRh-0000000CviS-3eTW;
	Thu, 28 Mar 2024 07:45:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpkRe-0000000Cvhk-1DEd
	for linux-phy@lists.infradead.org;
	Thu, 28 Mar 2024 07:45:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C3FED61752;
	Thu, 28 Mar 2024 07:45:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83784C433F1;
	Thu, 28 Mar 2024 07:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711611905;
	bh=ZnhEYw2AdYvi+WfQmQahcGAp9NAli8bS0MnlSGLMs48=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f5XD/tZymcUjrdTz1E/O4GBETtRsIwUSpbDdnrdDpJF/aCuE1FX9aR2VstvOJOd0+
	 FzcwhWVMNDO2iry0c7MI9KEqG61zTxlwIs3qB6wiND+PKR7u2M5CgzCNmsOJPZA6qx
	 8M77j1e/AUXZZZzlSbv4c60Q3RYNEP5HMM0287nJkdz5SvMxPbezLpiwUPpAWG/ReU
	 U46gb4jqjSJRTr5XWV57k55br5kXwcvhWP+wN/sSp8UeYrJeNu0gk9MgblWUQno9K6
	 Pi9/6dHEZBvxFFwoX3g3j1kgadFTV39y+BYuZZf16aUBdQ++jq3z5qQi+EEMZm5/5V
	 Yw+wEzCNyNKaw==
Date: Thu, 28 Mar 2024 13:15:00 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Danila Tikhonov <danila@jiaxyga.com>, andersson@kernel.org,
	kishon@kernel.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom-qmp-ufs: Add SM8475 support
Message-ID: <ZgUf_I2KBMhenNEv@matsya>
References: <20240327180642.20146-1-danila@jiaxyga.com>
 <20240327180642.20146-3-danila@jiaxyga.com>
 <afcbb668-ab9e-4f97-9014-ecbd5170ab92@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <afcbb668-ab9e-4f97-9014-ecbd5170ab92@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_004506_721935_447B8B30 
X-CRM114-Status: UNSURE (   8.31  )
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

On 27-03-24, 22:38, Konrad Dybcio wrote:
> On 27.03.2024 7:06 PM, Danila Tikhonov wrote:
> > Add the tables and constants for init sequences for UFS QMP phy found in
> > SM8475 SoC.
> > 
> > Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> > ---
> 
> Worth mentioning that SM8475 is a respin of SM8450 on a different
> process node, which probably forced some electrical changes.

should the tables be resued from 8450 instead of 8550 as in this patch?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
