Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D327C6FD1C
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 09:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FzZZt+VICOIIGllb67beJzZNHz8eAKL81PoOayr5BD4=; b=HdQMIdbKtyWMQg
	Q26vSfcpRmkhWJb0JODYKRVXxxLeLW3xTmNtQDygppPDiCp29hRxOqxvBWtVXE8m09fKyWlDxi2Td
	atp8RfqU2D0yqcQYexL0xSf86noH4gVO1uZMzxDpG97S3lViwGYuF0wNjXPo2i9APomMVpgZGIaoA
	h9AAOCAvQe5kSuRdCAVa7NJ0/5q3TjeakBL+4P6Kr21WGcIhbyp7IsnZojFS68Bq7zRQFZA6XqKnN
	Rlo5BBLGB41BFItuw+LLCMOmNrCNiv3fXzhwEopCFXLRgl94UGnfz24jZuOsI6PEJUHeLALfX+e7N
	xbqg90hRaKQG9C+5m1jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfdx7-004484-33;
	Fri, 24 Mar 2023 09:43:17 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfdx4-00442O-2l
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 09:43:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 2F4B4CE20C8;
	Fri, 24 Mar 2023 09:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BD0BC433EF;
	Fri, 24 Mar 2023 09:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679650986;
	bh=BjDSQ2M9Nq3XeJAhEOG+zKOsX2DwXaeQIEve9NfoSaM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Pk//I3exmWhn455U+JWkNzRefcvdKW1/nJwUJFiNOJAr27L5M1ia7jyiNLP0Ob3sk
	 7hIYRg6M/IbDTfJqXQ2LzEXscvm8lyu4X3J/rCWMyQwUNbtvNz+uM34nZfO4hF1rjy
	 oWTQkZGjxbitH6xar/TpyNPA6HA24p6ct1rss+69e2HegY+5kbLFvIYojGUNWPlz8n
	 HfuxA1vijjmyy1dtJknX+YFIqa8rvqqjB+qlmep0sMK34Rld4jqlEyccisCjvy8pLT
	 NyoBo111C8eBwW/ZMj4i834LLDbkiyKLVN9YQiuj+qQLpwFEAwjNf9g2rxwtWZPqLM
	 /uAVQ6GadjqbA==
Message-ID: <083a8dc6-71d0-bcf5-664a-66c4c729399e@kernel.org>
Date: Fri, 24 Mar 2023 10:43:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 01/41] dt-bindings: phy: migrate QMP USB PHY bindings to
 qcom,sc8280xp-qmp-usb3-uni-phy.yaml
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Hovold <johan+linaro@kernel.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
 <20230324022514.1800382-2-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230324022514.1800382-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_024315_337216_7D4CECC3 
X-CRM114-Status: GOOD (  11.64  )
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

On 24/03/2023 03:24, Dmitry Baryshkov wrote:
> Migrate legacy bindings (described in qcom,msm8996-qmp-usb3-phy.yaml)
> to qcom,sc8280xp-qmp-usb3-uni-phy.yaml. This removes a need to declare
> the child PHY node or split resource regions.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 394 ------------------
>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 236 ++++++++++-
>  2 files changed, 226 insertions(+), 404 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> 

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

Since you skipped DT list, there will be no tests run, thus this is
unfortunately a NAK.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
