Return-Path: <SRS0=XorX=M3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F145C4338F
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 14:22:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6E6D960EBC
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 14:22:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6E6D960EBC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=tkos.co.il
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:Cc:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tOcnG/k2NsLwqMQMl+5tt3Ta64WgXZ2w2isFjRUNRZI=; b=tJ/sfY3BY98tyF2adEDhcnTxE2
	owtMjRObNlbpFKDs6MC7bvdc5jTLq2vNzjGpoN35pcw/NI70/O2AI7o39LIq4lVioBLPaA96W58E3
	U925JKb7pDtLEZxrCX4nCY2cB2hcKDas17Fxkty6UHJcXC0CVHbU4ZxRKPw3q8jr8UW4EZbElSr8t
	zohSvmw3dlPZhsreSOnKwt7IvHrRnIzgBPrYcMNstVpaAWF4ZzaYqU8JWPqBh0BjFejOfYO5KnpIA
	YArBh3/cJHvraPH+fIBoSZ1jZWUewzt6/iBCT+GBM5Bxu/QeknNp9xOXIs2ySpl/nGq5hDJWFABdO
	sWe/DmqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBHn9-006Pln-Ux; Wed, 04 Aug 2021 14:22:43 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBHmv-006Pih-VI; Wed, 04 Aug 2021 14:22:31 +0000
Received: from tarshish (unknown [10.0.8.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 4895544011A;
 Wed,  4 Aug 2021 17:22:08 +0300 (IDT)
References: <3d86f45004fe2fcbae0a2cd197df81a1fd076a1e.1628085910.git.baruch@tkos.co.il>
 <0e99e3d453547ad2a8f4541090a03f3c80b80332.1628085910.git.baruch@tkos.co.il>
 <87lf5h5mc2.fsf@kernel.org>
User-agent: mu4e 1.4.15; emacs 27.1
From: Baruch Siach <baruch@tkos.co.il>
To: Felipe Balbi <balbi@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Balaji
 Prakash J" <bjagadee@codeaurora.org>, Kathiravan T
 <kathirav@codeaurora.org>, Jack Pham <jackp@codeaurora.org>, Thinh Nguyen
 <Thinh.Nguyen@synopsys.com>, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 4/6] usb: dwc3: reference clock period configuration
In-reply-to: <87lf5h5mc2.fsf@kernel.org>
Date: Wed, 04 Aug 2021 17:22:27 +0300
Message-ID: <87v94lxpb0.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_072230_292591_C903C4B2 
X-CRM114-Status: GOOD (  11.13  )
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

Hi Felipe,

On Wed, Aug 04 2021, Felipe Balbi wrote:
> Baruch Siach <baruch@tkos.co.il> writes:
>> @@ -1371,6 +1398,8 @@ static void dwc3_get_properties(struct dwc3 *dwc)
>>  				    &dwc->hsphy_interface);
>>  	device_property_read_u32(dev, "snps,quirk-frame-length-adjustment",
>>  				 &dwc->fladj);
>> +	device_property_read_u32(dev, "snps,ref-clock-period",
>> +				 &dwc->ref_clk_per);
>
> I wonder if it would make more sense to pass an actual clock reference
> here. If valid, then reconfigure the period to the value returned by
> clk_get_rate(). It would avoid yet another DT binding. If we make the
> clock optional, then we won't affect any other platforms. The clock
> itself could be a regular fixed clock node.

Thinh Nguyen asked to add a dedicated DT property. He explained that
clk_get_rate() does not work for PCI hosted dwc3. This is the most
complete summary of the discussion:

  https://lore.kernel.org/r/c797e9cb-cae6-c0b6-5714-169c2ad79d32@synopsys.com

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
