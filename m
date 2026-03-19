Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4EEE109023A
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 15:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oF7gDCE6lKdayoC3KTjMml4WpRK2IehCFsOnWNWtKFg=; b=s8QmFq1s7S+b0u
	L1C9NEX0GLrfF9J73BDXkYmgfv8ZeJsX/XT+59lgEvJTRqjsV4cktvCEAWtS4UPQ6tqSVomssR833
	CpRN8M8QxzXltfIjbG4BhIxYjVWZ5nfwx+AYR2Fmz6KSBhaYl+HSfLaO420hzz4cqiOIeMAnrFThO
	SgLIE9Mx5sQb2T58Tun0Vp7QcYeR4grayEIu6z0sqfh+aFKbfDPqPa444b5dYpGzLWfaIss/TTrQp
	RjfVFUDNXa+mLgqJYSSG9ezVNr3sarygBOG5xyPemcwLKPlpmoGm5ea3KZwp1ZWaoL523QhWqwu3H
	Djo6nqoXaQmqIEziQcsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Exg-0000000ArvC-1kRV;
	Thu, 19 Mar 2026 15:07:00 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Exe-0000000Aruo-1x1a
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 15:06:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8ECA14378F;
	Thu, 19 Mar 2026 15:06:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A7AEC19424;
	Thu, 19 Mar 2026 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773932816;
	bh=iWMn2mqaeBlBrAT5D6y+nE5Iz4bKcLZY2PCtIYzPMKI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iN/IcxvxjmBw+DWdH/+faofTJaE9hFATxGB3X5UDnD7HnuCZ3L2a1JAg9stIQQqoa
	 kXV5tyY02zSsqBg82LcwtvahmRPSoKo5cPru/0ATiO6Ez4AR8mc+z6usF9XytZeJ3v
	 74GU2zSHKnWmfYK41edlEVimGn/CUYKFQrrgfvip7gdm1qgJgjKCviooFG6AB/nmhD
	 eUxXRSLnrwk2goIriwa8ZyI7uxpJi3ok1xdFbH4iLYJZD7E1uvIDp5KjIALzAbyRYc
	 5AtMKDAh1tHXb7ltPO+KtMMkrgKFPASrR42GF0eOGin2h4gYDvwFfOZGvoe9Q+bzBm
	 Cr+r+vA2rKQbQ==
Message-ID: <cb752d25-9eab-4cb0-91a5-8aebb7e49169@kernel.org>
Date: Thu, 19 Mar 2026 15:06:51 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
 <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
 <16b10f17-ecd3-4cdd-ac3f-f64127d60ace@linaro.org>
 <ulenfus552ggobis4gmi7eh27tikdaxbgm2oj63b5l2vemlfxc@ib5f2xaqurj6>
 <26XTdUyQTB41Oc4D5HnMtSm_QpZRjlkljQRJVw-u1Zp3Ltn9s4LVU-LQkP6drdl3Z3GGssLCCbsVYPFEqssHcQ==@protonmail.internalid>
 <65e06b2e-eeb9-45af-97ac-4ae60f652361@linaro.org>
 <9578400d-30ac-4d8c-9295-ee4ec8af3b2c@kernel.org>
 <pXsqxK3NVHOSeJHN2u2QbCefn-pOmgmVNM9AKAxinHJdvEBjZy40Asek29h6THEIWLKZFT1dIr17tF2QRSA7UA==@protonmail.internalid>
 <4d376a1b-37d7-4d37-8579-a0053f7b91f2@linaro.org>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <4d376a1b-37d7-4d37-8579-a0053f7b91f2@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_080658_543579_F813EEF9 
X-CRM114-Status: GOOD (  11.08  )
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

On 19/03/2026 14:05, Neil Armstrong wrote:
>> There's no reason to remove that from CAMSS - it would be an ABI break in user-space anyway.
>>
>> The media entity in CAMSS msm_csiphyX handles format negotiation and pipeline routing. The PHY driver handles electrical configuration. They don't conflict and there multiple cited examples of this upstream already.
> If csiphy component was only handling  electrical configuration, the only code handling csiphy would be phy API calls, not be part of the pipeline configuration. Today, it's a media element
> 
> The whole CAMSS architecture is wrong, it should be modular, each hardware module should be an independent driver and all be connected via port/endpoint and configured with the media controller API.
> 
> If you_really_ want to move the "electrical configuration" part of the CSPIPHY out of camss frankendriver, fine, then first just create an internal PHY device as an aux device, then continue migrating_all_ CAMSS components into independent driver modules, then in the end re-architecture the whole DT description by adding a node per component with a proper port/endpoint representation to be configured via the media controller API.
> 
> Neil

Re-architecting the whole driver without breaking legacy code is well 
out of scope.

I'd note making a standalone CSIPHY driver 100% fits in with such a 
goal. I don't think I've seen one good reason why CAMSS needs an aux 
device and can't follow established upstream paradigms for Cadence and 
Rockchip.

Anyway I take the feedback on polarities and will in v5 of this patch 
address.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
