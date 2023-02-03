Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2780C636CC
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 08:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pp8Jejfq5bpxidZ35mPEv80Uvugv3Ug2TTiH19IHr9M=; b=P/Ryls2QKgfVfG
	xtJ9xCVzv0jkceExjK/MXYdVBQs9FjRpg/LN1LpS0G+sv10cmUtP4SI7f24UcTE8adazY1stIM9On
	xTw/bdIlmyKmLfu700GEXZfRkNOg9dcQ6P+EEQOYAm1E6V+RVegOuivKZgkCTWVdnxSu90ZVFP9lW
	uxIoP168arJAxIkbOFD/j8NP5/1ucLM+cJZQcYJlc3qM/98hWPT9SUOox3OgUMpEdcU7WxaIOFgM5
	gQ4JDIWSZxvd2cfMSQkvF7/YJYfp8X6hq0OKWdn3BS7koBuxcAMqNQOum+vGOF6eAT5VPS1fzqdCs
	x+z+b8IsGftXT2qAi/xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrVq-0012JW-C5; Fri, 03 Feb 2023 08:33:38 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrVj-0012Ht-Qy
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 08:33:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7F5FDB8265F;
	Fri,  3 Feb 2023 08:33:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BF16C433D2;
	Fri,  3 Feb 2023 08:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675413209;
	bh=+VPKqsJINWpqhN9b2OMw3VJoQ9MwRfIi4j/4aQvFnzk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kIgQXYSysBb4I2DkYduSl5ZE1hGVWh4KKAAtAmcdnjTpG/y8oa0siG3RXjx3Sa2Ru
	 oB4RjL9DV8nn2DUsBCqicigAj5gGwfsOXhNGuwln0HEMr8u7SDo7GSHRbKJ21SrP3Z
	 rlJnnMYlpZovuaA6Pbu5ixfZTEr4C0hTdJLL4ZMxNUpLpAXD7OB9ptXDFCndc6Mc9A
	 ZfB5mFNVyfNJypx9hZybt84t5h0E4xxVb+bLp98qpW7SgOYwS+635QGmt6eKWtrE8X
	 mFScHpSgLsR8Cig9T62uUfTjFsiOH3kVjjyMV6A0100GUdvc1NZ6tmO3hc7dpcdTie
	 fqVEm9TR1hZRg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pNrW6-0000Gs-Dx; Fri, 03 Feb 2023 09:33:55 +0100
Date: Fri, 3 Feb 2023 09:33:54 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
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
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v7 01/12] dt-bindings: phy: Add QMP PCIe PHY comptible
 for SM8550
Message-ID: <Y9zG8qQbC1lmANRM@hovoldconsulting.com>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
 <20230203081807.2248625-2-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230203081807.2248625-2-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_003332_028654_51A79476 
X-CRM114-Status: UNSURE (   8.82  )
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

On Fri, Feb 03, 2023 at 10:17:56AM +0200, Abel Vesa wrote:
> Document the QMP PCIe PHY compatible for SM8550.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Looks good to me now:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
