Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 083DBC54EBE
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jan 2023 20:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0Yn86IPDtQkq21l3tIlIaZRoXFWwcTlLtpLLCKf010=; b=On8H0OQB5wA070
	9HGxKrfbJCAngXF0ghHh4TgS6NBZ6AZZCxl1tlUpAcaB+UP1g337eI/WJnLk5Iq9uCIs/IPrlZVqj
	ITHfMFiIiyRlID1Krf4yyzrx/EnEQIZVcAhGqFX+k+DvRbIpM7PJ062NQvM6uhqix3mFDlD3A5BpN
	D8pmSBTvBAt1T6TtIs7MxBJtqD9p8nYvvo6yE6ldxWQK9PETfno5zZCRYl6uiDeIqUhJvKR6h6Ehx
	bVVIKaSFdHnjj5jWIFhC1YLFSSpVPSpKABZoL7fFBOH6pzkJQYQrnXdaT6sdp/vrZRDmipUXMLiRN
	VkqvYyTXIvb2X3eod5vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHWD8-00C0Yr-F6; Mon, 16 Jan 2023 20:36:06 +0000
Received: from relay04.th.seeweb.it ([5.144.164.165])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHWD4-00C0WK-G6
	for linux-phy@lists.infradead.org; Mon, 16 Jan 2023 20:36:04 +0000
Received: from SoMainline.org (94-211-6-86.cable.dynamic.v4.ziggo.nl [94.211.6.86])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r1.th.seeweb.it (Postfix) with ESMTPSA id 0C3B11F5E0;
	Mon, 16 Jan 2023 21:35:50 +0100 (CET)
Date: Mon, 16 Jan 2023 21:35:49 +0100
From: Marijn Suijten <marijn.suijten@somainline.org>
To: Vinod Koul <vkoul@kernel.org>
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
Message-ID: <20230116203549.5jzd2olxua662n6w@SoMainline.org>
Mail-Followup-To: Marijn Suijten <marijn.suijten@somainline.org>,
	Vinod Koul <vkoul@kernel.org>, phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
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
References: <20221214223733.648167-1-marijn.suijten@somainline.org>
 <Y8GY51Cfkj7o1MJs@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y8GY51Cfkj7o1MJs@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_123602_730468_48BD2A0A 
X-CRM114-Status: GOOD (  18.75  )
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

On 2023-01-13 23:16:15, Vinod Koul wrote:
> On 14-12-22, 23:37, Marijn Suijten wrote:
> > This reverts commit 557a28811c7e0286d3816842032db5eb7bb5f156.
> > 
> > This commit introduced an init sequence from downstream DT [1] in the
> > driver.  As mentioned by the comment above the HSPHY_INIT_CFG macro for
> > this sequence:
> > 
> >     /*
> >      * The macro is used to define an initialization sequence.  Each tuple
> >      * is meant to program 'value' into phy register at 'offset' with 'delay'
> >      * in us followed.
> >      */
> > 
> > Instead of corresponding to offsets into the phy register, the sequence
> > read by the downstream driver [2] is passed into ulpi_write [3] which
> > crafts the address-value pair into a new value and writes it into the
> > same register at USB_ULPI_VIEWPORT [4].  In other words, this init
> > sequence is programmed into the hardware in a totally different way than
> > downstream and is unlikely to achieve the desired result, if the hsphy
> > is working at all.
> > 
> > An alternative method needs to be found to write these init values at
> > the desired location.  Fortunately mdm9607 did not land upstream yet [5]
> > and should have its compatible revised to use the generic one, instead
> > of a compatible that writes wrong data to the wrong registers.
> 
> Applied after adding missing subsystem tag, thanks

Thanks, it wasn't clear to me whether to suffix the title when already
included in the Revert: "phy: qualcomm: ..." title :)

- Marijn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
