Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77FF4CCA464
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 19:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w39EWV73qJ3+5wG0713NTSC1i7R4AJveUkfIKhVmsTo=; b=ikkGO2Nt2+w16F
	VonrmmYfnDKVIscBvJlHVFhnpCdqIXWGP2ovNfaHgP9dxt681/nnGW6QLEQs79BsgQ7eBbwck85em
	LXpRHpLEGrEl4U8e0qQWRs0C5Ncytj7AycwLG/3JKN0p4xIzXY4P4bIgjklYsGbOXs4XGMsbGHJe1
	p26PaesyVu0BUI/yjCFI/Ty2ijfMU4edhfcdUfo7DqlzXk9s4wpLQU1c8qXmhNIL/s8aqA5lH1XAc
	aFDVffplpvlECFolEu3ZS85b63dFk4IHnb7UzF9W1UYEmCWIjR1DSp1c5K/ItEsNF2bmrFVMu0F88
	31LXA3L6gb6qaKvUMMMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHRQb-00000001H5z-2o97;
	Thu, 15 Oct 2026 19:47:49 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHRQY-00000001H5Y-1yAZ
	for linux-phy@lists.infradead.org;
	Thu, 15 Oct 2026 19:47:48 +0000
Received: from mail01.layka.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 87A6A81043;
	Thu, 15 Oct 2026 21:47:34 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Diwc9Re1lGn; Thu, 15 Oct 2026 21:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1792093653; bh=rEzZFF3roU9aTVZ9/CO59TibiUooKjnCPKswifSLXUo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=j/xQ8388pn3sZMK4saWSF55ZYjCUe16chydMwkSrSE2RGaeI3LK0MkCqwFisOYAJG
	 BAfGhY0c+b29/Zj/Tz6AoErq2ZHYH1Zsb68FWk+w/Zl83M5fAzxMpsd1YdF0SQvQJM
	 eE8LZO+IN80wShucwt+NZFAlJLDshvwqBIP/BeO7gWl8wkwsz8pYzVwuFVJDOsc2Yk
	 ZZxeMpsA8j40Xznf4KRnh+TASBiLBN/wqc1yy2CdO3aABm1D2sbcNsauBIS9ij0Yri
	 xf7jfjJf5q0q2Ou42AjodD6ewb+SGdOBePRZcUum2UNf85EXOO5HcTS3nG0QTWchSg
	 8Cac7cSXGKugw==
MIME-Version: 1.0
Date: Thu, 15 Oct 2026 19:47:33 +0000
From: Rustam Adilov <adilov@disroot.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>,
 Stanley Chang <stanley_chang@realtek.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski
 <krzysztof.kozlowski@oss.qualcomm.com>, Manivannan Sadhasivam
 <manivannan.sadhasivam@oss.qualcomm.com>
Subject: Re: [PATCH v8 3/6] dt-bindings: phy: realtek,usb2phy.yaml: extend for
 resets and RTL9607C support
In-Reply-To: <1106b5dd-5453-46e4-90a4-7c7673cd4dd3@kernel.org>
References: <20261012173739.36377-1-adilov@disroot.org>
 <20261012173739.36377-4-adilov@disroot.org>
 <1106b5dd-5453-46e4-90a4-7c7673cd4dd3@kernel.org>
Message-ID: <d71a544ad34c34ac4db7dc8fd8004245@disroot.org>
X-Sender: adilov@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_124746_650225_B9D3301D 
X-CRM114-Status: GOOD (  22.26  )
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

On 2026-10-13 06:05, Krzysztof Kozlowski wrote:
> On 12/10/2026 19:37, Rustam Adilov wrote:
>> Add the "realtek,rtl9607-usb2phy" compatible for USB2 PHY on the RTL9607C
>> SoC series.
>> 
>> Add a resets property to properties to describe the usb2phy reset line.
>> 
>> In RTL9607C, USB2 PHY reset line is from "IP Enable controller" which is
>> multipurpose and handle activating various SoC peripherals.
>> 
>> It is unclear whether RTD SoCs have something similar to that so set
>> the resets to false for these devices.
>> 
>> RTL9607C requires the "resets" to be specified so add the corresponding
>> if check for the "realtek,rtl9607-usb2phy" compatible.
>> 
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
>> Signed-off-by: Rustam Adilov <adilov@disroot.org>
> 
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC. It might happen, that command when run on an older
> kernel, gives you outdated entries. Therefore please be sure you base
> your patches on recent Linux kernel.
> 
> Tools like b4 or scripts/get_maintainer.pl provide you proper list of
> people, so fix your workflow. Tools might also fail if you work on some
> ancient tree (don't, instead use mainline) or work on fork of kernel
> (don't, instead use mainline). Just use b4 and everything should be
> fine, although remember about `b4 prep --auto-to-cc` if you added new
> patches to the patchset.
> 
> You missed at least devicetree list (maybe more), so this won't be
> tested by automated tooling. Performing review on untested code might be
> a waste of time.
> 
> Please kindly resend and include all necessary To/Cc entries.
> 
> 
> Please use subject prefixes matching the subsystem. You can get them for
> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
> your patch is touching. For bindings, the preferred subjects are
> explained here:
> https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters
> 
> There is never "yaml" in any prefix. Don't come up with own style.
> 
> 
> Best regards,
> Krzysztof

Oi, i am very sorry about that. I am using the scripts/get_maintainers.pl
command from [1] and it only covers the last commit which was not the one
touching the realtek,usb2phy.yaml so it didn't get any of the device tree
people. I don't exactly know if i can get it to output full maintainer list
in the context of patch series in one swoop without running it across every 
single commit and then manually combining all. I think that is what i did in
v7 and prior versions and forgot to do it here.

As for the yaml prefix, will remove it.

[1] https://kernelnewbies.org/FirstKernelPatch#SubmitPatch

Best,
Rustam

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
