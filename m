Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01AC5C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 07:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dPA3eHlwSBpGJcWddrEg/5qRUmhLnQLgxja32FTRh7E=; b=s57/WnBezhXfCC
	FyUG0OdlpEmbwjmmtxyWXI/0mp8tr+XHYFv35JCMWNRhv3FH5yEDQFFXzowhxtB16o7eliV5/oNEX
	aq+5dj0mTp9lApaZg3zhUmAqd3gFZSV7D6qjP4BMqqkA9+Du292MD3U7p80P47yeZM9fjKnhSQR8A
	LuklvUO8lKCN//xVfT0J79a9mVYUMvEAdk589xFqXNKAC2tKQ+5C9WybeF8wXgU0xVxzdzp9p//R5
	Rv+WLm3NqNtI/DIf/wVcyJmO/E32oDmB8C+ut22sMTeX+wU7EgOPjzLK4WOwk0wDXEU3DcT6KhyOs
	5QbPBIePP6lqLeL474Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYjUW-007Yvm-Cq; Mon, 28 Mar 2022 07:08:40 +0000
Received: from mail-ej1-f42.google.com ([209.85.218.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYjUT-007Yuu-W6
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 07:08:39 +0000
Received: by mail-ej1-f42.google.com with SMTP id a8so26600113ejc.8
 for <linux-phy@lists.infradead.org>; Mon, 28 Mar 2022 00:08:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=FDWucwCLSeg6B2/VrWxzx6DUNy87uL1eammdBoI1kdM=;
 b=HG/bCvJMND0+xkRiA3vzDPTUujUmvyf78uEMC+s2mYItQPTTyoKXxZ3xb9HNmroa9R
 0bb7ZIPlbaf8kUDpOH7aGlbKZLRsIshKCp/QL6mQIL5tZuw90Vboq1LYzQjMtMtGPLEb
 uXf5TrW8mhydv8XRtwEPcxa3/UlOnmm3oX+jVdKkcZOHUfa9xJtNjTEI3mx9sg4/vSDU
 4aAyikQi0Zt/dmFLDo2eUddFyLYjKc6Hz+6pqpBLh3H1YZHY3ERE54VeziKPf/k3HkJk
 ifytGPSNWhjcAdaKwjDAUmDQoZgpkdfReH5o5ma5KMuIubG6K3YeTAKB/BwOZSjZe3Fg
 AJiA==
X-Gm-Message-State: AOAM532VaC/bE2SWPkIMFZSTJUhKWK0fU4kB63N3qEmn+LW59W8lpM/k
 +k92h+FCaYNi7aHw/t0USWc=
X-Google-Smtp-Source: ABdhPJxq7irEY8C3KlpFiXxZm7Qn0FoqyLcOgbNAdK8lwiegOS2udiGEGpmLI4I+88u1ym9l01zSiA==
X-Received: by 2002:a17:907:72c3:b0:6df:91a4:32f4 with SMTP id
 du3-20020a17090772c300b006df91a432f4mr26120523ejc.638.1648451312432; 
 Mon, 28 Mar 2022 00:08:32 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.googlemail.com with ESMTPSA id
 y16-20020aa7d510000000b004197c1cec7dsm6614300edq.6.2022.03.28.00.08.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Mar 2022 00:08:31 -0700 (PDT)
Message-ID: <74da6d19-49cd-808b-731e-386d22fb3cb8@kernel.org>
Date: Mon, 28 Mar 2022 09:08:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
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
References: <CGME20220328020947epcms2p2525f40ac5157735063927aedfbf6fc4f@epcms2p2>
 <20220328020947epcms2p2525f40ac5157735063927aedfbf6fc4f@epcms2p2>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220328020947epcms2p2525f40ac5157735063927aedfbf6fc4f@epcms2p2>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_000838_072415_0A316DFA 
X-CRM114-Status: UNSURE (   6.97  )
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

T24gMjgvMDMvMjAyMiAwNDowOSwg7J207JmV7ISdIHdyb3RlOgo+IEFkZCBkZXNjcmlwdGlvbiB0
byBzdXBwb3J0IEF4aXMsIEFSVFBFQy04IFNvQy4KPiAKPiBBUlRQRUMtOCBpcyB0aGUgU29DIHBs
YXRmb3JtIG9mIEF4aXMgQ29tbXVuaWNhdGlvbnMKPiAKPiBhbmQgUENJZSBwaHkgaXMgZGVzaWdu
ZWQgYmFzZWQgb24gU0FNU1VORyBQSFkuCgpUaGlzIGVtYWlsIGlzIGNvcnJ1cHRlZC4KCkJlc3Qg
cmVnYXJkcywKS3J6eXN6dG9mCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
