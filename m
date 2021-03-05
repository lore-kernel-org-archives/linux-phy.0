Return-Path: <SRS0=UbcY=ID=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4047DC433E0
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 16:53:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B919D6508C
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 16:53:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B919D6508C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4JJjQvHAZFMkS15Uz7NhcSYzLB6GQwxDpzKwBVrVMHU=; b=WzCZ5e8YXGVeO0OgdBtr6JIM2
	OylfFAiWHtjqA90HPbXiGfhtaa5YYws2nufNw8bFP9GkyTqnr9W89xTtBbDTUskn7QeI3Vfc1oL0N
	TGK12+0peLEcMKK2+wnXCJDAk70yZVChG4TDpV1lrKyxBZaHomuycehz1EERV54KWJThgXIXFQcVO
	fYAQIOfZQHBFySHEsmfYSwoOV2jBoQfiL1JYO1Lu+LqJFppGg/6KKiuSbi3QZqXDe+xseCltBgZ1A
	AI9jo9VIMfTdf8I/rQvEFV08j+1AzA8IxmNCS9usX2yYMhaZ+YxyWZ4Y5lbZ/EN3C+/Tf1TcdER+N
	AS0qATjVA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIDhO-00Fgl6-Ah; Fri, 05 Mar 2021 16:53:10 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIDhH-00Fgjl-Hh
 for linux-phy@lists.infradead.org; Fri, 05 Mar 2021 16:53:06 +0000
Received: by mail-ot1-x334.google.com with SMTP id h10so2447210otm.1
 for <linux-phy@lists.infradead.org>; Fri, 05 Mar 2021 08:53:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=guYH/5qOtFQBIN2P1EMu0NVCNqC/3vAbJh8ln53cvg8=;
 b=Gt0m3COZdbTATdSy0pZ8eGFJlBB9eyHiSt9VsP9SpUXsOJimMThk9rB7QGOicSrk1o
 nvjYlolx7o5yNKMV7Cr3sxnAhsEQdUn/r0Xj9DYb65znond4luM/oLXUJqPF/rxoyJgr
 fEGkjLXqhIWYb+Ok42m0NZVphvco77Xf5cQHOn1xpBMKt2J3lk0kHwqwaiyeAGycqAIc
 xo/oVyuJNo5HZz3Gcm6/GtKnYOxzhptpM6uOreyMkVrS5qd1WxNwcF06mIeaeM5ij5Ui
 /3SwaF2oeP84gkHlcFOM1g5fYGDnFjpJZWC/JRa2Naf8h9uuRyJNjd5OPweaaCjnnUO0
 O9cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=guYH/5qOtFQBIN2P1EMu0NVCNqC/3vAbJh8ln53cvg8=;
 b=ri76UGNv1AvrQscbCThWZAFuw6BUFZwQp/aIvef6M9V1Ui2293vNRmdkGs1BIWd8XF
 Ww0yG+Gr/iinIIjcwddrEAia/N/UBPHfAKgu545YSHdp35nP7hSdhG2g8pQ/y4w3pY/C
 NRLfm84MaeaLnuQNCRnTP5dmBq5BUXOIw5OLSwK58Q7cOHJXehT9Nv6q420PaP1OsHOE
 SNpGYupi3iFU34k+uH0hB5UjWY2PbyBc1Uj7386wFN8POKdonTCD40aLqkrfsQCVLYKD
 XwxRtbqyb7VpQpXy3nZeEdZYEL0ElBXRM7hudH9uFr5kfuuav8prf2tLaSlOOXCWmhCs
 M3jg==
X-Gm-Message-State: AOAM533coZG9ZZ7T6EySOeOxP+e2gA79egzVRzkVthQ+BeNp4VRo/jlN
 qQU5WOKrD5tAmns3sdgO1zQ=
X-Google-Smtp-Source: ABdhPJwhOFuz8TQn+lsbdlM4vAJ0ewbfYDsS4K1IVN+KnzhnYdCaUz3dwaq86V41LSdXqxO2M3Rugg==
X-Received: by 2002:a05:6830:3108:: with SMTP id
 b8mr8657811ots.174.1614963182225; 
 Fri, 05 Mar 2021 08:53:02 -0800 (PST)
Received: from ?IPv6:2600:1700:dfe0:49f0:2848:1d9c:bc31:5394?
 ([2600:1700:dfe0:49f0:2848:1d9c:bc31:5394])
 by smtp.gmail.com with ESMTPSA id t2sm738216otq.45.2021.03.05.08.53.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Mar 2021 08:53:01 -0800 (PST)
Subject: Re: [PATCH] phy: phy-brcm-usb: select SOC_BRCMSTB on brcmstb only
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Roja?=
 =?UTF-8?Q?s?= <noltari@gmail.com>, Simon Arlott <simon@octiron.net>,
 bcm-kernel-feedback-list@broadcom.com, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>
References: <20210305152406.2588-1-zajec5@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <09079ce7-6a42-6689-3607-ce34b8cf77c6@gmail.com>
Date: Fri, 5 Mar 2021 08:53:00 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210305152406.2588-1-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_165303_933404_14B923AE 
X-CRM114-Status: UNSURE (   7.80  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiAzLzUvMjAyMSAwNzoyNCwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IEZyb206IFJhZmHF
giBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBwaHktYnJjbS11c2IgaGFzIHNvbWUg
Y29uZGl0aW9uYWwgaW5pdCBjb2RlIHJlcXVpcmVkIG9uIHNlbGVjdGVkIGJyY21zdGIKPiBkZXZp
Y2VzLiBFeGVjdXRpb24gb2YgdGhhdCBjb2RlIGRlcGVuZHMgb24gZmFtaWx5IC8gcHJvZHVjdCBk
ZXRlY3RlZCBieQo+IGJyY21zdGIgc29jIGNvZGUuCj4gCj4gRm9yIEFSQ0hfQkNNNDkwOCBicmNt
c3RiIHNvYyBjb2RlIGFsd2F5cyByZXR1cm4gMCB2YWx1ZXMgYXMgaWRzLiBEb24ndAo+IGJvdGhl
ciBzZWxlY3RpbmcgJiBjb21waWxpbmcgdGhhdCByZWR1bmRhbnQgZHJpdmVyLgo+IAo+IERlcGVu
ZHMtb246IDE0OWFlODBiMWQ1MCAoInNvYzogYmNtOiBicmNtc3RiOiBhZGQgc3R1YnMgZm9yIGdl
dHRpbmcgcGxhdGZvcm0gSURzIikKPiBTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJh
ZmFsQG1pbGVja2kucGw+CgpBY2tlZC1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBn
bWFpbC5jb20+Ci0tIApGbG9yaWFuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
