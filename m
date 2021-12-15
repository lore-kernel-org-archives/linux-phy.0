Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1E2FC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 21:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QntCPQoanvou/jLPTnnFi1Gx9pp2Z7uO2wYUXsvZpNU=; b=tiHGSDtb2EwJRw
	jjtmAKXDPbdQKauNC6kzNpWoW+Kh78dHd/Ew1LKb60d+B0FMBPUKkZR3IQtxgviD/fQSi8ofyRUrO
	oDOZVwT+2xqsGhFG3luu2S5ScBkr+R0cZJD0FhMtr+eOykYjmAQDPNIA0LDmGYEIzZhLlejv5n+lP
	yTLVxEG0vcE0tHCZ7asXYk2OnC/YNx/SnGENwOjfcoU9GNYe4+pH4yI7pKu4bClxZ8Pk65n55LMKd
	KNeJ+z9ZhkX4dE4GLQK5B/C77Zi5PfmzNIYFKU/dCvUHejXLknsnxay0XkwXB0t24d2ffOwZGTs6a
	FB4Ejfix7mOxvjgfU9mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxby6-002ogh-9e; Wed, 15 Dec 2021 21:37:46 +0000
Received: from mail-oo1-f46.google.com ([209.85.161.46])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxby4-002ofl-0j
 for linux-phy@lists.infradead.org; Wed, 15 Dec 2021 21:37:45 +0000
Received: by mail-oo1-f46.google.com with SMTP id
 w15-20020a4a354f000000b002d85ef0533dso1642274oog.7
 for <linux-phy@lists.infradead.org>; Wed, 15 Dec 2021 13:37:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7ztWRpd0FY6iKQ7NWAfXJktIdvCg42gZ0zgIm9BLYH8=;
 b=tElZE6PEUZ+ye38Wxmel/verJEJDk/Cj6+pYkSQuPYp6Df3QOpqyaDKSRJAssnr3sr
 T4lpvMR/xFJhTWf1ZEK5l84tENaMd1GZHmR6Fwx6FwOww9qIH2wgYaW+hmHxrfOmEigZ
 qAKFEwZz5u17KXKF09aNFjIWai3+sT1g5d3Wkj5X2adM8pPfrDswhlmqUji2ASrK9DMh
 xpgsfCRIKLCsDHQEQ6obNhLZe1TLgNDmT3ihy7Ntsco7XSYtsPFpmoE2sTXnN9MqYuZj
 N4EkGvBbTZ2WzFDDMejOPxWJc03M6TIO3T2OtRfBRNf9aUehH94IQXrVADoINN2KV+P0
 6Z1g==
X-Gm-Message-State: AOAM533VTEDJeEWSUWrIC1+xbeLg2ZUSjGgnsfto7mhhB4u+nlzgPkNV
 8pv06WD1XFhK/uUqjm149g==
X-Google-Smtp-Source: ABdhPJxpCkrFLmOfCFQlTCLdJXSpNZUQUIngwMEwYrg97vjoo8t+JhDBR7ihep3lXctKWI328MCdqQ==
X-Received: by 2002:a4a:430b:: with SMTP id k11mr4815836ooj.69.1639604263102; 
 Wed, 15 Dec 2021 13:37:43 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id x16sm684193otq.47.2021.12.15.13.37.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 13:37:42 -0800 (PST)
Received: (nullmailer pid 1883612 invoked by uid 1000);
 Wed, 15 Dec 2021 21:37:41 -0000
Date: Wed, 15 Dec 2021 15:37:41 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>, Andy Gross <agross@kernel.org>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v4 02/10] dt-bindings: phy: qcom, qmp: Add SM8450 PCIe PHY
 bindings
Message-ID: <YbpgJdXG/EJRNj49@robh.at.kernel.org>
References: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
 <20211214225846.2043361-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211214225846.2043361-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_133744_083294_4EE43F8E 
X-CRM114-Status: GOOD (  10.52  )
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

On Wed, 15 Dec 2021 01:58:38 +0300, Dmitry Baryshkov wrote:
> There are two different PCIe PHYs on SM8450, one having one lane and
> another with two lanes. Add DT bindings for the first one. Support for
> second PCIe host and PHY will be submitted separately.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
