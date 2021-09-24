Return-Path: <SRS0=OBTU=OO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.3 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBF8C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 24 Sep 2021 02:10:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7FF0361211
	for <linux-phy@archiver.kernel.org>; Fri, 24 Sep 2021 02:10:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7FF0361211
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RvIt3HiQ0VEOdoyBoq0DGLodHieWAg/L764i5MQTNRA=; b=CF3Yf2TNKzDNf0
	iI7+mGpz/ptzVE3kgUNPgSNMLDadw/iC3ZgzEfFeC/MhOYD+ZFkusaSpd/dtk3nbH9o+P/X+rw0u2
	fq3NLSWoYMMOT/0NkDtMsgc1lppeTx5KPEZthSiRc/HXcxtFl0iF3DtVhoZPRti3y9aljRa5DbHvF
	l0Rj7PCmTKmIQi+kIuX5xgnrQ1VDtJGJWaxvFdmNWY0lxZobea6UqH323nPk6fHTvNfGMxXtEqJZe
	anrv6uwIZ6CRK5tguZWhtpnAzwhYqh9JNw2M8ou3GpNGQDbOmHS+YAPpussZPMafdrpcjHArUmH05
	GxYMrPgEzPHUOh8HnLNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTafk-00Cu59-S2; Fri, 24 Sep 2021 02:10:44 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTafi-00Cu4K-2v
 for linux-phy@lists.infradead.org; Fri, 24 Sep 2021 02:10:43 +0000
Received: by mail-pj1-x1031.google.com with SMTP id
 z14-20020a17090a8b8e00b0019cc29ceef1so8440306pjn.1
 for <linux-phy@lists.infradead.org>; Thu, 23 Sep 2021 19:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=Sf+K5ftwjM7G1SXP3n6mL8ZVon/UaLc7wK06ppTU7uk=;
 b=V0/otrIzyfMLg7DqeExqO6yLKVG+RutyM83s4x3enYma2JnY2actev9HonDVAf+Tdg
 3yns8kJwkOmMPEBIoh/LwJMgbIAjqtZT3TcKhWQow3JIN/Buczq8lJ18CcLOSa/WTOER
 Ncl6sGATyuR2/Ez2vx6YLaE3TIVmtM64yPCkW02lsrZHIpWlmIu+w798/X3J6o0s0dDV
 GpwufQ90wg2yGQjLn3B2fT1GmMOb1Aj8jIFTVAuZTtfxpcdBgQy7uKOFD59zN0bNAn1H
 4TI32PMcwBjkdv60FC0heJFp8d/vqYhdnBWf4Ev0GyMdFva1NujqxvlQGQeF4sBQi/08
 rmvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Sf+K5ftwjM7G1SXP3n6mL8ZVon/UaLc7wK06ppTU7uk=;
 b=w535IIMPSZRZNBQYDbmLHDBj/L4GNSJNtLnUzGtOqo0PnM3XovG4QrOGaI7lQ6F1/G
 7ACkWlyhgltTEMBJbOlqaYSVNA9q5HV0+MFGvevnr1MvqXdo7vnVYFStUvThr6baJep+
 B/smYx7SOY1t/q/gvJqCcENjSee6bHHml/kWfSAoPUH+EBt4melD9JUTCgvsEnHc55tr
 5Sqf4wDHWbh2jPcTxHbVTNHrQ0jiWBtXmn4NPdJR7zowjNecdH149WzKKIDjZqmw8CWM
 5NX5J9K70hc2RL8kbnbWUWmpBOJQtAyR+GBwPx2W1/HlrXAABycG+qGnXTLXBj7PMkON
 oc9w==
X-Gm-Message-State: AOAM533KkOn4C2qmgE3IYtarJmM/CVuc4P7zFSuIsvM0LruVV72qrTD0
 Rhl0yWH0LQK0pKj1SbRIaLQ=
X-Google-Smtp-Source: ABdhPJzNevQju5Rfk3/AOIiShW4E4gpWjMAFhfRIjwzwPNXpfp0aXVSuX4wtPzgKYPeLrM7Kgn/RlA==
X-Received: by 2002:a17:902:da91:b0:13d:de94:2c63 with SMTP id
 j17-20020a170902da9100b0013dde942c63mr4680148plx.49.1632449439920; 
 Thu, 23 Sep 2021 19:10:39 -0700 (PDT)
Received: from [192.168.1.121] (99-44-17-11.lightspeed.irvnca.sbcglobal.net.
 [99.44.17.11])
 by smtp.gmail.com with ESMTPSA id y13sm7896579pgc.46.2021.09.23.19.10.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Sep 2021 19:10:39 -0700 (PDT)
Message-ID: <b12029dd-3ad4-a3cc-8d79-189fb7583c6e@gmail.com>
Date: Thu, 23 Sep 2021 19:10:37 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.1
Subject: Re: [PATCH] phy: broadcom: Kconfig: Add configuration menu for
 Broadcom phy drivers
Content-Language: en-US
To: Cai Huoqing <caihuoqing@baidu.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210923025013.189-1-caihuoqing@baidu.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20210923025013.189-1-caihuoqing@baidu.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210923_191042_156594_3C05BFAE 
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



On 9/22/2021 7:50 PM, Cai Huoqing wrote:
> Adding a configuration menu to hold many Broadcom phy drivers
> helps to make the menu display more concise.
> 
> Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
