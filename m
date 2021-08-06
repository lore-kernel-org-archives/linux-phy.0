Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BFAC4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 19:48:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8373261167
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 19:48:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8373261167
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phlkvM0gb0q9bEO5XE3XWzLF/jPItqCSvT+29HyFR4k=; b=LZgJIBA+JtIhX3
	y/2INJsGx1BeVTSW2Ahd2vT1O856nlmJsIkFsbnrylikUgjRyhlzzfD6dqjygS286W5fRJuUEl5EU
	q9nHTNwHdw3p52fSR3u03KLxWs42zqK2AWM2+9t+n4mqPGR+B0kLDbOcHl6zbmO5/a6qs4A5bheYQ
	w+NIVEkWasHn0GlPrnRF4HLA+bkcLs1L2Q5pd6cpAyu6Vkx2nKLHc4OEh5uJCkg0buqQj98VZXsT7
	0s/h2YDbVurfQtARkq6GbwmTqq0VFgnYR0T73nD/pRMyy9RHXThs/+AWOVJeiBPwD5Hhnq0HE5dm7
	XPfIjtkp/mkwoX4WvG7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mC5pN-00DMaD-To; Fri, 06 Aug 2021 19:48:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mC5p6-00DMWH-IY; Fri, 06 Aug 2021 19:48:06 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A96E5611C6;
 Fri,  6 Aug 2021 19:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628279283;
 bh=A6nLSI9mCf6mhp34t8GesHN20NVCy2XtPV0FcrWZoyY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=aHwyEPqZQjQqD/Z98svs+HauUDSyCNlqKKe7OApL00K7PMn96Y5CvQItAIjqabxoP
 Rpai4fhu5SM+A73eQTE2WsjX6lGvA/j8vvWkSTrnZk0O32dSMJm8/OF+L8icGy5Hbs
 VTKWiw9rTcV3cGa03KcznUgexrj5DcehKjYTue2AVM5w2ce7IoPbpKzSewhwvm7+EI
 2zjItvepB0O5VzjQZBAo5TM6On8jxJnjCW0EmK2wmdBwjEb7DwD8EA0wl8RXCaNHSq
 R2FpDJTuj/ppy/Gx1eS8HEBC01HO1Z6vggmytuY8SjKRly9r1zUm2EhSys64w1AdQC
 AVgei3lb3X/lA==
Received: by mail-ej1-f48.google.com with SMTP id go31so16843891ejc.6;
 Fri, 06 Aug 2021 12:48:03 -0700 (PDT)
X-Gm-Message-State: AOAM530zM46wB3JHSn68ipTyh3r71p7stV9NCoYcJqOuy2ym85pH+b3Q
 GrDycJDpsny0Npi9OYxw+YXppE9Cnl7fp0o4Zg==
X-Google-Smtp-Source: ABdhPJzchWTvDeHq2trbxdxbRY5qp5nwFN4uSbf8D1NAK7KPGhs0/CO4eEDCG1J5SF8SgKAnHxpX2jEhCXIqQcnyhlU=
X-Received: by 2002:a17:906:8cd:: with SMTP id
 o13mr11272506eje.341.1628279282121; 
 Fri, 06 Aug 2021 12:48:02 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1620203062.git.baruch@tkos.co.il>
 <c15ac1443ec765e32a2801241dcd8e924abc769b.1620203062.git.baruch@tkos.co.il>
In-Reply-To: <c15ac1443ec765e32a2801241dcd8e924abc769b.1620203062.git.baruch@tkos.co.il>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 6 Aug 2021 13:47:50 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+SBRP4n-0Q9RShxj2Od-EGpBURNUZo8fLnscOY-m7SmA@mail.gmail.com>
Message-ID: <CAL_Jsq+SBRP4n-0Q9RShxj2Od-EGpBURNUZo8fLnscOY-m7SmA@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] PCI: dwc: tegra: move GEN3_RELATED DBI register to
 common header
To: Baruch Siach <baruch@tkos.co.il>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
 Robert Marko <robert.marko@sartura.hr>, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, PCI <linux-pci@vger.kernel.org>, 
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 linux-tegra <linux-tegra@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_124804_690949_89B4B394 
X-CRM114-Status: UNSURE (   9.29  )
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

On Wed, May 5, 2021 at 3:18 AM Baruch Siach <baruch@tkos.co.il> wrote:
>
> These are common dwc macros that will be used for other platforms.
>
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  drivers/pci/controller/dwc/pcie-designware.h | 6 ++++++
>  drivers/pci/controller/dwc/pcie-tegra194.c   | 6 ------
>  2 files changed, 6 insertions(+), 6 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
