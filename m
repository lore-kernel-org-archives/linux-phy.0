Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8B90C5AE49
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 14:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=klZQZR3ui1ZdA+GtfECCZymUv2WbIvIdFbLEhnpcMjA=; b=D9KWdC9Jp2oIjk
	oSpEGYPkstoVKcclbC9u1LvH9PWXfNzEupiSUGFyff5FsVz/JcciHfo3wBZC1Mzl+6OcjCtW8fSNL
	ntDVR/6o8zgFtnIlt8i+d6bpRzHI91itI5XyPDCzd58X7l8HvRRvGe0R3UaAsPotvjRjkn2Kp9t6l
	vXghP0DmEHkMwSjbNjlNifSHjLozVgT/XWcepXzZHJyMaXRG1ErOWGqHuNcXBYyfwTvVqtXtnYzhR
	z/gQhLEc//0qQjOFirAsImKujFpEjXtAgPL50gCY22fkJmjIPWhJralGI+8CsRLCnTfZrwSkHN4X9
	LuFJ3HhhRvhtHOjUyTHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtRTE-0000000C86z-27F1;
	Mon, 10 Aug 2026 14:59:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtRTD-0000000C86b-0n6f
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 14:59:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4C8C5600C8;
	Mon, 10 Aug 2026 14:59:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A4F81F00A3A;
	Mon, 10 Aug 2026 14:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786373958;
	bh=ys1aNXfackETLgPvVRA8MSu79rLpecF8Yf/cnO1Gaao=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=V/dYtS6iJo8senKp13lhrmwlT8xA+1U6HjjlD+//A2SwhejyBOryc4MKyLBwVy9Xu
	 9lHQ7ilL12qzrI22qBbA7VLP99qhz/lUMAfhciVbEzcnmY/q1QGuvJ91oiUu+mpmBq
	 09XZBaY5/QCLmCS32t7cEfSMnSM9gQufkR9l8w00PDA1ltynhBlzD2W27mc6TRTTUQ
	 ZrBaQ/cErqtK68f06py0yUCN2PyRHebV0wbMUMlwF1Oyrvf1C+wH0AAUJJ31pyzzlE
	 rHjoDImKBk3jAB71tSyFC1oKqRKrjQW/1mDmgfuLo57xTbxVYW2kx/J3r5XMRLC5XI
	 /7Nd4QNrtSdHw==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Mattijs Korpershoek
 <mkorpershoek@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add sa8255p high-speed USB PHY
In-Reply-To: <20260804-active-sensible-reindeer-f459a3@quoll>
References: <20260730-phy-qcom-snps-femto-v2-8255-v1-0-8b8bf5105a68@kernel.org>
 <20260730-phy-qcom-snps-femto-v2-8255-v1-1-8b8bf5105a68@kernel.org>
 <20260804-active-sensible-reindeer-f459a3@quoll>
Date: Mon, 10 Aug 2026 16:59:15 +0200
Message-ID: <87a4qu2f98.fsf@kernel.org>
MIME-Version: 1.0
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

On Tue, Aug 04, 2026 at 10:07, Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On Thu, Jul 30, 2026 at 03:58:14PM +0200, Mattijs Korpershoek wrote:
>> SA8255p platform abstracts resources such as clocks, interconnect and
>> GPIO pins configuration in Firmware. SCMI power protocol is used to
>> request resource configurations.
>> 
>> Two power domains can be requested: transfer and core.
>> transfer controls clocks and interconnects and core controls
>> the GDSC, resets and TLMM (GPIOs).
>> 
>> Add a new binding for the Qualcomm SA8255p Synopsys Femto High-Speed
>> USB PHY V2 found in SA8255P.
>> 
>> Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
>> ---
>>  .../bindings/phy/qcom,sa8255p-usb-hs-phy.yaml      | 52 ++++++++++++++++++++++
>>  1 file changed, 52 insertions(+)
>> 
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8255p-usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8255p-usb-hs-phy.yaml
>> new file mode 100644
>> index 000000000000..09f7ca6e7f72
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sa8255p-usb-hs-phy.yaml
>> @@ -0,0 +1,52 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/qcom,sa8255p-usb-hs-phy.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm SA8255p Synopsys Femto High-Speed USB PHY V2
>> +
>> +maintainers:
>> +  - Mattijs Korpershoek <mkorpershoek@kernel.org>
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,sa8255p-usb-hs-phy
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  "#phy-cells":
>> +    const: 0
>> +
>> +  power-domains:
>> +    maxItems: 2
>> +
>> +  power-domain-names:
>> +    items:
>> +      - const: transfer
>> +      - const: core
>
> Here and in your other binding you call these 'transfer' and 'core' but
> all other bindings call them 'power' and 'perf'. Why this difference?

Thanks for the question. I had to do some digging because I did not know
the answer to this.

Per my understanding, the SCMI firmware (in my case, gearvm) exposes
multiple protocols identified by a protocol_id.

For example, power domains have protocol_id=0x11 and and performance
domain have protocol_id=0x13. This is defined in ARM's den0056 spec:
https://support.arm.com/documentation/den0056/f/

Each USB phy has 2 distinct power domains.
This can be observed at runtime from linux via:

/sys/kernel/debug/pm_genpd # grep 'scmi-power-usb0.*phy.*' pm_genpd_summary
scmi-power-usb0-ss-phy-pm       off-0                           0
scmi-power-usb0-ss-phy-rpm      off-0                           0
scmi-power-usb0-hs-phy-pm       off-0                           0
scmi-power-usb0-hs-phy-rpm      off-0                           0

In the case of the other bindings - for example i2c - there is only one
power domain (0x11) and one perf domain (protocol_id 0x13):

/sys/kernel/debug/pm_genpd # grep i2c0 pm_genpd_summary
scmi-perf-i2c0_7                on                              0
scmi-power-i2c0                 off-0                           0

I hope that explains the naming difference. Please let me know if this
is still unclear.

> What are these domains responsible for?

If we take the example of the high-speed (hs) phy, we can see that on
the firmware side, the only difference is the -pm or -rpm suffix.
When Linux requests scmi-power-usb0-hs-phy-pm (mapped to 'core' in the
bindings), the SCMI firmware (gearvm) will interact with the reset line,
the clks and the regulator.
When requesting scmi-power-usb0-hs-phy-rpms (mapped to 'transfer' in the
bindings), the SCMI firmware will only interact with the USB clocks
(reset and regulators remain unchanged).

>
> Commit msg is pretty useless here - repeats the diff. I can read the
> diff but I still do not understand why such naming.

'core' controls reset, clocks and regulators.
'transfer' only controls clocks. Putting 'transfer' to 'off' is
interesting in case of runtime suspend/resume as it cuts the data
transfer (by disabling usb clock)

Is it more clear that way?

>
> And why core is not the first one? It clearly feels like the power
> domain thus the main one.

The order is based on how it's defined in the SCMI firmware. It's not a
problem to put 'core' first as power-domain-names property is only used
by the linux driver. Only the SCMI channel (in my case 12) and domain
indices (0,1) matter here.

>
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
