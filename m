Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7964DC433EF
	for <linux-phy@archiver.kernel.org>; Fri,  4 Feb 2022 06:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wm+mz+wgk+OuRyON69v0l8kSCnxwajRfwqz+Zj/oaMw=; b=HXowTMQfOG4/OeHpA4I8dJQ+T8
	jpsWy707jjA2LXA6hCH0UYcgmi3bGXjAaVmCe0W/8PrQOGm7Yn9T+DPB/P5LitgEWZmKPQMbw/xIT
	/xLtLhIekRo6ddJSVPLvvQeYTl1Fo/SCO10FLYLfbJRPYopTwSWyU4Tph/lGvFAMYDpogZP5DV2tt
	SI58taiNTpyVprczmAq42JKvgpA0Py1pn0gioVRX15suKMcSXJu4J6glyvn4iWXqQmVtJcU+7F+KE
	yu7xZDWJKTjSvyDLKoeP7aJv6EA0C60Y1/br3msbQmfWEz3TihinCjDZUX/H5W1av2uweX0aZB9hi
	RMHAY55Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFrvn-003Yno-US; Fri, 04 Feb 2022 06:18:51 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFrvk-003YnU-8Z
 for linux-phy@lists.infradead.org; Fri, 04 Feb 2022 06:18:50 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2146IbCu035157;
 Fri, 4 Feb 2022 00:18:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1643955517;
 bh=/FT23SvfglRjzI4nnVzbze5Z7SGFAuqP/w3IBygPSS4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Gvu8s4IKOdts5gJkD/9fcldul+jaQTq+z4aKnP+fUhvI6xlDJeorShtnKLnvfzfpc
 6uHOToZ9Oqy8L8CNKsl7yMNl83r0r1xYcTkhGFpZe8lCLF20POMkxCIi+J6T4R27L4
 ttotWLPtMAsltQAO6Px5Xx1mzygODposF+CPLnh0=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2146Ibgi011830
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 4 Feb 2022 00:18:37 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Fri, 4
 Feb 2022 00:18:36 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Fri, 4 Feb 2022 00:18:36 -0600
Received: from [172.24.145.9] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2146IX0m027334;
 Fri, 4 Feb 2022 00:18:34 -0600
Subject: Re: [PATCH v2] phy: cadence: Sierra: Add support for skipping
 configuration
To: Vinod Koul <vkoul@kernel.org>
CC: Kishon Vijay Abraham I <kishon@ti.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Swapnil Jakhade <sjakhade@cadence.com>, Dan
 Carpenter <dan.carpenter@oracle.com>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20220128072642.29188-1-a-govindraju@ti.com>
 <YfqT444YoGBIturt@matsya> <1d5c41a8-24aa-3cfb-fff0-c2695102aa91@ti.com>
 <YfseaJADVocxqnOu@matsya> <3444e347-2603-6f5b-94de-09642c41fc27@ti.com>
 <YfzERMrPh+TrXr9x@matsya>
From: Aswath Govindraju <a-govindraju@ti.com>
Message-ID: <004e4d00-936f-1e4f-8378-b779ae168c60@ti.com>
Date: Fri, 4 Feb 2022 11:48:33 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YfzERMrPh+TrXr9x@matsya>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_221848_459965_C7ADB224 
X-CRM114-Status: GOOD (  19.81  )
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

Hi Vinod,

On 04/02/22 11:44 am, Vinod Koul wrote:
> On 03-02-22, 11:25, Aswath Govindraju wrote:
>> Hi Vinod,
>>
>> On 03/02/22 5:44 am, Vinod Koul wrote:
>>> On 02-02-22, 20:14, Aswath Govindraju wrote:
>>>> Hi Vinod,
>>>>
>>>> On 02/02/22 7:53 pm, Vinod Koul wrote:
>>>>> On 28-01-22, 12:56, Aswath Govindraju wrote:
>>>>>> In some cases, a single SerDes instance can be shared between two different
>>>>>> processors, each using a separate link. In these cases, the SerDes
>>>>>> configuration is done in an earlier boot stage. Therefore, add support to
>>>>>> skip reconfiguring, if it is was already configured beforehand.
>>>>>
>>>>> This fails to apply, pls rebase and resend
>>>>>
>>>>
>>>> On rebasing, I am seeing no difference in the patch and I am able to
>>>> apply it on top of linux-next/master commit 6abab1b81b65. May I know if
>>>> there is any other branch that I would need to rebase this patch on top of?
>>>
>>> It should be based on phy-next which is at
>>> 1f1b0c105b19ac0d90975e2569040da1216489b7 now
>>>
>>
>> I have posted a respin of this patch after rebasing it on top of
>> phy-next. One aspect that is not clear to me is, phy-next branch does
>> not have the following commit which is present in linux-next master,
>>
>> 29afbd769ca3 phy: cadence: Sierra: fix error handling bugs in probe()
> 
> This is in fixes
>>
>> When the respin of this patch(v3) is merged with linux-next/master
>> wouldn't it cause merge-conflicts?
>>
>> May I know how would this be handled?
> 
> If need arises (we have a dependency) I would merge fixes into next and
> then apply patches. Cover letter of the patches should mention that
> 

Thank you for the clarification. I will make note of mentioning this
from next time. So, just to confirm, if the fixes are merged then v2 of
this patch series will apply cleanly.

Thanks,
Aswath

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
