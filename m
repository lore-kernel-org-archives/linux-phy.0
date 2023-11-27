Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50F40C4167B
	for <linux-phy@archiver.kernel.org>; Mon, 27 Nov 2023 07:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0lBj2+UgpbBftlISg3NCFkliKlbHbBKKgq8A4LVm80=; b=AqufJea6dDMSNE
	+slThCPFbY+X8P2NZgU6hSDdqMT4VpwVTocWnlObCKFBhqm38ygYW/6ZX/T/5DpNnQE+W/AWPfRXM
	Z8SYU4KP7bgZvG6ecfd/Goj3uCcnnKyHzEzmpRljcugoXvOWrpR6qs19pxtwVLURtJSdm0KC5GVmD
	v2qxn+SHqoTJMlpQUYvbDaos5dKYPJA9qptDBI/cOFSMZSEF3s/5Q2eFhMXvk0zWxj1F/9n7EcwKn
	8Ltpuv5qiDNgoeYbLds+ioLHgEI95Nw/QNwg/4P171ujtB5iXtQpswQU9bEHDa+ni1GEeOupGIfkZ
	lAPtxecihBTWYVpc5TKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VuZ-001hzb-39;
	Mon, 27 Nov 2023 07:20:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VuW-001hy0-0h;
	Mon, 27 Nov 2023 07:20:05 +0000
X-UUID: 5f5d793e8cf511ee86758d4a7c00f3a0-20231127
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:Subject:MIME-Version:Date:Message-ID; bh=K2PJi3jwZOEV4t9opwJNWlHsedlGUWYs96i+olFWgks=;
	b=oTVS80KkpX1TIVZwCQ5i0YY3rM9Rdn8C9STXLV2OEtabIlVQvfs6bvaLeykkoK6dK5zikcdLdTr3S1RMgYknPHDZXMAICX+yglJHf1qxigEyRPi4a2nmWngEfWeYg5mfDGDUDHHRPxj1zHr3UqSkIBTB7psWEiBeO/XbKw58YhQ=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.34,REQID:63888229-8560-4bb5-b421-b5b56ee712b2,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:abefa75,CLOUDID:6d6d8460-c89d-4129-91cb-8ebfae4653fc,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 5f5d793e8cf511ee86758d4a7c00f3a0-20231127
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <macpaul.lin@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 322574641; Mon, 27 Nov 2023 00:19:58 -0700
Received: from mtkmbs13n2.mediatek.inc (172.21.101.108) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 27 Nov 2023 15:09:20 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkmbs13n2.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.2.1118.26 via Frontend
 Transport; Mon, 27 Nov 2023 15:09:16 +0800
Message-ID: <239def9b-437b-9211-7844-af4332651df0@mediatek.com>
Date: Mon, 27 Nov 2023 15:09:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 1/2] dt-bindings: phy: mediatek: tphy: add a property for
 force-mode switch
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Chunfeng Yun
	<chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
	<robh+dt@kernel.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Bear.Wang <bear.wang@mediatek.com>, Pablo Sun
	<pablo.sun@mediatek.com>
References: <20231125012303.760-1-chunfeng.yun@mediatek.com>
 <e34c2746-8e93-48b8-9c96-690242fbf6e9@linaro.org>
From: Macpaul Lin <macpaul.lin@mediatek.com>
In-Reply-To: <e34c2746-8e93-48b8-9c96-690242fbf6e9@linaro.org>
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--23.998500-8.000000
X-TMASE-MatchedRID: oHOSwQSJZWjOA/Z0gqCQkia1MaKuob8PCJpCCsn6HCHBnyal/eRn3gzR
	CsGHURLuwpcJm2NYlPAF6GY0Fb6yCkcld4HSm4ijJhFEQZiq2ZRaNaxZBRbNWi8zQZ2rR/OpHAC
	UcDvcWyAWCFKYHMKZzrku/UHvXeV0lKHFFpLwOfV0BEBFOTiHn0yQ5fRSh265DpCUEeEFm7BCcg
	190NG0Lm7WtzS49SDh7gJfo9qwL5MLd3u89FoqUYx50lzSVLoGuLwbhNl9B5Vb6PBUqmq+Uqmw5
	s23nMRbldeVwPvfm98WDRm21M319O7xD4C0m34gSDkh6bW+bce+1Vx7rDn4r9E7QwDOCDQvumwa
	iQr4L/9esXg8Yfd+c0h3fkYy4ItjjeaAXTNKmaPJ1E/nrJFED22yXuVfuC5Sv+26ZYWzwkIjoQf
	+PfmfKG7NLVzg+DHpBpRFZxWdQvVWPFA/2aU/QZ4CIKY/Hg3AtOt1ofVlaoLUHQeTVDUrItRnEQ
	CUU+jzjoczmuoPCq2UTGVAhB5EbQ==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--23.998500-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 06540C401410A2EDC9AFE6778E2BD70B19C59F2E68A1AB5AEC12EA9AC240FB322000:8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_232004_271033_A316C720 
X-CRM114-Status: GOOD (  20.52  )
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

On 11/25/23 18:37, Krzysztof Kozlowski and Chunfeng Yun wrote:
> 	
> 
> External email : Please do not click links or open attachments until you 
> have verified the sender or the content.
> 
> On 25/11/2023 02:23, Chunfeng Yun wrote:
>> Due to some old SoCs with shared t-phy only support force-mode switch, and
>> can't use compatible to distinguish between shared and non-shared t-phy,
>> add a property to supported it.
>> But now prefer to use "mediatek,syscon-type" on new SoC as far as possible.
>> 
>> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
>> ---
>>  Documentation/devicetree/bindings/phy/mediatek,tphy.yaml | 6 ++++++
>>  1 file changed, 6 insertions(+)
>> 
>> diff --git a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
>> index 2bb91542e984..eedba5b7025e 100644
>> --- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
>> @@ -235,6 +235,12 @@ patternProperties:
>>            Specify the flag to enable BC1.2 if support it
>>          type: boolean
>>  
>> +      mediatek,force-mode:
>> +        description:
>> +          Use force mode to switch shared phy mode, perfer to use the bellow
> 
> I still do not understand what is the "force mode" you want to use. What
> modes do you have? What are the characteristics of force mode?
> 
> Also, please run spellcheck.
> 
> Best regards,
> Krzysztof
> 

Thanks!

1. I've tested this patch and it could solve the clock unstable for
XHCI1 on mt8195 or mt8395 during system boot up or during
unload/reload the phy driver.

The error message has been listed as follows.

[   13.849936][   T72] xhci-mtk 11290000.usb: supply vbus not found, 
using dummy regulator
[   13.851300][   T72] xhci-mtk 11290000.usb: uwk - reg:0x400, version:104
[   13.852624][   T72] xhci-mtk 11290000.usb: xHCI Host Controller
[   13.853393][   T72] xhci-mtk 11290000.usb: new USB bus registered, 
assigned bus number 3
[   13.874490][   T72] xhci-mtk 11290000.usb: clocks are not stable (0x3d0f)
[   13.875369][   T72] xhci-mtk 11290000.usb: can't setup: -110
[   13.876091][   T72] xhci-mtk 11290000.usb: USB bus 3 deregistered
[   13.877081][   T72] xhci-mtk: probe of 11290000.usb failed with error 
-110

2. This is a fix patch to XHCI1 since MT8195 has been upstream.
Please add "Fixes:" tags and "Cc: stable@kernel.org" to back ward
porting to previous stable trees.

For example, add
Fixes: 6b5ef194611e5 ("phy: mediatek: tphy: remove macros to prepare 
bitfield")
is suggested since the force-mode was missing in the previous
implementation which causes hardware function was abnormal.
However, add
Fixes: 33d18746fa514 ("phy: phy-mtk-tphy: use new io helpers to access 
register")
will be better since the USB support for mt8195 is already enabled in 
late 2021.

3. How about we revise the description as follows for more precisely?

mediatek,force-mode:
   description:
     The force mode is used to manually switch the shared PHY mode
     between USB and PCIe. When force-mode is set, the USB 3.0 mode
     will be selected. This is typically required for older SoCs
     that do not automatically manage PHY mode switching.
     For newer SoCs that support it, it is preferable to use the
     "mediatek,syscon-type" property instead.
   type: boolean

Thanks,
Macpaul Lin

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
