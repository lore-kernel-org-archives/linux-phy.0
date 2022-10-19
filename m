Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C80D5C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 04:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	CC:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWbRE04h0QrqbMTqCPacdA62uxg3X6hpWY95WWsAwtc=; b=lTSoYJyzHF0gn6
	4k5ina1xnrvocZnB3pU0whqUMDmtwL50lwY6DegncuaLRzYBfSnvpDigY4YLGdHA/GYjiPqqu2V5i
	fBzMzhOS3uX9Wm4EG/wLfCZOLOkWxadosjur1+nie1SXA6KlIm+VqeZTpthc9vJSNrCJuW1ezc2xh
	Uk8R/tTTMM6xROcvIGGhwYP+3JbMrnjkExsCCI/WC7UXpkdewCNcZQg3Avfu9yRCDIpwlxHCewTmM
	YfDLnFS5+zAWcOMtclIob9ZdQXYOknJJAP5qDzPq0M1VPQBO6BT5zWL7pOuqenxy5G6GRj3LGYe4X
	vOWTgwkTcHu4qIAJ2D6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol0hc-00Eedy-Qc; Wed, 19 Oct 2022 04:29:12 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol0hS-00EeV3-4x; Wed, 19 Oct 2022 04:29:03 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29J4SmTR062851;
	Tue, 18 Oct 2022 23:28:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1666153728;
	bh=eFh32FoTwp/oIkMmernvS0tQR2Uo417WxoSAXhgooHY=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=P+YwybHtKLIKE9jyUkUr5b8L3KcIcOQ2xqP93/67wwgjbE25J9gGN1L+9X9IJr5fD
	 EmRHE0GUIa2gimOnEHA9ycV2D4tpdrlnp8wwWhoFl8fAPbdPpsEOdU4ZaxhG+4a2AP
	 UQh/gK3WYagSoASPR1GM9cFYpOXb0HGgY0xybOJM=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29J4SmQY116582
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 18 Oct 2022 23:28:48 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Tue, 18
 Oct 2022 23:28:48 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Tue, 18 Oct 2022 23:28:48 -0500
Received: from [172.24.145.87] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29J4Shv6095798;
	Tue, 18 Oct 2022 23:28:44 -0500
Message-ID: <694b14c5-1d96-a305-99f0-c6be2248ea7b@ti.com>
Date: Wed, 19 Oct 2022 09:58:43 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
CC: <rogerq@kernel.org>, <krzysztof.kozlowski@linaro.org>,
        <linux-kernel@vger.kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <lee@kernel.org>,
        <linux-phy@lists.infradead.org>, <dan.carpenter@oracle.com>,
        <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: ti: phy-gmii-sel: Add bindings
 for J721e
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
References: <20221018084333.149790-1-s-vadapalli@ti.com>
 <20221018084333.149790-2-s-vadapalli@ti.com>
 <166609952062.171721.12955273990805791032.robh@kernel.org>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <166609952062.171721.12955273990805791032.robh@kernel.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_212902_494349_FF4A83AF 
X-CRM114-Status: GOOD (  12.82  )
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

Hello Rob,

On 18/10/22 19:02, Rob Herring wrote:
> On Tue, 18 Oct 2022 14:13:31 +0530, Siddharth Vadapalli wrote:
>> TI's J721e SoC supports additional PHY modes like QSGMII and SGMII
>> that are not supported on earlier SoCs. Add a compatible for it.
>>
>> Extend ti,qsgmii-main-ports property to support selection of upto
>> two main ports at once across the two QSGMII interfaces.
>>
>> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
>> ---
>>  .../bindings/phy/ti,phy-gmii-sel.yaml         | 48 +++++++++++++++----
>>  1 file changed, 40 insertions(+), 8 deletions(-)
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml:75:12: [error] syntax error: mapping values are not allowed here (syntax)

I will fix the errors in the v3 series and ensure that there are no
errors or warnings with dt_binding_check, using the updated dt-schema
and yamllint.

Regards,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
