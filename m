Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C195C3601A
	for <linux-phy@archiver.kernel.org>; Tue, 17 Sep 2024 13:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPi8D7s9GqDBBeca75SqJGSOp4yWOoXLw8NxinU98D0=; b=idp4A0QclT/znL
	Ht7hn7Wh+a1hFTHQ4g/olZsQyp7rVzgNMbrItDCCzAXf5yu9hahz8U1lwy1SUUz6Z+xjtc2It7LVM
	VScMKriK/RpyuYGGmYXvbaKainEzCLOOeApnhjTFzea7EnGiWOnQBJ/tyNIleLmd57WEsrjvJOqC4
	fkIVs19Vd8AxxotQbZfW6uTk0aJkDgBl760QyFurgKvwsoxwk3UIogV04SRzZx0j3bxPIa1C5KNio
	1yVeNZNqWICdzjfF0+Dj4Gq1sZ/qua0mSgmb+DymeRBvOfClXX5ckaLdvLY8lFZvEz6ZjBf2lmCfD
	fCKkTGx5iLsBTPmQWiWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqYVk-00000006FrN-0To7;
	Tue, 17 Sep 2024 13:44:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqYVg-00000006Fqq-3XBE
	for linux-phy@lists.infradead.org;
	Tue, 17 Sep 2024 13:44:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6F22F5C54D1;
	Tue, 17 Sep 2024 13:44:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76D00C4CEC5;
	Tue, 17 Sep 2024 13:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726580691;
	bh=NrDaq5JA3mzdTYXCw/EFz7LBBcGcWuIObz7V+lBi06Y=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eReiwT/Vl+VoZ+vbVwFViNf2IDd1z73PSixNyyNYYnD/y9fjEEntcgvQT9Dy+3UcS
	 nNp/2uuuUXMx/3qdcF6L4ImQ5Gb3/TWWdoQqLaGLnZsfCf7PcUNMQosfejfOpF8YM0
	 6F0A0rJxHQ7FFUbPZ6hT/Kti/1oR5pLGBORBWQ4fKnCnVJvBGQDtWWx2YUec6BuQZQ
	 8aHhyhfTk9efeAp6xGnFarlOzgeNDehv5K2pTG39ccFRcoEp6t+rVoo+s3IQL1+QS3
	 E/VCU0Vmcj7FZg/Jz+xtipI6bpNjZ5Su+n+LynxEIWsvTW0TY0OmaobEmOPOwTqkvg
	 pwbSI+pIIGAaA==
Message-ID: <c7d18bce-cabc-4edc-b1b9-085653110528@kernel.org>
Date: Tue, 17 Sep 2024 15:44:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] drm/msm/dp: Add DisplayPort controller for SA8775P
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>,
 Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org,
 andersson@kernel.org, simona@ffwll.ch, dmitry.baryshkov@linaro.org,
 abel.vesa@linaro.org, robdclark@gmail.com, quic_abhinavk@quicinc.com,
 sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quic_khsieh@quicinc.com, konrad.dybcio@linaro.org,
 quic_parellan@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 devicetree@vger.kernel.org, quic_riteshk@quicinc.com,
 quic_vproddut@quicinc.com
References: <20240911100813.338-1-quic_mukhopad@quicinc.com>
 <20240911100813.338-6-quic_mukhopad@quicinc.com>
 <ZuH3WqMwn7fl3nhh@hu-bjorande-lv.qualcomm.com>
 <a44a6f08-1f4a-4e5c-a4e4-30ab65c467f7@quicinc.com>
 <ZuStkRFvwJT7re6D@hu-bjorande-lv.qualcomm.com>
 <b2d94fa5-6924-46f6-95cf-bde315ccbdbd@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <b2d94fa5-6924-46f6-95cf-bde315ccbdbd@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240917_064452_961675_1A163326 
X-CRM114-Status: GOOD (  11.25  )
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

On 17.09.2024 10:12 AM, Soutrik Mukhopadhyay wrote:
> 
> On 9/14/2024 2:54 AM, Bjorn Andersson wrote:
>> On Thu, Sep 12, 2024 at 03:34:05PM +0530, Soutrik Mukhopadhyay wrote:
>>> On 9/12/2024 1:32 AM, Bjorn Andersson wrote:
>>>> On Wed, Sep 11, 2024 at 03:38:13PM +0530, Soutrik Mukhopadhyay wrote:
>>>>> The Qualcomm SA8775P platform comes with a DisplayPort controller
>>>>> with a different base offset than the previous SoCs,
>>>>> add support for this in the DisplayPort driver.
>> Please check the line wrapping of this as well; the lines here should be
>> wrapped at 75 columns.

[...]

> 
> 
> We cross-checked the mdss architecture and found that there are only 2 dp controllers for each mdss.
> 
> We will add all 4 and mention in the commit message that "Only MDSS0 DPTX0 and DPTX1 have been validated".

Looking at some docs, it seems like 2x 2 controllers is indeed the
correct config after all

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
