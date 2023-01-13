Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C409DC54EBD
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 17:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dxa8Bas0tH7Ahh90tIF1Sddbq4jHGcIGlmXGtS+8204=; b=z9u6Ux75JdMjIM
	9wCD8ZAzokTWrK8IdCtlpYAGhGJamYCdMJrNj7fwhwA49QsNIXS0y4BeNi4QvBYx9H//HIyg9K6ZX
	+X5vxUN7Eu9SEsmcWuqRxgmsaA9DjXxqiM7nCjTYfdJmoarW89BpqgRrRwP7nqS/o+NNe/lYZZO71
	NVjM/op4qjXWhfO3g8wcM/jaADVMySbg4oGY4C6CHc59y0nirvBTX6QnJfmc+RX3egPCxIIiYz5DN
	kCb2guUfVjylPiW6vrEE03n5aXFgi1cS/rVK14YDREG+oFAja7JDP5HY70cCVm4W3fl9Dwv57v+Me
	9gZ4cwfjRVIfChCvt4lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGO8n-003tCT-4Z; Fri, 13 Jan 2023 17:46:57 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGO8l-003tBH-9H
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 17:46:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D9E6BB8206B;
	Fri, 13 Jan 2023 17:46:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9445DC433F0;
	Fri, 13 Jan 2023 17:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673632012;
	bh=pFf9JzNDw/gaL2e3i3Xnx474o61Ef0Q3FesKXT12MKI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rXG37IuzqXeblx0Q4yCL2l6kUzV0wWRZNSp0Dzt+svPoJUb1FbU28nY6kt/sG8Kql
	 Z4cR+JAjJxGM/fKWAXuRn2SDQWR9ZdZGQMCxM1lpXJTXvsFAqSObzojq2dSPM3yp1G
	 +A0D/CsyjQqGpPB7V/vN+VlILDJR6dScdYSd37HZ8rlhayVWgX4/AnrWjy/io0hxFu
	 5Cb32uzgJw0555wayt4RkW76EuRS4MjxE7Yc+OqwRjP0SjHZGdjBH22OI+/rqmyHbK
	 jh5jRCaiURL1LOWAOQbMtTzvR66Lm1sL9PWprcSmLCabDs5jq1JrJbTiYURfYSMH8G
	 n6kwJ6skDpcxg==
Date: Fri, 13 Jan 2023 23:16:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marijn Suijten <marijn.suijten@somainline.org>
Cc: phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Martin Botka <martin.botka@somainline.org>,
	Jami Kettunen <jami.kettunen@somainline.org>,
	Michael Srba <Michael.Srba@seznam.cz>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Revert "phy: qualcomm: usb28nm: Add MDM9607 init
 sequence"
Message-ID: <Y8GY51Cfkj7o1MJs@matsya>
References: <20221214223733.648167-1-marijn.suijten@somainline.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221214223733.648167-1-marijn.suijten@somainline.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_094655_506057_5CFF8223 
X-CRM114-Status: GOOD (  17.55  )
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

On 14-12-22, 23:37, Marijn Suijten wrote:
> This reverts commit 557a28811c7e0286d3816842032db5eb7bb5f156.
> 
> This commit introduced an init sequence from downstream DT [1] in the
> driver.  As mentioned by the comment above the HSPHY_INIT_CFG macro for
> this sequence:
> 
>     /*
>      * The macro is used to define an initialization sequence.  Each tuple
>      * is meant to program 'value' into phy register at 'offset' with 'delay'
>      * in us followed.
>      */
> 
> Instead of corresponding to offsets into the phy register, the sequence
> read by the downstream driver [2] is passed into ulpi_write [3] which
> crafts the address-value pair into a new value and writes it into the
> same register at USB_ULPI_VIEWPORT [4].  In other words, this init
> sequence is programmed into the hardware in a totally different way than
> downstream and is unlikely to achieve the desired result, if the hsphy
> is working at all.
> 
> An alternative method needs to be found to write these init values at
> the desired location.  Fortunately mdm9607 did not land upstream yet [5]
> and should have its compatible revised to use the generic one, instead
> of a compatible that writes wrong data to the wrong registers.

Applied after adding missing subsystem tag, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
