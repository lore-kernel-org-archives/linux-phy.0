Return-Path: <SRS0=bWLT=NW=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AE5EC432BE
	for <linux-phy@archiver.kernel.org>; Tue, 31 Aug 2021 13:32:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43C4660249
	for <linux-phy@archiver.kernel.org>; Tue, 31 Aug 2021 13:32:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 43C4660249
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hiZRuqvKUMtOkh6O6WqxklAW26dTEZg/7CptoEONG9g=; b=Up+Ek8EQqZ5Zny
	G7Q2l5ooi7AOje2RQcaTwbzKF9tHN75MrRUv2xumU8yg/aJvgkV/tIXntOn7nMv2GUDm+2BvXQ3td
	pMYZazS/jMnQiqcqNamFu2clPrC9el55bu0JaI3kzY9NHywjSil1Pl+9nxGTb4L67bAQ+TU3GgJ7B
	WbXn3a1ITSQ3ywPYU1JKaolx8pSQd6bMdZX1VzHCzRGHsyath5z/8Te50x8BFmlzRJOLMFR4tkF/u
	u4kLWJwnFV7oKSrZyf9JOTOZ3xTzXogthOZ2bMKbpNdoBmmK1EJ75c4XXLi2pTghn/ZltuAcrLcGv
	XJpYXUeYFY1eZCLUL1jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mL3sS-002KaL-Py; Tue, 31 Aug 2021 13:32:36 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mL3sC-002KUX-Nq; Tue, 31 Aug 2021 13:32:22 +0000
Received: by mail-lf1-x12f.google.com with SMTP id j4so38550277lfg.9;
 Tue, 31 Aug 2021 06:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:date:in-reply-to
 :message-id:mime-version;
 bh=GeCDFSLFkHR5bfvtTUMyOsp472Ws5rrIWXodPm7S9WQ=;
 b=BHF7fxNGQJoaX8Br8UAy5Or2/hA8l9vQh6vYYRIALA/fGgAgBp3MlxMZjOOpfJC8YT
 hQrrpiI7T0NlM176HHUbzI7Dkh9HBnuEDVaGUOcTUO+OePoyVYn4YIQ4ko9Y7z79pwbr
 nItPhVh5IzD1unVWZrcXcvnG43RfveHWe4McFdXim7KBKLuwqxM6rnOE7dX60iJDVc1Z
 z9f5zZL85iPCHZ40WAfvcfae+cOy4HUKHvWpGcPkEMVFgvpX2NejIn+/QfXfEiK/L2UC
 RB4sOGwxoE78YneyeAMG1pOS3u3A75v1mDuMhIoPP0x2/Uy/1G+w/EHIVy4G0IS5BAsI
 16eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject:date
 :in-reply-to:message-id:mime-version;
 bh=GeCDFSLFkHR5bfvtTUMyOsp472Ws5rrIWXodPm7S9WQ=;
 b=aC0RbkmjnH1srVcuDZj3rNNTHYeK13bS3SFL6qqudIPklCvH+JnH4YNHTR6cnO8wov
 SipCVL8DAQKF15rNQPRfF4o51qCwc3yoy07R8SqIHSBhJvvNXWfhhvQuMDF8nTlUmcdn
 tVpgK4abQm5uMLexS8GNA8MpvhmfnnA+J/pz9YEnOW08H6xKesP/KU3UD5F6K7o08bbt
 e8ViCxVKbsdLNJ95kRLl8qFeRzsgaKOn6QSmQmxnI1ohpo/OOMsWwMNnlkoiGyKI4TsL
 ++96vG/JpDWpv1tHbuKmqifLAM0mrJ5JV9GsmBDwRWMtvjAXoTvSZCjtRZzONwNJ3WzJ
 JaRw==
X-Gm-Message-State: AOAM533kvnLiRNnjvk849Kd3iaF2wheivfYCJkJuA7ZR85zzhXdr8h+g
 C08igAijF3anbkDjywzGzZk=
X-Google-Smtp-Source: ABdhPJy0zOkaHmnYGTwuWrKtaFfasl3BH9eyKB3YBjINYLVJ0qrXbQynCoPpUp5pVch7HLPqoW87UA==
X-Received: by 2002:a05:6512:4005:: with SMTP id
 br5mr15045454lfb.560.1630416738553; 
 Tue, 31 Aug 2021 06:32:18 -0700 (PDT)
Received: from razdolb (37-145-211-218.broadband.corbina.ru. [37.145.211.218])
 by smtp.gmail.com with ESMTPSA id
 z25sm1726036lfj.132.2021.08.31.06.32.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Aug 2021 06:32:18 -0700 (PDT)
References: <20210830180758.251390-1-mike.rudenko@gmail.com>
User-agent: mu4e 1.6.5; emacs 27.2
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: linux-phy@lists.infradead.org
Cc: linux-media@vger.kernel.org, Mikhail Rudenko <mike.rudenko@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 0/5] phy: phy-rockchip-dphy-rx0: add support for
 tx1rx1 rx mode
Date: Tue, 31 Aug 2021 15:58:30 +0300
In-reply-to: <20210830180758.251390-1-mike.rudenko@gmail.com>
Message-ID: <87sfyp4u5b.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_063220_848469_88B0ACC3 
X-CRM114-Status: UNSURE (   5.21  )
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

Hi all,

thank you for reviewing this and sorry for me failing my prior research
and overlooking existing Heiko's solution [1] [2].

[1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=71f68fe7f12182ed968cfbbd1ef018721e4dee30
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=68e0277204c733dff19073686e2ac48239b06fbc

--
Regards,
Mikhail

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
