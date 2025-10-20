Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1076CCD193
	for <linux-phy@archiver.kernel.org>; Mon, 20 Oct 2025 10:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdIecmrh3hWjTR0XAI+q5S5T2H7qlnVfKlKVlN88TZI=; b=fk7AE36BdIlAu8
	vWEZYP+eqIOoqFztIPUPPEc8n2MqOAXuTCQwGcWbjxyipPkTgC4H4p/Vkjd5e9/xeM9Bzniogb8sY
	Oell0YOjpL0XUmXSq2AY1Ol+neybAZ6YUy945aab/7tOVcJzUYwi4Vs8P5Uh7MMnkL5SkkpvHHj2m
	2cmF4yCct/QKmpFUOve/HM+SC/fY7T9If2t37Yz28EET1mfVfYtDPDdFMZ9GKZeZn4LVK57LgTCwx
	5NVauqf0Hr8LnCK7tBMJMVHHiiZWQ5PYUpG61b8i+ZcNdkWZGpzLKAUuQk5CxFiWOhJfW9xq+0T39
	6CpF/vmcrkBxYy7LHsxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAn7R-0000000CrIY-2jdt;
	Mon, 20 Oct 2025 10:28:01 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAn7O-0000000CrH5-0HIl;
	Mon, 20 Oct 2025 10:27:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760956075;
	bh=6m+WN98kS1d8nTe10kT4JXvC5lB5QZtorQfDjhyQM68=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PrKdhpijyUELPE1uxkgl4X54lfTD0ulhBT7Owo+KYxjXRbfSpS7pyk1Y2SUEpXzW+
	 VXxUFTV1hxOmX0FM0dR0X9nmJ2pNAOe6rltWJ5KlQ/D826or/EnaeKWgyK9P0J9lj2
	 9LoFno0gwutdCnh/WSgidDqko7RBO+lrIzUu3VYf5aMKSKGMh/ncYr9x5Pspoh05vq
	 fMwd21ZhUDZHroxqAJGyDtpXwXNTLkOGCJLeIdBNcloAcQsMxgi54pR5UAaqpuT1HY
	 Pe4fZOJMeEoKwymO9XPJgFFTsKGsZO4f4e58ITi5AQ81jw1Fut2Ho4d05Y7NRsIQD/
	 ZHDCWVYIlj+3g==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 88C5C17E0DB7;
	Mon, 20 Oct 2025 12:27:54 +0200 (CEST)
Message-ID: <8a637fc2-7768-4816-bb4f-3af2e32908e4@collabora.com>
Date: Mon, 20 Oct 2025 12:27:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/15] arm64: dts: mediatek: mt7981b: Add Ethernet and
 WiFi offload support
To: Daniel Golle <daniel@makrotopia.org>, Sjoerd Simons <sjoerd@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Ryder Lee <ryder.lee@mediatek.com>,
 Jianjun Wang <jianjun.wang@mediatek.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Lee Jones <lee@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>,
 kernel@collabora.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, netdev@vger.kernel.org,
 Bryan Hinton <bryan@bryanhinton.com>
References: <20251016-openwrt-one-network-v1-0-de259719b6f2@collabora.com>
 <20251016-openwrt-one-network-v1-10-de259719b6f2@collabora.com>
 <aPEhiVdgkVLvF9Et@makrotopia.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <aPEhiVdgkVLvF9Et@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_032758_269093_221B4274 
X-CRM114-Status: GOOD (  15.10  )
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

Il 16/10/25 18:47, Daniel Golle ha scritto:
> On Thu, Oct 16, 2025 at 12:08:46PM +0200, Sjoerd Simons wrote:
>> Add device tree nodes for the Ethernet subsystem on MT7981B SoC,
>> including:
>> - Ethernet MAC controller with dual GMAC support
>> - Wireless Ethernet Dispatch (WED)
>> - SGMII PHY controllers for high-speed Ethernet interfaces
>> - Reserved memory regions for WiFi offload processor
>>
>> Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>
>> ---
>>   arch/arm64/boot/dts/mediatek/mt7981b.dtsi | 133 ++++++++++++++++++++++++++++++
>>   1 file changed, 133 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
>> index 13950fe6e8766..c85fa0ddf2da8 100644
>> --- a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
>> +++ b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi

..snip..

>> +
>> +			mdio_bus: mdio-bus {
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +
>> +				int_gbe_phy: ethernet-phy@0 {
>> +					compatible = "ethernet-phy-ieee802.3-c22";
>> +					reg = <0>;
>> +					phy-mode = "gmii";
>> +					phy-is-integrated;
>> +					nvmem-cells = <&phy_calibration>;
>> +					nvmem-cell-names = "phy-cal-data";
> 
> Please also define the two LEDs here with their corresponding (only)
> pinctrl options for each of them, with 'status = "disabled";'. This
> makes it easier for boards to make use of the Ethernet PHY leds by just
> referencing the LED and setting the status to 'okay'.
> 

Sorry Daniel, definitely no. The LEDs really are board specific.

Try to convince me otherwise, but for this one I really doubt that you can.

Cheers,
Angelo



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
