Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9501C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 19 Nov 2022 07:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iy+PZ9cT9afK83qnCcROy94ROBAzqkh4X6RmAQBtJoo=; b=Ev+3+uey70o5Wn
	ji8f0KtWZU5doof/UIjtSOM+8HshO6O8MlAn1m1oYx2jbtqGWNE7SBa4bOG88MS4jrSR0E8lO9db7
	j5x5ioLGrXQoF2tDFXTIDuKQxEROHZMtpJA3UZVimlr4dV4iO47I3vaEfZtYcMau7J3s1Qc3uBain
	aX1eDTh3/BjocxwYNMUShPDQDdFwD6mGiztrvA7Xf1am0EEUPrntZm191xq/KH/tKWDo8cswzJnb+
	Vuws94BG3VcgWTM1IwB2cB2ROmK1Ayyp6xlKP0VW2NzCLKxtgsWeLJUGwVhYC6cIqOpVFpzLR6f/5
	LYDt9Sz/scGsw0vTnKGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owI9A-00C14O-UP; Sat, 19 Nov 2022 07:20:16 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owI8v-00C12P-Mi; Sat, 19 Nov 2022 07:20:05 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout3.routing.net (Postfix) with ESMTP id DD8B562608;
	Sat, 19 Nov 2022 07:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1668842396;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ov0YYXmwqRVPJ8mk/jWh4VlTvRDF8RS9SB8/7u28NwE=;
	b=LRCeCOrA6CSrOStxeGORqIrn0AjDw/k9ShF4O9sMHRnqkKk5OQtv62vv6wA/ucBL6JncGh
	3myF4/S+2aEFiKopUC4Bq0fOWRi8IMO0K1t+/nTgaXH0g6dr1mqZD/K8D4qtWI+CssdiXr
	QmMxwGHHrY88p7IJ1BbKM4VYHRLOxxI=
Received: from [127.0.0.1] (fttx-pool-80.245.75.145.bambit.de [80.245.75.145])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 88C511000CA;
	Sat, 19 Nov 2022 07:19:54 +0000 (UTC)
Date: Sat, 19 Nov 2022 08:19:52 +0100
From: Frank Wunderlich <linux@fw-web.de>
To: Rob Herring <robh+dt@kernel.org>, frank-w@public-files.de
CC: linux-mediatek@lists.infradead.org, Ryder Lee <ryder.lee@mediatek.com>,
 Jianjun Wang <jianjun.wang@mediatek.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Bo Jiao <Bo.Jiao@mediatek.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v6 11/11] arm64: dts: mt7986: add BPI-R3 nand/nor overlays
User-Agent: K-9 Mail for Android
In-Reply-To: <CAL_JsqKz1qQFZnStLnApraJvp=-cQoW6x5=p7-GBcftYKVMErg@mail.gmail.com>
References: <20221118190126.100895-1-linux@fw-web.de> <20221118190126.100895-12-linux@fw-web.de> <CAL_JsqKiRzRToSzk3q+csWR5DEZjZpQWChqZ3mH8MLruvfe=Dw@mail.gmail.com> <99114D73-22EF-43CD-848E-88A37B29B953@public-files.de> <CAL_JsqKz1qQFZnStLnApraJvp=-cQoW6x5=p7-GBcftYKVMErg@mail.gmail.com>
Message-ID: <192D4414-DC88-4321-BB2A-4345C48E3C12@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 0ca9227a-4531-4695-b383-da3c235452f3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_232003_202372_C6E08F08 
X-CRM114-Status: GOOD (  26.74  )
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

Am 8. November 2022 15:45:49 MEZ schrieb Rob Herring <robh+dt@kernel.org>:
>On Fri, Nov 18, 2022 at 4:05 PM Frank Wunderlich
><frank-w@public-files.de> wrote:
>>
>> Am 18. November 2022 22:39:52 MEZ schrieb Rob Herring <robh+dt@kernel.org>:
>> >On Fri, Nov 18, 2022 at 1:01 PM Frank Wunderlich <linux@fw-web.de> wrote:
>> >>
>> >> From: Frank Wunderlich <frank-w@public-files.de>
>> >>
>> >> Add devicetree overlays for using nand and nor on BPI-R3.
>> >
>> >Can you not tell at runtime which one you booted from? If not, how
>> >does one choose which overlay to apply? If you can, why not populate
>> >both nodes and enable the right one? IMO, if all h/w is present, it
>> >should all be in the DT. Selecting what h/w to use is a separate
>> >problem and overlays aren't a great solution for that.
>>
>> It is not the decision about bootdevice,more available devices.
>>
>> Only 1 spi device (nand OR nor) is available
>> at boottime as they share same spi bus and
>> chipselect is set via hw jumper.
>> Both nodes have reg 0,which is imho not
>> supported in linux.
>
>As long as one is set to disabled, it should be fine.
>
>
>> I choosed overlays to add the right spi
>> device on the right mmc device where
>> similar selection happens (see patch 10).
>> Either sd OR emmc can be used (1 mmc
>> controller,first 4bits from bus switched by
>> hardware jumper).But for mmc i use it as
>> base fdt because i see mmc as primary
>> device which holds rootfs too. Nand/nor is
>> imho helping device for accessing emmc or
>> like rescue system (only uboot).
>
>No way to read the jumper state or know what you booted from I gues?
>
>> I probe in uboot if emmc is available (mmc
>>  partconf) and choose emmc else sd. For
>>  spi i try with sf command to check for nor,if
>>  this does not work i apply nand overlay.
>
>Instead of applying overlays, wouldn't just changing 'status' be easier?

It will be easier,but requires dts for all
 combinations,we have have sd/emmc
 combination twice (once for nand
 enabling,once for nor) and we have then 4
 full dts instead of smaller overlays in fit.

So i should add spi subnodes both disabled
 in base dtsi and create 4 dts (sd-nand,sd-nor,emmc-nand,emmc-nor) with
 mmc node and enabling the right spi node?
>>
>> >> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
>> >> ---
>> >> maybe rename to dtso?
>> >>
>> >> "kbuild: Allow DTB overlays to built from .dtso named source files"
>> >> https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=dt/next&id=363547d2191cbc32ca954ba75d72908712398ff2
>>
>> Should i do this?
>
>Yes. .dts -> .dtbo is going to be removed.

Do this if still using overlays,will test new way.

Maybe we can apply parts 1-9 first?

>> >> more comments about the dt overlay-support:
>> >>
>> >> https://patchwork.kernel.org/comment/25092116/
>> >> https://patchwork.kernel.org/comment/25085681/
>>
>> Daniel suggest define sd/emmc as overlay too...with way you mention below we could create 4 full fdt without applying overlays in uboot.
>
>Yes, but if you are going to do that, then you can just do all this
>with includes.

This is a third way if i understand correctly

Make all of them as overlay (dtso?) but
 build dtb by combining them in makefile.

This looks the best way because it avoids
 redundand code for mmc node and allows
 my current spi config (not the status way
 which may break due to same unit address).

I guess my base dtsi is then a dts too?

Or should these overlays only duplicated and either include sd dts or emmc dts (but this creates again redundant code)?
>> >> --- a/arch/arm64/boot/dts/mediatek/Makefile
>> >> +++ b/arch/arm64/boot/dts/mediatek/Makefile
>> >> @@ -8,6 +8,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-x20-dev.dtb
>> >>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-rfb1.dtb
>> >>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-bananapi-bpi-r64.dtb
>> >>  dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-emmc.dtb
>> >> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nand.dtbo
>> >> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nor.dtbo
>> >
>> >These need rules to apply them to the base dtb(s). You just need:
>> >
>> >full.dtb := base.dtb overlay.dtb
>> >dtb-y += full.dtb
>>
>> I would prefer to do this in bootloader to allow all 4 possible configurations:
>>
>> Sd+nand
>> Sd+nor
>> Emmc+nand
>> Emmc+nor
>
>That's fine. The purpose here is to document what the overlays apply
>to, check that they actually apply, and validate them when applied
>(unless someone wants to figure out all the issues with validating
>just an overlay and make that work). You for example have an
>undocumented compatible in yours (denx,fit).

Oh,need to check,copied partitions from my
 uboot dts...maybe there is a linux version
 for marking it as fit partition,else i drop
 completely.

So i i stay with current way i have to rename
 overlays to dtso and add info about base
 dtb (bpi-r3-sd/emmc) to commit message
 or into the overlay itself?

>Rob


regards Frank

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
