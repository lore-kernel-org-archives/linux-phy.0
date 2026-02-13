Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C8F8EDF17D
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 16:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmFZw0RaUVhLrmKWBQB1sfV2vez7t+Yr16UeOuQcMYA=; b=1+xyHdSkNpg8mU
	fyVelRHkdRl/uy5bRgjVh/hgkanFPRhvmPfdZ5e5zPvf2xI0ahWbGGuT0DpImAPQfm6JeeFoBacZa
	YtyCaaB98DfPHCZ9VuTLv1iuYsq9KJBGqvTq96EApRHaN7P+59bdvuZ0km8uF/d7vSu5jSuJz1g2k
	MaIZkBivQd/bsm/4fOPIvjxtL43pxXjzgLBluoJGW2hKxUolsi06QCLSWLRrdcLsSAU1DwYI4fi8q
	9GWQJAGyDbZs0g6DyKHRtTqnzBFEDKmDUUlLZVS/xwRx11TN7ehh2KMNaPJXbdhwbdeBU0MZxdhmw
	b/UQRz93a4DstDaqFEAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqw9b-00000003grs-3qDP;
	Fri, 13 Feb 2026 16:36:27 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqw9Z-00000003grI-3Zvk
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 16:36:26 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-2a7bced39cfso12771635ad.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 08:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771000585; x=1771605385; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0F5tQcgxERAB02uB01kJMGI3FPIwYeXfyKo+LVQoV10=;
        b=Y493rTDPYYPlCFWF063EWzJyTGcZTTkF0+VggHDAqnjKRSWdfoIHxYSPdb7PpEtBw+
         CwH0VvcB5NH3+TTBGcCTGO79dz/EEGAOeDB+a4sWWZprBDvmizI2pOdRA62JYY5cT4pL
         JFaFbKobickbQ05Km1bSSmcU5/gKZ/YTRE6g5VOWE4RMsFBDg496mwmuuEJr81AFJpaT
         1x6lZmd0X+tEEOMYT7OQd8isDyZQbSjxcMnDrcorNtgHbtznwhUL2cCzWZtC/TG98r/y
         B9Y3xg6lvS/Ce9Dw1vG1o78Rqc0AQIRF92MOFZSybt9VdDbhW7DhTA2uIhgwXnqML+UN
         swOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771000585; x=1771605385;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0F5tQcgxERAB02uB01kJMGI3FPIwYeXfyKo+LVQoV10=;
        b=jXUmG9973gJsUfrPwQj/K9qRgc3SEVPeOI+8hyXeR5JSqzEQSXlGCc3T4Mpff2sUsb
         bryUEpuEyr38kKtFS2WeXxioO8278zzSb+XvabqjPWv5gKdy/76mGDq1wdKi4xZ4tc/H
         6X/7d8Y0uoFa6fYKpdKGxfNCFQXGQRae+0tzKVWBkrrYJ2zEguGyZmHWEiLbib52JzOv
         xI0/Z+ot9YC7pqsUnRJKM4xFIel8Gl7xRlYGdVr18E3JHZbgV7paNL9BQ90WmMgIHD1I
         HOYDJvevLUoT9MDZ1BGgS4TBoWldQ3Iq81099lp2Abxwn5dZx8G9XS/z0oY6AKLgAMXU
         uC6Q==
X-Gm-Message-State: AOJu0YxY3WlcI4LvsOIq+gOkRBd8k5Vx0eigCZ3GfkBbRPhurqfLCO29
	ZliZV1/QsULzjLHC9N1UcCGNJQMbnI0nuw52Vl8XbQ/LcCpyIYRkOA/V
X-Gm-Gg: AZuq6aJUx9VSMLLnYVQIFHWyU6uCYd147Go9uZ7fyDtQYavRsT2vsW+7TNgCBQw3wq8
	DJ9OXWGejfXJlsz/p4W9g9CVElpsDHbJZVElyV1sD1QmZ6BQDqDrUryXvzUyZcRC29WtVMRsGdd
	iGAi6lQxNComvIdz85MaW7bqQNoj6MhAcITA+YCBScSQ+PhLpgyL3fzKWGncducUHocPDkl7oeQ
	ALgTOs5LM2bt27NUsmyGZjELLPFh6GDKwqRqQxVi3UwELgyNIUi0SWPkACDXli0yHUX6SssCG/j
	VKXm59+sH8WV9hLs5+MqIhyDrWTt0BZSIWdUvSw7YSNU0J4GsbXNRWYNZqMhWj/0zikFHZkEvjj
	I5PHZ5PWo8haRjkD4xV0FFMFFPx1aFgunUuEV+fjYDI/Ik3VHYTcSKvMIlkiv2rvGffYUd7LJa5
	4ktGiwLmue4+wUZbu0d3PgasCr2+4S0XEvrj5m4XeYt/c=
X-Received: by 2002:a17:902:e787:b0:2aa:d11d:5c36 with SMTP id d9443c01a7336-2ab50598a38mr26413315ad.30.1771000584651;
        Fri, 13 Feb 2026 08:36:24 -0800 (PST)
Received: from [192.168.1.8] ([27.7.171.51])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ab2988bd4dsm85424595ad.38.2026.02.13.08.36.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 08:36:24 -0800 (PST)
Message-ID: <f60156a6-58af-4548-9dc3-71c71b822343@gmail.com>
Date: Fri, 13 Feb 2026 22:06:16 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v4 0/3] dt-bindings: phy: Convert TI OMAP control
 and PIPE3 PHY to DT schema
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade
 <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>,
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Roger Quadros <rogerq@ti.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
References: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
 <177021985530.133434.13436195442562231016.b4-ty@kernel.org>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <177021985530.133434.13436195442562231016.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_083625_898762_48D9E73D 
X-CRM114-Status: UNSURE (   8.15  )
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



On 04-02-2026 21:14, Vinod Koul wrote:
> 
> On Fri, 23 Jan 2026 15:39:01 +0000, Charan Pedumuru wrote:
>> This series converts the old text-based DeviceTree bindings for TI OMAP
>> Control PHY and TI PIPE3 PHY to modern JSON-schema (YAML) format.
>>
>>
> 
> Applied, thanks!
> 
> [2/3] dt-bindings: phy: ti,phy-usb3: convert to DT schema
>       commit: 62c9ff8fc20d23c0dc36be1330734fdafb3e8585
> [3/3] dt-bindings: phy: ti,control-phy-otghs: convert to DT schema
>       commit: 7878306d182a1750583a325a29e5ccab9ce0235b

Hi Vinod,

You missed to apply the first patch which has DT node pattern changes and now this dtb check fails in linux-next as these YAML patches use the updated node pattern. I got a report of errors from kernel test robot.

> 
> Best regards,

-- 
Best Regards,
Charan.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
