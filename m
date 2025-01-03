Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E271FE7718F
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jan 2025 07:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+oTHMlyutOTU9JGVrIxw4pPg9UTVTx5XU7qe5bYRuM=; b=ilP519o7Hi1oMa
	LkyDUE26cOhVFP9sD2wETpXpbUlNOFNDIMHT/3M1s8/DcbVZW7B6eRNwCkr7CWjvt19vePMxBVL2U
	VclTL5AUrfGa3+fClSsQAmt38lU5RVQLu+cVEQSsCWegIC030ZamhI5LpLlZZLKev1tsaRZQ3nAVp
	2U97FdQapvo8t9zVWs5QPOSJzO3+IscMl4AiaMmjsuwWS+umzLyj6U4g/cIS1VTfSSG5TTiJoZc1Y
	s+egqUUvo4Cwl+Y+T3H4y8Iky+DuH4Bib034Qsv8s4zAmoVk7/9T5OTlpb716YBnGUe7vSDNfwLkp
	yDwOUlM+rWGt2685pefg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTcLT-0000000CO91-2tUW;
	Fri, 03 Jan 2025 07:43:47 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTcLR-0000000CO8D-3OvP
	for linux-phy@lists.infradead.org;
	Fri, 03 Jan 2025 07:43:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C7101A40488;
	Fri,  3 Jan 2025 07:41:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3772C4CED7;
	Fri,  3 Jan 2025 07:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735890224;
	bh=drUm7P/DhAgF+LsK4/DWKOGNqV4CmWIaVrKLfxX+l7A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d2g66Eeetvnk2e/qCHKSJXhjmsdGGPd5pUXy7z8dZUTsTiOP83/PT/xk5yWygBB5o
	 X9GssNApZFT5vQtDWeXEzaCcn8oTWxcmuVdOymiPV69PQLUCDK4GcEFec2XpJheamJ
	 XGz0KFc9usjXp9/STVweLwGVdKpKXFKKv8Omt2y3rPLeCdY2CynoM/i22G1N1fCyxy
	 q7VBup+SIt3LV73pJnWR/PhypanR9SkOQpVdYUULKUgK2WnDTOLBKD6p8bQlabH10R
	 nn6cAqcwX8APl3zZkHsTM8wHKo36eRB16BmY96MFbW/k8X5abdIvxM6e7GSNJ8ucQP
	 DvN8A55KKC9PQ==
Date: Fri, 3 Jan 2025 08:43:41 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>, bhelgaas@google.com, 
	lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	andersson@kernel.org, konradybcio@kernel.org, p.zabel@pengutronix.de, 
	quic_nsekar@quicinc.com, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 2/5] phy: qcom: Introduce PCIe UNIPHY 28LP driver
Message-ID: <twxesiftakrmxh2k433ws5sb6mdaj7po7m5b2aca4rvprt2ot4@rghove4l6ldn>
References: <20250102113019.1347068-1-quic_varada@quicinc.com>
 <20250102113019.1347068-3-quic_varada@quicinc.com>
 <nudzgkfufp74eyq3vwuf7f47u6u7xy5cpqw2ktb5vdnpwc7uyv@ar7akuo5q6gp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <nudzgkfufp74eyq3vwuf7f47u6u7xy5cpqw2ktb5vdnpwc7uyv@ar7akuo5q6gp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250102_234345_910897_8929F3ED 
X-CRM114-Status: UNSURE (   7.01  )
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

On Fri, Jan 03, 2025 at 07:48:10AM +0200, Dmitry Baryshkov wrote:
> > +	platform_set_drvdata(pdev, phy);
> > +	phy->dev = &pdev->dev;
> > +
> > +	phy->data = of_device_get_match_data(dev);
> > +	if (!phy->data)
> > +		return -EINVAL;
> > +
> > +	ret = of_property_read_u32(of_node_get(dev->of_node), "num-lanes",
> 
> Who will put the reference count which you have just got?

More important: why introducing own pattern of code...

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
