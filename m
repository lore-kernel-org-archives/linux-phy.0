Return-Path: <SRS0=h+Aw=J5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30B6FC433B4
	for <linux-phy@archiver.kernel.org>; Sun,  2 May 2021 15:53:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E3D7B611F1
	for <linux-phy@archiver.kernel.org>; Sun,  2 May 2021 15:53:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E3D7B611F1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sjJQ9qLWW+zflit1D38rBX+7nuerlg2SndcvSLXLWmo=; b=nhyqj+cU5Rl0XkUvvYIUwNrBR
	XVMgBdGA9MM2GFsWKpkNZHrJCn1jXqiLXCf0W+5ITMIFycUIBM5c8pI7zz1fE+rMnlaHxR3r9UloY
	1Xd9DLX16OR052Pq7Di7EZ4JVI8vE25R5AxQZXl9BAV7EWRn5fccJ7FlD5CfQAVoNPT5sxN8WvDb3
	DWMZClpXaHoGySMF5HQbf4W1rZ0NtjcYcyZ83RAhTFKNsGowwG0O4696eO/zVPhx4AgPkGV/xOLUa
	YYnlfQ5r0UZzcod8dTtnMKyt/gIRSVow7hTgTXUouBQVV2qlpNfz1w/Vafyqe7GILvjSkfMrKgoOH
	FZocpNGPQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldEPb-00C396-8P; Sun, 02 May 2021 15:53:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldEPY-00C380-E0
 for linux-phy@desiato.infradead.org; Sun, 02 May 2021 15:53:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=+pEIgenmE+D1r/CBbObpajLyzMM6TZCndrUq5f9PnOY=; b=YPt5KlDdNJP4Nu6C6asVo725RZ
 YDgiVcyZdmu1IrZy7tjGBzCJ2GeaDcOynk5b8TziObOtCgXZyNLH3QonehD7DtVIBN32paix9pHCt
 4kaYdf5SMJoFCvsVekWL00axWiPDXHPNXjbz+HCYSTPHuIfmFrfjbSH2VH+ioku9sC10WVOTEQ/eR
 JzURDoMPvqnPXxU6vHIi2MZQM5dR6Ef+7sYZgSh546QXPjmgDi5tTSFG4bcUFqK0hyn/QxB28kNsC
 5xAMp4/iYAjQjgsN8iaNa4I+Di7Jhtw42Cnc/oXELXSefmwZp19fcufUSP5qBGEAuOyrLb2U5Z4UW
 HIwGh03Q==;
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldEPW-002ahK-0a
 for linux-phy@lists.infradead.org; Sun, 02 May 2021 15:53:35 +0000
Received: by mail-pj1-x1031.google.com with SMTP id ge1so1670974pjb.2
 for <linux-phy@lists.infradead.org>; Sun, 02 May 2021 08:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=+pEIgenmE+D1r/CBbObpajLyzMM6TZCndrUq5f9PnOY=;
 b=XkbmSvFSxzs+Z8m4ADAPLryBIfQwqvUVhF9JZo9yzIpiYZ93tIhbHc9SUqKOG2fopB
 D4STrJLTuaFBjgQh2cV1Zvv8DO7VFwOUQWb8C4WHaggrFl3RMwGoO8YSnQuIYJNqs/jo
 DDRj68CENpbWgMFGGTv4joxEf6ESefR+ZGffwnE9Fx9TNRHZMuGdrB0gtPRgfEV3Xh3e
 RFUMbW+bFtNMcs9gNRCKJP+LaJzzl6St120WRaPmjVOqdFKOBfV1aCuEfezUlryvub8L
 Vc9PIbtD3uPHCZG4hTZ+xJKrO+Ao65GTMlrZIXWLyhJSfR8j8IwKiDjO6LczoBBYzdWE
 9CDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+pEIgenmE+D1r/CBbObpajLyzMM6TZCndrUq5f9PnOY=;
 b=eSqkFLRR156821xnYKzRIi+pYeYTxLvfWKMhQYfGwKWvX1JEUUUF9H+msykZGqGcAf
 plqBPQo6tQecPlPLz54ZhREp8rR3fvkWWCvzikiSTO2KAsTv2G/B1pOmGacXvRuGbqSi
 bgqpsToLtQxZ5Iixrjv0tCSbpF3OeZK/19SkOBP35u1NLisn0G9EgLzXVlN6k5Y7obae
 WA6qkAbTVadJBS4Wg6xZUKjpsHngRaeTy8PAbMM3LzecoSfD3X7XG85AVQfCBMx1N2//
 zXZWM50rZSgyjtp+FCi7E6T3kJ/iaYnrdnjWAOYEp9xBZB9wKdkPpRyUcuDfWC4cZE+Q
 90pQ==
X-Gm-Message-State: AOAM5314e7bDMUNZx9LdJ/sVZFMWe17d/9Zaa1BnPEeMikCebVB/UZ+S
 sxf4LHrbB+W+b75FNgCtwjk=
X-Google-Smtp-Source: ABdhPJxi9yYKa4vdHvC1mZQ4QAirZnEUrb5wgTDaPKEV3BAJiAw/z26to0Aqw6ojl0RKUDzHMas2Bg==
X-Received: by 2002:a17:90a:9511:: with SMTP id
 t17mr26332999pjo.235.1619970813247; 
 Sun, 02 May 2021 08:53:33 -0700 (PDT)
Received: from [192.168.1.67] (99-44-17-11.lightspeed.irvnca.sbcglobal.net.
 [99.44.17.11])
 by smtp.gmail.com with ESMTPSA id x23sm6728984pfc.170.2021.05.02.08.53.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 02 May 2021 08:53:32 -0700 (PDT)
Subject: Re: [PATCH] phy: usb: Fix misuse of IS_ENABLED
To: Chen Li <chenli@uniontech.com>, Al Cooper <alcooperx@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com
References: <87czuggpra.wl-chenli@uniontech.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <bbbc3229-5dc4-f8f9-f2e1-5cb28213e269@gmail.com>
Date: Sun, 2 May 2021 08:53:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <87czuggpra.wl-chenli@uniontech.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210502_085334_083790_7CCF3679 
X-CRM114-Status: UNSURE (   8.63  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 4/27/2021 12:17 AM, Chen Li wrote:
> 
> While IS_ENABLED() is perfectly fine for CONFIG_* symbols, it is not
> for other symbols such as __BIG_ENDIAN that is provided directly by
> the compiler.
> 
> Switch to use CONFIG_CPU_BIG_ENDIAN instead of __BIG_ENDIAN.
> 
> Signed-off-by: Chen Li <chenli@uniontech.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
Fixes: 94583a41047e ("phy: usb: Restructure in preparation for adding
7216 USB support")
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
