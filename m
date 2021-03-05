Return-Path: <SRS0=UbcY=ID=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19F31C433DB
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 17:15:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 954E765051
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 17:15:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 954E765051
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4Jo1I9tjZDqMBgG/xBN6Iq6OD5LKivRPy+r4+HatcQc=; b=pOL8rb4R5XEwNpLviKe4v7nBu
	FxJop7qxYZkGI97098GOdBiCExFVP2nN9JyOSgjuVlRzXkSQgltNyJ2quxkBs3iqeEY8nxNghX+nn
	s9mh70GLjn2MDT8Rsahj1Ughi3SNq/zMoH2Wgapv3cHsyHgYCVFr+WTZH+on3bBBcrJ+zRBRHUpgF
	/VAk123kPb9qF6PmbU8txufoCJ8JfPO0fDoHviFtji2XvlLrW4cKTPCK6Vo5SumQbADVfh6wBSNHm
	/quXB6K/dmW+++0c/javAK9rV3JQU53qdq3YCrslqLyR5kGjBorSKSAiOr0j31yi0T+i6g2pSSncY
	1cqyxzkCA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIE3O-00FkwC-1O; Fri, 05 Mar 2021 17:15:54 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIE3J-00Fkv0-QG
 for linux-phy@lists.infradead.org; Fri, 05 Mar 2021 17:15:51 +0000
Received: by mail-lj1-x22a.google.com with SMTP id a17so3724390ljq.2
 for <linux-phy@lists.infradead.org>; Fri, 05 Mar 2021 09:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4vAtalTLylwKKnr243XUx9JzH5CVIUH23A5vJc22tLM=;
 b=BJrgBUMsvq2gHT16kR/uvC47ooQOL09soABCVFNggZfItj6XPyRVKIIqCrl/ARfOwu
 TCnz6TbPQmf/jDkBUnAn0zH8rhN+f9ac7lWzN5WN88CakYH2+QcC/ar1YJh4AvGywC14
 btGbICsOWBoOQ2TsXLujJVz4cSLNuXo83iPjuF+ZHhpiwkQ/KT3ScKXhoa3gQCwzoqav
 i19LrblLc4Ssov5vt3xDFlClpvOKzjrDGevYlElH43SC51rGoxJ5jTxfub18z3yiB5el
 ptxgYdCCoj8Glmb/BeWCRrtgCdQ+FToMy+IU6TkrQrWwCr2UIYkW7UX2J5IgiBpsw08v
 loaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4vAtalTLylwKKnr243XUx9JzH5CVIUH23A5vJc22tLM=;
 b=QANgryX1KKelRQpSS+0ZKqmN3SVi7PJQjBlh2MqlVc8ZFI7j2bBlt0V5zKop0YXMb/
 rmQ9qQWVDF1XundhCxe5MDfYPAkJ4ly7dyVuWU/0v++vpPkedUYIX0M4ScwQc0z6jOTL
 3dcpchoPwI/epYkfvvBJejYRx7I/shCSfgm+u9xGqOV8pLFZugPUcpKknQMbxt7vkEnR
 8U/qholULJovuOxa3qqkT/lPRjk7569EDdl8EmGbgk9LrzRqODjPxl/pAB+W27qxVE6o
 sVp/i++pVZI5TWtcq5WyM1tjAx/sbhOIuUCiOI2CvVJFNIdvazcHBiQPom7Ydih3f8oP
 hsuQ==
X-Gm-Message-State: AOAM530t7Ug8JDAm45Epuw2ITeiFw1A25MQIJCGpi5CIq2gAw2+cIzTr
 OfXGtZkdgyNOj/QIITWUSvk=
X-Google-Smtp-Source: ABdhPJzSBegSEA/TwdAOKUAgSE/CJ2T5o+3ZEIhIs5hWC5GPK7nv9xQlC8nOJxW232EsFD9x/ozhJA==
X-Received: by 2002:a2e:b8c5:: with SMTP id s5mr5591340ljp.335.1614964548812; 
 Fri, 05 Mar 2021 09:15:48 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id o26sm381909ljc.138.2021.03.05.09.15.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Mar 2021 09:15:48 -0800 (PST)
Subject: Re: [PATCH] phy: phy-brcm-usb: select SOC_BRCMSTB on brcmstb only
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Roja?=
 =?UTF-8?Q?s?= <noltari@gmail.com>, Simon Arlott <simon@octiron.net>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>
References: <20210305152406.2588-1-zajec5@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <37f013ef-cb16-91ce-3729-2c4cbcb375a7@gmail.com>
Date: Fri, 5 Mar 2021 18:15:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210305152406.2588-1-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_171550_279500_8C360643 
X-CRM114-Status: GOOD (  17.76  )
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

U2VuZGluZyByZXBseS10by1hbGwgYWZ0ZXIgc3Vic2NyaWJpbmcgdG8gdGhlIGxpbnV4LXBoeUAg
TUwuCgpPbiAwNS4wMy4yMDIxIDE2OjI0LCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gRnJvbTog
UmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IAo+IHBoeS1icmNtLXVzYiBoYXMg
c29tZSBjb25kaXRpb25hbCBpbml0IGNvZGUgcmVxdWlyZWQgb24gc2VsZWN0ZWQgYnJjbXN0Ygo+
IGRldmljZXMuIEV4ZWN1dGlvbiBvZiB0aGF0IGNvZGUgZGVwZW5kcyBvbiBmYW1pbHkgLyBwcm9k
dWN0IGRldGVjdGVkIGJ5Cj4gYnJjbXN0YiBzb2MgY29kZS4KPiAKPiBGb3IgQVJDSF9CQ000OTA4
IGJyY21zdGIgc29jIGNvZGUgYWx3YXlzIHJldHVybiAwIHZhbHVlcyBhcyBpZHMuIERvbid0Cj4g
Ym90aGVyIHNlbGVjdGluZyAmIGNvbXBpbGluZyB0aGF0IHJlZHVuZGFudCBkcml2ZXIuCj4gCj4g
RGVwZW5kcy1vbjogMTQ5YWU4MGIxZDUwICgic29jOiBiY206IGJyY21zdGI6IGFkZCBzdHVicyBm
b3IgZ2V0dGluZyBwbGF0Zm9ybSBJRHMiKQo+IFNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNr
aSA8cmFmYWxAbWlsZWNraS5wbD4KPiAtLS0KPiAgIGRyaXZlcnMvcGh5L2Jyb2FkY29tL0tjb25m
aWcgfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYnJvYWRjb20vS2NvbmZpZyBiL2RyaXZl
cnMvcGh5L2Jyb2FkY29tL0tjb25maWcKPiBpbmRleCAwOTI1NjMzOWJkMDQuLmZkOTJiNzNiNzEw
OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9icm9hZGNvbS9LY29uZmlnCj4gKysrIGIvZHJp
dmVycy9waHkvYnJvYWRjb20vS2NvbmZpZwo+IEBAIC05NCw3ICs5NCw3IEBAIGNvbmZpZyBQSFlf
QlJDTV9VU0IKPiAgIAlkZXBlbmRzIG9uIEFSQ0hfQkNNNDkwOCB8fCBBUkNIX0JSQ01TVEIgfHwg
Q09NUElMRV9URVNUCj4gICAJZGVwZW5kcyBvbiBPRgo+ICAgCXNlbGVjdCBHRU5FUklDX1BIWQo+
IC0Jc2VsZWN0IFNPQ19CUkNNU1RCCj4gKwlzZWxlY3QgU09DX0JSQ01TVEIgaWYgQVJDSF9CUkNN
U1RCCj4gICAJZGVmYXVsdCBBUkNIX0JDTTQ5MDgKPiAgIAlkZWZhdWx0IEFSQ0hfQlJDTVNUQgo+
ICAgCWhlbHAKPiAKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
