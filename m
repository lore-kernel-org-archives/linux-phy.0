Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31CE2C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 21 Dec 2021 21:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNTLs8lNBiI5jDXpToq3xM4m1MP4vNAmeQm9qt4TChw=; b=w62UJGjWl1PKbj
	zcZHH2LLCB6OJpRgBPveL3JjxKcQP2D+Vt3B+pcLvkzv9ZzKAmDnXREVCNaenFC3dfhXR+jm4BnCq
	cpmDxSpFPZtJ6qTMu6eD6Zm/x5ZrVHpdG5hvLfXGdrNS7BbQ7E4/3pKvFkpskop4W3y1YZtPCx2xe
	JLgjsf8qI5SclcngBYjN2vx4Eh1UDXN6hnUujDDzwuxJmcbTBE1dDBesTFvQI+6a/EfVrmj8h2Azs
	EiP0u0hxlVEomXLOkDyB3eitJBZ2qJxEkumwAZ7rJ6LK2GAuA9/tEGmBNGFi+a3Iy9zsSVzwbjBrw
	UKvfxOcwUw0+S/i+Iqeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzmOE-008Wjh-LT; Tue, 21 Dec 2021 21:09:42 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzmOB-008Wj6-PT
 for linux-phy@lists.infradead.org; Tue, 21 Dec 2021 21:09:41 +0000
Received: by mail-qv1-xf36.google.com with SMTP id a9so421324qvd.12
 for <linux-phy@lists.infradead.org>; Tue, 21 Dec 2021 13:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5b8n9orjAEw20yJsUAGO8xOhgi3RcUL34raFmKfwMXw=;
 b=yts9ohbmCCUWr3HVviMlhLdcGCGcYytNi3Xxr0i8vdU5sxgJU9tbhkWxfue0cntgSu
 LsFNtcZO5eVezqWQosNtyUOZBYj3uJjiYoeMBUbbD4B1WdllWuiAVAB5rRdof4246HuC
 3/IropbvZ+DfegxN5sguXRI5xVJxq9k2pXQZDh3QgUMe45/kW7r9rx6JUjFHoUg1F5CD
 KN6n3Gwn9s3Wf0LKPVtNAMwJobIQGqIimtGIQPXoOecIsajN0bfNTtcnIy9o5C3oF20C
 IdcSR62YI92QCrGdl08wtQ8dNfsC2qE9qVywEBN0t948uemB9KXWogaJtUYARsonSdZ2
 /Jzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5b8n9orjAEw20yJsUAGO8xOhgi3RcUL34raFmKfwMXw=;
 b=HDBDFjR4qobFDMVTZoLFEsfVh/RsWQcMfPT5uh9p2aezrnKb7gz6ACD+yLo5OpSaTX
 tpx0WaoGkF0CoYh6vGj7dHBjDBQEWd+V+Qy8si3AqfMBRfHkQp3KJRiYEIJopQ//8685
 MPkcNBsD3dZO/loAIDQKA9FeoQCtyojHokObcUS+3EAgHtFMTdwz3VYBGDMjArQN+RlM
 n65DEh0vAY3XHoEgNRuMQ0OoA3VLdEH0ETPjsX22JQArgZVLwNSDhSvDyOqaGXCi7uAA
 FV4OkjSQhPqKTrHcrBv8l0Q2FDMxLgkbQYUc9Xb+4LikxMCxXm93UFa7mdQA1sdCIAYD
 VR7Q==
X-Gm-Message-State: AOAM530ptgFedfSv8YGRW3eyRBN1vpXDKBKfXksPGsOlvHRxhLqZaEKG
 e4TAk8+z67xrZH54pJ+sl2CVQKVvjYsmt3AO8vk3Kg==
X-Google-Smtp-Source: ABdhPJzO5NpLO0SWdQTQPLQ3pS5T+LQSeDWkBslctelVx9sng0G6KIRVPPF5PRkzhgH/O69heeBVsDLZKSB8oL6gvHE=
X-Received: by 2002:a05:6214:248a:: with SMTP id
 gi10mr108271qvb.115.1640120978287; 
 Tue, 21 Dec 2021 13:09:38 -0800 (PST)
MIME-Version: 1.0
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
 <20211218141024.500952-2-dmitry.baryshkov@linaro.org>
 <YcHr0/W0QqRlj1Ji@robh.at.kernel.org>
 <CAA8EJpr1wfW2CLSjBjJdMhhgBmcnMRkx=x5SAC_4LDQCHw1_qA@mail.gmail.com>
 <YcIwcUzYCq1v4Kfs@robh.at.kernel.org>
In-Reply-To: <YcIwcUzYCq1v4Kfs@robh.at.kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Dec 2021 00:09:27 +0300
Message-ID: <CAA8EJpr7c-x3WJJQCXy3Wo0o82vODw4svwdZHrJ6ht5=WLNJ3A@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] dt-bindings: pci: qcom: Document PCIe bindings for
 SM8450
To: Rob Herring <robh@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
 Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211221_130939_886103_F93EC1FA 
X-CRM114-Status: GOOD (  21.29  )
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

On Tue, 21 Dec 2021 at 22:52, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Dec 21, 2021 at 06:43:31PM +0300, Dmitry Baryshkov wrote:
> > On Tue, 21 Dec 2021 at 17:59, Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Sat, Dec 18, 2021 at 05:10:20PM +0300, Dmitry Baryshkov wrote:
> > > > Document the PCIe DT bindings for SM8450 SoC. The PCIe IP is similar
> > > > to the one used on SM8250, however unlike SM8250, PCIe0 and PCIe1 use
> > > > different set of clocks, so two compatible entries are required.
> > > >
> > > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > ---
> > > >  .../devicetree/bindings/pci/qcom,pcie.txt     | 22 ++++++++++++++++++-
> > > >  1 file changed, 21 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.txt b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> > > > index a0ae024c2d0c..0adb56d5645e 100644
> > > > --- a/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> > > > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> > > > @@ -15,6 +15,8 @@
> > > >                       - "qcom,pcie-sc8180x" for sc8180x
> > > >                       - "qcom,pcie-sdm845" for sdm845
> > > >                       - "qcom,pcie-sm8250" for sm8250
> > > > +                     - "qcom,pcie-sm8450-pcie0" for PCIe0 on sm8450
> > > > +                     - "qcom,pcie-sm8450-pcie1" for PCIe1 on sm8450
> > >
> > > What's the difference between the two?
> >
> > Clocks used by these hosts. Quoting the definition:
> >
> > +                     - "aggre0"      Aggre NoC PCIe0 AXI clock, only
> > for sm8450-pcie0
> > +                     - "aggre1"      Aggre NoC PCIe1 AXI clock
> >
> > aggre1 is used by both pcie0 and pcie1, while aggre0 is used only by pcie0.
>
> That doesn't really seem like you need a different compatible for that.
> Do you need to handle them differently? It seems like abuse of clocks
> putting bus/interconnect clocks here, but sadly that's all too common.

Unfortunately, yes, it looks like we need to handle them differently.
The clocks are not handled by the interconnect on their own.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
