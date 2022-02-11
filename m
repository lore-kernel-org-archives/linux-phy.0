Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48D2CC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 14:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/LoQ6KaGJkMrbWVNR3C9x/NCyvCAT1dcsnSmccpBfE=; b=QoTeoGh7nSEg30
	ku9SJuCzsrHoardq+/x2gLxZNf+u79p33cVEPEWdWt4z/hrTFB/0I6TFnZuvlmjDlAWsoEjSjM4Tn
	k1mgv8mpBHI6xSlwFsMiVSc/sDgggSYPz/x9zIAxmRZOJSTACal5Wv0Xsznha+RuZBEEXxGT6Fq9u
	gODeHhnCxhtYCrUwNuASO6QmyLyzRTxlZftZpFF1kzNaphu+UyYEhbL+gi3h8jTUwQkuHmuT2/Bkv
	DOCb1liv2ZwmAu/GLg02g1l+bjyPUPXWbul43/evW1aksb0p/sMEJzGO+SZGayh98vozsEETSeOYK
	Rc1W4HWeFhtynV0258+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIXIW-007fWp-Ma; Fri, 11 Feb 2022 14:53:20 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIXIP-007fV9-S2
 for linux-phy@lists.infradead.org; Fri, 11 Feb 2022 14:53:19 +0000
Received: by mail-oi1-f175.google.com with SMTP id x193so9863989oix.0
 for <linux-phy@lists.infradead.org>; Fri, 11 Feb 2022 06:53:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MXSBtQnBN/MltHlZWjyxFSa4m/OhJirK2ciuvityBV0=;
 b=jAPf4qu+rFxS8BdIHoySLwGaVc5eZnTeKPr/N3J9tQI8scGciTvoC4x9inac0DKazl
 WmtrmAIty1v+AZKMi4mtWKXd//7kItJRU3XRbAfUns0NFRWKxNv5QJPoNc/HFCJqbppJ
 Wph4gy/81ozNf+vNNkiMeVSGYH5MZKY0995EWJ8OAnmjS4zmLDvlzr73uB/GmqH2sdQo
 CHew4eMYPwykqTd3u92q1qgskKUZHcwtwDUN76gPISeThxT2yvp8T11krqZuLDTJPjR6
 aSbVESXUP4+X1SYoKsubDP7IRQ1/jve210QV4tmsM/vUjV5szMijfJ4O7ypEhrM72bvC
 NYUQ==
X-Gm-Message-State: AOAM5325JFxbcQs2pCPC9eOpX2ZwJpTOgo6nIHYXn3a3CzydLl1BoPNg
 vgcgwtxF5ln4r9YnPrX8Eg==
X-Google-Smtp-Source: ABdhPJz1k5x6aAWyvzzS0MO090qB15MM3j2XrAzBRkeay25jdU3x9tuCOOapTuOKXtAdUZ9gNkkKaw==
X-Received: by 2002:a05:6808:d4f:: with SMTP id
 w15mr354135oik.42.1644591192688; 
 Fri, 11 Feb 2022 06:53:12 -0800 (PST)
Received: from robh.at.kernel.org ([2607:fb90:20d7:a802:e6b0:6d9c:32f7:4bd9])
 by smtp.gmail.com with ESMTPSA id
 q16sm1728012oiv.16.2022.02.11.06.53.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Feb 2022 06:53:11 -0800 (PST)
Received: (nullmailer pid 349516 invoked by uid 1000);
 Fri, 11 Feb 2022 14:53:09 -0000
Date: Fri, 11 Feb 2022 08:53:09 -0600
From: Rob Herring <robh@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: robh+dt@kernel.org, kishon@ti.com, mperttunen@nvidia.com, kw@linux.com,
 linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, kthota@nvidia.com, sagar.tv@gmail.com,
 vkoul@kernel.org, devicetree@vger.kernel.org, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, mmaddireddy@nvidia.com,
 krzysztof.kozlowski@canonical.com, p.zabel@pengutronix.de,
 thierry.reding@gmail.com, linux-phy@lists.infradead.org, jonathanh@nvidia.com
Subject: Re: [PATCH V1 03/10] dt-bindings: memory: Add Tegra234 PCIe memory
Message-ID: <YgZ4VaQuCSAPA3dr@robh.at.kernel.org>
References: <20220205162144.30240-1-vidyas@nvidia.com>
 <20220205162144.30240-4-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220205162144.30240-4-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_065313_935797_4BA8E300 
X-CRM114-Status: UNSURE (   8.45  )
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

On Sat, 05 Feb 2022 21:51:37 +0530, Vidya Sagar wrote:
> Add the memory client and stream ID definitions for the PCIe hardware
> found on Tegra234 SoCs.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  include/dt-bindings/memory/tegra234-mc.h | 64 ++++++++++++++++++++++++
>  1 file changed, 64 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
