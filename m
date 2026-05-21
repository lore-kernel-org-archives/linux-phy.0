Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C94ECD4F3D
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 04:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TdiMXmUCKT1GtHYiKKn73us/4sOlEPm1nXfgxnxt5E8=; b=nEANlQ7a3KgFhz
	LbzbJwwdw//ugWVBYOFkrW1WmvbOBTtb5VXJLVmB5jNdPLPdmP59j1SpzfDe36q8HpNPFY5N0LdRD
	edhTR20xvwULC7itdlIWNQc+JsV5OtZePAqFCrR46hBErunDbTA/P0gIhoeEGs1/3jl6xbfEMRdIL
	vbYy2GwFZAX8X/B1v13mym3tU4aHuf4F3ARA27doY+jP+swbNUbFnvDo9sWoAiDpeSyI5bpO+AgFk
	pMH7Iwp8yPi9oKRy3hpArXV+yf3rn/pWMEZwGdwHLhY2aH80xlHSZobh1lYsyBAsheLoLnIPU+JGh
	qR9dPb4ptvGUqIh97Qqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPv1O-00000006etN-25C9;
	Thu, 21 May 2026 04:28:34 +0000
Received: from out-185.mta0.migadu.com ([91.218.175.185])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPv1M-00000006esj-03Xm
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 04:28:33 +0000
Message-ID: <ffe27d38-5627-4201-ab6f-72656f5188a6@packett.cool>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1779337707;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=l0Mbqj52klJDaYVrqr1HbvDq6wUyKpixCsk5uYYS4F8=;
	b=j+5JhcKTMjPxoUC95Kz4ElJaqjQUSuzJHi6aj64lHfnS50ZbSIYktmGl372tbEL79RTofN
	Nh1suA+1ruN6eq8riu6dLM6xdrX04zvx5nNkrTDg1UYWIFfDfDOFfifwWh+f+IWysIzoxT
	LU/a/OHrOl5+mbuk/yHlVBvvIq0qQB5/0+Wh48+4E3pDjVUQCx7bvx+4mmF5MMFekqlhYX
	NNFKcFeDjfskZTBH69uO1aG/mzybsdAsxks4vUObfgcU3MjNA0aH73HePwBUm7KaHGR1MK
	itCFy+IG+gUZYDlj/AP0mj5tqj4nIsOIIk7crQ3O3ZzaCU3IX3V+h2x5Wc4iMA==
Date: Thu, 21 May 2026 01:28:16 -0300
MIME-Version: 1.0
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: x1-dell-thena: mark l12b and
 l15b always-on
To: Michael Scott <mike.scott@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org
Cc: vkoul@kernel.org, neil.armstrong@linaro.org,
 dmitry.baryshkov@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
 abelvesa@kernel.org, faisal.hassan@oss.qualcomm.com,
 linux-phy@lists.infradead.org, andersson@kernel.org, konradybcio@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, bryan.odonoghue@linaro.org,
 laurentiu.tudor1@dell.com, alex.vinarskis@gmail.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
 <20260521010935.1333494-4-mike.scott@oss.qualcomm.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
In-Reply-To: <20260521010935.1333494-4-mike.scott@oss.qualcomm.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_212832_416559_5AEC700D 
X-CRM114-Status: GOOD (  12.71  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 5/20/26 10:09 PM, Michael Scott wrote:
> The l12b and l15b supplies are used by components that are not (fully)
> described (and some never will be) and must never be disabled.
>
> Mark the regulators as always-on to prevent them from being disabled,
> for example, when consumers probe defer or suspend.
>
> Note that these supplies currently have no consumers described in
> mainline for dell-thena beyond the audio codec (vdd-buck/vdd-rxtx/
> vdd-io on wcd938x), which can release them when the codec goes idle.
> The board-level gpio-fixed regulators that feed the Type-C retimer's
> VDDIO and other rails are not described with a vin-supply link, so
> the kernel cannot keep their parent LDOs alive on its own.
>
> This mirrors the same change Johan Hovold applied to every other
> X1E80100 board in a March 2025 series; commit 63169c07d740
> ("arm64: dts: qcom: x1e80100-dell-xps13-9345: mark l12b and l15b always-on")
> is representative. The dell-thena board file was introduced four months
> later and did not inherit that change; this patch closes the gap.

Acked-by: Val Packett <val@packett.cool>


Asked a friend who has totally legitimate access to the XPS schematics 
about what those components are:

L12B: IO_1P2/275mA
- MOSFETs and pullups on a bunch of I2C, PCIe CLKREQ/WAKE, etc.
- VDDIO for WSA speakers
- NVME_PLN_N_1P2 (Power Loss Notification?)
- bunch of VDD_PX pins on the SoC


L15B: IO_1P8/1.09A
- MOSFETs and pullups on eDP HPD, bunch of I2C, PCIe CLKREQ/WAKE, some 
INTR#/RESET#, SSD Load Switch, etc.
- VIN for Load Switch outputting retimer's VDDIO
- VDD_1P8 for WSA speakers
- VDDIO for power monitor ICs on IR_I2C


Yeahhh.. I think the load switches could potentially be modeled but the 
huge bunch of random pullups not so much. I wonder how Windows handles 
this. Maybe it could be in low-power mode when speakers are idle?

~val



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
