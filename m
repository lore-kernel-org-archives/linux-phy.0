Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39F1EC54EBC
	for <linux-phy@archiver.kernel.org>; Tue, 10 Jan 2023 12:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vU5wZyuYWQB67pnF/hO5SWwzUjWSehpoIMOh47Vu1Go=; b=bmc4+wrpBo61OZ
	1zBIky6LnKqzVf4CnUHiH5GoPeuHSev/1sl+tr6cQ+M6vsJOl2yylBelssOd+zFyQ5x1iowBqVIMV
	vopzzdd45zR+0AeprOjNjckM46X6re/4TOmB0zV9E8pfdiWE1rNKZ0NqtXu1tASj7nvqdZmoOQlRg
	AwADpWvcjOEdvsNj5xCwQVLu0in12802xqiq9jEJP3isxsdprdOArsSmEv6d5Bew/Tu0VAk3PE3aF
	RKg2+zLO9sWrDYmnNuYjgEjfZuky7uUMTQOivOHf0DOqyqCVSENpn5Q6Hqaj+fJOELEVorlFQrE4m
	btvlmrlFxA49CbyavuOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFDLk-006kLg-Km; Tue, 10 Jan 2023 12:03:28 +0000
Received: from relay05.th.seeweb.it ([5.144.164.166])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFDLi-006kK8-90
	for linux-phy@lists.infradead.org; Tue, 10 Jan 2023 12:03:27 +0000
Received: from SoMainline.org (94-211-6-86.cable.dynamic.v4.ziggo.nl [94.211.6.86])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r2.th.seeweb.it (Postfix) with ESMTPSA id D44123F272;
	Tue, 10 Jan 2023 13:03:16 +0100 (CET)
Date: Tue, 10 Jan 2023 13:03:15 +0100
From: Marijn Suijten <marijn.suijten@somainline.org>
To: Lux Aliaga <they@mint.lgbt>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
	avri.altman@wdc.com, bvanassche@acm.org, keescook@chromium.org,
	tony.luck@intel.com, gpiccoli@igalia.com,
	~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org, linux-hardening@vger.kernel.org,
	phone-devel@vger.kernel.org, martin.botka@somainline.org
Subject: Re: [PATCH v6 0/6] arm64: dts: qcom: sm6125: UFS and
 xiaomi-laurel-sprout support
Message-ID: <20230110120315.53edpr334vlpaxc4@SoMainline.org>
Mail-Followup-To: Marijn Suijten <marijn.suijten@somainline.org>,
	Lux Aliaga <they@mint.lgbt>, agross@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
	kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
	bvanassche@acm.org, keescook@chromium.org, tony.luck@intel.com,
	gpiccoli@igalia.com, ~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org, linux-hardening@vger.kernel.org,
	phone-devel@vger.kernel.org, martin.botka@somainline.org
References: <20230108195336.388349-1-they@mint.lgbt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230108195336.388349-1-they@mint.lgbt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_040326_488760_6F73D554 
X-CRM114-Status: GOOD (  10.26  )
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

On 2023-01-08 16:53:30, Lux Aliaga wrote:
> Introduce Universal Flash Storage support on SM6125 and add support for the Xiaomi Mi A3 based on the former platform. Uses the name xiaomi-laurel-sprout instead of the official codename (laurel_sprout)

Don't forget to wrap these lines properly, same for the changelog below.

> due to naming limitations in the kernel.

I doubt it's a limitation, more like a convention.

> Changes since v5:
> - Drop "non-removable" property from ufs_mem_hc for sm6125 platform
> - Drop "status" and "autorepeat" properties from gpio-keys node for xiaomi-laurel-sprout
> - Rename "key-vol-up" node to "key-volume-up" for xiaomi-laurel-sprout
> - Drop "gpio-key,wakeup" property from key-volume-up node for xiaomi-laurel-sprout

No, you /replaced/ this deprecated property with wakeup-source, which
has the same meaning.

> - Set "linux,input-type" and "wakeup-source" properties on key-volume-up node for xiaomi-laurel-sprout

No, you /removed/ linux,input-type because its value 1 for EV_KEY is
already the default.

> - Change "key_vol_up" node name to "vol-up-n-state" and its label to "vol_up_n" in PM6125 GPIO node for xiaomi-laurel-sprout
> - Use labels instead of node names for PM6125 ADC channels in xiaomi laurel-sprout
> - Set "regulator-allow-set-load" properties on l4, l5, l10, l11, l18 and l24 regulators on xiaomi-laurel-sprout
> 
> v5: https://lore.kernel.org/linux-devicetree/20221231222420.75233-2-they@mint.lgbt/
> 
> 
> 

No need for excessive newlines here.

- Marijn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
