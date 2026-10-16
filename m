Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E44FCCA462
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 13:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NMFe3/xs4j6aYzRnkwpv74qUPJSZAPyF3BD/ATYC4s=; b=oOAPOTfk1EYEtI
	+Nv9ZHBpliKxqrVrSpDQHacaZjswISAfjnKTfDhuq/moJcYKc0XuWbQYIE0YPv0jJcumsV1qxUGfZ
	heJSnvL9s4jqkjvxl1P2vIUwHwAA/3JSIUoDxbS8i7/lqUFmhoinZ3dDU5WeQeDw3FyRjqLx7akcl
	b5a5wW60LiDrmKR0uMy3jQrxPkGnseonlWj+yWKqgkrsSDjuRf7eO7DTItIoEm2GUTkJ7T6wF8rzW
	iRYTezBoXhxYibCZh8GLP1aiX+pIwG6ZrZsnTeejoMAE2iepbkTckWAOuuYXv7vZCSZjxzz2inIGC
	hEwBmVHK52+Abju28yKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhlf-00000003197-0CYn;
	Fri, 16 Oct 2026 13:14:39 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhle-0000000318t-046Q
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 13:14:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2411E60018;
	Fri, 16 Oct 2026 13:14:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C89E1F000C7;
	Fri, 16 Oct 2026 13:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792156476;
	bh=hUtNEh692Ln8xnhPOuaR7A+C/ErZ2D+qn4TDhgjSS0U=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=gU1avqfFPFvBuObpwapYgNb8Y6k+02YUpIah0WpY4+eM/uggWYwEINNEiv1HZDlmz
	 S2nogPIM334vI1QWdLhJaUUqBDgtjd2BYiOuuyxTmWLFapbsCCluU/3rx8op+rp3i0
	 7a2POcIpeMykMEEb3PoJi5WX/k9lDbL0t0Z03W1ZSqMN1Nip+y2k1F/gathBNdh9Wh
	 23eyyJaMYA7gIsWiHyOzujtk54zwISk8UQdd9AYt4biwHDZ2gxrrto0l/fbiEazv+j
	 217PPoh00f7NTYhS16brkeTd6GUn4VG9sFJhXiAM4vi0VxSdUZu6mS5V2W7llA8PWC
	 g1eIaT234M+Zw==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sriram Dash <quic_sriramd@quicinc.com>
Subject: Re: [PATCH v3 2/2] phy: qcom-snps-femto-v2: Add support for SA8255P
In-Reply-To: <179214420138.106618.10672928212252943043.b4-reply@b4>
References: <20261002-phy-qcom-snps-femto-v2-8255-v3-0-342542bd9bc6@kernel.org>
 <20261002-phy-qcom-snps-femto-v2-8255-v3-2-342542bd9bc6@kernel.org>
 <179214420138.106618.10672928212252943043.b4-reply@b4>
Date: Fri, 16 Oct 2026 15:14:34 +0200
Message-ID: <xhkdbqzhp6b45.fsf@mkorpers-koolstof.csb>
MIME-Version: 1.0
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

Hi Mani,

On Fri, Oct 16, 2026 at 15:20, Manivannan Sadhasivam <mani@kernel.org> wrote:

> On 2026-10-02 11:41 +0200, Mattijs Korpershoek wrote:
>> From: Sriram Dash <quic_sriramd@quicinc.com>
>> 
>> The Qualcomm automotive SA8255p SoC relies on firmware to configure
>> platform resources, including clocks, interconnects and TLMM.
>> The driver requests resources operations over SCMI using power protocols.
>> 
>> The SCMI power protocol enables or disables resources like clocks,
>> interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
>> such as resume/suspend, to control power on/off.
>> 
>> Power domain "core" controls the GDSC, resets, and TLMM (GPIOs)
>> whereas power domain "transfer" controls clocks and interconnects.
>> 
>
> This is not consistent with other SCMI based drivers. Most of them are using
> 'power' and 'perf' power domains, not 'core', 'transfer'.

That's correct. Krzysztof had the same concerns [1] in the binding
reviews. To sum up from that thread:

For usb PHY, 2 SCMI protocols are exposed by the firmware:
* power domain management protocol (protocol_id=0x11)
* performance domain management protocol (protocol_id=0x13)

The power domain has 2 indices: 'core' and 'transfer'.
* core controls the regulators, the clocks and the reset
* transfer only controls the clocks

The performance domain (0x13) exposes opaques values (0xa to 0x11)
for which we don't have any information.

>
> Why are these discrete powers domains be required? In my point of view, the PHY
> should have only one power domain for controlling power and be done with it. If
> you start having these fine grain controls over the resources from SCMI clients,
> then it defeats the purpose of the SCMI based firmware abstraction design.

From what I understand, thse fine-grain controls are useful for runtime
suspend/resume (on the Linux side).
For example:
1. Enable 'core' power domain to enable the PHY
2. Disable 'transfer' to turn of the clocks. PHY is still powered but is
"idle"

If we look at the patch, we can see that this is what's done in
qcom_snps_hsphy_suspend().

Does that clarify things?

This is also explained in the binding [2]
Should I rephrase the commit message here to include that?

>
>> In this variant, two disjoint sets of resources are modeled against
>> the power domain suppliers which can be turned on/off to achieve modeled
>> device states. Two modeled low power states d1 and d3 are supported.
>> 
>> transition: d0 <--> d3  :: both core and transfer suppliers
>> transition: d0 <--> d1  :: only transfer supplier
>> 
>
> What are these transition levels and who defines these? We cannot have different
> SCMI drivers inventing these kind of independent low power modes.
>

Maybe the naming is not as good as it should be.
I took this originally from a downstream qcom patch and did not change
it.

I interpret this as:
* d3: phy is powered off, before probe (no regulators, no clocks and in reset mode)
* d1: phy is in lower power mode (regulator on, no clocks, no reset)
* d0: phy is powered on an operational (after probe)

I see that drivers/tty/serial/qcom_geni_serial.c uses a similar
mechanism. Should I try to follow that naming convention?

If you have other suggestions, I'm happy to get them.

Note that I can't change the power domains ('core' and 'transfer' since
those are enforced by the SCMI firmware)

Thanks again for the review
Mattijs

[1] https://lore.kernel.org/all/877blx2bga.fsf@kernel.org/
[2] https://lore.kernel.org/all/20261002-phy-qcom-snps-femto-v2-8255-v3-1-342542bd9bc6@kernel.org/

> - Mani

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
