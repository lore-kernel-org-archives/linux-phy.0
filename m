Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2639CD11C2
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 15:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jS8dqFIOv5utSbtFZSd15oIvBwBBxlGbabtUaFkQg4g=; b=GHoZJnyVniq0VG
	CvrgTq9YWN809ncHbQlIZZvCtGl5sRTzHKvz8/VHymt+TW46xgKvcaO0rsMVcONh4CZYEAFyIOko/
	kZt3ohl6iXkuaeAaU8kMw2H6GNH1t6uxdAaT3QCJdOH+xTeGgs3ebGJrqRfwRFbEsXa1QbHYV+3wV
	jCLhXju2xiByUJFV02xA2qWgET5jBhqz2B4F+F34znnTel8lwnxQlqBYsS2slb3tkmWueskxGfdey
	ZR0ZuqLepdvfQx3ecR+emOMxgmbkDjuRt+7kbwo5rNz6f6a/tx6OxoYEdjo688Y2emYho8ULl2WKL
	Y7zbp7sbVY4S5Zl/zpwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmbYM-0000000DBYg-1op2;
	Tue, 19 Mar 2024 15:39:02 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmbYI-0000000DBY1-0VYV
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 15:39:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 86CBC106F;
	Tue, 19 Mar 2024 08:39:27 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6AED93F762;
	Tue, 19 Mar 2024 08:38:49 -0700 (PDT)
Date: Tue, 19 Mar 2024 15:38:46 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Sriram Dash <quic_sriramd@quicinc.com>
Cc: <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <robh@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<gregkh@linuxfoundation.org>, <quic_wcheng@quicinc.com>,
	<Thinh.Nguyen@synopsys.com>, <p.zabel@pengutronix.de>,
	<linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-usb@vger.kernel.org>, <quic_psodagud@quicinc.com>,
	<quic_nkela@quicinc.com>, <manivannan.sadhasivam@linaro.org>,
	<ulf.hansson@linaro.org>, <quic_shazhuss@quicinc.com>
Subject: Re: [RFC 0/3] Enable firmware-managed USB resources on Qcom targets
Message-ID: <Zfmxhn9-uTo-6zyD@bogus>
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_083858_238720_6A7A6918 
X-CRM114-Status: GOOD (  17.05  )
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

On Tue, Mar 05, 2024 at 10:27:35PM +0530, Sriram Dash wrote:
> Some target systems allow multiple resources to be managed by firmware.
> On these targets, tasks related to clocks, regulators, resets, and
> interconnects can be delegated to the firmware, while the remaining
> responsibilities are handled by Linux.
>
> To support the management of partial resources in Linux and leave the rest
> to firmware, multiple power domains are introduced. Each power domain can
> manage one or more resources, depending on the specific use case.
>

Currently it is just 2 IIUC. Better to be specific with more details and
point to the exact binding.

> These power domains handle SCMI calls to the firmware, enabling the
> activation and deactivation of firmware-managed resources.
>
> The driver is responsible for managing multiple power domains and
> linking them to consumers as needed. Incase there is only single
> power domain, it is considered to be a standard GDSC hooked on to
> the qcom dt node which is read and assigned to device structure
> (by genpd framework) before the driver probe even begins.
>
> fw-managed dt property allows the driver to determine whether
> device resources are managed by Linux or firmware, ensuring
> backward compatibility.
>

And provide the reason why this additional property is a must ? Why can't
the implementation deal with absence of it on these systems ?

Not sure if you have seen/followed this[1] discussion before, but please
do now if not already and contribute. It is definitely related to this
patch set and all possible very similar patch sets Qcom might have in the
future across various subsystems in the Linux kernel.

In general, Qcom must stop pushing such changes to individual drivers
in isolation and confuse the reviewers to some extent without giving
the complete view(or rather providing partial view) which may result in
them agreeing with proposed solution without considering the overall
impact on various subsystems and DT bindings.

--
Regards,
Sudeep

[1] https://lore.kernel.org/all/be31801e-bb21-426b-f7aa-2b52727de646@quicinc.com/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
