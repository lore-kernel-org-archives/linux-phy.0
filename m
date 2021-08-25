Return-Path: <SRS0=wJWm=NQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11822C4338F
	for <linux-phy@archiver.kernel.org>; Wed, 25 Aug 2021 14:23:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CDA7461139
	for <linux-phy@archiver.kernel.org>; Wed, 25 Aug 2021 14:23:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CDA7461139
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=tkos.co.il
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BjXTuz5qwdz8QBh180I2YpXeSGyjKBbO7Jb/xPqZfHo=; b=cBW8DFudAuUtcp
	eJPcLkjwyqEKlFK5dO9j/VsT+O10E7GghyxH8f1poORGFPdQhR/jtjbwlupztHL4sSJ/fynoFbgAF
	pobJv/FRHb6SA8ySimK9i1VgeK13Wju0vewoaw0re0M4J5Bss6fHRE3uLwKOggFNmwLpULbYZkOoz
	P144nEpctlNm2H00zxGun6dWSav8TPpeUt4xLt+ZmEp859kq+koyf1rkDjDh/K3dOB6Z/yM3GetZq
	jDviUVGu4cuSzv7oYhsnt0AyfeSZ/ifFWrbCv3oxlGyagYQQYS7sryFuWaqvXoSRMCgHTPCobr/JN
	U7u0mG+TLUV3VeZzuH1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mItor-007Fyx-Br; Wed, 25 Aug 2021 14:23:57 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mItob-007Fvh-KT; Wed, 25 Aug 2021 14:23:45 +0000
Received: from tarshish (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id CE408440E88;
 Wed, 25 Aug 2021 17:23:29 +0300 (IDT)
References: <cover.1620203062.git.baruch@tkos.co.il>
 <e17461407cf4bb79fed5925ec81196a0b84e7827.1620203062.git.baruch@tkos.co.il>
 <CAL_JsqKOGo4eXKA7FZK7AQQ24MDDbg2-ngUQF9CJK=8eH_pxHQ@mail.gmail.com>
 <87o89lahqp.fsf@tarshish>
 <CAL_Jsq+wkTbGjyk_i-_1Sad80xcJwAFdf5gBTGBR_TORRA-AoQ@mail.gmail.com>
User-agent: mu4e 1.6.3; emacs 27.1
From: Baruch Siach <baruch@tkos.co.il>
To: Rob Herring <robh+dt@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Selvam Sathappan Periakaruppan
 <speriaka@codeaurora.org>, Kathiravan T <kathirav@codeaurora.org>, Bjorn
 Helgaas <bhelgaas@google.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Robert Marko
 <robert.marko@sartura.hr>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, PCI <linux-pci@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, linux-tegra
 <linux-tegra@vger.kernel.org>
Subject: Re: [PATCH v2 2/6] PCI: qcom: add support for IPQ60xx PCIe controller
Date: Wed, 25 Aug 2021 17:09:49 +0300
In-reply-to: <CAL_Jsq+wkTbGjyk_i-_1Sad80xcJwAFdf5gBTGBR_TORRA-AoQ@mail.gmail.com>
Message-ID: <87lf4pa9i0.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_072341_985423_5664C3C5 
X-CRM114-Status: GOOD (  15.45  )
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

Hi Rob,

On Wed, Aug 25 2021, Rob Herring wrote:
> On Wed, Aug 25, 2021 at 6:25 AM Baruch Siach <baruch@tkos.co.il> wrote:
>> On Fri, Aug 06 2021, Rob Herring wrote:
>> > On Wed, May 5, 2021 at 3:18 AM Baruch Siach <baruch@tkos.co.il> wrote:
>> >> +       writel(PCI_EXP_DEVCTL2_COMP_TMOUT_DIS, pci->dbi_base + offset +
>> >> +                       PCI_EXP_DEVCTL2);
>> >> +
>> >> +       writel(PCIE_CAP_CURR_DEEMPHASIS | SPEED_GEN3,
>> >> +                       pci->dbi_base + offset + PCI_EXP_DEVCTL2);
>> >
>> > Doesn't this overwrite the prior register write?
>>
>> It does. There are two mistakes here. The writel() above should set
>> PCIE20_DEVICE_CONTROL2_STATUS2 (offset 0x98).
>
> No. Did you check what 'offset' is? PCIE20_DEVICE_CONTROL2_STATUS2 is
> PCI_EXP_DEVCTL2 plus the status reg. What's wrong is it should be a
> 16-bit write.

Thanks for enlightening me. 'offset' is 0x70 here. So PCI_EXP_DEVCTL2 is
at 0x98, and PCI_EXP_LNKCTL2 is at 0xa0. Only the second writel() is
wrong. But since generic code handles speed, I can drop it entirely.

I see that dw_pcie_link_set_max_speed() uses dw_pcie_writel_dbi() to
write to PCI_EXP_LNKCTL2. Is that 16-bit write?

Why are pci_regs.h register offsets in decimal?

>> This writel() should set
>> PCIE20_LNK_CONTROL2_LINK_STATUS2 (offset 0xa0). So both are wrong.

Thanks,
baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
