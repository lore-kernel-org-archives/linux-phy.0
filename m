Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F09EAC3DA6E
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jan 2024 10:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Us6WVuhNi5GGqtMyehmq4hqoaYa7yxNwHlheP0PcV0=; b=q6IyMT5zEyiUux
	bDEXZOKStqhR1EP3qilkNI5JisQXTH62mAKfqqs1V02lqGu6dsDTY5ebiG+qOw0c0nKtBualBDwa8
	4G31mhsfOK1Hp0OtOvXUZPWIKHbttUDG/P5384AKo9vQYP/6xfmolOa/JjB8JiV68xmN8e4xGgd+S
	N93beRbk3lVB+S9FcskWNjNGRx9n1h4hfdAOZwwobjyUeuUtcc95gDZgS6EoU/IGsKlVE5D2ONPW7
	FwyGHIDvjezhPyIXrrdQ5+T9mCgY4h41ySo50ZKXXtoctU1rJmrY9WcSf8M0JDEMFMQnU3K3j44xc
	TFsEOrbZ81bGB1jp4jCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLhOi-00GWYS-2I;
	Fri, 05 Jan 2024 10:25:52 +0000
Received: from mail-yw1-f172.google.com ([209.85.128.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLhOg-00GWXE-0N
	for linux-phy@lists.infradead.org;
	Fri, 05 Jan 2024 10:25:51 +0000
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-5e784ce9bb8so3289617b3.0
        for <linux-phy@lists.infradead.org>; Fri, 05 Jan 2024 02:25:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704450349; x=1705055149;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tr6Cnonppc3S63EdOWbNPx3ZvYGnpDOLV4ON9zv6lps=;
        b=PILp28GEi/9aA4c0yg7Nn4k7n/c3jXJhkDoUFCas1Hkj1Z2jH/+drnh+vOmtxVywWB
         uGdKzz5owKGkvCJ1NB+P2GQFz8orpoCB0fTsiLHb3XvX9AHEl08F78xB4vfXYDUtRnx7
         CXRpmVq4murxobxKGXmtEMTQV0RlsCw7g1fdPc6WYYMp6OX6hR0Ma2XPxAeYpHfxZc2t
         eoGvNtcQ/rpqkSsevjhl4gUjD8jv+aU+R3uMnzXLuZJ0KpWvukjGxDLKkJ7gJh/uf4Uj
         w4VQ+T6hHILTCx3eLHR9QGlCSJtAY3TJbyFnBcLxbLco4Jt9LHDhUTES+nyfIIe7TOwA
         AQ2Q==
X-Gm-Message-State: AOJu0YyHqIrxh+1DkZh0+etKzGz108WWSZk7c3RGEGQA2n46bbMV9XFF
	hZAlSLCutAIqwuZX2RlCauhImY3xKF8oKQ==
X-Google-Smtp-Source: AGHT+IHKFyAObdA/l1l+69aRswQnZkQU5zHMRt9OQENOQWJyxmQaXCtZFHEFABbWItDNDTLSSJIFeQ==
X-Received: by 2002:a0d:fec5:0:b0:5e5:3342:c600 with SMTP id o188-20020a0dfec5000000b005e53342c600mr1409733ywf.9.1704450348862;
        Fri, 05 Jan 2024 02:25:48 -0800 (PST)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com. [209.85.128.179])
        by smtp.gmail.com with ESMTPSA id w190-20020a8186c7000000b005e8fa7114dbsm545881ywf.71.2024.01.05.02.25.48
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jan 2024 02:25:48 -0800 (PST)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-5e734251f48so3216667b3.1
        for <linux-phy@lists.infradead.org>; Fri, 05 Jan 2024 02:25:48 -0800 (PST)
X-Received: by 2002:a81:5dc5:0:b0:5e0:66ef:bca5 with SMTP id
 r188-20020a815dc5000000b005e066efbca5mr1188952ywb.40.1704450348254; Fri, 05
 Jan 2024 02:25:48 -0800 (PST)
MIME-Version: 1.0
References: <20240105093703.3359949-1-yoshihiro.shimoda.uh@renesas.com>
In-Reply-To: <20240105093703.3359949-1-yoshihiro.shimoda.uh@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 5 Jan 2024 11:25:36 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXd39y6dOsBTJcBYfbTmqTGXnvQaiGOF_M0RBqfTA0UnA@mail.gmail.com>
Message-ID: <CAMuHMdXd39y6dOsBTJcBYfbTmqTGXnvQaiGOF_M0RBqfTA0UnA@mail.gmail.com>
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Fix returning wrong error code
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: vkoul@kernel.org, kishon@kernel.org, error27@gmail.com, 
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org, 
	kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_022550_155183_02C593E3 
X-CRM114-Status: GOOD (  13.58  )
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

T24gRnJpLCBKYW4gNSwgMjAyNCBhdCAxMDo0MuKAr0FNIFlvc2hpaGlybyBTaGltb2RhCjx5b3No
aWhpcm8uc2hpbW9kYS51aEByZW5lc2FzLmNvbT4gd3JvdGU6Cj4gRXZlbiBpZiBkZXZpY2VfY3Jl
YXRlX2ZpbGUoKSByZXR1cm5zIGVycm9yIGNvZGUsCj4gcmNhcl9nZW4zX3BoeV91c2IyX3Byb2Jl
KCkgd2lsbCByZXR1cm4gemVybyBiZWNhdXNlIHRoZSAicmV0IiBpcwo+IHZhcmlhYmxlIHNoYWRv
d2luZy4KPgo+IFJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4K
PiBSZXBvcnRlZC1ieTogRGFuIENhcnBlbnRlciA8ZXJyb3IyN0BnbWFpbC5jb20+Cj4gQ2xvc2Vz
OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjMxMjE2MTAyMS5nT0xEbDQ4Sy1sa3BAaW50
ZWwuY29tLwo+IEZpeGVzOiA0NDFhNjgxYjg4NDMgKCJwaHk6IHJjYXItZ2VuMy11c2IyOiBmaXgg
aW1wbGVtZW50YXRpb24gZm9yIHJ1bnRpbWUgUE0iKQo+IFNpZ25lZC1vZmYtYnk6IFlvc2hpaGly
byBTaGltb2RhIDx5b3NoaWhpcm8uc2hpbW9kYS51aEByZW5lc2FzLmNvbT4KClJldmlld2VkLWJ5
OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgoKR3J7b2V0amUs
ZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRl
cmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGlu
dXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVv
cGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3Vy
bmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0Lgog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
