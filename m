Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A82EFC43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 13:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rUWFmpbr3Z1hyf9+zglDTxL/1u3P0uzLUBi3L3nzHKo=; b=sZ7axvQ/mGDM8+
	Ch15WjDgqkiFLouMusAsz7Fp4T2/yj5CAhm6TGM4GQrdPbepnME4vwVYfqcKlV3+6WDY7VO7DA49z
	m4jg9zWvYrQcDg/fceP4HKZ1SNYsZ6NY7xj/haEDL49TWE46yLwWrSotKYnzsXKXoubR4nK0YYEjn
	S0q7zCwvmXMb84cpJt9BscWiqgE8cYz9qrGF5tz3tK7+kRQLBLEY8EKblfB6ji31KMTP3Fc/TBDuB
	FVxY3xCnwh57T9NSoZy6mGz0HeA0yxKf9EonX99Ez8HPHLjsGmYgCl+GZBx/hHtJljrstb+0HilV4
	Kw51ZyIi1xmXtXsKy42Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whSfe-0000000HDlS-1lsR;
	Wed, 08 Jul 2026 13:50:38 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whSfd-0000000HDl1-0GGt
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 13:50:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 11D5560008;
	Wed,  8 Jul 2026 13:50:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 471FD1F000E9;
	Wed,  8 Jul 2026 13:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783518635;
	bh=ry+WDaoHwcTLLbbLYDEr/m3NYf9GMyFrpzOzll7j1hY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=LBxqDmtDtuFpHhRocv4gIUDl08ZoVWQkXSz19cBOPubK2KBre9an5LC6NDw3TL4yf
	 J3+THJZEq7YDD08W0jAkfKFrh6i54p4w2XVHuutcZt+SO9JgWHdpycPc3HEi/aDNpw
	 RVZExTFWgvAUQ+07V37NDEKzQ5dnfK1DqflfLaNs2LusgGlxDMZEMHt5snGhlI8wgt
	 RPNsvAYXDdnhiVggEAC8aIwV5XZAw+z/K3kOlv6qS46m10UP1jL6Up/r7smHZ/EVRf
	 dRkGlIZ5cEGXXcnl8qQoJrlzzKL2orMiRt/WBTtPdMPcx3Gnpvs7sBESSbBt/njdFu
	 O6fNdqfqb4fvw==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Maxime
 Ripard <mripard@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sriram Dash <quic_sriramd@quicinc.com>,
 Shazad Hussain <quic_shazhuss@quicinc.com>
Subject: Re: [PATCH 2/2] phy: qcom: qmp-usb: Add support for SA8255P
In-Reply-To: <5ucpcgiwlhbhn4m63gydrioyznpxnfq7rgdxf637qubikt3gqp@kivbak76lvtp>
References: <20260708-phy-qcom-qmp-usb-8255-v1-0-8d852a9535db@kernel.org>
 <20260708-phy-qcom-qmp-usb-8255-v1-2-8d852a9535db@kernel.org>
 <5ucpcgiwlhbhn4m63gydrioyznpxnfq7rgdxf637qubikt3gqp@kivbak76lvtp>
Date: Wed, 08 Jul 2026 15:50:33 +0200
Message-ID: <87zf01615i.fsf@kernel.org>
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

On Wed, Jul 08, 2026 at 16:20, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:

> On Wed, Jul 08, 2026 at 02:54:21PM +0200, Mattijs Korpershoek wrote:
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
>> Power domain "usb_core" controls the GDSC, resets, and TLMM (GPIOs)
>> whereas power domain "usb_transfer" controls clocks and interconnects.
>> 
>> In this variant, two disjoint sets of resources are modeled against
>> the power domain suppliers which can be turned on/off to achieve modeled
>> device states. Two modeled low power states d1 and d3 are supported.
>> 
>> transition: d0 <--> d3  :: both core and transfer suppliers
>> transition: d0 <--> d1  :: only transfer supplier
>
> Sashiko warns about PM resource leaks and those warnings seems legit.

Yes, I will double check all the comments and reply to the sashiko
review (and probably spin a v2)

>
>> 
>> Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
>> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
>> Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 175 ++++++++++++++++++++++++++++----
>>  1 file changed, 155 insertions(+), 20 deletions(-)
>> 
>
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
