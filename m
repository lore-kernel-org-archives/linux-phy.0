Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF6A4C83F17
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jul 2025 15:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L4ZCQUkNyb5SkzWrJ/UOcwxuF6s+gDoLSonIvaYjJvM=; b=CCfXi6AcyQbVW5
	6O+msQaIemkWM5gG4ThOvaaIgLk21z69/zGTgE5fXUfcg9hGDVx2vUIpm3RTxdFO8Oa6kwXLSX5h0
	B4MbzwYSTgxs3pZUa0luCXGxvt9sL70hxaPwmkdWb7Rk2rrgXVe3peTndodSjda2TCRUyfk/1dfWD
	DEU4NuAkWRQLwuGDdJkR4EntrjcVSXcdWkumMZM8oKfX2lTd2p3jJBovi8RCWig0WGGypQeK/1Rdb
	BhErkI/8i2xXexcC5+ca3MMBWOMNZZhou2hXR8GwDWW2+lysoHBmFnyFP7Foh7HqDob9zfw0UOId6
	Eti3KwglvjgHMMZ+pBWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubLJJ-00000002iyt-2jxB;
	Mon, 14 Jul 2025 15:41:45 +0000
Received: from mleia.com ([178.79.152.223] helo=mail.mleia.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubKe0-00000002XWu-0CCd
	for linux-phy@lists.infradead.org;
	Mon, 14 Jul 2025 14:59:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1752505139; bh=pm1kFbFPyW13GRr3apbRou0GauefSTkU75vCZ5hpLZY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bspY621batrJ0gWabtq4zBNa3xRXyHyzG6r6K/OXMQs8yYuOC2vRlBgcUOy9sM8Jb
	 E0uMow+5XJlRUFF2mJr9FMaNrBEq6c3jU0gq2ml2jUxgSkjbNTa/EvfAs7dRb9IhIg
	 uE33OqWst1GKKzCnbKnDNC9T71Q36A+wKq8tQLnPoX1n01E3OQcxue8ntDQU3EOS9o
	 rgCDTbTpioeIcwW1th7xfnFzRBWtf3zNW8lYNw2qZC3FlXM10GksX23hQt4rlyzSkb
	 TYuQjVR/eNPSFchLYJxmzVId2/CbWOrDWL1B+8suZEG8IRmdhPVfr/9kUObfFrT93S
	 W+DjEU5I+NV+Q==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 1F5523C8846;
	Mon, 14 Jul 2025 14:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1752505139; bh=pm1kFbFPyW13GRr3apbRou0GauefSTkU75vCZ5hpLZY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bspY621batrJ0gWabtq4zBNa3xRXyHyzG6r6K/OXMQs8yYuOC2vRlBgcUOy9sM8Jb
	 E0uMow+5XJlRUFF2mJr9FMaNrBEq6c3jU0gq2ml2jUxgSkjbNTa/EvfAs7dRb9IhIg
	 uE33OqWst1GKKzCnbKnDNC9T71Q36A+wKq8tQLnPoX1n01E3OQcxue8ntDQU3EOS9o
	 rgCDTbTpioeIcwW1th7xfnFzRBWtf3zNW8lYNw2qZC3FlXM10GksX23hQt4rlyzSkb
	 TYuQjVR/eNPSFchLYJxmzVId2/CbWOrDWL1B+8suZEG8IRmdhPVfr/9kUObfFrT93S
	 W+DjEU5I+NV+Q==
Message-ID: <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
Date: Mon, 14 Jul 2025 17:58:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
From: Vladimir Zapolskiy <vz@mleia.com>
In-Reply-To: <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20250714_145859_151169_935C6CCA 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message. 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_145859_151169_935C6CCA 
X-CRM114-Status: UNSURE (   9.61  )
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

On 7/14/25 17:43, Bryan O'Donoghue wrote:
> On 14/07/2025 15:16, Vladimir Zapolskiy wrote:
>>> +#define DEBUG
>>
>> Still under debugging?..
> 
> oops thanks.
> 
>> Well, the phy should be a multimedia device, and this driver is not
>> the one, thus you can not use it to connect sensors and put the IP
>> into a media pipeline.
> Ah no, I don't agree.
> Please see my previous email.
> 

I believe there is very little room to disagree...

This proposed device node scheme does not solve the known and already
discussed technical issue expectedly, namely there is no given way
to describe a combo mode hardware configuration, when two independant
sensors are wired to the same CSIPHY. This is an unsolvable problem
with this design.

Sensors are conneced to CSIPHY IP blocks, CSIPHY is connected to CSID.

--
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
