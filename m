Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7DC7C6379F
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 05:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CD+PyRKmyBJFsaiBTCUcmt7kQYsnyJOFspKzKBCdVow=; b=mm2FgsFjT+gcp/
	DNc77oKJhSKzBf0FlJOnBj2oU92owy5L1FbFiynyimP+b1l2O5wDvALFx6fPTpu8pOazhVKsDlnS3
	i0CmoFBRa+vW0a/t9X2+ZGbaucIyE6ZPpCOhZVlDuIACt1KcNF6+MKRnPZADoeGW9KrSiobtEG2n7
	WnpQ6Hh3b4SlZibdrDhTszr2RsW6vMu0wx+Yf+srsAEJIsUSbCoycn0U6gs49NARxvbq2oVgQgzGl
	5X1z5v9meCzheFReEZ4ek1MMjidy75r/2bmf+CWyaEHLVqoWR8MnnCw6HOVK9fjqwmYvDnlXjQ84h
	NvZtzeUZdsxhTjNpocrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHedz-00CzT7-31; Tue, 17 Jan 2023 05:36:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHedw-00CzSQ-Eu
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 05:36:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E23286119C;
	Tue, 17 Jan 2023 05:36:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A99BC433F0;
	Tue, 17 Jan 2023 05:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673933777;
	bh=asJm1FEO3RCTI9yXgHpd6dK9DTZntJ1KAbCE9ko3y+Y=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=IcYiayCbWMGTTFIh0EEe0exejTDmWE9l0RjFiqBj98UmqkCalRXE3C4omasKau9Bn
	 jByxdAKp/url4C9UtT8N3buxBDAVUl8pIhA0cyyfCncNXwsME08M3yDSzL6wbMSs2l
	 8Z+CLVvKCSlRGs2954djFxzzG43Tk16nTxCB1S/yrGKJ/Ie8X6pmznF8r+XMw9iXzO
	 Vx6yd0zWBVruK3dFlS1Q0+nXYxeK7C/8IJlgmKyM14LrsXfzEdViJwcMpolYOCKzG8
	 0Cf5w5VIXYfPR7JGSYS01vSKylK5D5BxdQpZ4s8Dy7Ja5leb0RXU17tcz1dXIjH8kp
	 i2jJpYQEnpdZQ==
Date: Tue, 17 Jan 2023 11:06:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marijn Suijten <marijn.suijten@somainline.org>,
	phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
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
Message-ID: <Y8YzzCEqGi3m9fWM@matsya>
References: <20221214223733.648167-1-marijn.suijten@somainline.org>
 <Y8GY51Cfkj7o1MJs@matsya>
 <20230116203549.5jzd2olxua662n6w@SoMainline.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230116203549.5jzd2olxua662n6w@SoMainline.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_213620_881382_FCCDD7FA 
X-CRM114-Status: GOOD (  23.38  )
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

On 16-01-23, 21:35, Marijn Suijten wrote:
> On 2023-01-13 23:16:15, Vinod Koul wrote:
> > On 14-12-22, 23:37, Marijn Suijten wrote:
> > > This reverts commit 557a28811c7e0286d3816842032db5eb7bb5f156.
> > > 
> > > This commit introduced an init sequence from downstream DT [1] in the
> > > driver.  As mentioned by the comment above the HSPHY_INIT_CFG macro for
> > > this sequence:
> > > 
> > >     /*
> > >      * The macro is used to define an initialization sequence.  Each tuple
> > >      * is meant to program 'value' into phy register at 'offset' with 'delay'
> > >      * in us followed.
> > >      */
> > > 
> > > Instead of corresponding to offsets into the phy register, the sequence
> > > read by the downstream driver [2] is passed into ulpi_write [3] which
> > > crafts the address-value pair into a new value and writes it into the
> > > same register at USB_ULPI_VIEWPORT [4].  In other words, this init
> > > sequence is programmed into the hardware in a totally different way than
> > > downstream and is unlikely to achieve the desired result, if the hsphy
> > > is working at all.
> > > 
> > > An alternative method needs to be found to write these init values at
> > > the desired location.  Fortunately mdm9607 did not land upstream yet [5]
> > > and should have its compatible revised to use the generic one, instead
> > > of a compatible that writes wrong data to the wrong registers.
> > 
> > Applied after adding missing subsystem tag, thanks
> 
> Thanks, it wasn't clear to me whether to suffix the title when already
> included in the Revert: "phy: qualcomm: ..." title :)

A revert patch is a patch as well so the patch rules apply there as well,
so should say "subsystem tag: other tags: Revert foo..."

Thanks
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
