Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14705C4167B
	for <linux-phy@archiver.kernel.org>; Sat, 31 Dec 2022 21:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJ/H6cL2SkZozoufpjSH2MYcBmvip/Rdj4xsZNdhlTo=; b=uEXEr889HPvXXk
	Awnr4XgmwWGlTS8FZkCxA5lA29h7pIf27vQYaH4k0fBpt6ftW4R4kXL4djqUR9vZfcPtvf1slaQ1n
	9R2XrOulajQErrGN8tKePJZwgsmlkAHcfXulPbjDagdSjAa0rx74WHfrS/KI4N8T0//0QIUWTN/W7
	zQ7yq15uEK1nByh5u0IlncRVr/9eDci1k0+Ri7kh33oGACtYSFqwep06Mlmtz61kKuj/ghqckRrmY
	Unrj2qVKfDsdD3J23Qgwk1SUf5Kv3Om9pEhRKAUE3qvt+QHcPseWxFK2pUgVxXRTBfvXMxbZNvjPK
	qQ0/NdgtK1hbfM7fCUkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBjPc-00AXmW-4a; Sat, 31 Dec 2022 21:29:04 +0000
Received: from mail-pl1-f171.google.com ([209.85.214.171])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBjPY-00AXji-W7
	for linux-phy@lists.infradead.org; Sat, 31 Dec 2022 21:29:02 +0000
Received: by mail-pl1-f171.google.com with SMTP id jl4so19095757plb.8
        for <linux-phy@lists.infradead.org>; Sat, 31 Dec 2022 13:28:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=adjBQcXCLgzOUyvmCAw+CpN46s5Adoe7A7poEBz9+sE=;
        b=fkSFMAE1R7A+5BTqVdTOb4Prg03+y64+PX9Dz/jN3hY/oGvz9Uuezmnw+EPbjnQD5+
         wC2k1OhSY2TdtbKVDG/6gwNYMl/g8Lm76SB9IjtzJ9LaCoR+RTDwt78fbzb1MC8BvDOY
         OidwUqy5JFznEpyOZK15c0DmjlrNVGcLQzEpmadhkG8nEBEo77+2COjHyykyv+DYbhAF
         Ps7KwBG6VNY/hDc9XdRuqeJCeTb2JxXn9gQIzojMFa4wG/SS5A5P1w3LRBGPv6RXjFeq
         xlbAxFVoSaByEtN3fKfz76HgPpvTA4TbMEMgLTziDpqBv6zQVT3SEtx+UhuUN3wABQEx
         awsg==
X-Gm-Message-State: AFqh2kosFKgPw4lEjFnHC1G+eb0OJsI32PiT2S2J9KoZ8FMV9deS40ox
	HOabHYYX2DMoXx9iaFprC6c=
X-Google-Smtp-Source: AMrXdXtCeSrKhnuxYyEFIv/tHDz2NbBrEOnfT1K153E+dmGEL0qGnvyWjf/x6agZRKB/+fdVqW5P2g==
X-Received: by 2002:a17:903:2447:b0:191:1a7c:ef9f with SMTP id l7-20020a170903244700b001911a7cef9fmr55949758pls.1.1672522138944;
        Sat, 31 Dec 2022 13:28:58 -0800 (PST)
Received: from [192.168.51.14] ([98.51.102.78])
        by smtp.gmail.com with ESMTPSA id y4-20020a655b44000000b0047899d0d62csm14641850pgr.52.2022.12.31.13.28.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Dec 2022 13:28:57 -0800 (PST)
Message-ID: <6dc49f2e-1c81-8392-20b4-f79af2abace0@acm.org>
Date: Sat, 31 Dec 2022 13:28:54 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v5 18/23] scsi: ufs: core: Add reinit_notify() callback
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org
Cc: quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 dmitry.baryshkov@linaro.org, ahalaney@redhat.com, abel.vesa@linaro.org,
 alim.akhtar@samsung.com, avri.altman@wdc.com
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
 <20221222141001.54849-19-manivannan.sadhasivam@linaro.org>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20221222141001.54849-19-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221231_132901_059845_6B378715 
X-CRM114-Status: UNSURE (   5.42  )
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

On 12/22/22 06:09, Manivannan Sadhasivam wrote:
> reinit_notify() callback can be used by the UFS controller drivers to
> perform changes required for UFSHCD reinit that can happen during max
> gear switch.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
