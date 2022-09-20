Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06FEAC6FA8E
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 13:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnc1o2L4XQebWHFuDmKStYmUs3odOqCmQjUFjLRJOz8=; b=d7cxTn0+/0gis0
	KMtEL8BMLavp+jpiKIw932/TXaHL2LReRoHSvDtvI0YD4alZuJOfUD47pfw+T60tnbftKMMhpe9qB
	v1vBrpd0Los3WbtmMLAiZTLe+KxUH6AXFgR5quzDmXGUTXXLXeDunTTyaSqbPlJfFM5oCt41zRL/M
	ZWx8qzgOtUS0xXSiepNn256fHSAOr3J9cBquidxO48Y3XxqISzApjy5DM2U97kYVKVhbgUtjDtyqI
	ymqusge3Wp1VP5od46ZYhBGzQg6XwJG4aKnOGuI+UnqU/RLis7Kx4Yoaw5cBC371eqbgmMcisu2uk
	VAN5puW3YTh9ii1cNhtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadf2-004Fn8-7U; Tue, 20 Sep 2022 13:51:40 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadez-004FkO-8O
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 13:51:38 +0000
Received: by mail-wm1-x32d.google.com with SMTP id n8so1974712wmr.5
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 06:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=dGNKbaJqnZ0vm4X6p1XFdB7jKff7G25UZ/5yeLIQRl8=;
        b=f3bWpMUNnxjqIhydqPGOFJqITjl9e4Ws9Sd97kNJNs/TG6hz5v7o7+NMmbTCmY1HpA
         H7PWi/qgPuJbOGN4Z9VaxGSskU79Igidmy22BgIzuTSkLKHF/L6/aFcSojS83VKMLzrO
         anxg5xEz9jR21D2gPchS6fAu/6BKxKKE7alNf3KSV6fEkv0GS3xZxdQigBdbr9AOYZQB
         CAKDZDnG4HYO5gSQkcezWk2qAIBx7g3IxSZnslRuDp3PSMWWVU359Qeydl0YvaW6twVl
         XfgQj5jE7QluJlmZTaXGG/EAPcgxQrANtGVnMU59GOG1Mdrg22V/v0EBixN+GJt917hy
         hToA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=dGNKbaJqnZ0vm4X6p1XFdB7jKff7G25UZ/5yeLIQRl8=;
        b=i5dCAbr8L7X9IbiMsBd00g04T0RWONZvOIiCN8YU+mWsaUzXQ8/m3dvzn7BMfxDmQM
         zeoK4giBa3VW2ZcTAs4pfyjrJ9YghcwMxMC814DEV0p2BjSyJCvHnOOhBpWh5GGdemb7
         wN5kjdVfB3sX1T85mpL+flpHt8uawv0Ccp5xSCBa/mw80qjWz7jozn9CaMsr+NYjTIeK
         19khiQ3mcl+r/fn/5JqETSl0zzddx1j1FRt6u6TL9r5Bc2UXKb8YgvJq4LmvfRw7tkjj
         UgHUH4wnsJ3JuAHR0Fty0iQCpqgDPo28hjrW5sM5t8ggxCA+Ld4p0a9Pm7t0CyymscR4
         UPDw==
X-Gm-Message-State: ACrzQf3uclwMQpo11IO4Ph5VxROtY6YhKLUJy7OAadhB0KTX5c+SQ2dR
	Mh+ByIQvvP2VaIr/Sqcfkpl6Aw==
X-Google-Smtp-Source: AMsMyM4eqBUsZ4WQnGIkvZEjSENoRyiG6clocZdc8mKB4v7UI+hBERpelndNTfjuEewATOlhOBIddg==
X-Received: by 2002:a1c:4c02:0:b0:3b4:9249:3539 with SMTP id z2-20020a1c4c02000000b003b492493539mr2526605wmf.128.1663681894812;
        Tue, 20 Sep 2022 06:51:34 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e? ([2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e])
        by smtp.gmail.com with ESMTPSA id n11-20020a05600c304b00b003b341a2cfadsm102666wmh.17.2022.09.20.06.51.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 06:51:34 -0700 (PDT)
Message-ID: <3e823482-7e82-6928-c280-3c7d0eedf256@linaro.org>
Date: Tue, 20 Sep 2022 15:51:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 08/17] phy: qcom-qmp-pcie-msm8996: drop unused kernel doc
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-9-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro
In-Reply-To: <20220920073826.20811-9-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_065137_477581_2CFF49F3 
X-CRM114-Status: GOOD (  13.80  )
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

On 20/09/2022 09:38, Johan Hovold wrote:
> Drop the removed mode field from the struct qmp_phy kernel doc.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> index 7e755213e9c5..e261837aee32 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> @@ -238,7 +238,6 @@ struct qmp_phy_cfg {
>    * @index: lane index
>    * @qmp: QMP phy to which this lane belongs
>    * @lane_rst: lane's reset controller
> - * @mode: current PHY mode
>    */
>   struct qmp_phy {
>   	struct phy *phy;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
