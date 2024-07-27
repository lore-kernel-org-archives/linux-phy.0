Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E31A9C3DA61
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jul 2024 19:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fszyaI5juY+On4Fl3SMn5avQzU5usUgAnICy2pXCjvo=; b=Q2+4wHvjLco+WI
	fXTT8gvonpX0FglVfaSd8MxEXYKA8mcs0isvNx8L6NIWMNaAgjMYQ+ENwJlDw2/rlY7GerbxSuK3h
	+jG+XYSZLmM8FyiVYWwqs9XRtzWg9Seq9bfnpataBUQNVZd36TQ1ig1NVZ/f3UiJ+69GT/JX2T4Rb
	RtJHjjsBgSP8yUHYPi619EHgZcOJIrbXW92bTU3NWBTTxOQwwkbPT39mFEhIg+0C0WtHE4Q1n37nK
	US4kvAyFithyh/Yedg8r2g92mKatT6DRUDtUm0Conc39Py2Dpt7VAaIoK2s0KoOZRMa05eri+O9cu
	wuhjnM/ypaoGPvd5q+mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXmp5-000000079HT-1pB0;
	Sat, 27 Jul 2024 19:11:19 +0000
Received: from out-181.mta0.migadu.com ([2001:41d0:1004:224b::b5])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXmof-000000079CN-06mq
	for linux-phy@lists.infradead.org;
	Sat, 27 Jul 2024 19:10:55 +0000
Message-ID: <aba35ecb-2357-4c4f-8366-08d14e40d436@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1722107442;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vnZTjo/7pmFDEeMIrWbXmgk6xCg9PHf76iCLLIkf1sQ=;
	b=BUpc1yWXl1A9gUDv/LzaTVmzB/d7l1asUwM6acVHDHnrQRlZ82O55595uQzK4b3qtuAWoB
	BeTwNtbGNPa/hihoms9YkJzZ9VRMl5SeRzf8OlCOCLWUqrVYd3JCDqduQSFL6ZD/42gedN
	ns3+9GxixhIy+Nfcttbvm80cuiN0Ozs=
Date: Sun, 28 Jul 2024 03:10:21 +0800
MIME-Version: 1.0
Subject: Re: [PATCH v3 00/19] Add Freescale i.MX8qxp Display Controller
 support
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, kishon@kernel.org,
 aisheng.dong@nxp.com, agx@sigxcpu.org, francesco@dolcini.it, frank.li@nxp.com
References: <20240724092950.752536-1-victor.liu@nxp.com>
 <wky3mjl7fn773myatyrdsea6oc2xebkvrgmigmmoj36eswgqry@2kox5ad5dynl>
Content-Language: en-US, en-AU
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
In-Reply-To: <wky3mjl7fn773myatyrdsea6oc2xebkvrgmigmmoj36eswgqry@2kox5ad5dynl>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240727_121053_235341_AACEE638 
X-CRM114-Status: GOOD (  15.67  )
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

Hi,

On 7/28/24 00:39, Dmitry Baryshkov wrote:
>> Hi,
>>
>> This patch series aims to add Freescale i.MX8qxp Display Controller support.
>>
>> The controller is comprised of three main components that include a blit
>> engine for 2D graphics accelerations, display controller for display output
>> processing, as well as a command sequencer.
>>
>> Previous patch series attempts to do that can be found at:
>> https://patchwork.freedesktop.org/series/84524/
>>
>> This series addresses Maxime's comments on the previous one:
>> a. Split the display controller into multiple internal devices.
>>     1) List display engine, pixel engine, interrupt controller and more as the
>>        controller's child devices.
>>     2) List display engine and pixel engine's processing units as their child
>>        devices.
>>
>> b. Add minimal feature support.
>>     Only support two display pipelines with primary planes with XR24 fb,
>>     backed by two fetchunits.  No fetchunit dynamic allocation logic(to be done
>>     when necessary).
>>
>> c. Use drm_dev_{enter, exit}().
>>
>> Since this series changes a lot comparing to the previous one, I choose to
>> send it with a new patch series, not a new version.
> I'm sorry, I have started reviewing v2 without noticing that there is a
> v3 already.
> 
> Let me summarize my comments:
> 
> - You are using OF aliases. Are they documented and acked by DT
>    maintainers?
> 
> - I generally feel that the use of so many small devices to declare
>    functional blocks is an abuse of the DT. Please consider creating
>    _small_ units from the driver code directly rather than going throught
>    the components. 

Well, I really don't think so. I don't agree.

I have checked the DTSpec[1] before type, the spec isn't define how
many is considered to be "many", and the spec isn't define to what
extent is think to be "small" as well.

[1] 
https://github.com/devicetree-org/devicetree-specification/releases/tag/v0.4

-- 
Best regards
Sui


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
