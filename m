Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4A0ACCA46C
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 15:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RgjciD+WSredb1hH6rm3hse8lrTL0z65QBpl1n1V9eY=; b=nqp9z+oj4AH362
	LWsTDRpPYoHAckOArFukaoQutix0Y9yFFo8Pl+07oh8qcpCfZeBJ/o0tf59ZI+QivCwvPYtoJzoBz
	XPdZF4fCrl4omd0XXiCnFg8QyIsIa5v9MkbOEKPlTAv0gNRt8PQmMmimE5atIRhVZbiEL/ync8TRp
	96Qu3fdet4AcZmYFh8zNktl0y1DL3GSkCcAWDcPiFSA2F1birHxd3KRhqCjq4thajXPbetR9Y6Sgl
	XaGdg/wm2tfH4PB34mTsPcY4pY/NCisWXFVZL5J2hXBRlGH1930TrbX8g+pFb39RQm7PISjn97rLP
	vCa40yDCVD5YgZsDCy4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHk5q-00000003Jak-0nnc;
	Fri, 16 Oct 2026 15:43:38 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHk5p-00000003JaR-1UAt
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 15:43:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6FEC860008;
	Fri, 16 Oct 2026 15:43:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC5881F000C4;
	Fri, 16 Oct 2026 15:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792165416;
	bh=LcSEFLNlLRj6r7I/tqUMRAsQ8iaPLr97Duj+1ronOes=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=jYXcu7dcBUFWun40DfLY6RsxA5hUACj9JjHpW5yarRCwg4LSmi+PZXKCDlIiYOtql
	 /1JpBI2YGK21oxsNaaXZ39Mk4bXJJFVzJE2S20W3hlO2uOfOYlBzgCIiTk5IPfGHu/
	 3uT4M5vMTJDbxnN50BZUm0ckq0E0ud9xjt7h9eykIZE8KwEbUCVfvdCvD/NROWQP+E
	 47hpt4i7T4+ciVxEXJh+RgBJt03+6y14DQlLYtGJpYieTrhm2SPMfIY8YZ0NHwMXrI
	 4lLWSilvcAhypd8ugnEJXyCC5hrsCIP+M96k5qvuKWjox91wcmyRGeEcxqjNON7AYq
	 5X9zAIPckVrgg==
MIME-Version: 1.0
Subject: Re: [PATCH v3 2/2] phy: qcom-snps-femto-v2: Add support for
 SA8255P
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mattijs Korpershoek <mkorpershoek@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sriram Dash <quic_sriramd@quicinc.com>
In-Reply-To: <xhkdbqzhp6b45.fsf@mkorpers-koolstof.csb>
References: <20261002-phy-qcom-snps-femto-v2-8255-v3-0-342542bd9bc6@kernel.org>
 <20261002-phy-qcom-snps-femto-v2-8255-v3-2-342542bd9bc6@kernel.org>
 <179214420138.106618.10672928212252943043.b4-reply@b4>
 <xhkdbqzhp6b45.fsf@mkorpers-koolstof.csb>
Date: Fri, 16 Oct 2026 21:13:19 +0530
Message-Id: <179216539953.106618.14570496753417806206.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4836; i=mani@kernel.org;
 h=from:subject:message-id; bh=WIrF0B1YcztghQ25TC0rMR7M8vujKFqXcuC4yly5xsA=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq0kYaMcYoOYuEt8LHmnk2kJpo7tZ5h8+CyFxEy
 0LT1W0lUy+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCatJGGgAKCRBVnxHm/pHO
 9aW+CACqgV6a7bkqUFziapH9V9EPveDtCHgmoGwzC23kkS5kBt4kyD5hGZN3OqaOb1gtJhfcdfi
 31SqcfzfKwYlfmKXtA+Gw7tVYIefPk/QAH0ZYlGo+qlvpDpeWuSnjC/EBZvriVYsO9hcaABUHon
 rfJ6a6fl+ffpzokn7tBTrS+/HhMFfhXBKevolYcyUttbFE1NjLEhVje84g9yYr8fhtZDy5gFdlx
 V6UEL9by+pR5gyd+Hhj02Ok0CvFpOxU9la2BWrD5DefOgDuXG+aZkiupbh7uJcDMs89cVwUasS7
 mKBsBexyHFjAjqn9Uq+cxzcjhMU6YxdsMxSzQaRiP1yMBLyw
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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

On 2026-10-16 15:14 +0200, Mattijs Korpershoek wrote:
> Hi Mani,
> 
> On Fri, Oct 16, 2026 at 15:20, Manivannan Sadhasivam <mani@kernel.org> wrote:
> 
> > On 2026-10-02 11:41 +0200, Mattijs Korpershoek wrote:
> >> From: Sriram Dash <quic_sriramd@quicinc.com>
> >> 
> >> The Qualcomm automotive SA8255p SoC relies on firmware to configure
> >> platform resources, including clocks, interconnects and TLMM.
> >> The driver requests resources operations over SCMI using power protocols.
> >> 
> >> The SCMI power protocol enables or disables resources like clocks,
> >> interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
> >> such as resume/suspend, to control power on/off.
> >> 
> >> Power domain "core" controls the GDSC, resets, and TLMM (GPIOs)
> >> whereas power domain "transfer" controls clocks and interconnects.
> >> 
> >
> > This is not consistent with other SCMI based drivers. Most of them are using
> > 'power' and 'perf' power domains, not 'core', 'transfer'.
> 
> That's correct. Krzysztof had the same concerns [1] in the binding
> reviews. To sum up from that thread:
> 
> For usb PHY, 2 SCMI protocols are exposed by the firmware:
> * power domain management protocol (protocol_id=0x11)
> * performance domain management protocol (protocol_id=0x13)
> 
> The power domain has 2 indices: 'core' and 'transfer'.
> * core controls the regulators, the clocks and the reset
> * transfer only controls the clocks
> 

But this contradicts with your commit message:

"Power domain "core" controls the GDSC, resets, and TLMM (GPIOs)
whereas power domain "transfer" controls clocks and interconnects."

> The performance domain (0x13) exposes opaques values (0xa to 0x11)
> for which we don't have any information.
> 

It is a shame that it is being defined as opaque values, but as long as you
don't define it in the binding and not use it in the driver, I'm OK with it.

> >
> > Why are these discrete powers domains be required? In my point of view, the PHY
> > should have only one power domain for controlling power and be done with it. If
> > you start having these fine grain controls over the resources from SCMI clients,
> > then it defeats the purpose of the SCMI based firmware abstraction design.
> 
> From what I understand, thse fine-grain controls are useful for runtime
> suspend/resume (on the Linux side).
> For example:
> 1. Enable 'core' power domain to enable the PHY
> 2. Disable 'transfer' to turn of the clocks. PHY is still powered but is
> "idle"
> 
> If we look at the patch, we can see that this is what's done in
> qcom_snps_hsphy_suspend().
> 
> Does that clarify things?
> 

Even though the SCMI spec allows defining multiple sub-domains inside a
protocol, I'd argue that there should only be one power domain 'power'
controlling all resources such as clock, icc, resets etc... But in this case,
that ship has already sailed.

> This is also explained in the binding [2]
> Should I rephrase the commit message here to include that?
> 

Yes, please. Driver commit message should be independent.

> >
> >> In this variant, two disjoint sets of resources are modeled against
> >> the power domain suppliers which can be turned on/off to achieve modeled
> >> device states. Two modeled low power states d1 and d3 are supported.
> >> 
> >> transition: d0 <--> d3  :: both core and transfer suppliers
> >> transition: d0 <--> d1  :: only transfer supplier
> >> 
> >
> > What are these transition levels and who defines these? We cannot have different
> > SCMI drivers inventing these kind of independent low power modes.
> >
> 
> Maybe the naming is not as good as it should be.
> I took this originally from a downstream qcom patch and did not change
> it.
> 
> I interpret this as:
> * d3: phy is powered off, before probe (no regulators, no clocks and in reset mode)
> * d1: phy is in lower power mode (regulator on, no clocks, no reset)
> * d0: phy is powered on an operational (after probe)
> 

These looks like ACPI D-states, which are neither defined in the SCMI spec, nor
used by any other Qcom SCMI drivers. So this driver cannot just invent these
states on its own. Just use plain wording for the function names based on the
indices.

> I see that drivers/tty/serial/qcom_geni_serial.c uses a similar
> mechanism. Should I try to follow that naming convention?
> 
> If you have other suggestions, I'm happy to get them.
> 
> Note that I can't change the power domains ('core' and 'transfer' since
> those are enforced by the SCMI firmware)
> 

SCMI firmware don't define the power domain names, isn't it? They just define
indices and it is up to the OS to name it however it wants.

But if it is defined in any of the internal doc, then it is fine.

- Mani


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
