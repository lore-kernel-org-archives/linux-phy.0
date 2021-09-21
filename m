Return-Path: <SRS0=Nzjq=OL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D3EC43217
	for <linux-phy@archiver.kernel.org>; Tue, 21 Sep 2021 20:19:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 83D8B61165
	for <linux-phy@archiver.kernel.org>; Tue, 21 Sep 2021 20:19:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 83D8B61165
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/wdFJyk8sXgtSEmnbBAn7iX3bDqK8mXkNlVOzezxVs=; b=Yvyno1yxOuFD57
	/9jZ2auseX7YYle9lNv73i41LiDS9bmPLQGI+PVWFZ9vGefL5/YvhvPHmyggFNC2Guko4+sDawme4
	FtbMQUQjaCB9A89s/swJuVfLdfRPcse/i9+4ULj+P3NXKVZu3NHyJ9eoVLSnCHIVE/mCxgBNRRdDq
	Txrv9z5GOL5udms9LmoMHC7lfCLYz+9fIDn/6f6lNM4S2gntMn7K2eZmiCgZZRdD11S0k5s65sMF/
	RgaM0ieWwfJrZZTIkLsOUZEZ9nsy2z+n9AmytIx4oUhTs5p7kzX+wVhMkxFHIb33teR12D0fstxk/
	R2d8Yi141tOdyoZEe/Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSmF5-005hBR-1x; Tue, 21 Sep 2021 20:19:51 +0000
Received: from mail-oo1-f54.google.com ([209.85.161.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSmF2-005hB2-I1
 for linux-phy@lists.infradead.org; Tue, 21 Sep 2021 20:19:49 +0000
Received: by mail-oo1-f54.google.com with SMTP id
 i26-20020a4ad09a000000b002a9d58c24f5so117528oor.0
 for <linux-phy@lists.infradead.org>; Tue, 21 Sep 2021 13:19:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=zHCtkCJ+YU8sr1eqCh9RJWt6GKE+8RB1+mxyRXI5Y7Q=;
 b=hK24Q5tsLPRAgzlsLdKXgO7DYG/KuXy9aKF6DEJxqAkaW3SUUk8L/hhakY3qlKOAwK
 QmX7X1byQHQYUHPZ2esSy0ReWx5uQeXYPUpBJ6JpmHb32rk+J9B1S+F+UpL0MmsSfw8J
 +sWVPWWWxVkKEbUqSyyG1zfaHSrw5Q77ULj9mt44imDbHnFIPM+ZMVkYzS5+8qSAgkl4
 ibiimVgztwPeWARlzgzhEe+ekqdBQE1C3d6elkWlXj09Fm6+5/rmGOxRAHrsYGeocGH6
 Bx6PVjvuMya8PpEBN+uIe3KgJ3r+E9LPSTHA61DpQCxOd4w3toMNPPYIF8c5bOvaGUJq
 aKTA==
X-Gm-Message-State: AOAM533IpfZf7b9jRRTAS3hhDZgtHOce1jRsh8RFHyGZsQ30qG8OAblC
 q0dQ+EeUxvHetIRVkjFo6Q==
X-Google-Smtp-Source: ABdhPJz0GpQ1eMdu717vAcv6s3prw4o9Aw8b/FmW1Xen1J5SuIvOn0PDqKolr3ryK4+BR+PeW00P+Q==
X-Received: by 2002:a4a:e297:: with SMTP id k23mr25908090oot.4.1632255587216; 
 Tue, 21 Sep 2021 13:19:47 -0700 (PDT)
Received: from robh.at.kernel.org (rrcs-192-154-179-36.sw.biz.rr.com.
 [192.154.179.36])
 by smtp.gmail.com with ESMTPSA id q24sm4210otf.52.2021.09.21.13.19.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 13:19:46 -0700 (PDT)
Received: (nullmailer pid 3262786 invoked by uid 1000);
 Tue, 21 Sep 2021 20:19:45 -0000
Date: Tue, 21 Sep 2021 15:19:45 -0500
From: Rob Herring <robh@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-phy@lists.infradead.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 devicetree@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: mfd: brcm,cru: add USB 2.0 PHY
Message-ID: <YUo+YYTgholE/mkI@robh.at.kernel.org>
References: <20210913080024.6951-1-zajec5@gmail.com>
 <20210913080024.6951-3-zajec5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210913080024.6951-3-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_131948_636278_FCAC3590 
X-CRM114-Status: UNSURE (   8.64  )
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

T24gTW9uLCAxMyBTZXAgMjAyMSAxMDowMDoyMyArMDIwMCwgUmFmYcWCIE1pxYJlY2tpIHdyb3Rl
Ogo+IEZyb206IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBOb3J0aHN0
YXIncyBVU0IgMi4wIFBIWSBpcyBwYXJ0IG9mIHRoZSBDUlUgTUZELgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAtLS0KPiAgLi4uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbWZkL2JyY20sY3J1LnlhbWwgICAgICAgICB8IDE1ICsrKysrKysrKysr
KysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+
IAoKUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
