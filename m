Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FAD8C636CC
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 17:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omRJc8TJ3z/ShRIo0Jh37SAss6HxqVcZv8kBAu2FpRQ=; b=f+lk+uuafZ6gWl
	Z+lcHrg9FDHSJkzMwTaQbZesoysZhcSfbord2vLKAEUUAe57bH3pJUtYFOsQAcrkDxpCVN4vkuwdN
	bmKiUoR0bkJ0m+nXZNmHz4hw4XaHua3BpI5NG5z9Z+6rvqDGw5K7gWc+hFr8PKYxVpVy5xqlNulrD
	3j2izYetWF3MF0Ls5nbeQLRCHEAYsObE2Zky9WfTU65m+VMPpnJzHWcM00MendAX1ohEE4dX4E6yu
	DH5sb7UrITq1eJXJpV3gv0frjMJGvpwzR4dOpYrm1HgKggHolBU713+RIw47tlaqkpadORFwM3kMx
	JJRYhtLyb7me6J5xBQmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPnxj-00GPWg-BZ; Wed, 08 Feb 2023 17:10:27 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPnxh-00GPV5-3L
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 17:10:26 +0000
Received: by mail-wm1-x331.google.com with SMTP id r18so247561wmq.5
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 09:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1D1Ag8MO1IvClr0BjaK5b1WugeUzwnrmVL7oJc6jsA0=;
        b=kAtPIUPgvdziEt7VHoHQ1gs5hP9ESwAb2Hxtv6fJkt7tFShzFKwjfqhkb2X4V3B577
         2QI2hFhGQEV1nGRFXTP4Yt07NwG/1EKzhkqjMTrSEeamPXgcQHtWK+EZAkyuzj9XMpBP
         MhLGa4189VrfJ0t5IT2bS/xsRrGIY+L7JVb3Jp/XO42w4GR0fXdkYUNTJo1/NULt60lQ
         ZGtI5q9bP3kb0gN5asQ6eu48kqyJx7hiIpqu7THOvH+Wzxv+oYtWxOlEeuQz5oe5qFwN
         i1ozjNDwbz9ClcF1JzE8X1amK2uA9c3jF3oy+KogQl8cX6YLFLQealxhPf607nklWEuk
         M6Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1D1Ag8MO1IvClr0BjaK5b1WugeUzwnrmVL7oJc6jsA0=;
        b=G5O3jIeXwKcmsHaXIy8UQY7z2kjcScS/9CTfYIaLnNYp1RHssg0sJwLI41ZkTcoYLT
         kWj2j0Yfeb+5tHd8x8aSOWHmEXYooSaWWv/TKgRPUXWzfl4EszR0D+7pCLqHl3/cIh38
         SebMJhJeiZvhRJTanEWGN6VaP0+tKN9YMQUFwbVLh5ltVhBjKm+LN7qgfutaoQP2FdIT
         tJWzklH0zHyHzB343m2h5gXs+vuxaOibiJ3nOa4rzTdm0O3pkLK3hrHrtEZzny2HkxdK
         eMZlCF9T7yYAft9uhuy4aOBVlssY6wfz44tRkTu84f8Wuv/jLxZ6kzPOs3BePQUGmCue
         HvIw==
X-Gm-Message-State: AO0yUKVh5dtikKVfIMYGcR/GozVXoGBCAe46DHp9GehW2Skd6vRz6R85
	2APHMP79ECISvS9TSe38ofr9aQ==
X-Google-Smtp-Source: AK7set8NZX4/q32/lsqz333FW7EvHSm0qAXd5rLJzsc55ZB27URLnTqIFBn7EamftvRWCRxoP/rpxg==
X-Received: by 2002:a05:600c:992:b0:3df:ed95:d757 with SMTP id w18-20020a05600c099200b003dfed95d757mr7302974wmp.34.1675876220467;
        Wed, 08 Feb 2023 09:10:20 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id a3-20020a05600c224300b003db01178b62sm2499300wmm.40.2023.02.08.09.10.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 09:10:19 -0800 (PST)
Date: Wed, 8 Feb 2023 19:10:17 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v7 10/12] PCI: qcom: Add SM8550 PCIe support
Message-ID: <Y+PXeYrBBL3QaznM@linaro.org>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
 <20230203081807.2248625-11-abel.vesa@linaro.org>
 <Y9zYpE/GnxUqnIyq@hovoldconsulting.com>
 <Y+EYhe/xYSFpI1Yn@linaro.org>
 <Y+PQYxh4t/ytOe3+@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y+PQYxh4t/ytOe3+@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_091025_161424_703F2339 
X-CRM114-Status: GOOD (  28.58  )
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

On 23-02-08 17:40:03, Johan Hovold wrote:
> On Mon, Feb 06, 2023 at 05:11:01PM +0200, Abel Vesa wrote:
> > On 23-02-03 10:49:24, Johan Hovold wrote:
> > > On Fri, Feb 03, 2023 at 10:18:05AM +0200, Abel Vesa wrote:
> > > > Add compatible for both PCIe found on SM8550.
> > > > Also add the cnoc_pcie_sf_axi clock needed by the SM8550.
> > > 
> > > nit: You're now also adding 'noc_aggr'
> > > 
> > > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > > Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > > > Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
> > > > ---
> 
> > > > @@ -182,10 +182,10 @@ struct qcom_pcie_resources_2_3_3 {
> > > >  
> > > >  /* 6 clocks typically, 7 for sm8250 */
> > > >  struct qcom_pcie_resources_2_7_0 {
> > > > -	struct clk_bulk_data clks[12];
> > > > +	struct clk_bulk_data clks[14];
> > > >  	int num_clks;
> > > >  	struct regulator_bulk_data supplies[2];
> > > > -	struct reset_control *pci_reset;
> > > > +	struct reset_control *rst;
> > > 
> > > Please name this one 'reset' or 'resets' (e.g. to avoid hard to parse
> > > things like res->rst below).
> > 
> > Well, it would then be inconsitent with 2_3_3 and 2_9_0, which both use
> > rst.
> 
> Yeah, I saw that. Fortunately these resources are completely
> independent, but whatever.

Will do it in the next version then.

>  
> > > >  };
> > > >  
> > > >  struct qcom_pcie_resources_2_9_0 {
> > > > @@ -1177,9 +1177,9 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
> > > >  	unsigned int idx;
> > > >  	int ret;
> > > >  
> > > > -	res->pci_reset = devm_reset_control_get_exclusive(dev, "pci");
> > > > -	if (IS_ERR(res->pci_reset))
> > > > -		return PTR_ERR(res->pci_reset);
> > > > +	res->rst = devm_reset_control_array_get_exclusive(dev);
> > > > +	if (IS_ERR(res->rst))
> > > > +		return PTR_ERR(res->rst);
> > > 
> > > So the reset array implementation apparently both asserts and deasserts
> > > the resets in the order specified in DT (i.e. does not deassert in
> > > reverse order).
> > > 
> > > Is that ok also for the new "pci" and "link_down" resets?
> > 
> > According to the HPG, yes, this is perfectly fine. It specifically says
> > to assert the pcie reset and then continues saying to assert the
> > link_down reset.
> 
> Ok, but that doesn't really say anything about whether it's ok to
> *deassert* them in the same order, which was what I asked about.

Actually, what I wanted to say is that the HPG says something like this:

"assert pcie reset, then assert link_down"

and then at the end it literaly repeats the same phrase.





> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
