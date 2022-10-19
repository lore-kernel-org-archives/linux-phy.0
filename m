Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6959C43217
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 13:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VBoIvG+ncguBrnEavMm+I5uCH9hnGS9zFshFZx6+rbs=; b=oYEnaXefuWstNv
	Lo9lzC6zoGJWRGDctQpOLO8mRu4CP4l5Gi+Wp4QeIU37o4x1laidz3fwNzpF5QUQfCNsBdx7i+3PN
	4rD/jaLmjsX2YeDgMkp7ndjaev7k9byDAWslRNFGxzKgWVeFDRaAYKNBwJwFHo1ODPT/1eejNkHGl
	RNBhOsesAABV5qRG9kB15hxLWmgYc4E7FV0cIJhdbRw/mvd+rFc7XalP5v8SVViVSXSvfq/5eKClN
	7wcJQsvkxizpOxJmtq17m3Mj02xVwAOSCy1ZEuiKel+76c7kyOfLUVzhUoB7vA/Zi0I6hSOPGSDdG
	19PZKORSIT+JJztfU3kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol9N9-002DnX-5k; Wed, 19 Oct 2022 13:44:39 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol9N6-002DmR-LW
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 13:44:38 +0000
Received: by mail-lf1-x12e.google.com with SMTP id g1so28158928lfu.12
        for <linux-phy@lists.infradead.org>; Wed, 19 Oct 2022 06:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h9WfAq9GlhRokXPelqeWHthsmCpycJCohpwOtcymBXs=;
        b=pj/UffD41G8Iag/bxmsJ7mApxGuCCO4sUpnc87OpLKIYy6sgo/WL3srjmgGC7rWdyG
         qg6U+PYe5I5uvsWHe0IkyropCNcU+DQM8+xZLhOZqN1sUvA1S8bwF3ZX2/K7P/bdin2E
         WSpeDtyJmLFSVE/JKVOKGtkkes9Y2C8XzeBOpGN3zn1paIj9b8uWH4FTj3NhDVcr6Nml
         +Jp5J6KYzqIuuY27Hw/9m7L6yNuXH+UCtQDjaig5wzr/QvBqlHwEmjNTW2YdeF0Dqki4
         AJFg8EeWW831/VgwDIWPAgyvvRkMHiZFlgaePg1pl5LnwXcUYBtXbGKt0rFyyNTjbnEo
         ayVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h9WfAq9GlhRokXPelqeWHthsmCpycJCohpwOtcymBXs=;
        b=htn5/YV+dW2V0I0WMwe22kn/m1fU9kc6iRLl2E6HzKzKul6TZ3aOZXD12fS8xdTtba
         CcHYY/33j4WaMvIsClZ7sA3G9XJMJBjFofFoDphbILewk4PEia5FwE/nfl9JexqCZdtV
         rw+C+eBp753aoG2nBUYQ6w+Kg4o7hTICLgA77sPTN2LMUL5PayCbxNKmKR1RO7zM0v9F
         I41D2Lak/cMujhrPxLBlnE91fP0RL8Fc2orI1DJt6XyZ5V2nCddsJveURxOLAXYvNOZT
         LdHl8r1/GZnno0nw2phxrIz0vjZYSQ/Zmp1V+gWi2OxMcqOdGW4+HI6Gm77UaGnP8sPZ
         77bQ==
X-Gm-Message-State: ACrzQf2onew3Bcm6EYOzmONugMu7LuZvxZwbnEYWrZHMT2u34o02XDrq
	a1akxkAjnemjpdbylYZ2GKCnOxWC01zINw==
X-Google-Smtp-Source: AMsMyM5b2vyYPLDgUf0s1Uyw3+sPCvqEqEGYyKzYINQDUoDWiJvmGUVKOD0SEyhCvSuLsjUYLXbifA==
X-Received: by 2002:a05:6512:110c:b0:4a2:4119:f5c4 with SMTP id l12-20020a056512110c00b004a24119f5c4mr2784433lfg.606.1666187074664;
        Wed, 19 Oct 2022 06:44:34 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id s28-20020a2eb63c000000b0026dcf238c50sm2450177ljn.127.2022.10.19.06.44.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 06:44:34 -0700 (PDT)
Message-ID: <0b0c752c-1f3d-bf5a-ade7-e2f8acac92a4@linaro.org>
Date: Wed, 19 Oct 2022 16:44:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 08/15] phy: qcom-qmp-pcie: add register init helper
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-9-johan+linaro@kernel.org>
 <0f1fff20-772f-c4d1-f803-f1824ef23780@linaro.org>
 <Y0/63eH82t2zXFi5@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y0/63eH82t2zXFi5@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_064436_777826_6FC564E6 
X-CRM114-Status: GOOD (  17.60  )
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

On 19/10/2022 16:25, Johan Hovold wrote:
> On Wed, Oct 19, 2022 at 04:12:02PM +0300, Dmitry Baryshkov wrote:
>> On 19/10/2022 14:35, Johan Hovold wrote:
>>> Generalise the serdes initialisation helper so that it can be used to
>>> initialise all the PHY registers (e.g. serdes, tx, rx, pcs).
>>>
>>> Note that this defers the ungating of the PIPE clock somewhat, which is
>>> fine as it isn't needed until starting the PHY.
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>> ---
>>>    drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 51 +++++++-----------------
>>>    1 file changed, 15 insertions(+), 36 deletions(-)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> index dd7e72424fc0..f57d10f20277 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> @@ -1820,46 +1820,32 @@ static void qmp_pcie_configure(void __iomem *base,
>>>    	qmp_pcie_configure_lane(base, tbl, num, 0xff);
>>>    }
>>>    
>>> -static void qmp_pcie_serdes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
>>> -{
>>> -	void __iomem *serdes = qmp->serdes;
>>> -
>>> -	if (!tables)
>>> -		return;
>>> -
>>> -	qmp_pcie_configure(serdes, tables->serdes, tables->serdes_num);
>>> -}
>>> -
>>> -static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
>>> +static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
>>>    {
>>>    	const struct qmp_phy_cfg *cfg = qmp->cfg;
>>> +	void __iomem *serdes = qmp->serdes;
>>>    	void __iomem *tx = qmp->tx;
>>>    	void __iomem *rx = qmp->rx;
>>>    	void __iomem *tx2 = qmp->tx2;
>>>    	void __iomem *rx2 = qmp->rx2;
>>> +	void __iomem *pcs = qmp->pcs;
>>> +	void __iomem *pcs_misc = qmp->pcs_misc;
>>>    
>>> -	if (!tables)
>>> +	if (!tbls)
>>>    		return;
>>>    
>>> -	qmp_pcie_configure_lane(tx, tables->tx, tables->tx_num, 1);
>>> -	qmp_pcie_configure_lane(rx, tables->rx, tables->rx_num, 1);
>>> +	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);
>>> +
>>> +	qmp_pcie_configure_lane(tx, tbls->tx, tbls->tx_num, 1);
>>> +	qmp_pcie_configure_lane(rx, tbls->rx, tbls->rx_num, 1);
>>>    
>>>    	if (cfg->lanes >= 2) {
>>> -		qmp_pcie_configure_lane(tx2, tables->tx, tables->tx_num, 2);
>>> -		qmp_pcie_configure_lane(rx2, tables->rx, tables->rx_num, 2);
>>> +		qmp_pcie_configure_lane(tx2, tbls->tx, tbls->tx_num, 2);
>>> +		qmp_pcie_configure_lane(rx2, tbls->rx, tbls->rx_num, 2);
>>>    	}
>>> -}
>>> -
>>> -static void qmp_pcie_pcs_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
>>> -{
>>> -	void __iomem *pcs = qmp->pcs;
>>> -	void __iomem *pcs_misc = qmp->pcs_misc;
>>> -
>>> -	if (!tables)
>>> -		return;
>>>    
>>> -	qmp_pcie_configure(pcs, tables->pcs, tables->pcs_num);
>>> -	qmp_pcie_configure(pcs_misc, tables->pcs_misc, tables->pcs_misc_num);
>>> +	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
>>> +	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
>>
>> Nit: could we please keep it as `tables'?
> 
> I considered that but found that the longer identifier hurt
> readability so I prefer to use "tbls" here.
> 
> Compare
> 
> 	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);
> 
> 	qmp_pcie_configure_lane(tx, tbls->tx, tbls->tx_num, 1);
> 	qmp_pcie_configure_lane(rx, tbls->rx, tbls->rx_num, 1);
> 
> 	if (cfg->lanes >= 2) {
> 		qmp_pcie_configure_lane(tx2, tbls->tx, tbls->tx_num, 2);
> 		qmp_pcie_configure_lane(rx2, tbls->rx, tbls->rx_num, 2);
> 	}
> 
> 	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
> 	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
> 
> with
> 
> 	qmp_pcie_configure(serdes, tables->serdes, tables->serdes_num);
> 
> 	qmp_pcie_configure_lane(tx, tables->tx, tables->tx_num, 1);
> 	qmp_pcie_configure_lane(rx, tables->rx, tables->rx_num, 1);
> 
> 	if (cfg->lanes >= 2) {
> 		qmp_pcie_configure_lane(tx2, tables->tx, tables->tx_num, 2);
> 		qmp_pcie_configure_lane(rx2, tables->rx, tables->rx_num, 2);
> 	}
> 
> 	qmp_pcie_configure(pcs, tables->pcs, tables->pcs_num);
> 	qmp_pcie_configure(pcs_misc, tables->pcs_misc, tables->pcs_misc_num);

I'd say, it's up to Vinod. I'd prefer the second version.


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
