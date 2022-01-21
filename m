Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A9BFC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 21 Jan 2022 19:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=00sMdSxPw2wX41W6zjUnQfTvlzYT5bGAtuz4NWC+wjM=; b=mQjedI5ALh97FO7n9v/IC9DyeE
	OcDY5OrIiJ0L60qkg9uRVPyKG91LBsMCktUHf4DVvSIBAasyF7rArG/WBwDpb5zlHmICT4f+q4Syp
	J3m/09BWHyalRDlhePCYyEGRbEdThMM1y3Z9tr509q1BjiaPraSUw5RC3efEMox0tu0vwvP2aB0IE
	nznDM3V7sQdorldqvy8G2tDURxbdjonJwqV3N+ysD9+m6F2F+3Z89DrocyJ53rQ8EP07SCBeznlFa
	TxJUKhfVXvyFIJPh3gtHax8SiAgFoA8Zx7Wa11BtgudovfBw3JgnDAoG/WDKvkFb8CzZa+EJcESyD
	bTtTmlkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAzQP-00FvVj-L8; Fri, 21 Jan 2022 19:18:17 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAzQM-00FvV8-KM
 for linux-phy@lists.infradead.org; Fri, 21 Jan 2022 19:18:15 +0000
Received: by mail-pl1-x62e.google.com with SMTP id h13so8941618plf.2
 for <linux-phy@lists.infradead.org>; Fri, 21 Jan 2022 11:18:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Gblw6HEANG08vvNT8wnSyaFRKCt3AspyDbQwbl/SDoE=;
 b=hImo7KNcZMSWOfPhS143lxAQpOcVVn1ltc5DeFq7lYXgRxieUCQTH8QQQhbwKjP2OE
 xX/49rUGKff3Els1IG3ArplCt8DfNGiLwtfl3IMW47LoBnkeQxq4MAxoHdEG4pk3pgDs
 H8E72EQIpszcRTd0DUVAANvGSNUZG6yhMQuFtpDiil9NyxtDkLOSvrk1uoa/I2YiOc2e
 ACuqAoLYo9LrCVWlhAZMHMslewp94cw41Jm2WflrI79y5xekbXVpDf3aJIHaZM5PODgi
 RjSVNSD8paiVgtu8+H2FULcIp8OYGyYTJOYG2yC0Ti8+jcYrGqNeV9LIgPaY/NQr5ARP
 nSdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Gblw6HEANG08vvNT8wnSyaFRKCt3AspyDbQwbl/SDoE=;
 b=gY1YTCXa7RRYXirzM0FZgu71mbdosJZyome/SamLKkLHMlwpAqPlAsWPYiLd/67lb/
 MTiR7Rn7YZcAgRuH2V5NvTx+KagON4BsutjN87jWLGRosM6eFRwLw/hofltqVg/0XxPG
 aSgfF0NjTppAJGe1meu95phxIvhzW0BM/fcA8RDEmMgod/9teY13L8vZqFV6SsqtdK9t
 cOZnWya5qLEtmW3mJLjlzJmNHZ6Z2sHBZ0MnbDtj8bLeJJuIvBbOxY2xMX1/U7jy85L9
 p2tvLGzM/apWrUOsK5vw/xekrMwcIkazDolLb6g3Ec2n+vhMBeVBTqXEK/0csL8fdh69
 3FVg==
X-Gm-Message-State: AOAM530/T76JQLyGv0RhsmhofBIujuAi1dIbOpj77q3ngpKXGUh+n2mM
 7i6v3ztn0E/VV5kI4KtmT7s=
X-Google-Smtp-Source: ABdhPJxGjRYibGbPqIrwFNV9Pkake/QfuLqGN9VS1suJFou8fh9Qha8BWKg6kaJI4WTodqbc4/wSfg==
X-Received: by 2002:a17:90b:4a42:: with SMTP id
 lb2mr2186771pjb.46.1642792693791; 
 Fri, 21 Jan 2022 11:18:13 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id z10sm8030718pfh.77.2022.01.21.11.18.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 21 Jan 2022 11:18:13 -0800 (PST)
Subject: Re: [PATCH devicetree v3] dt-bindings: phy: Add `tx-p2p-microvolt`
 property binding
To: =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc: Vladimir Oltean <olteanv@gmail.com>,
 Holger Brunck <holger.brunck@hitachienergy.com>, Andrew Lunn
 <andrew@lunn.ch>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, linux-phy@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
References: <20220119131117.30245-1-kabel@kernel.org>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <74566284-ff3f-8e69-5b7d-d8ede75b78ad@gmail.com>
Date: Fri, 21 Jan 2022 11:18:09 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220119131117.30245-1-kabel@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220121_111814_705859_419E4B08 
X-CRM114-Status: GOOD (  14.42  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMS8xOS8yMiA1OjExIEFNLCBNYXJlayBCZWjDum4gd3JvdGU6Cj4gQ29tbW9uIFBIWXMgYW5k
IG5ldHdvcmsgUENTZXMgb2Z0ZW4gaGF2ZSB0aGUgcG9zc2liaWxpdHkgdG8gc3BlY2lmeQo+IHBl
YWstdG8tcGVhayB2b2x0YWdlIG9uIHRoZSBkaWZmZXJlbnRpYWwgcGFpciAtIHRoZSBkZWZhdWx0
IHZvbHRhZ2UKPiBzb21ldGltZXMgbmVlZHMgdG8gYmUgY2hhbmdlZCBmb3IgYSBwYXJ0aWN1bGFy
IGJvYXJkLgo+IAo+IEFkZCBwcm9wZXJ0aWVzIGB0eC1wMnAtbWljcm92b2x0YCBhbmQgYHR4LXAy
cC1taWNyb3ZvbHQtbmFtZXNgIGZvciB0aGlzCj4gcHVycG9zZS4gVGhlIHNlY29uZCBwcm9wZXJ0
eSBpcyBuZWVkZWQgdG8gc3BlY2lmeSB0aGUgbW9kZSBmb3IgdGhlCj4gY29ycmVzcG9uZGluZyB2
b2x0YWdlIGluIHRoZSBgdHgtcDJwLW1pY3Jvdm9sdGAgcHJvcGVydHksIGlmIHRoZSB2b2x0YWdl
Cj4gaXMgdG8gYmUgdXNlZCBvbmx5IGZvciBzcGVmaWNpYyBtb2RlLiBNb3JlIHZvbHRhZ2UtbW9k
ZSBwYWlycyBjYW4gYmUKPiBzcGVjaWZpZWQuCj4gCj4gRXhhbXBsZSB1c2FnZSB3aXRoIG9ubHkg
b25lIHZvbHRhZ2UgKGl0IHdpbGwgYmUgdXNlZCBmb3IgYWxsIHN1cHBvcnRlZAo+IFBIWSBtb2Rl
cywgdGhlIGB0eC1wMnAtbWljcm92b2x0LW5hbWVzYCBwcm9wZXJ0eSBpcyBub3QgbmVlZGVkIGlu
IHRoaXMKPiBjYXNlKToKPiAKPiAgIHR4LXAycC1taWNyb3ZvbHQgPSA8OTE1MDAwPjsKPiAKPiBF
eGFtcGxlIHVzYWdlIHdpdGggdm9sdGFnZXMgZm9yIG11bHRpcGxlIG1vZGVzOgo+IAo+ICAgdHgt
cDJwLW1pY3Jvdm9sdCA9IDw5MTUwMDA+LCA8MTEwMDAwMD4sIDwxMjAwMDAwPjsKPiAgIHR4LXAy
cC1taWNyb3ZvbHQtbmFtZXMgPSAiMjUwMGJhc2UteCIsICJ1c2IiLCAicGNpZSI7Cj4gCj4gQWRk
IHRoZXNlIHByb3BlcnRpZXMgaW50byBhIHNlcGFyYXRlIGZpbGUgcGh5L3RyYW5zbWl0LWFtcGxp
dHVkZS55YW1sLAo+IHdoaWNoIHNob3VsZCBiZSByZWZlcmVuY2VkIGJ5IGFueSBiaW5kaW5nIHRo
YXQgdXNlcyBpdC4KCnAycCBjb21tb25seSBtZWFucyBwZWVyIHRvIHBlZXIgd2hpY2ggaW5jaWRl
bnRhbGx5IGNvdWxkIGJlIGNvbmZ1c2luZywKY2FuIHlvdSBzcGVsbCBvdXQgdGhlIHByb3BlcnR5
IGVudGlyZToKCnR4LXBlYWt0b3BlYWstbWljcm92b2x0IG9yOgoKdHgtcGsycGstbWljcm92b2x0
IGZvciBhIG1vcmUgY29tcGFjdCBuYW1lIG1heWJlPwotLSAKRmxvcmlhbgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
