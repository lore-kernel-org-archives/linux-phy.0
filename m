Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8E45C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 21 Dec 2021 19:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3QzvtGRxZ2ui/5QHvMGLRqAVVs/eReUCbGUtYAvxn8=; b=3jbp1BNChQRSu9
	ThI8qTF8rP5KWrXmOrUUx+3Nwyoj7lY2rAT0Uxx+a2H+xGfkOMN4w32tE60oaKh7bzhQ3rHAxJkp3
	Iq+BZ6BGK5H8D8QbYwff3m+jYIjOQtSS/OQ4gE1S4zTPrm3EX4qcHJOKl5EODfAJuRD0P8Go7h/U0
	aeZLSrgHdEjGXW27UHl8adpetICeKg8vCevMbXPDXjxoRexbx6cp2JQJxZEimanJ0BJk7TOBvfI24
	/VJUXthmaab5DP2If2HV6ej5Cp4Pwu6Tr9gGTk+EocQWJJanpFFh0wsqrsmN5mzgpVKA/7tZdmRXQ
	2C0LkCgoBcgqHrA/zYDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzlBR-008Jpg-37; Tue, 21 Dec 2021 19:52:25 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzlBO-008Jok-4W
 for linux-phy@lists.infradead.org; Tue, 21 Dec 2021 19:52:23 +0000
Received: by mail-qk1-f169.google.com with SMTP id 131so152712qkk.2
 for <linux-phy@lists.infradead.org>; Tue, 21 Dec 2021 11:52:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6KTbJr72rRr9PgymTip4M6pAs/zMxShgqIUpXjW532I=;
 b=39LDC1FVRsvNuMksVlPmRHRIOxHrh33SQoMSQVe+LCScJf9C/Ev4eRa06KD5kyyy92
 QQjS0L+C9yKcbHKnKz0u6XZmTMDQjhqWfagUt/q3vpBxHDM8b1gv5QJzuDbRe7Dqkg2N
 VsrX8SD5HC+Wz1uXmgdF1V8M1bTpqFwdEDnsNjP0tL7Bs4t9Uq31J62KCo1nstrZk01k
 GU5xuFmmoUwCNqM1UdkOoOtuMSWQosuQHAkpAfRSKrKibx7/RaLKtDSEk387Un2teYvM
 WMJKusaPj78tvpaLdjb5wro3JNslH9tJxha7OVnCPWrp6Z0dwbIHub6co7onGMCeiyfR
 dQAQ==
X-Gm-Message-State: AOAM5326rVOj+Dtjf2ac8POlcNnVCSpGjTiU7OuLbDJci5GYzvcGwB+o
 USiqAd1txBNgXF7SuVHBZg==
X-Google-Smtp-Source: ABdhPJx3zZgrKOC/ikoGYyvjxr1YgqwCwXRo6Ficx2kO1hnoC7oIyz8VeuqxfzQ5mhKv/fqOVX9jkQ==
X-Received: by 2002:a05:620a:b47:: with SMTP id
 x7mr2289893qkg.174.1640116340667; 
 Tue, 21 Dec 2021 11:52:20 -0800 (PST)
Received: from robh.at.kernel.org ([24.55.105.145])
 by smtp.gmail.com with ESMTPSA id 8sm18888546qtz.28.2021.12.21.11.52.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Dec 2021 11:52:19 -0800 (PST)
Received: (nullmailer pid 1640609 invoked by uid 1000);
 Tue, 21 Dec 2021 19:52:17 -0000
Date: Tue, 21 Dec 2021 15:52:17 -0400
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 1/5] dt-bindings: pci: qcom: Document PCIe bindings
 for SM8450
Message-ID: <YcIwcUzYCq1v4Kfs@robh.at.kernel.org>
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
 <20211218141024.500952-2-dmitry.baryshkov@linaro.org>
 <YcHr0/W0QqRlj1Ji@robh.at.kernel.org>
 <CAA8EJpr1wfW2CLSjBjJdMhhgBmcnMRkx=x5SAC_4LDQCHw1_qA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpr1wfW2CLSjBjJdMhhgBmcnMRkx=x5SAC_4LDQCHw1_qA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211221_115222_206083_09C3AAD3 
X-CRM114-Status: GOOD (  20.15  )
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

On Tue, Dec 21, 2021 at 06:43:31PM +0300, Dmitry Baryshkov wrote:
> On Tue, 21 Dec 2021 at 17:59, Rob Herring <robh@kernel.org> wrote:
> >
> > On Sat, Dec 18, 2021 at 05:10:20PM +0300, Dmitry Baryshkov wrote:
> > > Document the PCIe DT bindings for SM8450 SoC. The PCIe IP is similar
> > > to the one used on SM8250, however unlike SM8250, PCIe0 and PCIe1 use
> > > different set of clocks, so two compatible entries are required.
> > >
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > ---
> > >  .../devicetree/bindings/pci/qcom,pcie.txt     | 22 ++++++++++++++++++-
> > >  1 file changed, 21 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.txt b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> > > index a0ae024c2d0c..0adb56d5645e 100644
> > > --- a/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> > > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> > > @@ -15,6 +15,8 @@
> > >                       - "qcom,pcie-sc8180x" for sc8180x
> > >                       - "qcom,pcie-sdm845" for sdm845
> > >                       - "qcom,pcie-sm8250" for sm8250
> > > +                     - "qcom,pcie-sm8450-pcie0" for PCIe0 on sm8450
> > > +                     - "qcom,pcie-sm8450-pcie1" for PCIe1 on sm8450
> >
> > What's the difference between the two?
> 
> Clocks used by these hosts. Quoting the definition:
> 
> +                     - "aggre0"      Aggre NoC PCIe0 AXI clock, only
> for sm8450-pcie0
> +                     - "aggre1"      Aggre NoC PCIe1 AXI clock
> 
> aggre1 is used by both pcie0 and pcie1, while aggre0 is used only by pcie0.

That doesn't really seem like you need a different compatible for that. 
Do you need to handle them differently? It seems like abuse of clocks 
putting bus/interconnect clocks here, but sadly that's all too common.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
