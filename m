Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EB4CC4167B
	for <linux-phy@archiver.kernel.org>; Mon, 19 Dec 2022 06:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uM6tKMznjb06i5nJj9szYNjIIh0gTqpDDlNDN5U0wGQ=; b=rsUMTNcDRTYB8R
	uBPYLB64LMoXm1FMBcgKVcNjmNNWifzx9qVMqi8bRVCcVDwo+y2J6mgB+mK3nYuvK1p7GloV9W8S4
	P71EAWIuhstccw4A7Kt7wgYq3KTuTHQBjg3WJkY8eer+5J6+rHUScwdJJWpG6aB++2GrsZ5T3rZJ6
	hokr3o9cajNoHeV6inNH1gmZZj/km+AuX2u2qigBm9yS7HKN5X7dk3ckFbtIr32NJb56bp+gNyr8t
	ovNpTYk86EKNBsulE1/0zn50rpWwiAIfL3A0Aj64sTp+KuBBzubtRMnI6irCIzkWNhKmF6JIMlaKB
	ZRQY9ImXIwBL9ujZN+YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p79GF-008zoQ-DO; Mon, 19 Dec 2022 06:04:27 +0000
Received: from phobos.denx.de ([85.214.62.61])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p79Fl-008zTi-Dz; Mon, 19 Dec 2022 06:03:59 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id B3A6F84913;
	Mon, 19 Dec 2022 07:03:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1671429830;
	bh=MkvKsVKAty0HJJf2smTx3uSxYSAK5yNNC63zTBdQT1U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=UeKVGrRpVuh9Bsjos7+aMvvA9TjjRs6jSWpD8YO/fuEZEb0J0dM7HrbnKZVulP9Ia
	 E6Kt4zHYTnUuSWsDPAa2SMT/cayugvpTATPGwSJ+AEwBbGuDkRMHPuvMBb4d88RxXU
	 SjOsPpMWGovmXdITpMTf1WwY6Y5Wf2LAlAsKLR0kOe6iE4p+jeh43UekIO+MNAsL6C
	 kDPfYdMmIj00NQbSStbGap5ZRJ32Yb264KDxLkoB8dqKVSlG3cs+HQigAWbJqjafjG
	 bbniULICx4ksX1AF6KHNdiiOkEXOvMAmFcBC3n1gOU1NsVVr0e/0J4H29VK0peI37y
	 pNOipD2Yb0KrA==
Message-ID: <77487520-3812-0a9f-54e6-e9cb7feb6e51@denx.de>
Date: Mon, 19 Dec 2022 07:03:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [RESEND v12 4/4] phy: freescale: imx8m-pcie: Add i.MX8MP PCIe PHY
 support
To: Hongxing Zhu <hongxing.zhu@nxp.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>,
 "richard.leitner@linux.dev" <richard.leitner@linux.dev>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>
References: <1665625622-20551-1-git-send-email-hongxing.zhu@nxp.com>
 <1665625622-20551-5-git-send-email-hongxing.zhu@nxp.com>
 <c21996f3-0f1d-8b77-95fb-ab98f3a28913@denx.de>
 <AS8PR04MB86767EFD1DE8CC1FBA574D708CE59@AS8PR04MB8676.eurprd04.prod.outlook.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <AS8PR04MB86767EFD1DE8CC1FBA574D708CE59@AS8PR04MB8676.eurprd04.prod.outlook.com>
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221218_220357_977616_CD3A234C 
X-CRM114-Status: GOOD (  11.33  )
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

On 12/19/22 04:25, Hongxing Zhu wrote:

Hi,

>>> @@ -238,6 +251,14 @@ static int imx8_pcie_phy_probe(struct
>> platform_device *pdev)
>>>    		return PTR_ERR(imx8_phy->reset);
>>>    	}
>>>
>>> +	if (imx8_phy->drvdata->variant == IMX8MP) {
>>> +		imx8_phy->perst =
>>> +			devm_reset_control_get_exclusive(dev, "perst");
>>> +		if (IS_ERR(imx8_phy->perst))
>>> +			dev_err_probe(dev, PTR_ERR(imx8_phy->perst),
>>
>> I just notice this , are we missing return here ?
>>
>> That is ... return dev_err_probe(...) ?
> 
> Ooh, it's my fault. Thanks for your reminder.
> One return should be here.
> -                       dev_err_probe(dev, PTR_ERR(imx8_phy->perst),
> +                       return dev_err_probe(dev, PTR_ERR(imx8_phy->perst),
> Hi Vinod @vkoul@kernel.org:
> Should I re-summit one fix patch?

I think just send a follow up patch with Fixes: tag .

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
