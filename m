Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8908C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 21 Dec 2021 23:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73uxC/qXE5IrMcYuzZxb9Y886KXgRl0eMJjPpLJF+9w=; b=xObQZgNOYoJbxH
	jvOBRY4e7bt8laztQuNIS/pcEqoSCWlt24zskJZI1wdy10otxtrHTdj4YxfjX/rV2ykMEDcok5+fb
	MnkfdBIfuXizmNF0JQszQxN47/j0YZRZM/T/dxoS4CIJ1VUoZiP9CsQiLo6W96hlH3PidnmBAgxOU
	64Dw++dxxKhj0fjWtUvbZyFAT0nlUS3/HWn2qniGPPOpqQltRPGH15Ky+AKnx18XziOYAFGropKQU
	WFdvxwsXElzTL4cHhIw6Z2Ea/pPAIZkow5KS8fHJKgfusWt4kOpe6/IXf0l0SBt6HB2xd8d36drTo
	Rn2N/m0780LRdpo4EsqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzof8-008jla-7m; Tue, 21 Dec 2021 23:35:18 +0000
Received: from mail-qk1-f175.google.com ([209.85.222.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzof6-008jkZ-9L
 for linux-phy@lists.infradead.org; Tue, 21 Dec 2021 23:35:17 +0000
Received: by mail-qk1-f175.google.com with SMTP id d21so663559qkl.3
 for <linux-phy@lists.infradead.org>; Tue, 21 Dec 2021 15:35:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qyanZg8s5W+8gtKaR/fQ6jVlMg3RFbNcdfj1FBUpzJQ=;
 b=7Y0FWoTTzIbcNB83dQjQFYHPyu1RiSoz/H+WqqYNUSj5YkbhRLwmGsQr98ntwhSPw0
 w3H5xxkV1nuivxL9ZEnsq4N+L8MwtFWeLTGfYS5HPZz2rZxG95K1yI+9xb4/Lfb1UkFJ
 LpI036FcL2ZL3dCQOHpcna082ym4wfXmNjBhxFKie6XblO6MmmLjurIE/4lrZPelQARY
 UlnUwmvaWwQcDeWVSZ9ULqH6dS7dJ88MrtCF3aZMtqo9eGzIMhA+ls9Ezq+8jGvjF7es
 7LQc3gF2YAdQ/OmlRoSiOB50nnDG5USsl1aFjNmJgm3l6ZNHyCAPoqXzWab+H262pkft
 xzlA==
X-Gm-Message-State: AOAM5330pGdK0BuPeEyIDvB+s1cPQzE0yLg9muIQ6eEWQcbKsa7r0V+M
 HtZK5sFqhIpiG6BBU9agPQ==
X-Google-Smtp-Source: ABdhPJyTptN0ibMFOYgCQ8c+Nvty9jYcqWQQe8SaV4rLqX5MHk6Wc/d9/bxsLWY/7Ky6+nkDa/9Yqw==
X-Received: by 2002:a37:34c:: with SMTP id 73mr507439qkd.726.1640129714870;
 Tue, 21 Dec 2021 15:35:14 -0800 (PST)
Received: from robh.at.kernel.org ([24.55.105.145])
 by smtp.gmail.com with ESMTPSA id c22sm312771qtd.76.2021.12.21.15.35.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Dec 2021 15:35:14 -0800 (PST)
Received: (nullmailer pid 1725609 invoked by uid 1000);
 Tue, 21 Dec 2021 23:35:12 -0000
Date: Tue, 21 Dec 2021 19:35:12 -0400
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 devicetree@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-phy@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-arm-msm@vger.kernel.org,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Andy Gross <agross@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH v5 1/5] dt-bindings: pci: qcom: Document PCIe bindings
 for SM8450
Message-ID: <YcJksCyV11ssaRIF@robh.at.kernel.org>
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
 <20211218141024.500952-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211218141024.500952-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211221_153516_355314_F314FA0C 
X-CRM114-Status: GOOD (  10.05  )
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

On Sat, 18 Dec 2021 17:10:20 +0300, Dmitry Baryshkov wrote:
> Document the PCIe DT bindings for SM8450 SoC. The PCIe IP is similar
> to the one used on SM8250, however unlike SM8250, PCIe0 and PCIe1 use
> different set of clocks, so two compatible entries are required.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../devicetree/bindings/pci/qcom,pcie.txt     | 22 ++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
