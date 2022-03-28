Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AADBBC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 13:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bOWuud3hmj5IS6sBuFDBK8u4k47RiAtzHWydP01aMG4=; b=n/aoxDji85ttWk
	zdLZj3jD+LhOcfo+tHhI2wsXNUma0EsetZdUPXCOnMzZoS0w1vyrIGNS1fjDFTHlxI69rzmVjYz61
	d2CwVOk+mkHaSPdSjuBeQwK8+D4uYkHcg6KtHTTkOd4ko4duBUQzga5XjEf/ldD02XmjMBsykSfAc
	lErR7ZBrSQiIg79HhXl3zs4eoz1LBbMpsj5+TdlL9HscwV/L67NWfGgzfLKYxF4rgXQy+oGZpgQ4b
	I8+kdkDM4MMtL3P0pd7YcYxXoKDm/SG0VbxLZExrr2acuMy/Cj0Z1sr/T4XZSMnMmXMvNGbOWSnCJ
	+a6HEk7qEfutvRIqxUVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYp73-008f3Z-4W; Mon, 28 Mar 2022 13:08:49 +0000
Received: from mail-ed1-f43.google.com ([209.85.208.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYp70-008f1x-9K
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 13:08:48 +0000
Received: by mail-ed1-f43.google.com with SMTP id x34so16826281ede.8
 for <linux-phy@lists.infradead.org>; Mon, 28 Mar 2022 06:08:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=zKU7dcPQqrzvad7hCDksyWL9/bxBhGy75hbbfKW8UQY=;
 b=m7+EFQnEuJfEEFRNbpU7SiL66gDIwWrLpSc10KrPlU0z6xX1nIBLPBzgo+LrLB+fDK
 rlD7Deo3cDPtSOAKCxFsKiR+ehTlXZIMzO7zpUT7RzrVsvH2WBXo5PvC+Vln9Y9P3REF
 RoZrVbhBTXxddRPTWTrGnin3l1g6hTsaQsyZ72Xv524A4AXHvoQ3nUqz9kiSc6/qjTpH
 qMPu2dKx3wJfiSD7+vexZdYBJGP5C7OYZdpR1/1nkLdkSRZtfLc9c0UDcrs2bejVmdsI
 rfbOvP9UJFOPewf+3xmK3rLHtlxTIkYuxuh94+idZRNZxTKKWE9JSuBda6X/6aC+WxEG
 BUKQ==
X-Gm-Message-State: AOAM530IYYwMtHrsfx5cfv/XbQXN4jQNgGTi464jGfosdlkmLuhIStbf
 7bz5nW2k9rm77xExHmUene4=
X-Google-Smtp-Source: ABdhPJxlgo+UgbH0M14lZEhBkIm04LSbc7VOhK2JBw82e42uIBhhCIiSHUQDD3W4GCC7jAEztHrQBg==
X-Received: by 2002:a05:6402:1c1e:b0:416:5b93:eacf with SMTP id
 ck30-20020a0564021c1e00b004165b93eacfmr16467238edb.302.1648472924228; 
 Mon, 28 Mar 2022 06:08:44 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.googlemail.com with ESMTPSA id
 d4-20020a056402000400b00412d60fee38sm7004246edu.11.2022.03.28.06.08.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Mar 2022 06:08:43 -0700 (PDT)
Message-ID: <da2351be-1fca-4269-cb7b-9dcd6a01b2dc@kernel.org>
Date: Mon, 28 Mar 2022 15:08:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 4/5] phy: Add ARTPEC-8 PCIe PHY driver
Content-Language: en-US
To: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>
Cc: "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>, =?UTF-8?B?7KCE66y46riw?=
 <moonki.jun@samsung.com>
References: <CGME20220328021832epcms2p6b6294b824c64404c437d0fd7f09369a4@epcms2p6>
 <20220328021832epcms2p6b6294b824c64404c437d0fd7f09369a4@epcms2p6>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220328021832epcms2p6b6294b824c64404c437d0fd7f09369a4@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_060846_344687_A1ADAC2A 
X-CRM114-Status: UNSURE (   7.32  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjgvMDMvMjAyMiAwNDoxOCwg7J207JmV7ISdIHdyb3RlOgo+IEFkZCBzdXBwb3J0IEF4aXMs
IEFSVFBFQy04IFNvQy4KPiBBUlRQRUMtOCBpcyB0aGUgU29DIHBsYXRmb3JtIG9mIEF4aXMgQ29t
bXVuaWNhdGlvbnMuCj4gVGhpcyBpcyBiYXNlZCBvbiBhcm02NCBhbmQgc3VwcG9ydCBHRU40ICYg
MmxhbmUuCj4gVGhpcyBkcml2ZXIgcHJvdmlkZXMgUEhZIGludGVyZmFjZSBmb3IgQVJUUEVDLTgg
U29DIFBDSWUgY29udHJvbGxlciwKPiBiYXNlZCBvbiBTYW1zdW5nIFBDSWUgUEhZIElQLgo+IAoK
WW91IGFscmVhZHkgc2VudCBpdCBvbiAyOHRoIG9mIEphbnVhcnkgYW5kIGRpZCBub3QgcmVzcG9u
ZCB0byBteSBjb21tZW50cy4KClBsZWFzZSBkbyBub3QgcmVzZW5kIHNhbWUvc2ltaWxhciBjb2Rl
LCBidXQgaW5zdGVhZCByZXNwb25kIHRvIGNvbW1lbnRzCnJlY2VpdmVkIGVhcmxpZXIuCgpCZXN0
IHJlZ2FyZHMsCktyenlzenRvZgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
