Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EBD2CD343F
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 04:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6o4aPqskYGV3g9zTjwb4lVPdNpiRH87pZfES0sbJOM=; b=LAuq2XpZTZVA8q
	ql0UdTzByBVd28llvLPUZ9xkiCKo0xbu4qN91yKev7vxMCMXWjDBq0JoO334qVppMskypRqCLEl59
	hJKZUxQXl/S/aAEEnjUzLLNUL0zETky16w3XDVE6HALeCyP/tav3PkMzmx0rbmREt3lt1g1KlTJdg
	kdyl1WGC2xscudpZROtOhsC6zaidZn0fYNyaZ/oyhXwpZMTK3CE/OMk9aoBcX755VnOd9XDG8Wxe2
	D3rnzNUDyzliHNIZp0Syj/Iw/OERukpvzSk/7r1wVk9azM+3O/GFqEpW0xuUqrsf9vyk529Mb0lvD
	EuXHYXDqvMZuuTlRhSVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPvBw-00000006fkH-2uBs;
	Thu, 21 May 2026 04:39:28 +0000
Received: from out-171.mta0.migadu.com ([91.218.175.171])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPvBu-00000006fig-04wP
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 04:39:27 +0000
Message-ID: <1f659806-bde5-4f8b-99ef-339f680bcf65@packett.cool>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1779338362;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rOIC5lFHEmXyRzFnIMJxxDLSfJcJuQc8tWENTkCRR3w=;
	b=FYWZ+cnQ1f0hdcDw44jC85XPHBTY7jJKnM6pxdaCWRJqpwL9lAwLLmHJLRSrPBqaYN9PMG
	bCdToxPBXNY9zJL3mXbtJ28W+JP/JvSqVNd+gOmSIv0MY1CsTo2QACCyzTvg9PdJvQMG5x
	pp0oniIXuv5W7FryKWhNXdwl581O7vhvbugqBLn6LK3eAdAtjkJnnjfsGKDMoNE15EyGVB
	DYZoQjU61xr5IoWupAyYUECYvJzneEtKpwpyD7p92qUwz0kfxI/uP5fISFiUMIXqDhWGQ/
	98RZivDA2kQiO8WXG4hVMosz0vDQDmPqIu6klPG0QRU6He5pGr92ON54NDTCvA==
Date: Thu, 21 May 2026 01:39:12 -0300
MIME-Version: 1.0
Subject: Re: [PATCH v2 0/4] phy: qcom: qmp-combo fixes + x1-dell-thena DT
 maintenance
To: Michael Scott <mike.scott@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org
Cc: vkoul@kernel.org, neil.armstrong@linaro.org,
 dmitry.baryshkov@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
 abelvesa@kernel.org, faisal.hassan@oss.qualcomm.com,
 linux-phy@lists.infradead.org, andersson@kernel.org, konradybcio@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, bryan.odonoghue@linaro.org,
 laurentiu.tudor1@dell.com, alex.vinarskis@gmail.com,
 linux-kernel@vger.kernel.org
References: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
In-Reply-To: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_213926_271707_EC126C36 
X-CRM114-Status: UNSURE (   6.63  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 5/20/26 10:09 PM, Michael Scott wrote:
> Four patches:
>
>    * Two pre-existing bug fixes in phy-qcom-qmp-combo that are reachable
>      today on any board which registers a usb_role_switch on this PHY,
>      and will become reachable on more X1E boards as their Type-C
>      support matures (patches 1-2).
> [..]

Thanks for digging into this!

I have successfully used automatic role-switching (even switching 
between USB2 gadget and USB3+DP mostly worked fine) but I do remember 
manual sysfs switching causing more issues..

Would be great to see no more dr_mode = "host" upstream. Though I 
vaguely remember some objections related to booting from USB (?)

~val


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
