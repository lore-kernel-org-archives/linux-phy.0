Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,FSL_HELO_FAKE,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72780C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 07:57:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2DF9060EC0
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 07:57:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2DF9060EC0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPGCGJQtyL/fblUT3dVS/8bMXStWsM3hkgftkgc8nps=; b=k9lneGApEJdS3k
	z47Yh7FVsFvrdGRk8LMwarIp01hL+wsDGsbTgSzZgdzNmZiAY76ZmFVb2lB3EjdaqBXJeNlF5cJ8U
	wJPmHBOTVVbviwRPSEsPbgXoDIsFEaC3UT88efpYRHl/ROPkJ4zeXwQhCSf/ABHOAmnf5V1vabE5Z
	4dLJXfmi+y8ZILVjCI39v7G8RUpM1Yx/Kay/jBbb0brVrTO2iZre57W4aig1T8rGqddXXwCvCYove
	8V9VPX9xeMnnWMvXTYHW+/6kShXNCz5P36375lOoeWf1F67HNhFEw2OeWEmTMf6YnJUja1Rxa2W5G
	PaSpt6Q8TZu2Mi5b+0NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSx8O-007NnV-M6; Wed, 22 Sep 2021 07:57:40 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSx8L-007NmD-A1
 for linux-phy@lists.infradead.org; Wed, 22 Sep 2021 07:57:38 +0000
Received: by mail-wr1-x42b.google.com with SMTP id i23so4202136wrb.2
 for <linux-phy@lists.infradead.org>; Wed, 22 Sep 2021 00:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=fGXl0KeIjcoM5s5bRzzdyi1aRveqH8tZqcXcxjtKyJs=;
 b=iYe8BPNL2kyGirvgQnm/X0Y/XhTSprHlKfUERs6a5402Vdth73+NESFvf3JhHEQhJn
 8La3QDQ79in72RQRrxokSyALYTpLdUqeWTE89Qzo85XxC5ERrNp6ToEIKLsIrwt+kSgm
 xy8fQJzEj37RH0Z9xgj0Y/q3CZ99K+m2Q2u+ciLJ2AKrLQAe9GLOT3Cpv0Cdct8TPyIW
 Em85M8ennpRBWzwF8RDK8ESpQBplUD3keFSQcyvBDUVYMdksSDvdF2cb+GNuykFDtJvM
 JprN0A+nYc54SLif/45hJ0fN926VcdHlcIMHW1da8C17mccT+gYd+wf8v/dtVVi7XTrY
 6S3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=fGXl0KeIjcoM5s5bRzzdyi1aRveqH8tZqcXcxjtKyJs=;
 b=xlIkxuK7Mm4BDgGHdywio1n+w5lVedfJdygHciTdCFS92So4ZTJXDhd12oLnc1Thyn
 xyXuXHO4uqDU6Jzog0kgDasy753XLN1I53wQLJU5ZxSEQFKaXA/h7DoJFgWzCRNSBA/l
 R886kQdHF8t1N4yfV2iNVD+h0G0w5/qbLsGT9DQYFCHWdTKglN/rz2IWn2UTSgWuPrXk
 I/O+Nm4GwBjtosaC4rdd9gEn9u+qhcFF+NwyZw64Qm5Fm7I9XRWCCMwTKtKrrBWO6RHX
 o+cblYgiK+3GbtOiYbd1NrtKEd0qTf1/BEv24k6A0c6u8a0oBHDq3KlLy9fB03BngvZp
 yiFQ==
X-Gm-Message-State: AOAM530KnlyNFW5j8DWyASwiDoVygt9o3BsoTgc06GDeEauFczkd8bG+
 LMDlxH2JlCbMpQIZGUHVgObHJQ==
X-Google-Smtp-Source: ABdhPJwkICQgfJ7bWJwiuTYm+f+/7r28Cdl77ODCGFT7Pc9HRYSxuz9HKikTFnqTpprmjU2cabXvxA==
X-Received: by 2002:a05:6000:d2:: with SMTP id
 q18mr16952300wrx.4.1632297454866; 
 Wed, 22 Sep 2021 00:57:34 -0700 (PDT)
Received: from google.com ([95.148.6.233])
 by smtp.gmail.com with ESMTPSA id p6sm1308202wrq.47.2021.09.22.00.57.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 00:57:34 -0700 (PDT)
Date: Wed, 22 Sep 2021 08:57:32 +0100
From: Lee Jones <lee.jones@linaro.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, devicetree@vger.kernel.org,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 1/4] dt-bindings: mfd: brcm,cru: add clkset syscon
Message-ID: <YUrh7A0ZPBhHjy2d@google.com>
References: <20210913080024.6951-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210913080024.6951-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_005737_418915_3832C84B 
X-CRM114-Status: GOOD (  11.43  )
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

T24gTW9uLCAxMyBTZXAgMjAyMSwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgoKPiBGcm9tOiBSYWZh
xYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4gCj4gQ1JVIGhhcyBhIHNoYXJlZCByZWdp
c3RlciB0aGF0IGlzIHVzZWQgZS5nLiB0byBjb250cm9sIFVTQiAyLjAgUEhZIGJsb2NrCj4gYWNj
ZXNzLiBJdCdzIGEgc2luZ2xlIDMyIGIgcmVnaXN0ZXIuIERvY3VtZW50IGl0IGFzIHN5c2NvbiBz
byBpdCBjYW4gYmUKPiB1c2VkIHdpdGggYSByZWdtYXAuCj4gCj4gU2lnbmVkLW9mZi1ieTogUmFm
YcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbWZkL2JyY20sY3J1LnlhbWwgfCA4ICsrKysrKysrCj4gIERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lzY29uLnlhbWwgICB8IDEgKwo+ICAy
IGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKQXBwbGllZCwgdGhhbmtzLgoKLS0gCkxl
ZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2Vy
dmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZv
bGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
