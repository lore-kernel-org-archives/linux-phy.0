Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70861C43334
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 15:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KjeBQX02YOle4vFtLwx6W94lhOABjlC1GXjGdm2FMiA=; b=WfWfkGfflhP2VQ
	guKY95MKNQcBJNAc6UnQX1oolPgWTRtiECodImX5Oq7BVqpO2wO/QdA1B0WaTHNv8zIP0mqZim1tp
	YNijzBLaM+UKFnkeq/YSajGhu7KsukNxOYD4dhFqVl3y9bQzNPzT1JuoHd5vY9Vk2KVXb0sm0OpY1
	Ts9WrJWGCr0hfX6fKShwbXki/5G5x+KWkjG5xxjnK75ZY/JzrMoM31ALbNiTr12/R0ztP3stSXyyb
	gmxA36hhb7+xWNmT/s7iO2iZYSIh/QenfiKLrbVDwGw45WLz6TeVXFsw9R0YAdeymW9sns6VSlENw
	FGaR4Sao4+T4ORP7uaWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3fZV-0064Ep-O8; Tue, 21 Jun 2022 15:13:41 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3fXb-0063Ap-9Z
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 15:11:44 +0000
Received: by mail-pl1-x62b.google.com with SMTP id k14so1320634plh.4
        for <linux-phy@lists.infradead.org>; Tue, 21 Jun 2022 08:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TiJ5DaDZdRqbzKQOpoFsXYhvDE76Mk9e8wVqdRVoWeo=;
        b=EoXUiXZJm8qgTinLDSf4GBssv1ro8qAv3QSmdw5OMnK7hnKy/MPFmeUyiLaJk77nGf
         ppgI4+VNg/Lz9NCp632XtCtbkIyuBDnGgkxSIaJWlQhKLZMQm6anupH/0mZjBJpITAP4
         mw0t6wBaDsx+MLOB92dLDkQeBXtq9MzRgiHU+FRaTeIuS5lYx4zrzS5+krnmNMeV2cKT
         c/R9tZ783nX2iMhbsFzPwD8nq4rHyvnT/WFYM2Umuv9Wt5nutaPHUaFZIJ20pD9W8fT/
         RKFC9sNy4zwGXveU993MUnrHllkl1MGeHaYNRoa7/j4z9l9C2msGaSvloz2GhVGURQW9
         kJAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TiJ5DaDZdRqbzKQOpoFsXYhvDE76Mk9e8wVqdRVoWeo=;
        b=w6/Gxoo9cg5pldqko37xzkwyfZ3SKluV0I5gnubSDvO2EPRPfRdsEpLyEHMYQ8/lP+
         /rsnHRAd4CJLIX+M7DbFPtngcEvWqJp0Klx3elX1T5IPxxjEnQvv/GimDns5cKCzr249
         5qHLcslLNwxkcYYQD1qPODPShXwWpbLqIKtQ18u2oLUJKxfBhpRj2xi2jHDGnjszICXC
         HbPqTsmIw8aePTcclHYavsblUY6QUFPmOoGDD0KC14aSf5N34RHqEADOMgDjX3YlIjfw
         ZQyjTsCL+GNGDOs+aYlOidcYC0/V1YZC3QrLY2poteiFzddZ9xm2LaxUiUlYFbdoGgD1
         TGHg==
X-Gm-Message-State: AJIora/diNlzrrMo6e35+shPpoIfQy2uFL5YbpB/iCB6hGnTa5tLh1IX
	5jiaBOX7s9aEtlmxW7gOJaU=
X-Google-Smtp-Source: AGRyM1vsi3VLkwPkdecQZMLXl+3TrUZ58QsgCWlY4+4A65dJh20ybjjO8pAvbxHN1BdfiPWWqQ/xsQ==
X-Received: by 2002:a17:902:bd81:b0:16a:14f:aab3 with SMTP id q1-20020a170902bd8100b0016a014faab3mr24845978pls.8.1655824301806;
        Tue, 21 Jun 2022 08:11:41 -0700 (PDT)
Received: from ?IPV6:2600:8802:b00:4a48:e884:dbae:d158:d600? ([2600:8802:b00:4a48:e884:dbae:d158:d600])
        by smtp.gmail.com with ESMTPSA id jb20-20020a170903259400b0016a13bd845csm6468162plb.165.2022.06.21.08.11.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jun 2022 08:11:41 -0700 (PDT)
Message-ID: <ccadb3d9-97f5-cb0e-8f46-b83ae08a8e8b@gmail.com>
Date: Tue, 21 Jun 2022 08:11:39 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] phy: phy-brcm-usb: drop unexpected word "the" in the
 comments
Content-Language: en-US
To: Jiang Jian <jiangjian@cdjrlc.com>, alcooperx@gmail.com
Cc: bcm-kernel-feedback-list@broadcom.com, kishon@ti.com, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220621122401.115500-1-jiangjian@cdjrlc.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220621122401.115500-1-jiangjian@cdjrlc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_081143_397195_389BB891 
X-CRM114-Status: UNSURE (   6.74  )
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



On 6/21/2022 5:24 AM, Jiang Jian wrote:
> there is an unexpected word "the" in the comments that need to be dropped
> 
> file: ./drivers/phy/broadcom/phy-brcm-usb-init.c
> line: 864
>   * Make sure the the second and third memory controller
> changed to
>   * Make sure the second and third memory controller
> 
> Signed-off-by: Jiang Jian <jiangjian@cdjrlc.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
