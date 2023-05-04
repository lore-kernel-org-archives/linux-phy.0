Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06126C77B7C
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 07:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krFTNTjbCagKxyWrZuTjkE+eMDGUboHdXkfmFs2M4Ak=; b=ezs8zxIbOCK2qY
	0gR5OJ2lAQqbevBziBsFoWHIXXryeNqyNWOKE9rYhRgoJxQOPPUuUS+0LHRUHLZV43c3OKvk4I1qM
	btI0spyLrPnN9BVLchQ4Lfxa0VXnWNwznnGMRkuWB4PuGAn5rnG/FpkVZO38FsTKLGTHKUzSrzV5T
	w3iyDNnbSkEBXEgJfdF0fuhU+PFrC0VpYkwzy2nb0gtfIV+EQQ2lcPr7oyY8/PDCS4GNtugbZX3BY
	5eq24n9naorLC1tpQo0XHONRhb2vvdTeXKv9K0Rqy51cxDdZMZCYcnEqxh4G56Qqhg8Qe5uPKWICU
	chz6+ecN/ildQCetSmdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puTS4-006tpY-2A;
	Thu, 04 May 2023 07:32:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puTS2-006toX-00
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 07:32:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1puTRk-0001GQ-Mb; Thu, 04 May 2023 09:32:12 +0200
Message-ID: <0a5d631a-037e-5158-82dd-e53d478befea@pengutronix.de>
Date: Thu, 4 May 2023 09:32:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: imx8mq-usb: add phy tuning
 properties
Content-Language: en-US, de-DE
From: Johannes Zink <j.zink@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: kishon@kernel.org, devicetree@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, festevam@gmail.com,
 s.hauer@pengutronix.de, vkoul@kernel.org, haibo.chen@nxp.com,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-phy@lists.infradead.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, jun.li@nxp.com,
 patchwork-jzi@pengutronix.de
References: <20230405112118.1256151-1-j.zink@pengutronix.de>
 <20230405112118.1256151-2-j.zink@pengutronix.de>
 <5398cbe0-c681-5dd7-0b3e-3a586cc4915f@linaro.org>
 <3f7257ee36dc44f162a87281c8279fd5bad91dea.camel@pengutronix.de>
 <95b4afd4-c93e-628b-fd22-6fcbc1d1234e@linaro.org>
 <b394b456540943b1022a7b093bf369924fca0566.camel@pengutronix.de>
 <20230412133921.GA2017891-robh@kernel.org>
 <6953b608-973f-c603-f852-edf7ba183e64@pengutronix.de>
 <67d283f3-d0db-5fc0-79e9-e7531d591aab@pengutronix.de>
In-Reply-To: <67d283f3-d0db-5fc0-79e9-e7531d591aab@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: j.zink@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_003230_039710_13233E3A 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
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

Hi Rob, hi Krzysztof,

[snip]
 > gentle ping - any opinions on this? Shall I just send a V2 along the 
lines of the phy-stm32-usbphy.c?

This would be something like (example for the trim-hs-current, taken 
from pyh-stm32-usbphyc):

       st,trim-hs-current:
         description: |
           Controls HS driver current trimming for choke compensation
           - <0> = 18.87 mA target current / nominal + 0%
           - <1> = 19.165 mA target current / nominal + 1.56%
           - <2> = 19.46 mA target current / nominal + 3.12%
           - <3> = 19.755 mA target current / nominal + 4.68%
           - <4> = 20.05 mA target current / nominal + 6.24%
           - <5> = 20.345 mA target current / nominal + 7.8%
           - <6> = 20.64 mA target current / nominal + 9.36%
           - <7> = 20.935 mA target current / nominal + 10.92%
           - <8> = 21.23 mA target current / nominal + 12.48%
           - <9> = 21.525 mA target current / nominal + 14.04%
           - <10> = 21.82 mA target current / nominal + 15.6%
           - <11> = 22.115 mA target current / nominal + 17.16%
           - <12> = 22.458 mA target current / nominal + 19.01%
           - <13> = 22.755 mA target current / nominal + 20.58%
           - <14> = 23.052 mA target current / nominal + 22.16%
           - <15> = 23.348 mA target current / nominal + 23.73%
         $ref: /schemas/types.yaml#/definitions/uint32
         minimum: 0
         maximum: 15
         default: 0

If you think something along these lines is acceptable, I would like to 
prepare and send a V2.

Best regards
Johannes

[snip]

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
